; ModuleID = './MultiSource.Benchmarks.mafft/5.MSalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@penalty = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"i = %d / %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bug! hairetsu ga kowareta!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"j = %d / %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"bug! hairetsu ga kowareta! (nglen1) seqlen(seq1[0])=%d but nglen1=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"seq1[0] = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"bug! hairetsu ga kowareta! (nglen2) seqlen(seq2[0])=%d but nglen2=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"hairetsu ga kowareta (end of MSalignmm) !\0A\00", align 1
@reccycle = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@n_dis = external global [26 x [26 x i32]], align 16

; Function Attrs: nounwind uwtable
define float @MSalignmm(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %call112 = call float @MSalignmm_rec(i32 %138, i32 %139, double* %140, double* %141, i8** %142, i8** %143, float** %144, float** %145, i32 0, i32 %sub110, i32 0, i32 %sub111, i32 %148, i8** %149, i8** %150, i32 0, float** %151)
  store float %call112, float* %wm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.122, %for.end.105
  %152 = load i32, i32* %i, align 4
  %153 = load i32, i32* %icyc.addr, align 4
  %cmp114 = icmp slt i32 %152, %153
  br i1 %cmp114, label %for.body.116, label %for.end.124

for.body.116:                                     ; preds = %for.cond.113
  %154 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %154 to i64
  %155 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %155, i64 %idxprom117
  %156 = load i8*, i8** %arrayidx118, align 8
  %157 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %157 to i64
  %158 = load i8**, i8*** %mseq1, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %158, i64 %idxprom119
  %159 = load i8*, i8** %arrayidx120, align 8
  %call121 = call i8* @strcpy(i8* %156, i8* %159) #7
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.116
  %160 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %160, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.113

for.end.124:                                      ; preds = %for.cond.113
  store i32 0, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.134, %for.end.124
  %161 = load i32, i32* %i, align 4
  %162 = load i32, i32* %jcyc.addr, align 4
  %cmp126 = icmp slt i32 %161, %162
  br i1 %cmp126, label %for.body.128, label %for.end.136

for.body.128:                                     ; preds = %for.cond.125
  %163 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %163 to i64
  %164 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %164, i64 %idxprom129
  %165 = load i8*, i8** %arrayidx130, align 8
  %166 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %166 to i64
  %167 = load i8**, i8*** %mseq2, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %167, i64 %idxprom131
  %168 = load i8*, i8** %arrayidx132, align 8
  %call133 = call i8* @strcpy(i8* %165, i8* %168) #7
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.128
  %169 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %169, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.125

for.end.136:                                      ; preds = %for.cond.125
  %170 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %170, i64 0
  %171 = load i8*, i8** %arrayidx137, align 8
  %call138 = call i32 @seqlen(i8* %171)
  %172 = load i32, i32* %nglen1, align 4
  %cmp139 = icmp ne i32 %call138, %172
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %for.end.136
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %174, i64 0
  %175 = load i8*, i8** %arrayidx142, align 8
  %call143 = call i32 @seqlen(i8* %175)
  %176 = load i32, i32* %nglen1, align 4
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0), i32 %call143, i32 %176)
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %178, i64 0
  %179 = load i8*, i8** %arrayidx145, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %179)
  call void @exit(i32 1) #6
  unreachable

if.end.147:                                       ; preds = %for.end.136
  %180 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %180, i64 0
  %181 = load i8*, i8** %arrayidx148, align 8
  %call149 = call i32 @seqlen(i8* %181)
  %182 = load i32, i32* %nglen2, align 4
  %cmp150 = icmp ne i32 %call149, %182
  br i1 %cmp150, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %if.end.147
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %184 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx153 = getelementptr inbounds i8*, i8** %184, i64 0
  %185 = load i8*, i8** %arrayidx153, align 8
  %call154 = call i32 @seqlen(i8* %185)
  %186 = load i32, i32* %nglen2, align 4
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0), i32 %call154, i32 %186)
  call void @exit(i32 1) #6
  unreachable

if.end.156:                                       ; preds = %if.end.147
  %187 = load float*, float** %ogcp1, align 8
  call void @FreeFloatVec(float* %187)
  %188 = load float*, float** %ogcp2, align 8
  call void @FreeFloatVec(float* %188)
  %189 = load float*, float** %fgcp1, align 8
  call void @FreeFloatVec(float* %189)
  %190 = load float*, float** %fgcp2, align 8
  call void @FreeFloatVec(float* %190)
  %191 = load float**, float*** %cpmx1, align 8
  call void @FreeFloatMtx(float** %191)
  %192 = load float**, float*** %cpmx2, align 8
  call void @FreeFloatMtx(float** %192)
  %193 = load float**, float*** %gapinfo, align 8
  %194 = bitcast float** %193 to i8*
  call void @free(i8* %194) #7
  %195 = load i8**, i8*** %mseq1, align 8
  call void @FreeCharMtx(i8** %195)
  %196 = load i8**, i8*** %mseq2, align 8
  call void @FreeCharMtx(i8** %196)
  %197 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %197, i64 0
  %198 = load i8*, i8** %arrayidx157, align 8
  %call158 = call i64 @strlen(i8* %198) #5
  %conv159 = trunc i64 %call158 to i32
  store i32 %conv159, i32* %lgth1, align 4
  %199 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %199, i64 0
  %200 = load i8*, i8** %arrayidx160, align 8
  %call161 = call i64 @strlen(i8* %200) #5
  %conv162 = trunc i64 %call161 to i32
  store i32 %conv162, i32* %lgth2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.177, %if.end.156
  %201 = load i32, i32* %i, align 4
  %202 = load i32, i32* %icyc.addr, align 4
  %cmp164 = icmp slt i32 %201, %202
  br i1 %cmp164, label %for.body.166, label %for.end.179

for.body.166:                                     ; preds = %for.cond.163
  %203 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %203 to i64
  %204 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %204, i64 %idxprom167
  %205 = load i8*, i8** %arrayidx168, align 8
  %call169 = call i64 @strlen(i8* %205) #5
  %206 = load i32, i32* %lgth1, align 4
  %conv170 = sext i32 %206 to i64
  %cmp171 = icmp ne i64 %call169, %conv170
  br i1 %cmp171, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %for.body.166
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %icyc.addr, align 4
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %208, i32 %209)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.176:                                       ; preds = %for.body.166
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %211 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %211, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond.163

for.end.179:                                      ; preds = %for.cond.163
  store i32 0, i32* %j, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.194, %for.end.179
  %212 = load i32, i32* %j, align 4
  %213 = load i32, i32* %jcyc.addr, align 4
  %cmp181 = icmp slt i32 %212, %213
  br i1 %cmp181, label %for.body.183, label %for.end.196

for.body.183:                                     ; preds = %for.cond.180
  %214 = load i32, i32* %j, align 4
  %idxprom184 = sext i32 %214 to i64
  %215 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx185 = getelementptr inbounds i8*, i8** %215, i64 %idxprom184
  %216 = load i8*, i8** %arrayidx185, align 8
  %call186 = call i64 @strlen(i8* %216) #5
  %217 = load i32, i32* %lgth2, align 4
  %conv187 = sext i32 %217 to i64
  %cmp188 = icmp ne i64 %call186, %conv187
  br i1 %cmp188, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %for.body.183
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %219 = load i32, i32* %j, align 4
  %220 = load i32, i32* %jcyc.addr, align 4
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %219, i32 %220)
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.193:                                       ; preds = %for.body.183
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %222 = load i32, i32* %j, align 4
  %inc195 = add nsw i32 %222, 1
  store i32 %inc195, i32* %j, align 4
  br label %for.cond.180

for.end.196:                                      ; preds = %for.cond.180
  %223 = load float, float* %wm, align 4
  ret float %223
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
define internal float @MSalignmm_rec(i32 %icyc, i32 %jcyc, double* %eff1, double* %eff2, i8** %seq1, i8** %seq2, float** %cpmx1, float** %cpmx2, i32 %ist, i32 %ien, i32 %jst, i32 %jen, i32 %alloclen, i8** %mseq1, i8** %mseq2, i32 %depth, float** %gapinfo) #0 {
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
  store float 0.000000e+00, float* %value, align 4
  store i32 0, i32* %jmid, align 4
  store float 0.000000e+00, float* %wm, align 4
  store i32* null, i32** %jumpdummj, align 8
  store i32 0, i32* %jumpj, align 4
  %0 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = load i32, i32* %ist.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds float, float* %1, i64 %idx.ext
  store float* %add.ptr, float** %ogcp1, align 8
  %3 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 1
  %4 = load float*, float** %arrayidx1, align 8
  %5 = load i32, i32* %ist.addr, align 4
  %idx.ext2 = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds float, float* %4, i64 %idx.ext2
  store float* %add.ptr3, float** %fgcp1, align 8
  %6 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %6, i64 2
  %7 = load float*, float** %arrayidx4, align 8
  %8 = load i32, i32* %jst.addr, align 4
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds float, float* %7, i64 %idx.ext5
  store float* %add.ptr6, float** %ogcp2, align 8
  %9 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %9, i64 3
  %10 = load float*, float** %arrayidx7, align 8
  %11 = load i32, i32* %jst.addr, align 4
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds float, float* %10, i64 %idx.ext8
  store float* %add.ptr9, float** %fgcp2, align 8
  %12 = load i32, i32* %depth.addr, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %depth.addr, align 4
  %13 = load i32, i32* @reccycle, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* @reccycle, align 4
  %14 = load i32, i32* %ien.addr, align 4
  %15 = load i32, i32* %ist.addr, align 4
  %sub = sub nsw i32 %14, %15
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %lgth1, align 4
  %16 = load i32, i32* %jen.addr, align 4
  %17 = load i32, i32* %jst.addr, align 4
  %sub11 = sub nsw i32 %16, %17
  %add12 = add nsw i32 %sub11, 1
  store i32 %add12, i32* %lgth2, align 4
  %18 = load i32, i32* %lgth2, align 4
  %cmp = icmp sle i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %icyc.addr, align 4
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx14, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %25, i64 %idxprom15
  %26 = load i8*, i8** %arrayidx16, align 8
  %27 = load i32, i32* %ist.addr, align 4
  %idx.ext17 = sext i32 %27 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 %idx.ext17
  %28 = load i32, i32* %lgth1, align 4
  %conv = sext i32 %28 to i64
  %call = call i8* @strncpy(i8* %23, i8* %add.ptr18, i64 %conv) #7
  %29 = load i32, i32* %lgth1, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %31, i64 %idxprom20
  %32 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %32, i64 %idxprom19
  store i8 0, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %33, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.41, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %jcyc.addr, align 4
  %cmp25 = icmp slt i32 %34, %35
  br i1 %cmp25, label %for.body.27, label %for.end.43

for.body.27:                                      ; preds = %for.cond.24
  %36 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %37, i64 %idxprom28
  %38 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %arrayidx30, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.38, %for.body.27
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %lgth1, align 4
  %cmp32 = icmp slt i32 %39, %40
  br i1 %cmp32, label %for.body.34, label %for.end.40

for.body.34:                                      ; preds = %for.cond.31
  %41 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %42, i64 %idxprom35
  %43 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i8* @strcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #7
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.34
  %44 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %44, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.31

for.end.40:                                       ; preds = %for.cond.31
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %45 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.24

for.end.43:                                       ; preds = %for.cond.24
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %46 = load i32, i32* %icyc.addr, align 4
  %call44 = call i8** @AllocateCharMtx(i32 %46, i32 0)
  store i8** %call44, i8*** %aseq1, align 8
  %47 = load i32, i32* %jcyc.addr, align 4
  %call45 = call i8** @AllocateCharMtx(i32 %47, i32 0)
  store i8** %call45, i8*** %aseq2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %if.end
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %icyc.addr, align 4
  %cmp47 = icmp slt i32 %48, %49
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.46
  %50 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %50 to i64
  %51 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %51, i64 %idxprom50
  %52 = load i8*, i8** %arrayidx51, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load i8**, i8*** %aseq1, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %54, i64 %idxprom52
  store i8* %52, i8** %arrayidx53, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %55 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %55, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.end.56
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %jcyc.addr, align 4
  %cmp58 = icmp slt i32 %56, %57
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.57
  %58 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %58 to i64
  %59 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %59, i64 %idxprom61
  %60 = load i8*, i8** %arrayidx62, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %61 to i64
  %62 = load i8**, i8*** %aseq2, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %62, i64 %idxprom63
  store i8* %60, i8** %arrayidx64, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.60
  %63 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %63, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  %64 = load i32, i32* %lgth1, align 4
  %cmp68 = icmp slt i32 %64, 100
  br i1 %cmp68, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.67
  %65 = load i32, i32* %lgth2, align 4
  %cmp70 = icmp slt i32 %65, 100
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %lor.lhs.false, %for.end.67
  %66 = load i32, i32* %icyc.addr, align 4
  %67 = load i32, i32* %jcyc.addr, align 4
  %68 = load double*, double** %eff1.addr, align 8
  %69 = load double*, double** %eff2.addr, align 8
  %70 = load i8**, i8*** %seq1.addr, align 8
  %71 = load i8**, i8*** %seq2.addr, align 8
  %72 = load float**, float*** %cpmx1.addr, align 8
  %73 = load float**, float*** %cpmx2.addr, align 8
  %74 = load i32, i32* %ist.addr, align 4
  %75 = load i32, i32* %ien.addr, align 4
  %76 = load i32, i32* %jst.addr, align 4
  %77 = load i32, i32* %jen.addr, align 4
  %78 = load i32, i32* %alloclen.addr, align 4
  %79 = load i8**, i8*** %aseq1, align 8
  %80 = load i8**, i8*** %aseq2, align 8
  %81 = load float**, float*** %gapinfo.addr, align 8
  %call73 = call float @MSalignmm_tanni(i32 %66, i32 %67, double* %68, double* %69, i8** %70, i8** %71, float** %72, float** %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i8** %79, i8** %80, float** %81)
  store float %call73, float* %value, align 4
  %82 = load i8**, i8*** %aseq1, align 8
  %83 = bitcast i8** %82 to i8*
  call void @free(i8* %83) #7
  %84 = load i8**, i8*** %aseq2, align 8
  %85 = bitcast i8** %84 to i8*
  call void @free(i8* %85) #7
  %86 = load float, float* %value, align 4
  store float %86, float* %retval
  br label %return

if.end.74:                                        ; preds = %lor.lhs.false
  %87 = load i32, i32* %lgth1, align 4
  %add75 = add nsw i32 %87, 100
  store i32 %add75, i32* %ll1, align 4
  %88 = load i32, i32* %lgth2, align 4
  %add76 = add nsw i32 %88, 100
  store i32 %add76, i32* %ll2, align 4
  %89 = load i32, i32* %ll2, align 4
  %add77 = add nsw i32 %89, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** %w1, align 8
  %90 = load i32, i32* %ll2, align 4
  %add79 = add nsw i32 %90, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** %w2, align 8
  %91 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %91, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** %midw, align 8
  %92 = load i32, i32* %ll2, align 4
  %add83 = add nsw i32 %92, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** %midn, align 8
  %93 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %93, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** %midm, align 8
  %94 = load i32, i32* %ll2, align 4
  %add87 = add nsw i32 %94, 2
  %call88 = call i32* @AllocateIntVec(i32 %add87)
  store i32* %call88, i32** %jumpbacki, align 8
  %95 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %95, 2
  %call90 = call i32* @AllocateIntVec(i32 %add89)
  store i32* %call90, i32** %jumpbackj, align 8
  %96 = load i32, i32* %ll2, align 4
  %add91 = add nsw i32 %96, 2
  %call92 = call i32* @AllocateIntVec(i32 %add91)
  store i32* %call92, i32** %jumpforwi, align 8
  %97 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %97, 2
  %call94 = call i32* @AllocateIntVec(i32 %add93)
  store i32* %call94, i32** %jumpforwj, align 8
  %98 = load i32, i32* %ll2, align 4
  %add95 = add nsw i32 %98, 2
  %call96 = call i32* @AllocateIntVec(i32 %add95)
  store i32* %call96, i32** %jumpdummi, align 8
  %99 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %99, 2
  %call98 = call i32* @AllocateIntVec(i32 %add97)
  store i32* %call98, i32** %jumpdummj, align 8
  %100 = load i32, i32* %ll1, align 4
  %add99 = add nsw i32 %100, 2
  %call100 = call float* @AllocateFloatVec(i32 %add99)
  store float* %call100, float** %initverticalw, align 8
  %101 = load i32, i32* %ll1, align 4
  %add101 = add nsw i32 %101, 2
  %call102 = call float* @AllocateFloatVec(i32 %add101)
  store float* %call102, float** %lastverticalw, align 8
  %102 = load i32, i32* %ll2, align 4
  %add103 = add nsw i32 %102, 2
  %call104 = call float* @AllocateFloatVec(i32 %add103)
  store float* %call104, float** %m, align 8
  %103 = load i32, i32* %ll2, align 4
  %add105 = add nsw i32 %103, 2
  %call106 = call i32* @AllocateIntVec(i32 %add105)
  store i32* %call106, i32** %mp, align 8
  %104 = load i32, i32* %ll1, align 4
  %105 = load i32, i32* %ll2, align 4
  %cmp107 = icmp sgt i32 %104, %105
  br i1 %cmp107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.74
  %106 = load i32, i32* %ll1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.74
  %107 = load i32, i32* %ll2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %106, %cond.true ], [ %107, %cond.false ]
  %add109 = add nsw i32 %cond, 2
  %call110 = call i8* @AllocateCharVec(i32 %add109)
  store i8* %call110, i8** %gaps, align 8
  %108 = load i32, i32* %ll1, align 4
  %109 = load i32, i32* %ll2, align 4
  %cmp111 = icmp sgt i32 %108, %109
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end
  %110 = load i32, i32* %ll1, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end
  %111 = load i32, i32* %ll2, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ %110, %cond.true.113 ], [ %111, %cond.false.114 ]
  %add117 = add nsw i32 %cond116, 2
  %call118 = call float** @AllocateFloatMtx(i32 %add117, i32 26)
  store float** %call118, float*** %floatwork, align 8
  %112 = load i32, i32* %ll1, align 4
  %113 = load i32, i32* %ll2, align 4
  %cmp119 = icmp sgt i32 %112, %113
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.115
  %114 = load i32, i32* %ll1, align 4
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.end.115
  %115 = load i32, i32* %ll2, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi i32 [ %114, %cond.true.121 ], [ %115, %cond.false.122 ]
  %add125 = add nsw i32 %cond124, 2
  %call126 = call i32** @AllocateIntMtx(i32 %add125, i32 26)
  store i32** %call126, i32*** %intwork, align 8
  %116 = load float*, float** %w1, align 8
  store float* %116, float** %currentw, align 8
  %117 = load float*, float** %w2, align 8
  store float* %117, float** %previousw, align 8
  %118 = load float*, float** %initverticalw, align 8
  %119 = load float**, float*** %cpmx2.addr, align 8
  %120 = load i32, i32* %jst.addr, align 4
  %idx.ext127 = sext i32 %120 to i64
  %add.ptr128 = getelementptr inbounds float*, float** %119, i64 %idx.ext127
  %121 = load float**, float*** %cpmx1.addr, align 8
  %122 = load i32, i32* %ist.addr, align 4
  %idx.ext129 = sext i32 %122 to i64
  %add.ptr130 = getelementptr inbounds float*, float** %121, i64 %idx.ext129
  %123 = load i32, i32* %lgth1, align 4
  %124 = load float**, float*** %floatwork, align 8
  %125 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %118, float** %add.ptr128, float** %add.ptr130, i32 0, i32 %123, float** %124, i32** %125, i32 1)
  %126 = load float*, float** %currentw, align 8
  %127 = load float**, float*** %cpmx1.addr, align 8
  %128 = load i32, i32* %ist.addr, align 4
  %idx.ext131 = sext i32 %128 to i64
  %add.ptr132 = getelementptr inbounds float*, float** %127, i64 %idx.ext131
  %129 = load float**, float*** %cpmx2.addr, align 8
  %130 = load i32, i32* %jst.addr, align 4
  %idx.ext133 = sext i32 %130 to i64
  %add.ptr134 = getelementptr inbounds float*, float** %129, i64 %idx.ext133
  %131 = load i32, i32* %lgth2, align 4
  %132 = load float**, float*** %floatwork, align 8
  %133 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %126, float** %add.ptr132, float** %add.ptr134, i32 0, i32 %131, float** %132, i32** %133, i32 1)
  store i32 1, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.148, %cond.end.123
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %lgth1, align 4
  %add136 = add nsw i32 %135, 1
  %cmp137 = icmp slt i32 %134, %add136
  br i1 %cmp137, label %for.body.139, label %for.end.150

for.body.139:                                     ; preds = %for.cond.135
  %136 = load float*, float** %ogcp1, align 8
  %arrayidx140 = getelementptr inbounds float, float* %136, i64 0
  %137 = load float, float* %arrayidx140, align 4
  %138 = load i32, i32* %i, align 4
  %sub141 = sub nsw i32 %138, 1
  %idxprom142 = sext i32 %sub141 to i64
  %139 = load float*, float** %fgcp1, align 8
  %arrayidx143 = getelementptr inbounds float, float* %139, i64 %idxprom142
  %140 = load float, float* %arrayidx143, align 4
  %add144 = fadd float %137, %140
  %141 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %141 to i64
  %142 = load float*, float** %initverticalw, align 8
  %arrayidx146 = getelementptr inbounds float, float* %142, i64 %idxprom145
  %143 = load float, float* %arrayidx146, align 4
  %add147 = fadd float %143, %add144
  store float %add147, float* %arrayidx146, align 4
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.139
  %144 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %144, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.135

for.end.150:                                      ; preds = %for.cond.135
  store i32 1, i32* %j, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.164, %for.end.150
  %145 = load i32, i32* %j, align 4
  %146 = load i32, i32* %lgth2, align 4
  %add152 = add nsw i32 %146, 1
  %cmp153 = icmp slt i32 %145, %add152
  br i1 %cmp153, label %for.body.155, label %for.end.166

for.body.155:                                     ; preds = %for.cond.151
  %147 = load float*, float** %ogcp2, align 8
  %arrayidx156 = getelementptr inbounds float, float* %147, i64 0
  %148 = load float, float* %arrayidx156, align 4
  %149 = load i32, i32* %j, align 4
  %sub157 = sub nsw i32 %149, 1
  %idxprom158 = sext i32 %sub157 to i64
  %150 = load float*, float** %fgcp2, align 8
  %arrayidx159 = getelementptr inbounds float, float* %150, i64 %idxprom158
  %151 = load float, float* %arrayidx159, align 4
  %add160 = fadd float %148, %151
  %152 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %152 to i64
  %153 = load float*, float** %currentw, align 8
  %arrayidx162 = getelementptr inbounds float, float* %153, i64 %idxprom161
  %154 = load float, float* %arrayidx162, align 4
  %add163 = fadd float %154, %add160
  store float %add163, float* %arrayidx162, align 4
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.155
  %155 = load i32, i32* %j, align 4
  %inc165 = add nsw i32 %155, 1
  store i32 %inc165, i32* %j, align 4
  br label %for.cond.151

for.end.166:                                      ; preds = %for.cond.151
  store i32 1, i32* %j, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.181, %for.end.166
  %156 = load i32, i32* %j, align 4
  %157 = load i32, i32* %lgth2, align 4
  %add168 = add nsw i32 %157, 1
  %cmp169 = icmp slt i32 %156, %add168
  br i1 %cmp169, label %for.body.171, label %for.end.183

for.body.171:                                     ; preds = %for.cond.167
  %158 = load i32, i32* %j, align 4
  %sub172 = sub nsw i32 %158, 1
  %idxprom173 = sext i32 %sub172 to i64
  %159 = load float*, float** %currentw, align 8
  %arrayidx174 = getelementptr inbounds float, float* %159, i64 %idxprom173
  %160 = load float, float* %arrayidx174, align 4
  %161 = load float*, float** %ogcp1, align 8
  %arrayidx175 = getelementptr inbounds float, float* %161, i64 1
  %162 = load float, float* %arrayidx175, align 4
  %add176 = fadd float %160, %162
  %163 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %163 to i64
  %164 = load float*, float** %m, align 8
  %arrayidx178 = getelementptr inbounds float, float* %164, i64 %idxprom177
  store float %add176, float* %arrayidx178, align 4
  %165 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %165 to i64
  %166 = load i32*, i32** %mp, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %166, i64 %idxprom179
  store i32 0, i32* %arrayidx180, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.171
  %167 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %167, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.167

for.end.183:                                      ; preds = %for.cond.167
  %168 = load i32, i32* %lgth2, align 4
  %sub184 = sub nsw i32 %168, 1
  %idxprom185 = sext i32 %sub184 to i64
  %169 = load float*, float** %currentw, align 8
  %arrayidx186 = getelementptr inbounds float, float* %169, i64 %idxprom185
  %170 = load float, float* %arrayidx186, align 4
  %171 = load float*, float** %lastverticalw, align 8
  %arrayidx187 = getelementptr inbounds float, float* %171, i64 0
  store float %170, float* %arrayidx187, align 4
  %172 = load i32, i32* %lgth1, align 4
  %conv188 = sitofp i32 %172 to double
  %mul = fmul double %conv188, 5.000000e-01
  %conv189 = fptosi double %mul to i32
  store i32 %conv189, i32* %imid, align 4
  store i32 0, i32* %jumpi, align 4
  %173 = load i32, i32* %lgth1, align 4
  %add190 = add nsw i32 %173, 1
  store i32 %add190, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.284, %for.end.183
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %imid, align 4
  %cmp192 = icmp sle i32 %174, %175
  br i1 %cmp192, label %for.body.194, label %for.end.286

for.body.194:                                     ; preds = %for.cond.191
  %176 = load float*, float** %previousw, align 8
  store float* %176, float** %wtmp, align 8
  %177 = load float*, float** %currentw, align 8
  store float* %177, float** %previousw, align 8
  %178 = load float*, float** %wtmp, align 8
  store float* %178, float** %currentw, align 8
  %179 = load i32, i32* %i, align 4
  %sub195 = sub nsw i32 %179, 1
  %idxprom196 = sext i32 %sub195 to i64
  %180 = load float*, float** %initverticalw, align 8
  %arrayidx197 = getelementptr inbounds float, float* %180, i64 %idxprom196
  %181 = load float, float* %arrayidx197, align 4
  %182 = load float*, float** %previousw, align 8
  %arrayidx198 = getelementptr inbounds float, float* %182, i64 0
  store float %181, float* %arrayidx198, align 4
  %183 = load float*, float** %currentw, align 8
  %184 = load float**, float*** %cpmx1.addr, align 8
  %185 = load i32, i32* %ist.addr, align 4
  %idx.ext199 = sext i32 %185 to i64
  %add.ptr200 = getelementptr inbounds float*, float** %184, i64 %idx.ext199
  %186 = load float**, float*** %cpmx2.addr, align 8
  %187 = load i32, i32* %jst.addr, align 4
  %idx.ext201 = sext i32 %187 to i64
  %add.ptr202 = getelementptr inbounds float*, float** %186, i64 %idx.ext201
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* %lgth2, align 4
  %190 = load float**, float*** %floatwork, align 8
  %191 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %183, float** %add.ptr200, float** %add.ptr202, i32 %188, i32 %189, float** %190, i32** %191, i32 0)
  %192 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %192 to i64
  %193 = load float*, float** %initverticalw, align 8
  %arrayidx204 = getelementptr inbounds float, float* %193, i64 %idxprom203
  %194 = load float, float* %arrayidx204, align 4
  %195 = load float*, float** %currentw, align 8
  %arrayidx205 = getelementptr inbounds float, float* %195, i64 0
  store float %194, float* %arrayidx205, align 4
  %196 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %196 to i64
  %197 = load float*, float** %ogcp1, align 8
  %arrayidx207 = getelementptr inbounds float, float* %197, i64 %idxprom206
  %198 = load float, float* %arrayidx207, align 4
  %199 = load float*, float** %m, align 8
  %arrayidx208 = getelementptr inbounds float, float* %199, i64 0
  store float %198, float* %arrayidx208, align 4
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %imid, align 4
  %cmp209 = icmp eq i32 %200, %201
  br i1 %cmp209, label %if.then.211, label %if.end.214

if.then.211:                                      ; preds = %for.body.194
  %202 = load float*, float** %m, align 8
  %arrayidx212 = getelementptr inbounds float, float* %202, i64 0
  %203 = load float, float* %arrayidx212, align 4
  %204 = load float*, float** %midm, align 8
  %arrayidx213 = getelementptr inbounds float, float* %204, i64 0
  store float %203, float* %arrayidx213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.211, %for.body.194
  %205 = load float*, float** %previousw, align 8
  %arrayidx215 = getelementptr inbounds float, float* %205, i64 0
  %206 = load float, float* %arrayidx215, align 4
  %207 = load float*, float** %ogcp2, align 8
  %arrayidx216 = getelementptr inbounds float, float* %207, i64 1
  %208 = load float, float* %arrayidx216, align 4
  %add217 = fadd float %206, %208
  store float %add217, float* %mi, align 4
  store i32 0, i32* %mpi, align 4
  %209 = load float*, float** %m, align 8
  %add.ptr218 = getelementptr inbounds float, float* %209, i64 1
  store float* %add.ptr218, float** %mjpt, align 8
  %210 = load float*, float** %previousw, align 8
  store float* %210, float** %prept, align 8
  %211 = load float*, float** %currentw, align 8
  %add.ptr219 = getelementptr inbounds float, float* %211, i64 1
  store float* %add.ptr219, float** %curpt, align 8
  %212 = load i32*, i32** %mp, align 8
  %add.ptr220 = getelementptr inbounds i32, i32* %212, i64 1
  store i32* %add.ptr220, i32** %mpjpt, align 8
  %213 = load i32, i32* %lgth2, align 4
  %add221 = add nsw i32 %213, 1
  store i32 %add221, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.276, %if.end.214
  %214 = load i32, i32* %j, align 4
  %215 = load i32, i32* %lastj, align 4
  %cmp223 = icmp slt i32 %214, %215
  br i1 %cmp223, label %for.body.225, label %for.end.278

for.body.225:                                     ; preds = %for.cond.222
  %216 = load float*, float** %prept, align 8
  %217 = load float, float* %216, align 4
  store float %217, float* %wm, align 4
  %218 = load float, float* %mi, align 4
  %219 = load i32, i32* %j, align 4
  %sub226 = sub nsw i32 %219, 1
  %idxprom227 = sext i32 %sub226 to i64
  %220 = load float*, float** %fgcp2, align 8
  %arrayidx228 = getelementptr inbounds float, float* %220, i64 %idxprom227
  %221 = load float, float* %arrayidx228, align 4
  %add229 = fadd float %218, %221
  store float %add229, float* %g, align 4
  %222 = load float, float* %g, align 4
  %223 = load float, float* %wm, align 4
  %cmp230 = fcmp ogt float %222, %223
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %for.body.225
  %224 = load float, float* %g, align 4
  store float %224, float* %wm, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %for.body.225
  %225 = load float*, float** %prept, align 8
  %226 = load float, float* %225, align 4
  %227 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %227 to i64
  %228 = load float*, float** %ogcp2, align 8
  %arrayidx235 = getelementptr inbounds float, float* %228, i64 %idxprom234
  %229 = load float, float* %arrayidx235, align 4
  %add236 = fadd float %226, %229
  store float %add236, float* %g, align 4
  %230 = load float, float* %g, align 4
  %231 = load float, float* %mi, align 4
  %cmp237 = fcmp oge float %230, %231
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.end.233
  %232 = load float, float* %g, align 4
  store float %232, float* %mi, align 4
  %233 = load i32, i32* %j, align 4
  %sub240 = sub nsw i32 %233, 1
  store i32 %sub240, i32* %mpi, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.233
  %234 = load float*, float** %mjpt, align 8
  %235 = load float, float* %234, align 4
  %236 = load i32, i32* %i, align 4
  %sub242 = sub nsw i32 %236, 1
  %idxprom243 = sext i32 %sub242 to i64
  %237 = load float*, float** %fgcp1, align 8
  %arrayidx244 = getelementptr inbounds float, float* %237, i64 %idxprom243
  %238 = load float, float* %arrayidx244, align 4
  %add245 = fadd float %235, %238
  store float %add245, float* %g, align 4
  %239 = load float, float* %g, align 4
  %240 = load float, float* %wm, align 4
  %cmp246 = fcmp ogt float %239, %240
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.241
  %241 = load float, float* %g, align 4
  store float %241, float* %wm, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.end.241
  %242 = load float*, float** %prept, align 8
  %243 = load float, float* %242, align 4
  %244 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %244 to i64
  %245 = load float*, float** %ogcp1, align 8
  %arrayidx251 = getelementptr inbounds float, float* %245, i64 %idxprom250
  %246 = load float, float* %arrayidx251, align 4
  %add252 = fadd float %243, %246
  store float %add252, float* %g, align 4
  %247 = load float, float* %g, align 4
  %248 = load float*, float** %mjpt, align 8
  %249 = load float, float* %248, align 4
  %cmp253 = fcmp oge float %247, %249
  br i1 %cmp253, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.end.249
  %250 = load float, float* %g, align 4
  %251 = load float*, float** %mjpt, align 8
  store float %250, float* %251, align 4
  %252 = load i32, i32* %i, align 4
  %sub256 = sub nsw i32 %252, 1
  %253 = load i32*, i32** %mpjpt, align 8
  store i32 %sub256, i32* %253, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %if.end.249
  %254 = load float, float* %wm, align 4
  %255 = load float*, float** %curpt, align 8
  %256 = load float, float* %255, align 4
  %add258 = fadd float %256, %254
  store float %add258, float* %255, align 4
  %257 = load i32, i32* %i, align 4
  %258 = load i32, i32* %imid, align 4
  %cmp259 = icmp eq i32 %257, %258
  br i1 %cmp259, label %if.then.261, label %if.end.272

if.then.261:                                      ; preds = %if.end.257
  %259 = load i32*, i32** %mpjpt, align 8
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %261 to i64
  %262 = load i32*, i32** %jumpbackj, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %262, i64 %idxprom262
  store i32 %260, i32* %arrayidx263, align 4
  %263 = load i32, i32* %mpi, align 4
  %264 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %264 to i64
  %265 = load i32*, i32** %jumpbacki, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %265, i64 %idxprom264
  store i32 %263, i32* %arrayidx265, align 4
  %266 = load float*, float** %curpt, align 8
  %267 = load float, float* %266, align 4
  %268 = load i32, i32* %j, align 4
  %idxprom266 = sext i32 %268 to i64
  %269 = load float*, float** %midw, align 8
  %arrayidx267 = getelementptr inbounds float, float* %269, i64 %idxprom266
  store float %267, float* %arrayidx267, align 4
  %270 = load float*, float** %mjpt, align 8
  %271 = load float, float* %270, align 4
  %272 = load i32, i32* %j, align 4
  %idxprom268 = sext i32 %272 to i64
  %273 = load float*, float** %midm, align 8
  %arrayidx269 = getelementptr inbounds float, float* %273, i64 %idxprom268
  store float %271, float* %arrayidx269, align 4
  %274 = load float, float* %mi, align 4
  %275 = load i32, i32* %j, align 4
  %idxprom270 = sext i32 %275 to i64
  %276 = load float*, float** %midn, align 8
  %arrayidx271 = getelementptr inbounds float, float* %276, i64 %idxprom270
  store float %274, float* %arrayidx271, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.261, %if.end.257
  %277 = load float*, float** %mjpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %277, i32 1
  store float* %incdec.ptr, float** %mjpt, align 8
  %278 = load float*, float** %prept, align 8
  %incdec.ptr273 = getelementptr inbounds float, float* %278, i32 1
  store float* %incdec.ptr273, float** %prept, align 8
  %279 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr274 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %incdec.ptr274, i32** %mpjpt, align 8
  %280 = load float*, float** %curpt, align 8
  %incdec.ptr275 = getelementptr inbounds float, float* %280, i32 1
  store float* %incdec.ptr275, float** %curpt, align 8
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.272
  %281 = load i32, i32* %j, align 4
  %inc277 = add nsw i32 %281, 1
  store i32 %inc277, i32* %j, align 4
  br label %for.cond.222

for.end.278:                                      ; preds = %for.cond.222
  %282 = load i32, i32* %lgth2, align 4
  %sub279 = sub nsw i32 %282, 1
  %idxprom280 = sext i32 %sub279 to i64
  %283 = load float*, float** %currentw, align 8
  %arrayidx281 = getelementptr inbounds float, float* %283, i64 %idxprom280
  %284 = load float, float* %arrayidx281, align 4
  %285 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %285 to i64
  %286 = load float*, float** %lastverticalw, align 8
  %arrayidx283 = getelementptr inbounds float, float* %286, i64 %idxprom282
  store float %284, float* %arrayidx283, align 4
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.end.278
  %287 = load i32, i32* %i, align 4
  %inc285 = add nsw i32 %287, 1
  store i32 %inc285, i32* %i, align 4
  br label %for.cond.191

for.end.286:                                      ; preds = %for.cond.191
  %288 = load float*, float** %initverticalw, align 8
  %289 = load float**, float*** %cpmx2.addr, align 8
  %290 = load i32, i32* %jst.addr, align 4
  %idx.ext287 = sext i32 %290 to i64
  %add.ptr288 = getelementptr inbounds float*, float** %289, i64 %idx.ext287
  %291 = load float**, float*** %cpmx1.addr, align 8
  %292 = load i32, i32* %ist.addr, align 4
  %idx.ext289 = sext i32 %292 to i64
  %add.ptr290 = getelementptr inbounds float*, float** %291, i64 %idx.ext289
  %293 = load i32, i32* %lgth2, align 4
  %sub291 = sub nsw i32 %293, 1
  %294 = load i32, i32* %lgth1, align 4
  %295 = load float**, float*** %floatwork, align 8
  %296 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %288, float** %add.ptr288, float** %add.ptr290, i32 %sub291, i32 %294, float** %295, i32** %296, i32 1)
  %297 = load float*, float** %currentw, align 8
  %298 = load float**, float*** %cpmx1.addr, align 8
  %299 = load i32, i32* %ist.addr, align 4
  %idx.ext292 = sext i32 %299 to i64
  %add.ptr293 = getelementptr inbounds float*, float** %298, i64 %idx.ext292
  %300 = load float**, float*** %cpmx2.addr, align 8
  %301 = load i32, i32* %jst.addr, align 4
  %idx.ext294 = sext i32 %301 to i64
  %add.ptr295 = getelementptr inbounds float*, float** %300, i64 %idx.ext294
  %302 = load i32, i32* %lgth1, align 4
  %sub296 = sub nsw i32 %302, 1
  %303 = load i32, i32* %lgth2, align 4
  %304 = load float**, float*** %floatwork, align 8
  %305 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %297, float** %add.ptr293, float** %add.ptr295, i32 %sub296, i32 %303, float** %304, i32** %305, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.297

for.cond.297:                                     ; preds = %for.inc.312, %for.end.286
  %306 = load i32, i32* %i, align 4
  %307 = load i32, i32* %lgth1, align 4
  %sub298 = sub nsw i32 %307, 1
  %cmp299 = icmp slt i32 %306, %sub298
  br i1 %cmp299, label %for.body.301, label %for.end.314

for.body.301:                                     ; preds = %for.cond.297
  %308 = load i32, i32* %lgth1, align 4
  %sub302 = sub nsw i32 %308, 1
  %idxprom303 = sext i32 %sub302 to i64
  %309 = load float*, float** %fgcp1, align 8
  %arrayidx304 = getelementptr inbounds float, float* %309, i64 %idxprom303
  %310 = load float, float* %arrayidx304, align 4
  %311 = load i32, i32* %i, align 4
  %add305 = add nsw i32 %311, 1
  %idxprom306 = sext i32 %add305 to i64
  %312 = load float*, float** %ogcp1, align 8
  %arrayidx307 = getelementptr inbounds float, float* %312, i64 %idxprom306
  %313 = load float, float* %arrayidx307, align 4
  %add308 = fadd float %310, %313
  %314 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %314 to i64
  %315 = load float*, float** %initverticalw, align 8
  %arrayidx310 = getelementptr inbounds float, float* %315, i64 %idxprom309
  %316 = load float, float* %arrayidx310, align 4
  %add311 = fadd float %316, %add308
  store float %add311, float* %arrayidx310, align 4
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.body.301
  %317 = load i32, i32* %i, align 4
  %inc313 = add nsw i32 %317, 1
  store i32 %inc313, i32* %i, align 4
  br label %for.cond.297

for.end.314:                                      ; preds = %for.cond.297
  store i32 0, i32* %j, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.330, %for.end.314
  %318 = load i32, i32* %j, align 4
  %319 = load i32, i32* %lgth2, align 4
  %sub316 = sub nsw i32 %319, 1
  %cmp317 = icmp slt i32 %318, %sub316
  br i1 %cmp317, label %for.body.319, label %for.end.332

for.body.319:                                     ; preds = %for.cond.315
  %320 = load i32, i32* %lgth2, align 4
  %sub320 = sub nsw i32 %320, 1
  %idxprom321 = sext i32 %sub320 to i64
  %321 = load float*, float** %fgcp2, align 8
  %arrayidx322 = getelementptr inbounds float, float* %321, i64 %idxprom321
  %322 = load float, float* %arrayidx322, align 4
  %323 = load i32, i32* %j, align 4
  %add323 = add nsw i32 %323, 1
  %idxprom324 = sext i32 %add323 to i64
  %324 = load float*, float** %ogcp2, align 8
  %arrayidx325 = getelementptr inbounds float, float* %324, i64 %idxprom324
  %325 = load float, float* %arrayidx325, align 4
  %add326 = fadd float %322, %325
  %326 = load i32, i32* %j, align 4
  %idxprom327 = sext i32 %326 to i64
  %327 = load float*, float** %currentw, align 8
  %arrayidx328 = getelementptr inbounds float, float* %327, i64 %idxprom327
  %328 = load float, float* %arrayidx328, align 4
  %add329 = fadd float %328, %add326
  store float %add329, float* %arrayidx328, align 4
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.body.319
  %329 = load i32, i32* %j, align 4
  %inc331 = add nsw i32 %329, 1
  store i32 %inc331, i32* %j, align 4
  br label %for.cond.315

for.end.332:                                      ; preds = %for.cond.315
  %330 = load i32, i32* %lgth2, align 4
  %sub333 = sub nsw i32 %330, 1
  store i32 %sub333, i32* %j, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.350, %for.end.332
  %331 = load i32, i32* %j, align 4
  %cmp335 = icmp sgt i32 %331, 0
  br i1 %cmp335, label %for.body.337, label %for.end.351

for.body.337:                                     ; preds = %for.cond.334
  %332 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %332 to i64
  %333 = load float*, float** %currentw, align 8
  %arrayidx339 = getelementptr inbounds float, float* %333, i64 %idxprom338
  %334 = load float, float* %arrayidx339, align 4
  %335 = load i32, i32* %lgth2, align 4
  %sub340 = sub nsw i32 %335, 2
  %idxprom341 = sext i32 %sub340 to i64
  %336 = load float*, float** %fgcp2, align 8
  %arrayidx342 = getelementptr inbounds float, float* %336, i64 %idxprom341
  %337 = load float, float* %arrayidx342, align 4
  %add343 = fadd float %334, %337
  %338 = load i32, i32* %j, align 4
  %sub344 = sub nsw i32 %338, 1
  %idxprom345 = sext i32 %sub344 to i64
  %339 = load float*, float** %m, align 8
  %arrayidx346 = getelementptr inbounds float, float* %339, i64 %idxprom345
  store float %add343, float* %arrayidx346, align 4
  %340 = load i32, i32* %lgth1, align 4
  %sub347 = sub nsw i32 %340, 1
  %341 = load i32, i32* %j, align 4
  %idxprom348 = sext i32 %341 to i64
  %342 = load i32*, i32** %mp, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %342, i64 %idxprom348
  store i32 %sub347, i32* %arrayidx349, align 4
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.body.337
  %343 = load i32, i32* %j, align 4
  %dec = add nsw i32 %343, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.334

for.end.351:                                      ; preds = %for.cond.334
  store float -1.000000e+07, float* %firstm, align 4
  %344 = load i32, i32* %lgth1, align 4
  %sub352 = sub nsw i32 %344, 1
  store i32 %sub352, i32* %firstmp, align 4
  %345 = load i32, i32* %lgth1, align 4
  %sub353 = sub nsw i32 %345, 2
  store i32 %sub353, i32* %i, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.573, %for.end.351
  %346 = load i32, i32* %i, align 4
  %cmp355 = icmp sgt i32 %346, -1
  br i1 %cmp355, label %for.body.357, label %for.end.575

for.body.357:                                     ; preds = %for.cond.354
  %347 = load float*, float** %previousw, align 8
  store float* %347, float** %wtmp, align 8
  %348 = load float*, float** %currentw, align 8
  store float* %348, float** %previousw, align 8
  %349 = load float*, float** %wtmp, align 8
  store float* %349, float** %currentw, align 8
  %350 = load i32, i32* %i, align 4
  %add358 = add nsw i32 %350, 1
  %idxprom359 = sext i32 %add358 to i64
  %351 = load float*, float** %initverticalw, align 8
  %arrayidx360 = getelementptr inbounds float, float* %351, i64 %idxprom359
  %352 = load float, float* %arrayidx360, align 4
  %353 = load i32, i32* %lgth2, align 4
  %sub361 = sub nsw i32 %353, 1
  %idxprom362 = sext i32 %sub361 to i64
  %354 = load float*, float** %previousw, align 8
  %arrayidx363 = getelementptr inbounds float, float* %354, i64 %idxprom362
  store float %352, float* %arrayidx363, align 4
  %355 = load float*, float** %currentw, align 8
  %356 = load float**, float*** %cpmx1.addr, align 8
  %357 = load i32, i32* %ist.addr, align 4
  %idx.ext364 = sext i32 %357 to i64
  %add.ptr365 = getelementptr inbounds float*, float** %356, i64 %idx.ext364
  %358 = load float**, float*** %cpmx2.addr, align 8
  %359 = load i32, i32* %jst.addr, align 4
  %idx.ext366 = sext i32 %359 to i64
  %add.ptr367 = getelementptr inbounds float*, float** %358, i64 %idx.ext366
  %360 = load i32, i32* %i, align 4
  %361 = load i32, i32* %lgth2, align 4
  %362 = load float**, float*** %floatwork, align 8
  %363 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %355, float** %add.ptr365, float** %add.ptr367, i32 %360, i32 %361, float** %362, i32** %363, i32 0)
  %364 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %364 to i64
  %365 = load float*, float** %initverticalw, align 8
  %arrayidx369 = getelementptr inbounds float, float* %365, i64 %idxprom368
  %366 = load float, float* %arrayidx369, align 4
  %367 = load i32, i32* %lgth2, align 4
  %sub370 = sub nsw i32 %367, 1
  %idxprom371 = sext i32 %sub370 to i64
  %368 = load float*, float** %currentw, align 8
  %arrayidx372 = getelementptr inbounds float, float* %368, i64 %idxprom371
  store float %366, float* %arrayidx372, align 4
  %369 = load i32, i32* %lgth2, align 4
  %sub373 = sub nsw i32 %369, 1
  %idxprom374 = sext i32 %sub373 to i64
  %370 = load float*, float** %previousw, align 8
  %arrayidx375 = getelementptr inbounds float, float* %370, i64 %idxprom374
  %371 = load float, float* %arrayidx375, align 4
  %372 = load i32, i32* %lgth2, align 4
  %sub376 = sub nsw i32 %372, 2
  %idxprom377 = sext i32 %sub376 to i64
  %373 = load float*, float** %fgcp2, align 8
  %arrayidx378 = getelementptr inbounds float, float* %373, i64 %idxprom377
  %374 = load float, float* %arrayidx378, align 4
  %add379 = fadd float %371, %374
  store float %add379, float* %mi, align 4
  %375 = load i32, i32* %lgth2, align 4
  %sub380 = sub nsw i32 %375, 1
  store i32 %sub380, i32* %mpi, align 4
  %376 = load float*, float** %m, align 8
  %377 = load i32, i32* %lgth2, align 4
  %idx.ext381 = sext i32 %377 to i64
  %add.ptr382 = getelementptr inbounds float, float* %376, i64 %idx.ext381
  %add.ptr383 = getelementptr inbounds float, float* %add.ptr382, i64 -2
  store float* %add.ptr383, float** %mjpt, align 8
  %378 = load float*, float** %previousw, align 8
  %379 = load i32, i32* %lgth2, align 4
  %idx.ext384 = sext i32 %379 to i64
  %add.ptr385 = getelementptr inbounds float, float* %378, i64 %idx.ext384
  %add.ptr386 = getelementptr inbounds float, float* %add.ptr385, i64 -1
  store float* %add.ptr386, float** %prept, align 8
  %380 = load float*, float** %currentw, align 8
  %381 = load i32, i32* %lgth2, align 4
  %idx.ext387 = sext i32 %381 to i64
  %add.ptr388 = getelementptr inbounds float, float* %380, i64 %idx.ext387
  %add.ptr389 = getelementptr inbounds float, float* %add.ptr388, i64 -2
  store float* %add.ptr389, float** %curpt, align 8
  %382 = load i32*, i32** %mp, align 8
  %383 = load i32, i32* %lgth2, align 4
  %idx.ext390 = sext i32 %383 to i64
  %add.ptr391 = getelementptr inbounds i32, i32* %382, i64 %idx.ext390
  %add.ptr392 = getelementptr inbounds i32, i32* %add.ptr391, i64 -2
  store i32* %add.ptr392, i32** %mpjpt, align 8
  %384 = load i32, i32* %lgth2, align 4
  %sub393 = sub nsw i32 %384, 2
  store i32 %sub393, i32* %j, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.470, %for.body.357
  %385 = load i32, i32* %j, align 4
  %cmp395 = icmp sgt i32 %385, -1
  br i1 %cmp395, label %for.body.397, label %for.end.472

for.body.397:                                     ; preds = %for.cond.394
  %386 = load float*, float** %prept, align 8
  %387 = load float, float* %386, align 4
  store float %387, float* %wm, align 4
  %388 = load i32, i32* %i, align 4
  %add398 = add nsw i32 %388, 1
  store i32 %add398, i32* %ijpi, align 4
  %389 = load i32, i32* %j, align 4
  %add399 = add nsw i32 %389, 1
  store i32 %add399, i32* %ijpj, align 4
  %390 = load float, float* %mi, align 4
  %391 = load i32, i32* %j, align 4
  %add400 = add nsw i32 %391, 1
  %idxprom401 = sext i32 %add400 to i64
  %392 = load float*, float** %ogcp2, align 8
  %arrayidx402 = getelementptr inbounds float, float* %392, i64 %idxprom401
  %393 = load float, float* %arrayidx402, align 4
  %add403 = fadd float %390, %393
  store float %add403, float* %g, align 4
  %394 = load float, float* %g, align 4
  %395 = load float, float* %wm, align 4
  %cmp404 = fcmp ogt float %394, %395
  br i1 %cmp404, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %for.body.397
  %396 = load float, float* %g, align 4
  store float %396, float* %wm, align 4
  %397 = load i32, i32* %mpi, align 4
  store i32 %397, i32* %ijpj, align 4
  %398 = load i32, i32* %i, align 4
  %add407 = add nsw i32 %398, 1
  store i32 %add407, i32* %ijpi, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %for.body.397
  %399 = load float*, float** %prept, align 8
  %400 = load float, float* %399, align 4
  %401 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %401 to i64
  %402 = load float*, float** %fgcp2, align 8
  %arrayidx410 = getelementptr inbounds float, float* %402, i64 %idxprom409
  %403 = load float, float* %arrayidx410, align 4
  %add411 = fadd float %400, %403
  store float %add411, float* %g, align 4
  %404 = load float, float* %g, align 4
  %405 = load float, float* %mi, align 4
  %cmp412 = fcmp oge float %404, %405
  br i1 %cmp412, label %if.then.414, label %if.end.416

if.then.414:                                      ; preds = %if.end.408
  %406 = load float, float* %g, align 4
  store float %406, float* %mi, align 4
  %407 = load i32, i32* %j, align 4
  %add415 = add nsw i32 %407, 1
  store i32 %add415, i32* %mpi, align 4
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.414, %if.end.408
  %408 = load float*, float** %mjpt, align 8
  %409 = load float, float* %408, align 4
  %410 = load i32, i32* %i, align 4
  %add417 = add nsw i32 %410, 1
  %idxprom418 = sext i32 %add417 to i64
  %411 = load float*, float** %ogcp1, align 8
  %arrayidx419 = getelementptr inbounds float, float* %411, i64 %idxprom418
  %412 = load float, float* %arrayidx419, align 4
  %add420 = fadd float %409, %412
  store float %add420, float* %g, align 4
  %413 = load float, float* %g, align 4
  %414 = load float, float* %wm, align 4
  %cmp421 = fcmp ogt float %413, %414
  br i1 %cmp421, label %if.then.423, label %if.end.425

if.then.423:                                      ; preds = %if.end.416
  %415 = load float, float* %g, align 4
  store float %415, float* %wm, align 4
  %416 = load i32*, i32** %mpjpt, align 8
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %ijpi, align 4
  %418 = load i32, i32* %j, align 4
  %add424 = add nsw i32 %418, 1
  store i32 %add424, i32* %ijpj, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.423, %if.end.416
  %419 = load float*, float** %prept, align 8
  %420 = load float, float* %419, align 4
  %421 = load i32, i32* %i, align 4
  %idxprom426 = sext i32 %421 to i64
  %422 = load float*, float** %fgcp1, align 8
  %arrayidx427 = getelementptr inbounds float, float* %422, i64 %idxprom426
  %423 = load float, float* %arrayidx427, align 4
  %add428 = fadd float %420, %423
  store float %add428, float* %g, align 4
  %424 = load float, float* %g, align 4
  %425 = load float*, float** %mjpt, align 8
  %426 = load float, float* %425, align 4
  %cmp429 = fcmp oge float %424, %426
  br i1 %cmp429, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %if.end.425
  %427 = load float, float* %g, align 4
  %428 = load float*, float** %mjpt, align 8
  store float %427, float* %428, align 4
  %429 = load i32, i32* %i, align 4
  %add432 = add nsw i32 %429, 1
  %430 = load i32*, i32** %mpjpt, align 8
  store i32 %add432, i32* %430, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %if.end.425
  %431 = load i32, i32* %i, align 4
  %432 = load i32, i32* %jumpi, align 4
  %cmp434 = icmp eq i32 %431, %432
  br i1 %cmp434, label %if.then.440, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %if.end.433
  %433 = load i32, i32* %i, align 4
  %434 = load i32, i32* %imid, align 4
  %sub437 = sub nsw i32 %434, 1
  %cmp438 = icmp eq i32 %433, %sub437
  br i1 %cmp438, label %if.then.440, label %if.end.445

if.then.440:                                      ; preds = %lor.lhs.false.436, %if.end.433
  %435 = load i32, i32* %ijpi, align 4
  %436 = load i32, i32* %j, align 4
  %idxprom441 = sext i32 %436 to i64
  %437 = load i32*, i32** %jumpforwi, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %437, i64 %idxprom441
  store i32 %435, i32* %arrayidx442, align 4
  %438 = load i32, i32* %ijpj, align 4
  %439 = load i32, i32* %j, align 4
  %idxprom443 = sext i32 %439 to i64
  %440 = load i32*, i32** %jumpforwj, align 8
  %arrayidx444 = getelementptr inbounds i32, i32* %440, i64 %idxprom443
  store i32 %438, i32* %arrayidx444, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.440, %lor.lhs.false.436
  %441 = load i32, i32* %i, align 4
  %442 = load i32, i32* %imid, align 4
  %cmp446 = icmp eq i32 %441, %442
  br i1 %cmp446, label %if.then.448, label %if.end.456

if.then.448:                                      ; preds = %if.end.445
  %443 = load float, float* %wm, align 4
  %444 = load i32, i32* %j, align 4
  %idxprom449 = sext i32 %444 to i64
  %445 = load float*, float** %midw, align 8
  %arrayidx450 = getelementptr inbounds float, float* %445, i64 %idxprom449
  %446 = load float, float* %arrayidx450, align 4
  %add451 = fadd float %446, %443
  store float %add451, float* %arrayidx450, align 4
  %447 = load float*, float** %mjpt, align 8
  %448 = load float, float* %447, align 4
  %449 = load i32, i32* %j, align 4
  %add452 = add nsw i32 %449, 1
  %idxprom453 = sext i32 %add452 to i64
  %450 = load float*, float** %midm, align 8
  %arrayidx454 = getelementptr inbounds float, float* %450, i64 %idxprom453
  %451 = load float, float* %arrayidx454, align 4
  %add455 = fadd float %451, %448
  store float %add455, float* %arrayidx454, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.448, %if.end.445
  %452 = load i32, i32* %i, align 4
  %453 = load i32, i32* %imid, align 4
  %sub457 = sub nsw i32 %453, 1
  %cmp458 = icmp eq i32 %452, %sub457
  br i1 %cmp458, label %if.then.460, label %if.end.464

if.then.460:                                      ; preds = %if.end.456
  %454 = load float, float* %mi, align 4
  %455 = load i32, i32* %j, align 4
  %idxprom461 = sext i32 %455 to i64
  %456 = load float*, float** %midn, align 8
  %arrayidx462 = getelementptr inbounds float, float* %456, i64 %idxprom461
  %457 = load float, float* %arrayidx462, align 4
  %add463 = fadd float %457, %454
  store float %add463, float* %arrayidx462, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.460, %if.end.456
  %458 = load float, float* %wm, align 4
  %459 = load float*, float** %curpt, align 8
  %460 = load float, float* %459, align 4
  %add465 = fadd float %460, %458
  store float %add465, float* %459, align 4
  %461 = load float*, float** %mjpt, align 8
  %incdec.ptr466 = getelementptr inbounds float, float* %461, i32 -1
  store float* %incdec.ptr466, float** %mjpt, align 8
  %462 = load float*, float** %prept, align 8
  %incdec.ptr467 = getelementptr inbounds float, float* %462, i32 -1
  store float* %incdec.ptr467, float** %prept, align 8
  %463 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr468 = getelementptr inbounds i32, i32* %463, i32 -1
  store i32* %incdec.ptr468, i32** %mpjpt, align 8
  %464 = load float*, float** %curpt, align 8
  %incdec.ptr469 = getelementptr inbounds float, float* %464, i32 -1
  store float* %incdec.ptr469, float** %curpt, align 8
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.464
  %465 = load i32, i32* %j, align 4
  %dec471 = add nsw i32 %465, -1
  store i32 %dec471, i32* %j, align 4
  br label %for.cond.394

for.end.472:                                      ; preds = %for.cond.394
  %466 = load float*, float** %prept, align 8
  %467 = load float, float* %466, align 4
  %468 = load i32, i32* %i, align 4
  %idxprom473 = sext i32 %468 to i64
  %469 = load float*, float** %fgcp1, align 8
  %arrayidx474 = getelementptr inbounds float, float* %469, i64 %idxprom473
  %470 = load float, float* %arrayidx474, align 4
  %add475 = fadd float %467, %470
  store float %add475, float* %g, align 4
  %471 = load float, float* %firstm, align 4
  %472 = load float, float* %g, align 4
  %cmp476 = fcmp olt float %471, %472
  br i1 %cmp476, label %if.then.478, label %if.end.480

if.then.478:                                      ; preds = %for.end.472
  %473 = load float, float* %g, align 4
  store float %473, float* %firstm, align 4
  %474 = load i32, i32* %i, align 4
  %add479 = add nsw i32 %474, 1
  store i32 %add479, i32* %firstmp, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.478, %for.end.472
  %475 = load i32, i32* %i, align 4
  %476 = load i32, i32* %imid, align 4
  %cmp481 = icmp eq i32 %475, %476
  br i1 %cmp481, label %if.then.483, label %if.end.488

if.then.483:                                      ; preds = %if.end.480
  %477 = load float, float* %firstm, align 4
  %478 = load i32, i32* %j, align 4
  %add484 = add nsw i32 %478, 1
  %idxprom485 = sext i32 %add484 to i64
  %479 = load float*, float** %midm, align 8
  %arrayidx486 = getelementptr inbounds float, float* %479, i64 %idxprom485
  %480 = load float, float* %arrayidx486, align 4
  %add487 = fadd float %480, %477
  store float %add487, float* %arrayidx486, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.483, %if.end.480
  %481 = load i32, i32* %i, align 4
  %482 = load i32, i32* %imid, align 4
  %sub489 = sub nsw i32 %482, 1
  %cmp490 = icmp eq i32 %481, %sub489
  br i1 %cmp490, label %if.then.492, label %if.end.552

if.then.492:                                      ; preds = %if.end.488
  %483 = load float*, float** %midw, align 8
  %arrayidx493 = getelementptr inbounds float, float* %483, i64 1
  %484 = load float, float* %arrayidx493, align 4
  store float %484, float* %maxwm, align 4
  store i32 0, i32* %jmid, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.494

for.cond.494:                                     ; preds = %for.inc.505, %if.then.492
  %485 = load i32, i32* %j, align 4
  %486 = load i32, i32* %lgth2, align 4
  %sub495 = sub nsw i32 %486, 1
  %cmp496 = icmp slt i32 %485, %sub495
  br i1 %cmp496, label %for.body.498, label %for.end.507

for.body.498:                                     ; preds = %for.cond.494
  %487 = load i32, i32* %j, align 4
  %idxprom499 = sext i32 %487 to i64
  %488 = load float*, float** %midw, align 8
  %arrayidx500 = getelementptr inbounds float, float* %488, i64 %idxprom499
  %489 = load float, float* %arrayidx500, align 4
  store float %489, float* %wm, align 4
  %490 = load float, float* %wm, align 4
  %491 = load float, float* %maxwm, align 4
  %cmp501 = fcmp ogt float %490, %491
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %for.body.498
  %492 = load i32, i32* %j, align 4
  store i32 %492, i32* %jmid, align 4
  %493 = load float, float* %wm, align 4
  store float %493, float* %maxwm, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %for.body.498
  br label %for.inc.505

for.inc.505:                                      ; preds = %if.end.504
  %494 = load i32, i32* %j, align 4
  %inc506 = add nsw i32 %494, 1
  store i32 %inc506, i32* %j, align 4
  br label %for.cond.494

for.end.507:                                      ; preds = %for.cond.494
  store i32 0, i32* %j, align 4
  br label %for.cond.508

for.cond.508:                                     ; preds = %for.inc.519, %for.end.507
  %495 = load i32, i32* %j, align 4
  %496 = load i32, i32* %lgth2, align 4
  %add509 = add nsw i32 %496, 1
  %cmp510 = icmp slt i32 %495, %add509
  br i1 %cmp510, label %for.body.512, label %for.end.521

for.body.512:                                     ; preds = %for.cond.508
  %497 = load i32, i32* %j, align 4
  %idxprom513 = sext i32 %497 to i64
  %498 = load float*, float** %midm, align 8
  %arrayidx514 = getelementptr inbounds float, float* %498, i64 %idxprom513
  %499 = load float, float* %arrayidx514, align 4
  store float %499, float* %wm, align 4
  %500 = load float, float* %wm, align 4
  %501 = load float, float* %maxwm, align 4
  %cmp515 = fcmp ogt float %500, %501
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %for.body.512
  %502 = load i32, i32* %j, align 4
  store i32 %502, i32* %jmid, align 4
  %503 = load float, float* %wm, align 4
  store float %503, float* %maxwm, align 4
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.517, %for.body.512
  br label %for.inc.519

for.inc.519:                                      ; preds = %if.end.518
  %504 = load i32, i32* %j, align 4
  %inc520 = add nsw i32 %504, 1
  store i32 %inc520, i32* %j, align 4
  br label %for.cond.508

for.end.521:                                      ; preds = %for.cond.508
  %505 = load i32, i32* %jmid, align 4
  %idxprom522 = sext i32 %505 to i64
  %506 = load float*, float** %midw, align 8
  %arrayidx523 = getelementptr inbounds float, float* %506, i64 %idxprom522
  %507 = load float, float* %arrayidx523, align 4
  store float %507, float* %wm, align 4
  %508 = load i32, i32* %imid, align 4
  %sub524 = sub nsw i32 %508, 1
  store i32 %sub524, i32* %jumpi, align 4
  %509 = load i32, i32* %jmid, align 4
  %sub525 = sub nsw i32 %509, 1
  store i32 %sub525, i32* %jumpj, align 4
  %510 = load i32, i32* %jmid, align 4
  %cmp526 = icmp sgt i32 %510, 0
  br i1 %cmp526, label %land.lhs.true, label %if.end.540

land.lhs.true:                                    ; preds = %for.end.521
  %511 = load i32, i32* %jmid, align 4
  %sub528 = sub nsw i32 %511, 1
  %idxprom529 = sext i32 %sub528 to i64
  %512 = load float*, float** %midn, align 8
  %arrayidx530 = getelementptr inbounds float, float* %512, i64 %idxprom529
  %513 = load float, float* %arrayidx530, align 4
  %514 = load float, float* %wm, align 4
  %cmp531 = fcmp ogt float %513, %514
  br i1 %cmp531, label %if.then.533, label %if.end.540

if.then.533:                                      ; preds = %land.lhs.true
  %515 = load i32, i32* %imid, align 4
  %sub534 = sub nsw i32 %515, 1
  store i32 %sub534, i32* %jumpi, align 4
  %516 = load i32, i32* %jmid, align 4
  %idxprom535 = sext i32 %516 to i64
  %517 = load i32*, i32** %jumpbacki, align 8
  %arrayidx536 = getelementptr inbounds i32, i32* %517, i64 %idxprom535
  %518 = load i32, i32* %arrayidx536, align 4
  store i32 %518, i32* %jumpj, align 4
  %519 = load i32, i32* %jmid, align 4
  %sub537 = sub nsw i32 %519, 1
  %idxprom538 = sext i32 %sub537 to i64
  %520 = load float*, float** %midn, align 8
  %arrayidx539 = getelementptr inbounds float, float* %520, i64 %idxprom538
  %521 = load float, float* %arrayidx539, align 4
  store float %521, float* %wm, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.533, %land.lhs.true, %for.end.521
  %522 = load i32, i32* %jmid, align 4
  %idxprom541 = sext i32 %522 to i64
  %523 = load float*, float** %midm, align 8
  %arrayidx542 = getelementptr inbounds float, float* %523, i64 %idxprom541
  %524 = load float, float* %arrayidx542, align 4
  %525 = load float, float* %wm, align 4
  %cmp543 = fcmp ogt float %524, %525
  br i1 %cmp543, label %if.then.545, label %if.end.551

if.then.545:                                      ; preds = %if.end.540
  %526 = load i32, i32* %jmid, align 4
  %idxprom546 = sext i32 %526 to i64
  %527 = load i32*, i32** %jumpbackj, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %527, i64 %idxprom546
  %528 = load i32, i32* %arrayidx547, align 4
  store i32 %528, i32* %jumpi, align 4
  %529 = load i32, i32* %jmid, align 4
  %sub548 = sub nsw i32 %529, 1
  store i32 %sub548, i32* %jumpj, align 4
  %530 = load i32, i32* %jmid, align 4
  %idxprom549 = sext i32 %530 to i64
  %531 = load float*, float** %midm, align 8
  %arrayidx550 = getelementptr inbounds float, float* %531, i64 %idxprom549
  %532 = load float, float* %arrayidx550, align 4
  store float %532, float* %wm, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.545, %if.end.540
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.end.488
  %533 = load i32, i32* %i, align 4
  %534 = load i32, i32* %jumpi, align 4
  %cmp553 = icmp eq i32 %533, %534
  br i1 %cmp553, label %if.then.555, label %if.end.572

if.then.555:                                      ; preds = %if.end.552
  %535 = load i32, i32* %jmid, align 4
  %cmp556 = icmp eq i32 %535, 0
  br i1 %cmp556, label %if.then.558, label %if.else

if.then.558:                                      ; preds = %if.then.555
  store i32 0, i32* %jumpj, align 4
  store i32 1, i32* %jmid, align 4
  %536 = load i32, i32* %firstmp, align 4
  %sub559 = sub nsw i32 %536, 1
  store i32 %sub559, i32* %jumpi, align 4
  %537 = load i32, i32* %firstmp, align 4
  store i32 %537, i32* %imid, align 4
  br label %if.end.571

if.else:                                          ; preds = %if.then.555
  %538 = load i32, i32* %jmid, align 4
  %539 = load i32, i32* %lgth2, align 4
  %cmp560 = icmp sge i32 %538, %539
  br i1 %cmp560, label %if.then.562, label %if.else.565

if.then.562:                                      ; preds = %if.else
  %540 = load i32, i32* %imid, align 4
  %sub563 = sub nsw i32 %540, 1
  store i32 %sub563, i32* %jumpi, align 4
  %541 = load i32, i32* %lgth2, align 4
  store i32 %541, i32* %jmid, align 4
  %542 = load i32, i32* %lgth2, align 4
  %sub564 = sub nsw i32 %542, 1
  store i32 %sub564, i32* %jumpj, align 4
  br label %if.end.570

if.else.565:                                      ; preds = %if.else
  %543 = load i32, i32* %jumpj, align 4
  %idxprom566 = sext i32 %543 to i64
  %544 = load i32*, i32** %jumpforwi, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %544, i64 %idxprom566
  %545 = load i32, i32* %arrayidx567, align 4
  store i32 %545, i32* %imid, align 4
  %546 = load i32, i32* %jumpj, align 4
  %idxprom568 = sext i32 %546 to i64
  %547 = load i32*, i32** %jumpforwj, align 8
  %arrayidx569 = getelementptr inbounds i32, i32* %547, i64 %idxprom568
  %548 = load i32, i32* %arrayidx569, align 4
  store i32 %548, i32* %jmid, align 4
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.565, %if.then.562
  br label %if.end.571

if.end.571:                                       ; preds = %if.end.570, %if.then.558
  br label %for.end.575

if.end.572:                                       ; preds = %if.end.552
  br label %for.inc.573

for.inc.573:                                      ; preds = %if.end.572
  %549 = load i32, i32* %i, align 4
  %dec574 = add nsw i32 %549, -1
  store i32 %dec574, i32* %i, align 4
  br label %for.cond.354

for.end.575:                                      ; preds = %if.end.571, %for.cond.354
  %550 = load float*, float** %w1, align 8
  call void @FreeFloatVec(float* %550)
  %551 = load float*, float** %w2, align 8
  call void @FreeFloatVec(float* %551)
  %552 = load float*, float** %initverticalw, align 8
  call void @FreeFloatVec(float* %552)
  %553 = load float*, float** %lastverticalw, align 8
  call void @FreeFloatVec(float* %553)
  %554 = load float*, float** %midw, align 8
  call void @FreeFloatVec(float* %554)
  %555 = load float*, float** %midm, align 8
  call void @FreeFloatVec(float* %555)
  %556 = load float*, float** %midn, align 8
  call void @FreeFloatVec(float* %556)
  %557 = load i32*, i32** %jumpbacki, align 8
  call void @FreeIntVec(i32* %557)
  %558 = load i32*, i32** %jumpbackj, align 8
  call void @FreeIntVec(i32* %558)
  %559 = load i32*, i32** %jumpforwi, align 8
  call void @FreeIntVec(i32* %559)
  %560 = load i32*, i32** %jumpforwj, align 8
  call void @FreeIntVec(i32* %560)
  %561 = load i32*, i32** %jumpdummi, align 8
  call void @FreeIntVec(i32* %561)
  %562 = load i32*, i32** %jumpdummj, align 8
  call void @FreeIntVec(i32* %562)
  %563 = load float*, float** %m, align 8
  call void @FreeFloatVec(float* %563)
  %564 = load i32*, i32** %mp, align 8
  call void @FreeIntVec(i32* %564)
  %565 = load float**, float*** %floatwork, align 8
  call void @FreeFloatMtx(float** %565)
  %566 = load i32**, i32*** %intwork, align 8
  call void @FreeIntMtx(i32** %566)
  %567 = load i32, i32* %icyc.addr, align 4
  %568 = load i32, i32* %jcyc.addr, align 4
  %569 = load double*, double** %eff1.addr, align 8
  %570 = load double*, double** %eff2.addr, align 8
  %571 = load i8**, i8*** %seq1.addr, align 8
  %572 = load i8**, i8*** %seq2.addr, align 8
  %573 = load float**, float*** %cpmx1.addr, align 8
  %574 = load float**, float*** %cpmx2.addr, align 8
  %575 = load i32, i32* %ist.addr, align 4
  %576 = load i32, i32* %ist.addr, align 4
  %577 = load i32, i32* %jumpi, align 4
  %add576 = add nsw i32 %576, %577
  %578 = load i32, i32* %jst.addr, align 4
  %579 = load i32, i32* %jst.addr, align 4
  %580 = load i32, i32* %jumpj, align 4
  %add577 = add nsw i32 %579, %580
  %581 = load i32, i32* %alloclen.addr, align 4
  %582 = load i8**, i8*** %aseq1, align 8
  %583 = load i8**, i8*** %aseq2, align 8
  %584 = load i32, i32* %depth.addr, align 4
  %585 = load float**, float*** %gapinfo.addr, align 8
  %call578 = call float @MSalignmm_rec(i32 %567, i32 %568, double* %569, double* %570, i8** %571, i8** %572, float** %573, float** %574, i32 %575, i32 %add576, i32 %578, i32 %add577, i32 %581, i8** %582, i8** %583, i32 %584, float** %585)
  store float %call578, float* %value, align 4
  %586 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx579 = getelementptr inbounds i8*, i8** %586, i64 0
  %587 = load i8*, i8** %arrayidx579, align 8
  %call580 = call i64 @strlen(i8* %587) #5
  %conv581 = trunc i64 %call580 to i32
  store i32 %conv581, i32* %len, align 4
  %588 = load i32, i32* %jmid, align 4
  %589 = load i32, i32* %jumpj, align 4
  %sub582 = sub nsw i32 %588, %589
  %sub583 = sub nsw i32 %sub582, 1
  store i32 %sub583, i32* %l, align 4
  %590 = load i32, i32* %l, align 4
  %cmp584 = icmp sgt i32 %590, 0
  br i1 %cmp584, label %if.then.586, label %if.end.644

if.then.586:                                      ; preds = %for.end.575
  store i32 0, i32* %i, align 4
  br label %for.cond.587

for.cond.587:                                     ; preds = %for.inc.593, %if.then.586
  %591 = load i32, i32* %i, align 4
  %592 = load i32, i32* %l, align 4
  %cmp588 = icmp slt i32 %591, %592
  br i1 %cmp588, label %for.body.590, label %for.end.595

for.body.590:                                     ; preds = %for.cond.587
  %593 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %593 to i64
  %594 = load i8*, i8** %gaps, align 8
  %arrayidx592 = getelementptr inbounds i8, i8* %594, i64 %idxprom591
  store i8 45, i8* %arrayidx592, align 1
  br label %for.inc.593

for.inc.593:                                      ; preds = %for.body.590
  %595 = load i32, i32* %i, align 4
  %inc594 = add nsw i32 %595, 1
  store i32 %inc594, i32* %i, align 4
  br label %for.cond.587

for.end.595:                                      ; preds = %for.cond.587
  %596 = load i32, i32* %i, align 4
  %idxprom596 = sext i32 %596 to i64
  %597 = load i8*, i8** %gaps, align 8
  %arrayidx597 = getelementptr inbounds i8, i8* %597, i64 %idxprom596
  store i8 0, i8* %arrayidx597, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.598

for.cond.598:                                     ; preds = %for.inc.610, %for.end.595
  %598 = load i32, i32* %i, align 4
  %599 = load i32, i32* %icyc.addr, align 4
  %cmp599 = icmp slt i32 %598, %599
  br i1 %cmp599, label %for.body.601, label %for.end.612

for.body.601:                                     ; preds = %for.cond.598
  %600 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %600 to i64
  %601 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx603 = getelementptr inbounds i8*, i8** %601, i64 %idxprom602
  %602 = load i8*, i8** %arrayidx603, align 8
  %603 = load i8*, i8** %gaps, align 8
  %call604 = call i8* @strcat(i8* %602, i8* %603) #7
  %604 = load i32, i32* %len, align 4
  %605 = load i32, i32* %l, align 4
  %add605 = add nsw i32 %604, %605
  %idxprom606 = sext i32 %add605 to i64
  %606 = load i32, i32* %i, align 4
  %idxprom607 = sext i32 %606 to i64
  %607 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx608 = getelementptr inbounds i8*, i8** %607, i64 %idxprom607
  %608 = load i8*, i8** %arrayidx608, align 8
  %arrayidx609 = getelementptr inbounds i8, i8* %608, i64 %idxprom606
  store i8 0, i8* %arrayidx609, align 1
  br label %for.inc.610

for.inc.610:                                      ; preds = %for.body.601
  %609 = load i32, i32* %i, align 4
  %inc611 = add nsw i32 %609, 1
  store i32 %inc611, i32* %i, align 4
  br label %for.cond.598

for.end.612:                                      ; preds = %for.cond.598
  store i32 0, i32* %j, align 4
  br label %for.cond.613

for.cond.613:                                     ; preds = %for.inc.633, %for.end.612
  %610 = load i32, i32* %j, align 4
  %611 = load i32, i32* %jcyc.addr, align 4
  %cmp614 = icmp slt i32 %610, %611
  br i1 %cmp614, label %for.body.616, label %for.end.635

for.body.616:                                     ; preds = %for.cond.613
  %612 = load i32, i32* %j, align 4
  %idxprom617 = sext i32 %612 to i64
  %613 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx618 = getelementptr inbounds i8*, i8** %613, i64 %idxprom617
  %614 = load i8*, i8** %arrayidx618, align 8
  %615 = load i32, i32* %j, align 4
  %idxprom619 = sext i32 %615 to i64
  %616 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx620 = getelementptr inbounds i8*, i8** %616, i64 %idxprom619
  %617 = load i8*, i8** %arrayidx620, align 8
  %618 = load i32, i32* %jst.addr, align 4
  %idx.ext621 = sext i32 %618 to i64
  %add.ptr622 = getelementptr inbounds i8, i8* %617, i64 %idx.ext621
  %619 = load i32, i32* %jumpj, align 4
  %idx.ext623 = sext i32 %619 to i64
  %add.ptr624 = getelementptr inbounds i8, i8* %add.ptr622, i64 %idx.ext623
  %add.ptr625 = getelementptr inbounds i8, i8* %add.ptr624, i64 1
  %620 = load i32, i32* %l, align 4
  %conv626 = sext i32 %620 to i64
  %call627 = call i8* @strncat(i8* %614, i8* %add.ptr625, i64 %conv626) #7
  %621 = load i32, i32* %len, align 4
  %622 = load i32, i32* %l, align 4
  %add628 = add nsw i32 %621, %622
  %idxprom629 = sext i32 %add628 to i64
  %623 = load i32, i32* %j, align 4
  %idxprom630 = sext i32 %623 to i64
  %624 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx631 = getelementptr inbounds i8*, i8** %624, i64 %idxprom630
  %625 = load i8*, i8** %arrayidx631, align 8
  %arrayidx632 = getelementptr inbounds i8, i8* %625, i64 %idxprom629
  store i8 0, i8* %arrayidx632, align 1
  br label %for.inc.633

for.inc.633:                                      ; preds = %for.body.616
  %626 = load i32, i32* %j, align 4
  %inc634 = add nsw i32 %626, 1
  store i32 %inc634, i32* %j, align 4
  br label %for.cond.613

for.end.635:                                      ; preds = %for.cond.613
  %627 = load i32, i32* %jumpj, align 4
  %add636 = add nsw i32 %627, 1
  %idxprom637 = sext i32 %add636 to i64
  %628 = load float*, float** %ogcp2, align 8
  %arrayidx638 = getelementptr inbounds float, float* %628, i64 %idxprom637
  %629 = load float, float* %arrayidx638, align 4
  %630 = load i32, i32* %jmid, align 4
  %sub639 = sub nsw i32 %630, 1
  %idxprom640 = sext i32 %sub639 to i64
  %631 = load float*, float** %fgcp2, align 8
  %arrayidx641 = getelementptr inbounds float, float* %631, i64 %idxprom640
  %632 = load float, float* %arrayidx641, align 4
  %add642 = fadd float %629, %632
  %633 = load float, float* %value, align 4
  %add643 = fadd float %633, %add642
  store float %add643, float* %value, align 4
  br label %if.end.644

if.end.644:                                       ; preds = %for.end.635, %for.end.575
  %634 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx645 = getelementptr inbounds i8*, i8** %634, i64 0
  %635 = load i8*, i8** %arrayidx645, align 8
  %call646 = call i64 @strlen(i8* %635) #5
  %conv647 = trunc i64 %call646 to i32
  store i32 %conv647, i32* %len, align 4
  %636 = load i32, i32* %imid, align 4
  %637 = load i32, i32* %jumpi, align 4
  %sub648 = sub nsw i32 %636, %637
  %sub649 = sub nsw i32 %sub648, 1
  store i32 %sub649, i32* %l, align 4
  %638 = load i32, i32* %l, align 4
  %cmp650 = icmp sgt i32 %638, 0
  br i1 %cmp650, label %if.then.652, label %if.end.710

if.then.652:                                      ; preds = %if.end.644
  store i32 0, i32* %i, align 4
  br label %for.cond.653

for.cond.653:                                     ; preds = %for.inc.659, %if.then.652
  %639 = load i32, i32* %i, align 4
  %640 = load i32, i32* %l, align 4
  %cmp654 = icmp slt i32 %639, %640
  br i1 %cmp654, label %for.body.656, label %for.end.661

for.body.656:                                     ; preds = %for.cond.653
  %641 = load i32, i32* %i, align 4
  %idxprom657 = sext i32 %641 to i64
  %642 = load i8*, i8** %gaps, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %642, i64 %idxprom657
  store i8 45, i8* %arrayidx658, align 1
  br label %for.inc.659

for.inc.659:                                      ; preds = %for.body.656
  %643 = load i32, i32* %i, align 4
  %inc660 = add nsw i32 %643, 1
  store i32 %inc660, i32* %i, align 4
  br label %for.cond.653

for.end.661:                                      ; preds = %for.cond.653
  %644 = load i32, i32* %i, align 4
  %idxprom662 = sext i32 %644 to i64
  %645 = load i8*, i8** %gaps, align 8
  %arrayidx663 = getelementptr inbounds i8, i8* %645, i64 %idxprom662
  store i8 0, i8* %arrayidx663, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.664

for.cond.664:                                     ; preds = %for.inc.684, %for.end.661
  %646 = load i32, i32* %i, align 4
  %647 = load i32, i32* %icyc.addr, align 4
  %cmp665 = icmp slt i32 %646, %647
  br i1 %cmp665, label %for.body.667, label %for.end.686

for.body.667:                                     ; preds = %for.cond.664
  %648 = load i32, i32* %i, align 4
  %idxprom668 = sext i32 %648 to i64
  %649 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx669 = getelementptr inbounds i8*, i8** %649, i64 %idxprom668
  %650 = load i8*, i8** %arrayidx669, align 8
  %651 = load i32, i32* %i, align 4
  %idxprom670 = sext i32 %651 to i64
  %652 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx671 = getelementptr inbounds i8*, i8** %652, i64 %idxprom670
  %653 = load i8*, i8** %arrayidx671, align 8
  %654 = load i32, i32* %ist.addr, align 4
  %idx.ext672 = sext i32 %654 to i64
  %add.ptr673 = getelementptr inbounds i8, i8* %653, i64 %idx.ext672
  %655 = load i32, i32* %jumpi, align 4
  %idx.ext674 = sext i32 %655 to i64
  %add.ptr675 = getelementptr inbounds i8, i8* %add.ptr673, i64 %idx.ext674
  %add.ptr676 = getelementptr inbounds i8, i8* %add.ptr675, i64 1
  %656 = load i32, i32* %l, align 4
  %conv677 = sext i32 %656 to i64
  %call678 = call i8* @strncat(i8* %650, i8* %add.ptr676, i64 %conv677) #7
  %657 = load i32, i32* %len, align 4
  %658 = load i32, i32* %l, align 4
  %add679 = add nsw i32 %657, %658
  %idxprom680 = sext i32 %add679 to i64
  %659 = load i32, i32* %i, align 4
  %idxprom681 = sext i32 %659 to i64
  %660 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx682 = getelementptr inbounds i8*, i8** %660, i64 %idxprom681
  %661 = load i8*, i8** %arrayidx682, align 8
  %arrayidx683 = getelementptr inbounds i8, i8* %661, i64 %idxprom680
  store i8 0, i8* %arrayidx683, align 1
  br label %for.inc.684

for.inc.684:                                      ; preds = %for.body.667
  %662 = load i32, i32* %i, align 4
  %inc685 = add nsw i32 %662, 1
  store i32 %inc685, i32* %i, align 4
  br label %for.cond.664

for.end.686:                                      ; preds = %for.cond.664
  store i32 0, i32* %j, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.699, %for.end.686
  %663 = load i32, i32* %j, align 4
  %664 = load i32, i32* %jcyc.addr, align 4
  %cmp688 = icmp slt i32 %663, %664
  br i1 %cmp688, label %for.body.690, label %for.end.701

for.body.690:                                     ; preds = %for.cond.687
  %665 = load i32, i32* %j, align 4
  %idxprom691 = sext i32 %665 to i64
  %666 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx692 = getelementptr inbounds i8*, i8** %666, i64 %idxprom691
  %667 = load i8*, i8** %arrayidx692, align 8
  %668 = load i8*, i8** %gaps, align 8
  %call693 = call i8* @strcat(i8* %667, i8* %668) #7
  %669 = load i32, i32* %len, align 4
  %670 = load i32, i32* %l, align 4
  %add694 = add nsw i32 %669, %670
  %idxprom695 = sext i32 %add694 to i64
  %671 = load i32, i32* %j, align 4
  %idxprom696 = sext i32 %671 to i64
  %672 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx697 = getelementptr inbounds i8*, i8** %672, i64 %idxprom696
  %673 = load i8*, i8** %arrayidx697, align 8
  %arrayidx698 = getelementptr inbounds i8, i8* %673, i64 %idxprom695
  store i8 0, i8* %arrayidx698, align 1
  br label %for.inc.699

for.inc.699:                                      ; preds = %for.body.690
  %674 = load i32, i32* %j, align 4
  %inc700 = add nsw i32 %674, 1
  store i32 %inc700, i32* %j, align 4
  br label %for.cond.687

for.end.701:                                      ; preds = %for.cond.687
  %675 = load i32, i32* %jumpi, align 4
  %add702 = add nsw i32 %675, 1
  %idxprom703 = sext i32 %add702 to i64
  %676 = load float*, float** %ogcp1, align 8
  %arrayidx704 = getelementptr inbounds float, float* %676, i64 %idxprom703
  %677 = load float, float* %arrayidx704, align 4
  %678 = load i32, i32* %imid, align 4
  %sub705 = sub nsw i32 %678, 1
  %idxprom706 = sext i32 %sub705 to i64
  %679 = load float*, float** %fgcp1, align 8
  %arrayidx707 = getelementptr inbounds float, float* %679, i64 %idxprom706
  %680 = load float, float* %arrayidx707, align 4
  %add708 = fadd float %677, %680
  %681 = load float, float* %value, align 4
  %add709 = fadd float %681, %add708
  store float %add709, float* %value, align 4
  br label %if.end.710

if.end.710:                                       ; preds = %for.end.701, %if.end.644
  %682 = load i8**, i8*** %aseq1, align 8
  %arrayidx711 = getelementptr inbounds i8*, i8** %682, i64 0
  %683 = load i8*, i8** %arrayidx711, align 8
  %call712 = call i64 @strlen(i8* %683) #5
  %conv713 = trunc i64 %call712 to i32
  store i32 %conv713, i32* %alnlen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.714

for.cond.714:                                     ; preds = %for.inc.722, %if.end.710
  %684 = load i32, i32* %i, align 4
  %685 = load i32, i32* %icyc.addr, align 4
  %cmp715 = icmp slt i32 %684, %685
  br i1 %cmp715, label %for.body.717, label %for.end.724

for.body.717:                                     ; preds = %for.cond.714
  %686 = load i32, i32* %alnlen, align 4
  %687 = load i32, i32* %i, align 4
  %idxprom718 = sext i32 %687 to i64
  %688 = load i8**, i8*** %aseq1, align 8
  %arrayidx719 = getelementptr inbounds i8*, i8** %688, i64 %idxprom718
  %689 = load i8*, i8** %arrayidx719, align 8
  %idx.ext720 = sext i32 %686 to i64
  %add.ptr721 = getelementptr inbounds i8, i8* %689, i64 %idx.ext720
  store i8* %add.ptr721, i8** %arrayidx719, align 8
  br label %for.inc.722

for.inc.722:                                      ; preds = %for.body.717
  %690 = load i32, i32* %i, align 4
  %inc723 = add nsw i32 %690, 1
  store i32 %inc723, i32* %i, align 4
  br label %for.cond.714

for.end.724:                                      ; preds = %for.cond.714
  store i32 0, i32* %i, align 4
  br label %for.cond.725

for.cond.725:                                     ; preds = %for.inc.733, %for.end.724
  %691 = load i32, i32* %i, align 4
  %692 = load i32, i32* %jcyc.addr, align 4
  %cmp726 = icmp slt i32 %691, %692
  br i1 %cmp726, label %for.body.728, label %for.end.735

for.body.728:                                     ; preds = %for.cond.725
  %693 = load i32, i32* %alnlen, align 4
  %694 = load i32, i32* %i, align 4
  %idxprom729 = sext i32 %694 to i64
  %695 = load i8**, i8*** %aseq2, align 8
  %arrayidx730 = getelementptr inbounds i8*, i8** %695, i64 %idxprom729
  %696 = load i8*, i8** %arrayidx730, align 8
  %idx.ext731 = sext i32 %693 to i64
  %add.ptr732 = getelementptr inbounds i8, i8* %696, i64 %idx.ext731
  store i8* %add.ptr732, i8** %arrayidx730, align 8
  br label %for.inc.733

for.inc.733:                                      ; preds = %for.body.728
  %697 = load i32, i32* %i, align 4
  %inc734 = add nsw i32 %697, 1
  store i32 %inc734, i32* %i, align 4
  br label %for.cond.725

for.end.735:                                      ; preds = %for.cond.725
  %698 = load i32, i32* %icyc.addr, align 4
  %699 = load i32, i32* %jcyc.addr, align 4
  %700 = load double*, double** %eff1.addr, align 8
  %701 = load double*, double** %eff2.addr, align 8
  %702 = load i8**, i8*** %seq1.addr, align 8
  %703 = load i8**, i8*** %seq2.addr, align 8
  %704 = load float**, float*** %cpmx1.addr, align 8
  %705 = load float**, float*** %cpmx2.addr, align 8
  %706 = load i32, i32* %ist.addr, align 4
  %707 = load i32, i32* %imid, align 4
  %add736 = add nsw i32 %706, %707
  %708 = load i32, i32* %ien.addr, align 4
  %709 = load i32, i32* %jst.addr, align 4
  %710 = load i32, i32* %jmid, align 4
  %add737 = add nsw i32 %709, %710
  %711 = load i32, i32* %jen.addr, align 4
  %712 = load i32, i32* %alloclen.addr, align 4
  %713 = load i8**, i8*** %aseq1, align 8
  %714 = load i8**, i8*** %aseq2, align 8
  %715 = load i32, i32* %depth.addr, align 4
  %716 = load float**, float*** %gapinfo.addr, align 8
  %call738 = call float @MSalignmm_rec(i32 %698, i32 %699, double* %700, double* %701, i8** %702, i8** %703, float** %704, float** %705, i32 %add736, i32 %708, i32 %add737, i32 %711, i32 %712, i8** %713, i8** %714, i32 %715, float** %716)
  %717 = load float, float* %value, align 4
  %add739 = fadd float %717, %call738
  store float %add739, float* %value, align 4
  %718 = load i8*, i8** %gaps, align 8
  call void @free(i8* %718) #7
  %719 = load i8**, i8*** %aseq1, align 8
  %720 = bitcast i8** %719 to i8*
  call void @free(i8* %720) #7
  %721 = load i8**, i8*** %aseq2, align 8
  %722 = bitcast i8** %721 to i8*
  call void @free(i8* %722) #7
  %723 = load float, float* %value, align 4
  store float %723, float* %retval
  br label %return

return:                                           ; preds = %for.end.735, %if.then.72, %for.end.43
  %724 = load float, float* %retval
  ret float %724
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @FreeFloatVec(float*) #1

declare void @FreeFloatMtx(float**) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @FreeCharMtx(i8**) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal float @MSalignmm_tanni(i32 %icyc, i32 %jcyc, double* %eff1, double* %eff2, i8** %seq1, i8** %seq2, float** %cpmx1, float** %cpmx2, i32 %ist, i32 %ien, i32 %jst, i32 %jen, i32 %alloclen, i8** %mseq1, i8** %mseq2, float** %gapinfo) #0 {
entry:
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
  %gapinfo.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %wtmp = alloca float*, align 8
  %ijppt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %mi = alloca float, align 4
  %m = alloca float*, align 8
  %ijp = alloca i32**, align 8
  %mpi = alloca i32, align 4
  %mp = alloca i32*, align 8
  %w1 = alloca float*, align 8
  %w2 = alloca float*, align 8
  %initverticalw = alloca float*, align 8
  %lastverticalw = alloca float*, align 8
  %intwork = alloca i32**, align 8
  %floatwork = alloca float**, align 8
  %intmtx = alloca i32**, align 8
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %ogcp1 = alloca float*, align 8
  %fgcp1 = alloca float*, align 8
  %ogcp2 = alloca float*, align 8
  %fgcp2 = alloca float*, align 8
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
  store float** %gapinfo, float*** %gapinfo.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = load i32, i32* %ist.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds float, float* %1, i64 %idx.ext
  store float* %add.ptr, float** %ogcp1, align 8
  %3 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %3, i64 1
  %4 = load float*, float** %arrayidx1, align 8
  %5 = load i32, i32* %ist.addr, align 4
  %idx.ext2 = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds float, float* %4, i64 %idx.ext2
  store float* %add.ptr3, float** %fgcp1, align 8
  %6 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %6, i64 2
  %7 = load float*, float** %arrayidx4, align 8
  %8 = load i32, i32* %jst.addr, align 4
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds float, float* %7, i64 %idx.ext5
  store float* %add.ptr6, float** %ogcp2, align 8
  %9 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %9, i64 3
  %10 = load float*, float** %arrayidx7, align 8
  %11 = load i32, i32* %jst.addr, align 4
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds float, float* %10, i64 %idx.ext8
  store float* %add.ptr9, float** %fgcp2, align 8
  %12 = load i32, i32* %ien.addr, align 4
  %13 = load i32, i32* %ist.addr, align 4
  %sub = sub nsw i32 %12, %13
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %lgth1, align 4
  %14 = load i32, i32* %jen.addr, align 4
  %15 = load i32, i32* %jst.addr, align 4
  %sub10 = sub nsw i32 %14, %15
  %add11 = add nsw i32 %sub10, 1
  store i32 %add11, i32* %lgth2, align 4
  %16 = load i32, i32* %lgth1, align 4
  %add12 = add nsw i32 %16, 100
  store i32 %add12, i32* %ll1, align 4
  %17 = load i32, i32* %lgth2, align 4
  %add13 = add nsw i32 %17, 100
  store i32 %add13, i32* %ll2, align 4
  %18 = load i32, i32* %ll2, align 4
  %add14 = add nsw i32 %18, 2
  %call = call float* @AllocateFloatVec(i32 %add14)
  store float* %call, float** %w1, align 8
  %19 = load i32, i32* %ll2, align 4
  %add15 = add nsw i32 %19, 2
  %call16 = call float* @AllocateFloatVec(i32 %add15)
  store float* %call16, float** %w2, align 8
  %20 = load i32, i32* %ll1, align 4
  %add17 = add nsw i32 %20, 2
  %call18 = call float* @AllocateFloatVec(i32 %add17)
  store float* %call18, float** %initverticalw, align 8
  %21 = load i32, i32* %ll1, align 4
  %add19 = add nsw i32 %21, 2
  %call20 = call float* @AllocateFloatVec(i32 %add19)
  store float* %call20, float** %lastverticalw, align 8
  %22 = load i32, i32* %ll2, align 4
  %add21 = add nsw i32 %22, 2
  %call22 = call float* @AllocateFloatVec(i32 %add21)
  store float* %call22, float** %m, align 8
  %23 = load i32, i32* %ll2, align 4
  %add23 = add nsw i32 %23, 2
  %call24 = call i32* @AllocateIntVec(i32 %add23)
  store i32* %call24, i32** %mp, align 8
  %24 = load i32, i32* %ll1, align 4
  %25 = load i32, i32* %ll2, align 4
  %cmp = icmp sgt i32 %24, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %26 = load i32, i32* %ll1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load i32, i32* %ll2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %add25 = add nsw i32 %cond, 2
  %call26 = call float** @AllocateFloatMtx(i32 %add25, i32 27)
  store float** %call26, float*** %floatwork, align 8
  %28 = load i32, i32* %ll1, align 4
  %29 = load i32, i32* %ll2, align 4
  %cmp27 = icmp sgt i32 %28, %29
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end
  %30 = load i32, i32* %ll1, align 4
  br label %cond.end.30

cond.false.29:                                    ; preds = %cond.end
  %31 = load i32, i32* %ll2, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ %30, %cond.true.28 ], [ %31, %cond.false.29 ]
  %add32 = add nsw i32 %cond31, 2
  %call33 = call i32** @AllocateIntMtx(i32 %add32, i32 27)
  store i32** %call33, i32*** %intwork, align 8
  %32 = load i32, i32* %ll1, align 4
  %add34 = add nsw i32 %32, 1
  %33 = load i32, i32* %ll2, align 4
  %add35 = add nsw i32 %33, 1
  %call36 = call i32** @AllocateIntMtx(i32 %add34, i32 %add35)
  store i32** %call36, i32*** %intmtx, align 8
  %34 = load i32**, i32*** %intmtx, align 8
  store i32** %34, i32*** %ijp, align 8
  %35 = load float*, float** %w1, align 8
  store float* %35, float** %currentw, align 8
  %36 = load float*, float** %w2, align 8
  store float* %36, float** %previousw, align 8
  %37 = load float*, float** %initverticalw, align 8
  %38 = load float**, float*** %cpmx2.addr, align 8
  %39 = load i32, i32* %jst.addr, align 4
  %idx.ext37 = sext i32 %39 to i64
  %add.ptr38 = getelementptr inbounds float*, float** %38, i64 %idx.ext37
  %40 = load float**, float*** %cpmx1.addr, align 8
  %41 = load i32, i32* %ist.addr, align 4
  %idx.ext39 = sext i32 %41 to i64
  %add.ptr40 = getelementptr inbounds float*, float** %40, i64 %idx.ext39
  %42 = load i32, i32* %lgth1, align 4
  %43 = load float**, float*** %floatwork, align 8
  %44 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %37, float** %add.ptr38, float** %add.ptr40, i32 0, i32 %42, float** %43, i32** %44, i32 1)
  %45 = load float*, float** %currentw, align 8
  %46 = load float**, float*** %cpmx1.addr, align 8
  %47 = load i32, i32* %ist.addr, align 4
  %idx.ext41 = sext i32 %47 to i64
  %add.ptr42 = getelementptr inbounds float*, float** %46, i64 %idx.ext41
  %48 = load float**, float*** %cpmx2.addr, align 8
  %49 = load i32, i32* %jst.addr, align 4
  %idx.ext43 = sext i32 %49 to i64
  %add.ptr44 = getelementptr inbounds float*, float** %48, i64 %idx.ext43
  %50 = load i32, i32* %lgth2, align 4
  %51 = load float**, float*** %floatwork, align 8
  %52 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %45, float** %add.ptr42, float** %add.ptr44, i32 0, i32 %50, float** %51, i32** %52, i32 1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.30
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %lgth1, align 4
  %add45 = add nsw i32 %54, 1
  %cmp46 = icmp slt i32 %53, %add45
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load float*, float** %ogcp1, align 8
  %arrayidx47 = getelementptr inbounds float, float* %55, i64 0
  %56 = load float, float* %arrayidx47, align 4
  %57 = load i32, i32* %i, align 4
  %sub48 = sub nsw i32 %57, 1
  %idxprom = sext i32 %sub48 to i64
  %58 = load float*, float** %fgcp1, align 8
  %arrayidx49 = getelementptr inbounds float, float* %58, i64 %idxprom
  %59 = load float, float* %arrayidx49, align 4
  %add50 = fadd float %56, %59
  %60 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %60 to i64
  %61 = load float*, float** %initverticalw, align 8
  %arrayidx52 = getelementptr inbounds float, float* %61, i64 %idxprom51
  %62 = load float, float* %arrayidx52, align 4
  %add53 = fadd float %62, %add50
  store float %add53, float* %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.66, %for.end
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %lgth2, align 4
  %add55 = add nsw i32 %65, 1
  %cmp56 = icmp slt i32 %64, %add55
  br i1 %cmp56, label %for.body.57, label %for.end.68

for.body.57:                                      ; preds = %for.cond.54
  %66 = load float*, float** %ogcp2, align 8
  %arrayidx58 = getelementptr inbounds float, float* %66, i64 0
  %67 = load float, float* %arrayidx58, align 4
  %68 = load i32, i32* %j, align 4
  %sub59 = sub nsw i32 %68, 1
  %idxprom60 = sext i32 %sub59 to i64
  %69 = load float*, float** %fgcp2, align 8
  %arrayidx61 = getelementptr inbounds float, float* %69, i64 %idxprom60
  %70 = load float, float* %arrayidx61, align 4
  %add62 = fadd float %67, %70
  %71 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load float*, float** %currentw, align 8
  %arrayidx64 = getelementptr inbounds float, float* %72, i64 %idxprom63
  %73 = load float, float* %arrayidx64, align 4
  %add65 = fadd float %73, %add62
  store float %add65, float* %arrayidx64, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.57
  %74 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %74, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond.54

for.end.68:                                       ; preds = %for.cond.54
  store i32 1, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.82, %for.end.68
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %lgth2, align 4
  %add70 = add nsw i32 %76, 1
  %cmp71 = icmp slt i32 %75, %add70
  br i1 %cmp71, label %for.body.72, label %for.end.84

for.body.72:                                      ; preds = %for.cond.69
  %77 = load i32, i32* %j, align 4
  %sub73 = sub nsw i32 %77, 1
  %idxprom74 = sext i32 %sub73 to i64
  %78 = load float*, float** %currentw, align 8
  %arrayidx75 = getelementptr inbounds float, float* %78, i64 %idxprom74
  %79 = load float, float* %arrayidx75, align 4
  %80 = load float*, float** %ogcp1, align 8
  %arrayidx76 = getelementptr inbounds float, float* %80, i64 1
  %81 = load float, float* %arrayidx76, align 4
  %add77 = fadd float %79, %81
  %82 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %82 to i64
  %83 = load float*, float** %m, align 8
  %arrayidx79 = getelementptr inbounds float, float* %83, i64 %idxprom78
  store float %add77, float* %arrayidx79, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load i32*, i32** %mp, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %85, i64 %idxprom80
  store i32 0, i32* %arrayidx81, align 4
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.72
  %86 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %86, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.69

for.end.84:                                       ; preds = %for.cond.69
  %87 = load i32, i32* %lgth2, align 4
  %sub85 = sub nsw i32 %87, 1
  %idxprom86 = sext i32 %sub85 to i64
  %88 = load float*, float** %currentw, align 8
  %arrayidx87 = getelementptr inbounds float, float* %88, i64 %idxprom86
  %89 = load float, float* %arrayidx87, align 4
  %90 = load float*, float** %lastverticalw, align 8
  %arrayidx88 = getelementptr inbounds float, float* %90, i64 0
  store float %89, float* %arrayidx88, align 4
  %91 = load i32, i32* %lgth1, align 4
  %add89 = add nsw i32 %91, 1
  store i32 %add89, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.159, %for.end.84
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %lasti, align 4
  %cmp91 = icmp slt i32 %92, %93
  br i1 %cmp91, label %for.body.92, label %for.end.161

for.body.92:                                      ; preds = %for.cond.90
  %94 = load float*, float** %previousw, align 8
  store float* %94, float** %wtmp, align 8
  %95 = load float*, float** %currentw, align 8
  store float* %95, float** %previousw, align 8
  %96 = load float*, float** %wtmp, align 8
  store float* %96, float** %currentw, align 8
  %97 = load i32, i32* %i, align 4
  %sub93 = sub nsw i32 %97, 1
  %idxprom94 = sext i32 %sub93 to i64
  %98 = load float*, float** %initverticalw, align 8
  %arrayidx95 = getelementptr inbounds float, float* %98, i64 %idxprom94
  %99 = load float, float* %arrayidx95, align 4
  %100 = load float*, float** %previousw, align 8
  %arrayidx96 = getelementptr inbounds float, float* %100, i64 0
  store float %99, float* %arrayidx96, align 4
  %101 = load float*, float** %currentw, align 8
  %102 = load float**, float*** %cpmx1.addr, align 8
  %103 = load i32, i32* %ist.addr, align 4
  %idx.ext97 = sext i32 %103 to i64
  %add.ptr98 = getelementptr inbounds float*, float** %102, i64 %idx.ext97
  %104 = load float**, float*** %cpmx2.addr, align 8
  %105 = load i32, i32* %jst.addr, align 4
  %idx.ext99 = sext i32 %105 to i64
  %add.ptr100 = getelementptr inbounds float*, float** %104, i64 %idx.ext99
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %lgth2, align 4
  %108 = load float**, float*** %floatwork, align 8
  %109 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %101, float** %add.ptr98, float** %add.ptr100, i32 %106, i32 %107, float** %108, i32** %109, i32 0)
  %110 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %110 to i64
  %111 = load float*, float** %initverticalw, align 8
  %arrayidx102 = getelementptr inbounds float, float* %111, i64 %idxprom101
  %112 = load float, float* %arrayidx102, align 4
  %113 = load float*, float** %currentw, align 8
  %arrayidx103 = getelementptr inbounds float, float* %113, i64 0
  store float %112, float* %arrayidx103, align 4
  %114 = load float*, float** %previousw, align 8
  %arrayidx104 = getelementptr inbounds float, float* %114, i64 0
  %115 = load float, float* %arrayidx104, align 4
  %116 = load float*, float** %ogcp2, align 8
  %arrayidx105 = getelementptr inbounds float, float* %116, i64 1
  %117 = load float, float* %arrayidx105, align 4
  %add106 = fadd float %115, %117
  store float %add106, float* %mi, align 4
  store i32 0, i32* %mpi, align 4
  %118 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %118 to i64
  %119 = load i32**, i32*** %ijp, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %119, i64 %idxprom107
  %120 = load i32*, i32** %arrayidx108, align 8
  %add.ptr109 = getelementptr inbounds i32, i32* %120, i64 1
  store i32* %add.ptr109, i32** %ijppt, align 8
  %121 = load float*, float** %m, align 8
  %add.ptr110 = getelementptr inbounds float, float* %121, i64 1
  store float* %add.ptr110, float** %mjpt, align 8
  %122 = load float*, float** %previousw, align 8
  store float* %122, float** %prept, align 8
  %123 = load float*, float** %currentw, align 8
  %add.ptr111 = getelementptr inbounds float, float* %123, i64 1
  store float* %add.ptr111, float** %curpt, align 8
  %124 = load i32*, i32** %mp, align 8
  %add.ptr112 = getelementptr inbounds i32, i32* %124, i64 1
  store i32* %add.ptr112, i32** %mpjpt, align 8
  %125 = load i32, i32* %lgth2, align 4
  %add113 = add nsw i32 %125, 1
  store i32 %add113, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.151, %for.body.92
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %lastj, align 4
  %cmp115 = icmp slt i32 %126, %127
  br i1 %cmp115, label %for.body.116, label %for.end.153

for.body.116:                                     ; preds = %for.cond.114
  %128 = load float*, float** %prept, align 8
  %129 = load float, float* %128, align 4
  store float %129, float* %wm, align 4
  %130 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %130, align 4
  %131 = load float, float* %mi, align 4
  %132 = load i32, i32* %j, align 4
  %sub117 = sub nsw i32 %132, 1
  %idxprom118 = sext i32 %sub117 to i64
  %133 = load float*, float** %fgcp2, align 8
  %arrayidx119 = getelementptr inbounds float, float* %133, i64 %idxprom118
  %134 = load float, float* %arrayidx119, align 4
  %add120 = fadd float %131, %134
  store float %add120, float* %g, align 4
  %135 = load float, float* %g, align 4
  %136 = load float, float* %wm, align 4
  %cmp121 = fcmp ogt float %135, %136
  br i1 %cmp121, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.116
  %137 = load float, float* %g, align 4
  store float %137, float* %wm, align 4
  %138 = load i32, i32* %j, align 4
  %139 = load i32, i32* %mpi, align 4
  %sub122 = sub nsw i32 %138, %139
  %sub123 = sub nsw i32 0, %sub122
  %140 = load i32*, i32** %ijppt, align 8
  store i32 %sub123, i32* %140, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.116
  %141 = load float*, float** %prept, align 8
  %142 = load float, float* %141, align 4
  %143 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %143 to i64
  %144 = load float*, float** %ogcp2, align 8
  %arrayidx125 = getelementptr inbounds float, float* %144, i64 %idxprom124
  %145 = load float, float* %arrayidx125, align 4
  %add126 = fadd float %142, %145
  store float %add126, float* %g, align 4
  %146 = load float, float* %g, align 4
  %147 = load float, float* %mi, align 4
  %cmp127 = fcmp oge float %146, %147
  br i1 %cmp127, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end
  %148 = load float, float* %g, align 4
  store float %148, float* %mi, align 4
  %149 = load i32, i32* %j, align 4
  %sub129 = sub nsw i32 %149, 1
  store i32 %sub129, i32* %mpi, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.end
  %150 = load float*, float** %mjpt, align 8
  %151 = load float, float* %150, align 4
  %152 = load i32, i32* %i, align 4
  %sub131 = sub nsw i32 %152, 1
  %idxprom132 = sext i32 %sub131 to i64
  %153 = load float*, float** %fgcp1, align 8
  %arrayidx133 = getelementptr inbounds float, float* %153, i64 %idxprom132
  %154 = load float, float* %arrayidx133, align 4
  %add134 = fadd float %151, %154
  store float %add134, float* %g, align 4
  %155 = load float, float* %g, align 4
  %156 = load float, float* %wm, align 4
  %cmp135 = fcmp ogt float %155, %156
  br i1 %cmp135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.130
  %157 = load float, float* %g, align 4
  store float %157, float* %wm, align 4
  %158 = load i32, i32* %i, align 4
  %159 = load i32*, i32** %mpjpt, align 8
  %160 = load i32, i32* %159, align 4
  %sub137 = sub nsw i32 %158, %160
  %161 = load i32*, i32** %ijppt, align 8
  store i32 %sub137, i32* %161, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.130
  %162 = load float*, float** %prept, align 8
  %163 = load float, float* %162, align 4
  %164 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %164 to i64
  %165 = load float*, float** %ogcp1, align 8
  %arrayidx140 = getelementptr inbounds float, float* %165, i64 %idxprom139
  %166 = load float, float* %arrayidx140, align 4
  %add141 = fadd float %163, %166
  store float %add141, float* %g, align 4
  %167 = load float, float* %g, align 4
  %168 = load float*, float** %mjpt, align 8
  %169 = load float, float* %168, align 4
  %cmp142 = fcmp oge float %167, %169
  br i1 %cmp142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.138
  %170 = load float, float* %g, align 4
  %171 = load float*, float** %mjpt, align 8
  store float %170, float* %171, align 4
  %172 = load i32, i32* %i, align 4
  %sub144 = sub nsw i32 %172, 1
  %173 = load i32*, i32** %mpjpt, align 8
  store i32 %sub144, i32* %173, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.138
  %174 = load float, float* %wm, align 4
  %175 = load float*, float** %curpt, align 8
  %176 = load float, float* %175, align 4
  %add146 = fadd float %176, %174
  store float %add146, float* %175, align 4
  %177 = load i32*, i32** %ijppt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %incdec.ptr, i32** %ijppt, align 8
  %178 = load float*, float** %mjpt, align 8
  %incdec.ptr147 = getelementptr inbounds float, float* %178, i32 1
  store float* %incdec.ptr147, float** %mjpt, align 8
  %179 = load float*, float** %prept, align 8
  %incdec.ptr148 = getelementptr inbounds float, float* %179, i32 1
  store float* %incdec.ptr148, float** %prept, align 8
  %180 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr149 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr149, i32** %mpjpt, align 8
  %181 = load float*, float** %curpt, align 8
  %incdec.ptr150 = getelementptr inbounds float, float* %181, i32 1
  store float* %incdec.ptr150, float** %curpt, align 8
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.145
  %182 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %182, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.114

for.end.153:                                      ; preds = %for.cond.114
  %183 = load i32, i32* %lgth2, align 4
  %sub154 = sub nsw i32 %183, 1
  %idxprom155 = sext i32 %sub154 to i64
  %184 = load float*, float** %currentw, align 8
  %arrayidx156 = getelementptr inbounds float, float* %184, i64 %idxprom155
  %185 = load float, float* %arrayidx156, align 4
  %186 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %186 to i64
  %187 = load float*, float** %lastverticalw, align 8
  %arrayidx158 = getelementptr inbounds float, float* %187, i64 %idxprom157
  store float %185, float* %arrayidx158, align 4
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.153
  %188 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %188, 1
  store i32 %inc160, i32* %i, align 4
  br label %for.cond.90

for.end.161:                                      ; preds = %for.cond.90
  %189 = load i8**, i8*** %seq1.addr, align 8
  %190 = load i8**, i8*** %seq2.addr, align 8
  %191 = load i8**, i8*** %mseq1.addr, align 8
  %192 = load i8**, i8*** %mseq2.addr, align 8
  %193 = load i32**, i32*** %ijp, align 8
  %194 = load i32, i32* %icyc.addr, align 4
  %195 = load i32, i32* %jcyc.addr, align 4
  %196 = load i32, i32* %ist.addr, align 4
  %197 = load i32, i32* %ien.addr, align 4
  %198 = load i32, i32* %jst.addr, align 4
  %199 = load i32, i32* %jen.addr, align 4
  %call162 = call float @Atracking(i8** %189, i8** %190, i8** %191, i8** %192, i32** %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %200 = load float*, float** %w1, align 8
  call void @FreeFloatVec(float* %200)
  %201 = load float*, float** %w2, align 8
  call void @FreeFloatVec(float* %201)
  %202 = load float*, float** %initverticalw, align 8
  call void @FreeFloatVec(float* %202)
  %203 = load float*, float** %lastverticalw, align 8
  call void @FreeFloatVec(float* %203)
  %204 = load float*, float** %m, align 8
  call void @FreeFloatVec(float* %204)
  %205 = load i32*, i32** %mp, align 8
  call void @FreeIntVec(i32* %205)
  %206 = load float**, float*** %floatwork, align 8
  call void @FreeFloatMtx(float** %206)
  %207 = load i32**, i32*** %intwork, align 8
  call void @FreeIntMtx(i32** %207)
  %208 = load i32**, i32*** %intmtx, align 8
  call void @FreeIntMtx(i32** %208)
  %209 = load float, float* %wm, align 4
  ret float %209
}

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
  %arrayidx46 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom45
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
  %arrayidx61 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom60
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

declare void @FreeIntVec(i32*) #1

declare void @FreeIntMtx(i32**) #1

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal float @Atracking(i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, i32** %ijp, i32 %icyc, i32 %jcyc, i32 %ist, i32 %ien, i32 %jst, i32 %jen) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %ijp.addr = alloca i32**, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %ist.addr = alloca i32, align 4
  %ien.addr = alloca i32, align 4
  %jst.addr = alloca i32, align 4
  %jen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %iin = alloca i32, align 4
  %jin = alloca i32, align 4
  %ifi = alloca i32, align 4
  %jfi = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %k = alloca i32, align 4
  %klim = alloca i32, align 4
  %gaptable1 = alloca i8*, align 8
  %gt1bk = alloca i8*, align 8
  %gaptable2 = alloca i8*, align 8
  %gt2bk = alloca i8*, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %ist, i32* %ist.addr, align 4
  store i32 %ien, i32* %ien.addr, align 4
  store i32 %jst, i32* %jst.addr, align 4
  store i32 %jen, i32* %jen.addr, align 4
  %0 = load i32, i32* %ien.addr, align 4
  %1 = load i32, i32* %ist.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %lgth1, align 4
  %2 = load i32, i32* %jen.addr, align 4
  %3 = load i32, i32* %jst.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %add2 = add nsw i32 %sub1, 1
  store i32 %add2, i32* %lgth2, align 4
  %4 = load i32, i32* %lgth1, align 4
  %5 = load i32, i32* %lgth2, align 4
  %add3 = add nsw i32 %4, %5
  %add4 = add nsw i32 %add3, 1
  %call = call i8* @AllocateCharVec(i32 %add4)
  store i8* %call, i8** %gt1bk, align 8
  %6 = load i32, i32* %lgth1, align 4
  %7 = load i32, i32* %lgth2, align 4
  %add5 = add nsw i32 %6, %7
  %add6 = add nsw i32 %add5, 1
  %call7 = call i8* @AllocateCharVec(i32 %add6)
  store i8* %call7, i8** %gt2bk, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %lgth1, align 4
  %add8 = add nsw i32 %9, 1
  %cmp = icmp slt i32 %8, %add8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %10, 1
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  %13 = load i32*, i32** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %add9, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %for.end
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %lgth2, align 4
  %add12 = add nsw i32 %16, 1
  %cmp13 = icmp slt i32 %15, %add12
  br i1 %cmp13, label %for.body.14, label %for.end.22

for.body.14:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %17, 1
  %sub16 = sub nsw i32 0, %add15
  %18 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %19, i64 0
  %20 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  store i32 %sub16, i32* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.14
  %21 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  %22 = load i8*, i8** %gt1bk, align 8
  %23 = load i32, i32* %lgth1, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load i32, i32* %lgth2, align 4
  %idx.ext23 = sext i32 %24 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext23
  store i8* %add.ptr24, i8** %gaptable1, align 8
  %25 = load i8*, i8** %gaptable1, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %gt2bk, align 8
  %27 = load i32, i32* %lgth1, align 4
  %idx.ext25 = sext i32 %27 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %26, i64 %idx.ext25
  %28 = load i32, i32* %lgth2, align 4
  %idx.ext27 = sext i32 %28 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr26, i64 %idx.ext27
  store i8* %add.ptr28, i8** %gaptable2, align 8
  %29 = load i8*, i8** %gaptable2, align 8
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %lgth1, align 4
  store i32 %30, i32* %iin, align 4
  %31 = load i32, i32* %lgth2, align 4
  store i32 %31, i32* %jin, align 4
  %32 = load i32, i32* %lgth1, align 4
  %33 = load i32, i32* %lgth2, align 4
  %add29 = add nsw i32 %32, %33
  store i32 %add29, i32* %klim, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.79, %for.end.22
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %klim, align 4
  %cmp31 = icmp sle i32 %34, %35
  br i1 %cmp31, label %for.body.32, label %for.end.81

for.body.32:                                      ; preds = %for.cond.30
  %36 = load i32, i32* %jin, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i32, i32* %iin, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %38, i64 %idxprom34
  %39 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp slt i32 %40, 0
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.32
  %41 = load i32, i32* %iin, align 4
  %sub38 = sub nsw i32 %41, 1
  store i32 %sub38, i32* %ifi, align 4
  %42 = load i32, i32* %jin, align 4
  %43 = load i32, i32* %jin, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i32, i32* %iin, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %45, i64 %idxprom40
  %46 = load i32*, i32** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %46, i64 %idxprom39
  %47 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %42, %47
  store i32 %add43, i32* %jfi, align 4
  br label %if.end.59

if.else:                                          ; preds = %for.body.32
  %48 = load i32, i32* %jin, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load i32, i32* %iin, align 4
  %idxprom45 = sext i32 %49 to i64
  %50 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx46 = getelementptr inbounds i32*, i32** %50, i64 %idxprom45
  %51 = load i32*, i32** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %51, i64 %idxprom44
  %52 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp sgt i32 %52, 0
  br i1 %cmp48, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %if.else
  %53 = load i32, i32* %iin, align 4
  %54 = load i32, i32* %jin, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i32, i32* %iin, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %56, i64 %idxprom51
  %57 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom50
  %58 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub nsw i32 %53, %58
  store i32 %sub54, i32* %ifi, align 4
  %59 = load i32, i32* %jin, align 4
  %sub55 = sub nsw i32 %59, 1
  store i32 %sub55, i32* %jfi, align 4
  br label %if.end

if.else.56:                                       ; preds = %if.else
  %60 = load i32, i32* %iin, align 4
  %sub57 = sub nsw i32 %60, 1
  store i32 %sub57, i32* %ifi, align 4
  %61 = load i32, i32* %jin, align 4
  %sub58 = sub nsw i32 %61, 1
  store i32 %sub58, i32* %jfi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.56, %if.then.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %if.then
  %62 = load i32, i32* %iin, align 4
  %63 = load i32, i32* %ifi, align 4
  %sub60 = sub nsw i32 %62, %63
  store i32 %sub60, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.59
  %64 = load i32, i32* %l, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %65 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %incdec.ptr, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr, align 1
  %66 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %incdec.ptr61, i8** %gaptable2, align 8
  store i8 45, i8* %incdec.ptr61, align 1
  %67 = load i32, i32* %k, align 4
  %inc62 = add nsw i32 %67, 1
  store i32 %inc62, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load i32, i32* %jin, align 4
  %69 = load i32, i32* %jfi, align 4
  %sub63 = sub nsw i32 %68, %69
  store i32 %sub63, i32* %l, align 4
  br label %while.cond.64

while.cond.64:                                    ; preds = %while.body.67, %while.end
  %70 = load i32, i32* %l, align 4
  %dec65 = add nsw i32 %70, -1
  store i32 %dec65, i32* %l, align 4
  %tobool66 = icmp ne i32 %dec65, 0
  br i1 %tobool66, label %while.body.67, label %while.end.71

while.body.67:                                    ; preds = %while.cond.64
  %71 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %incdec.ptr68, i8** %gaptable1, align 8
  store i8 45, i8* %incdec.ptr68, align 1
  %72 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr69, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr69, align 1
  %73 = load i32, i32* %k, align 4
  %inc70 = add nsw i32 %73, 1
  store i32 %inc70, i32* %k, align 4
  br label %while.cond.64

while.end.71:                                     ; preds = %while.cond.64
  %74 = load i32, i32* %iin, align 4
  %cmp72 = icmp sle i32 %74, 0
  br i1 %cmp72, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.71
  %75 = load i32, i32* %jin, align 4
  %cmp73 = icmp sle i32 %75, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false, %while.end.71
  br label %for.end.81

if.end.75:                                        ; preds = %lor.lhs.false
  %76 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr76, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr76, align 1
  %77 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %incdec.ptr77, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr77, align 1
  %78 = load i32, i32* %k, align 4
  %inc78 = add nsw i32 %78, 1
  store i32 %inc78, i32* %k, align 4
  %79 = load i32, i32* %ifi, align 4
  store i32 %79, i32* %iin, align 4
  %80 = load i32, i32* %jfi, align 4
  store i32 %80, i32* %jin, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.75
  %81 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %81, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.30

for.end.81:                                       ; preds = %if.then.74, %for.cond.30
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.91, %for.end.81
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %icyc.addr, align 4
  %cmp83 = icmp slt i32 %82, %83
  br i1 %cmp83, label %for.body.84, label %for.end.93

for.body.84:                                      ; preds = %for.cond.82
  %84 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %84 to i64
  %85 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %85, i64 %idxprom85
  %86 = load i8*, i8** %arrayidx86, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %87 to i64
  %88 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %88, i64 %idxprom87
  %89 = load i8*, i8** %arrayidx88, align 8
  %90 = load i32, i32* %ist.addr, align 4
  %idx.ext89 = sext i32 %90 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %89, i64 %idx.ext89
  %91 = load i8*, i8** %gaptable1, align 8
  call void @gapireru(i8* %86, i8* %add.ptr90, i8* %91)
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.84
  %92 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %92, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.82

for.end.93:                                       ; preds = %for.cond.82
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.103, %for.end.93
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %jcyc.addr, align 4
  %cmp95 = icmp slt i32 %93, %94
  br i1 %cmp95, label %for.body.96, label %for.end.105

for.body.96:                                      ; preds = %for.cond.94
  %95 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %95 to i64
  %96 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %96, i64 %idxprom97
  %97 = load i8*, i8** %arrayidx98, align 8
  %98 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %99, i64 %idxprom99
  %100 = load i8*, i8** %arrayidx100, align 8
  %101 = load i32, i32* %jst.addr, align 4
  %idx.ext101 = sext i32 %101 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %100, i64 %idx.ext101
  %102 = load i8*, i8** %gaptable2, align 8
  call void @gapireru(i8* %97, i8* %add.ptr102, i8* %102)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.96
  %103 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %103, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.94

for.end.105:                                      ; preds = %for.cond.94
  %104 = load i8*, i8** %gt1bk, align 8
  call void @free(i8* %104) #7
  %105 = load i8*, i8** %gt2bk, align 8
  call void @free(i8* %105) #7
  ret float 0.000000e+00
}

declare void @gapireru(i8*, i8*, i8*) #1

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
