; ModuleID = './MultiSource.Benchmarks.mafft/24.Salignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._RNApair = type { i32, float, i32, float, i32, float }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@impmtx = internal global float** null, align 8
@imp_match_init_strict.nocount1 = internal global i8* null, align 8
@imp_match_init_strict.nocount2 = internal global i8* null, align 8
@impalloclen = internal global i32 0, align 4
@fastathreshold = external global double, align 8
@A__align.mi = internal global float 0.000000e+00, align 4
@A__align.m = internal global float* null, align 8
@A__align.ijp = internal global i32** null, align 8
@A__align.mpi = internal global i32 0, align 4
@A__align.mp = internal global i32* null, align 8
@A__align.w1 = internal global float* null, align 8
@A__align.w2 = internal global float* null, align 8
@A__align.match = internal global float* null, align 8
@A__align.initverticalw = internal global float* null, align 8
@A__align.lastverticalw = internal global float* null, align 8
@A__align.mseq1 = internal global i8** null, align 8
@A__align.mseq2 = internal global i8** null, align 8
@A__align.mseq = internal global i8** null, align 8
@A__align.ogcp1 = internal global float* null, align 8
@A__align.ogcp2 = internal global float* null, align 8
@A__align.fgcp1 = internal global float* null, align 8
@A__align.fgcp2 = internal global float* null, align 8
@A__align.cpmx1 = internal global float** null, align 8
@A__align.cpmx2 = internal global float** null, align 8
@A__align.intwork = internal global i32** null, align 8
@A__align.floatwork = internal global float** null, align 8
@A__align.orlgth1 = internal global i32 0, align 4
@A__align.orlgth2 = internal global i32 0, align 4
@penalty = external global i32, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@outgap = external global i32, align 4
@offset = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@A__align_gapmap.mi = internal global float 0.000000e+00, align 4
@A__align_gapmap.m = internal global float* null, align 8
@A__align_gapmap.ijp = internal global i32** null, align 8
@A__align_gapmap.mpi = internal global i32 0, align 4
@A__align_gapmap.mp = internal global i32* null, align 8
@A__align_gapmap.w1 = internal global float* null, align 8
@A__align_gapmap.w2 = internal global float* null, align 8
@A__align_gapmap.match = internal global float* null, align 8
@A__align_gapmap.initverticalw = internal global float* null, align 8
@A__align_gapmap.lastverticalw = internal global float* null, align 8
@A__align_gapmap.mseq1 = internal global i8** null, align 8
@A__align_gapmap.mseq2 = internal global i8** null, align 8
@A__align_gapmap.mseq = internal global i8** null, align 8
@A__align_gapmap.ogcp1 = internal global float* null, align 8
@A__align_gapmap.ogcp2 = internal global float* null, align 8
@A__align_gapmap.fgcp1 = internal global float* null, align 8
@A__align_gapmap.fgcp2 = internal global float* null, align 8
@A__align_gapmap.cpmx1 = internal global float** null, align 8
@A__align_gapmap.cpmx2 = internal global float** null, align 8
@A__align_gapmap.intwork = internal global i32** null, align 8
@A__align_gapmap.floatwork = internal global float** null, align 8
@A__align_gapmap.orlgth1 = internal global i32 0, align 4
@A__align_gapmap.orlgth2 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ERROR in translate_and_Calign\00", align 1
@n_dis_consweight_multi = external global [26 x [26 x float]], align 16

; Function Attrs: nounwind uwtable
define float @imp_match_out_sc(i32 %i1, i32 %j1) #0 {
entry:
  %i1.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  %0 = load i32, i32* %j1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %i1.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %2, i64 %idxprom1
  %3 = load float*, float** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx2, align 4
  ret float %4
}

; Function Attrs: nounwind uwtable
define void @imp_rna(i32 %nseq1, i32 %nseq2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._RNApair*** %grouprna1, %struct._RNApair*** %grouprna2, i32* %gapmap1, i32* %gapmap2, %struct._RNApair* %pair) #0 {
entry:
  %nseq1.addr = alloca i32, align 4
  %nseq2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %grouprna1.addr = alloca %struct._RNApair***, align 8
  %grouprna2.addr = alloca %struct._RNApair***, align 8
  %gapmap1.addr = alloca i32*, align 8
  %gapmap2.addr = alloca i32*, align 8
  %pair.addr = alloca %struct._RNApair*, align 8
  store i32 %nseq1, i32* %nseq1.addr, align 4
  store i32 %nseq2, i32* %nseq2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store %struct._RNApair*** %grouprna1, %struct._RNApair**** %grouprna1.addr, align 8
  store %struct._RNApair*** %grouprna2, %struct._RNApair**** %grouprna2.addr, align 8
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store %struct._RNApair* %pair, %struct._RNApair** %pair.addr, align 8
  %0 = load i32, i32* %nseq1.addr, align 4
  %1 = load i32, i32* %nseq2.addr, align 4
  %2 = load i8**, i8*** %seq1.addr, align 8
  %3 = load i8**, i8*** %seq2.addr, align 8
  %4 = load double*, double** %eff1.addr, align 8
  %5 = load double*, double** %eff2.addr, align 8
  %6 = load %struct._RNApair***, %struct._RNApair**** %grouprna1.addr, align 8
  %7 = load %struct._RNApair***, %struct._RNApair**** %grouprna2.addr, align 8
  %8 = load float**, float*** @impmtx, align 8
  %9 = load i32*, i32** %gapmap1.addr, align 8
  %10 = load i32*, i32** %gapmap2.addr, align 8
  %11 = load %struct._RNApair*, %struct._RNApair** %pair.addr, align 8
  call void @foldrna(i32 %0, i32 %1, i8** %2, i8** %3, double* %4, double* %5, %struct._RNApair*** %6, %struct._RNApair*** %7, float** %8, i32* %9, i32* %10, %struct._RNApair* %11)
  ret void
}

declare void @foldrna(i32, i32, i8**, i8**, double*, double*, %struct._RNApair***, %struct._RNApair***, float**, i32*, i32*, %struct._RNApair*) #1

; Function Attrs: nounwind uwtable
define void @imp_match_init_strict(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %lgth1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %localhom.addr = alloca %struct._LocalHom***, align 8
  %forscore.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %effij = alloca float, align 4
  %effijx = alloca double, align 8
  %pt = alloca i8*, align 8
  %pt1 = alloca i8*, align 8
  %pt2 = alloca i8*, align 8
  %tmpptr = alloca %struct._LocalHom*, align 8
  store float* %imp, float** %imp.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %lgth1, i32* %lgth1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store %struct._LocalHom*** %localhom, %struct._LocalHom**** %localhom.addr, align 8
  store i32 %forscore, i32* %forscore.addr, align 4
  %0 = load i32, i32* @impalloclen, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @impalloclen, align 4
  %3 = load i32, i32* %lgth2.addr, align 4
  %add1 = add nsw i32 %3, 2
  %cmp2 = icmp slt i32 %2, %add1
  br i1 %cmp2, label %if.then, label %if.end.14

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load float**, float*** @impmtx, align 8
  %tobool = icmp ne float** %4, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load float**, float*** @impmtx, align 8
  call void @FreeFloatMtx(float** %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load i8*, i8** @imp_match_init_strict.nocount1, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** @imp_match_init_strict.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** @imp_match_init_strict.nocount2, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8*, i8** @imp_match_init_strict.nocount2, align 8
  call void @free(i8* %9) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %10 = load i32, i32* %lgth1.addr, align 4
  %11 = load i32, i32* %lgth2.addr, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %12 = load i32, i32* %lgth1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %13 = load i32, i32* %lgth2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  %add11 = add nsw i32 %cond, 2
  store i32 %add11, i32* @impalloclen, align 4
  %14 = load i32, i32* @impalloclen, align 4
  %15 = load i32, i32* @impalloclen, align 4
  %call = call float** @AllocateFloatMtx(i32 %14, i32 %15)
  store float** %call, float*** @impmtx, align 8
  %16 = load i32, i32* @impalloclen, align 4
  %call12 = call i8* @AllocateCharVec(i32 %16)
  store i8* %call12, i8** @imp_match_init_strict.nocount1, align 8
  %17 = load i32, i32* @impalloclen, align 4
  %call13 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call13, i8** @imp_match_init_strict.nocount2, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end.14
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %lgth1.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %clus1.addr, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom19
  %25 = load i8*, i8** %arrayidx, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %26 to i32
  %cmp21 = icmp eq i32 %conv, 45
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.18
  br label %for.end

if.end.24:                                        ; preds = %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %if.then.23, %for.cond.16
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %clus1.addr, align 4
  %cmp25 = icmp ne i32 %28, %29
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i8*, i8** @imp_match_init_strict.nocount1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8*, i8** @imp_match_init_strict.nocount1, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.27
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %34 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.65, %for.end.35
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %lgth2.addr, align 4
  %cmp37 = icmp slt i32 %35, %36
  br i1 %cmp37, label %for.body.39, label %for.end.67

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.53, %for.body.39
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %clus2.addr, align 4
  %cmp41 = icmp slt i32 %37, %38
  br i1 %cmp41, label %for.body.43, label %for.end.55

for.body.43:                                      ; preds = %for.cond.40
  %39 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %41, i64 %idxprom45
  %42 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 %idxprom44
  %43 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %43 to i32
  %cmp49 = icmp eq i32 %conv48, 45
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.43
  br label %for.end.55

if.end.52:                                        ; preds = %for.body.43
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %44 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %44, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.40

for.end.55:                                       ; preds = %if.then.51, %for.cond.40
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %clus2.addr, align 4
  %cmp56 = icmp ne i32 %45, %46
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %for.end.55
  %47 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %47 to i64
  %48 = load i8*, i8** @imp_match_init_strict.nocount2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 1, i8* %arrayidx60, align 1
  br label %if.end.64

if.else.61:                                       ; preds = %for.end.55
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %50 = load i8*, i8** @imp_match_init_strict.nocount2, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %50, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.58
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %51 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %51, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.36

for.end.67:                                       ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.83, %for.end.67
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %lgth1.addr, align 4
  %cmp69 = icmp slt i32 %52, %53
  br i1 %cmp69, label %for.body.71, label %for.end.85

for.body.71:                                      ; preds = %for.cond.68
  store i32 0, i32* %j, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.80, %for.body.71
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %lgth2.addr, align 4
  %cmp73 = icmp slt i32 %54, %55
  br i1 %cmp73, label %for.body.75, label %for.end.82

for.body.75:                                      ; preds = %for.cond.72
  %56 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %56 to i64
  %57 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %57 to i64
  %58 = load float**, float*** @impmtx, align 8
  %arrayidx78 = getelementptr inbounds float*, float** %58, i64 %idxprom77
  %59 = load float*, float** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds float, float* %59, i64 %idxprom76
  store float 0.000000e+00, float* %arrayidx79, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.75
  %60 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond.72

for.end.82:                                       ; preds = %for.cond.72
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %61 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.68

for.end.85:                                       ; preds = %for.cond.68
  %62 = load double, double* @fastathreshold, align 8
  store double %62, double* %effijx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.303, %for.end.85
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %clus1.addr, align 4
  %cmp87 = icmp slt i32 %63, %64
  br i1 %cmp87, label %for.body.89, label %for.end.305

for.body.89:                                      ; preds = %for.cond.86
  store i32 0, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.300, %for.body.89
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %clus2.addr, align 4
  %cmp91 = icmp slt i32 %65, %66
  br i1 %cmp91, label %for.body.93, label %for.end.302

for.body.93:                                      ; preds = %for.cond.90
  %67 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %67 to i64
  %68 = load double*, double** %eff1.addr, align 8
  %arrayidx95 = getelementptr inbounds double, double* %68, i64 %idxprom94
  %69 = load double, double* %arrayidx95, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %70 to i64
  %71 = load double*, double** %eff2.addr, align 8
  %arrayidx97 = getelementptr inbounds double, double* %71, i64 %idxprom96
  %72 = load double, double* %arrayidx97, align 8
  %mul = fmul double %69, %72
  %73 = load double, double* %effijx, align 8
  %mul98 = fmul double %mul, %73
  %conv99 = fptrunc double %mul98 to float
  store float %conv99, float* %effij, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %75 to i64
  %76 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %76, i64 %idxprom101
  %77 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %77, i64 %idxprom100
  %78 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx103, align 8
  store %struct._LocalHom* %78, %struct._LocalHom** %tmpptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.298, %for.body.93
  %79 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %tobool104 = icmp ne %struct._LocalHom* %79, null
  br i1 %tobool104, label %while.body, label %while.end.299

while.body:                                       ; preds = %while.cond
  %80 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %80 to i64
  %81 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %81, i64 %idxprom105
  %82 = load i8*, i8** %arrayidx106, align 8
  store i8* %82, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %if.end.122, %while.body
  %83 = load i8*, i8** %pt, align 8
  %84 = load i8, i8* %83, align 1
  %conv108 = sext i8 %84 to i32
  %cmp109 = icmp ne i32 %conv108, 0
  br i1 %cmp109, label %while.body.111, label %while.end

while.body.111:                                   ; preds = %while.cond.107
  %85 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %86 = load i8, i8* %85, align 1
  %conv112 = sext i8 %86 to i32
  %cmp113 = icmp ne i32 %conv112, 45
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %while.body.111
  %87 = load i32, i32* %tmpint, align 4
  %inc116 = add nsw i32 %87, 1
  store i32 %inc116, i32* %tmpint, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %while.body.111
  %88 = load i32, i32* %tmpint, align 4
  %89 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start1118 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %89, i32 0, i32 3
  %90 = load i32, i32* %start1118, align 4
  %cmp119 = icmp eq i32 %88, %90
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.117
  br label %while.end

if.end.122:                                       ; preds = %if.end.117
  br label %while.cond.107

while.end:                                        ; preds = %if.then.121, %while.cond.107
  %91 = load i8*, i8** %pt, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %92 to i64
  %93 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %93, i64 %idxprom123
  %94 = load i8*, i8** %arrayidx124, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %94 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %conv125 = trunc i64 %sub to i32
  store i32 %conv125, i32* %start1, align 4
  %95 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start1126 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %95, i32 0, i32 3
  %96 = load i32, i32* %start1126, align 4
  %97 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end1127 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %97, i32 0, i32 4
  %98 = load i32, i32* %end1127, align 4
  %cmp128 = icmp eq i32 %96, %98
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %while.end
  %99 = load i32, i32* %start1, align 4
  store i32 %99, i32* %end1, align 4
  br label %if.end.157

if.else.131:                                      ; preds = %while.end
  br label %while.cond.132

while.cond.132:                                   ; preds = %if.end.148, %if.else.131
  %100 = load i8*, i8** %pt, align 8
  %101 = load i8, i8* %100, align 1
  %conv133 = sext i8 %101 to i32
  %cmp134 = icmp ne i32 %conv133, 0
  br i1 %cmp134, label %while.body.136, label %while.end.149

while.body.136:                                   ; preds = %while.cond.132
  %102 = load i8*, i8** %pt, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr137, i8** %pt, align 8
  %103 = load i8, i8* %102, align 1
  %conv138 = sext i8 %103 to i32
  %cmp139 = icmp ne i32 %conv138, 45
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %while.body.136
  %104 = load i32, i32* %tmpint, align 4
  %inc142 = add nsw i32 %104, 1
  store i32 %inc142, i32* %tmpint, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %while.body.136
  %105 = load i32, i32* %tmpint, align 4
  %106 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end1144 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %106, i32 0, i32 4
  %107 = load i32, i32* %end1144, align 4
  %cmp145 = icmp eq i32 %105, %107
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.143
  br label %while.end.149

if.end.148:                                       ; preds = %if.end.143
  br label %while.cond.132

while.end.149:                                    ; preds = %if.then.147, %while.cond.132
  %108 = load i8*, i8** %pt, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %109 to i64
  %110 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8*, i8** %110, i64 %idxprom150
  %111 = load i8*, i8** %arrayidx151, align 8
  %sub.ptr.lhs.cast152 = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %111 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %sub155 = sub nsw i64 %sub.ptr.sub154, 1
  %conv156 = trunc i64 %sub155 to i32
  store i32 %conv156, i32* %end1, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %while.end.149, %if.then.130
  %112 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %112 to i64
  %113 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %113, i64 %idxprom158
  %114 = load i8*, i8** %arrayidx159, align 8
  store i8* %114, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond.160

while.cond.160:                                   ; preds = %if.end.176, %if.end.157
  %115 = load i8*, i8** %pt, align 8
  %116 = load i8, i8* %115, align 1
  %conv161 = sext i8 %116 to i32
  %cmp162 = icmp ne i32 %conv161, 0
  br i1 %cmp162, label %while.body.164, label %while.end.177

while.body.164:                                   ; preds = %while.cond.160
  %117 = load i8*, i8** %pt, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr165, i8** %pt, align 8
  %118 = load i8, i8* %117, align 1
  %conv166 = sext i8 %118 to i32
  %cmp167 = icmp ne i32 %conv166, 45
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %while.body.164
  %119 = load i32, i32* %tmpint, align 4
  %inc170 = add nsw i32 %119, 1
  store i32 %inc170, i32* %tmpint, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %while.body.164
  %120 = load i32, i32* %tmpint, align 4
  %121 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2172 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %121, i32 0, i32 5
  %122 = load i32, i32* %start2172, align 4
  %cmp173 = icmp eq i32 %120, %122
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.171
  br label %while.end.177

if.end.176:                                       ; preds = %if.end.171
  br label %while.cond.160

while.end.177:                                    ; preds = %if.then.175, %while.cond.160
  %123 = load i8*, i8** %pt, align 8
  %124 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %124 to i64
  %125 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %125, i64 %idxprom178
  %126 = load i8*, i8** %arrayidx179, align 8
  %sub.ptr.lhs.cast180 = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast181 = ptrtoint i8* %126 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %sub183 = sub nsw i64 %sub.ptr.sub182, 1
  %conv184 = trunc i64 %sub183 to i32
  store i32 %conv184, i32* %start2, align 4
  %127 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2185 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %127, i32 0, i32 5
  %128 = load i32, i32* %start2185, align 4
  %129 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2186 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %129, i32 0, i32 6
  %130 = load i32, i32* %end2186, align 4
  %cmp187 = icmp eq i32 %128, %130
  br i1 %cmp187, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %while.end.177
  %131 = load i32, i32* %start2, align 4
  store i32 %131, i32* %end2, align 4
  br label %if.end.216

if.else.190:                                      ; preds = %while.end.177
  br label %while.cond.191

while.cond.191:                                   ; preds = %if.end.207, %if.else.190
  %132 = load i8*, i8** %pt, align 8
  %133 = load i8, i8* %132, align 1
  %conv192 = sext i8 %133 to i32
  %cmp193 = icmp ne i32 %conv192, 0
  br i1 %cmp193, label %while.body.195, label %while.end.208

while.body.195:                                   ; preds = %while.cond.191
  %134 = load i8*, i8** %pt, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr196, i8** %pt, align 8
  %135 = load i8, i8* %134, align 1
  %conv197 = sext i8 %135 to i32
  %cmp198 = icmp ne i32 %conv197, 45
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %while.body.195
  %136 = load i32, i32* %tmpint, align 4
  %inc201 = add nsw i32 %136, 1
  store i32 %inc201, i32* %tmpint, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %while.body.195
  %137 = load i32, i32* %tmpint, align 4
  %138 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2203 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %138, i32 0, i32 6
  %139 = load i32, i32* %end2203, align 4
  %cmp204 = icmp eq i32 %137, %139
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.202
  br label %while.end.208

if.end.207:                                       ; preds = %if.end.202
  br label %while.cond.191

while.end.208:                                    ; preds = %if.then.206, %while.cond.191
  %140 = load i8*, i8** %pt, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %141 to i64
  %142 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %142, i64 %idxprom209
  %143 = load i8*, i8** %arrayidx210, align 8
  %sub.ptr.lhs.cast211 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast212 = ptrtoint i8* %143 to i64
  %sub.ptr.sub213 = sub i64 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast212
  %sub214 = sub nsw i64 %sub.ptr.sub213, 1
  %conv215 = trunc i64 %sub214 to i32
  store i32 %conv215, i32* %end2, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %while.end.208, %if.then.189
  %144 = load i32, i32* %end1, align 4
  %145 = load i32, i32* %start1, align 4
  %sub217 = sub nsw i32 %144, %145
  %146 = load i32, i32* %end2, align 4
  %147 = load i32, i32* %start2, align 4
  %sub218 = sub nsw i32 %146, %147
  %cmp219 = icmp ne i32 %sub217, %sub218
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.216
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.end.216
  %148 = load i32, i32* %start1, align 4
  store i32 %148, i32* %k1, align 4
  %149 = load i32, i32* %start2, align 4
  store i32 %149, i32* %k2, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %150 to i64
  %151 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx224 = getelementptr inbounds i8*, i8** %151, i64 %idxprom223
  %152 = load i8*, i8** %arrayidx224, align 8
  %153 = load i32, i32* %k1, align 4
  %idx.ext = sext i32 %153 to i64
  %add.ptr = getelementptr inbounds i8, i8* %152, i64 %idx.ext
  store i8* %add.ptr, i8** %pt1, align 8
  %154 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %154 to i64
  %155 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %155, i64 %idxprom225
  %156 = load i8*, i8** %arrayidx226, align 8
  %157 = load i32, i32* %k2, align 4
  %idx.ext227 = sext i32 %157 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %156, i64 %idx.ext227
  store i8* %add.ptr228, i8** %pt2, align 8
  br label %while.cond.229

while.cond.229:                                   ; preds = %if.end.297, %if.end.222
  %158 = load i8*, i8** %pt1, align 8
  %159 = load i8, i8* %158, align 1
  %conv230 = sext i8 %159 to i32
  %tobool231 = icmp ne i32 %conv230, 0
  br i1 %tobool231, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.229
  %160 = load i8*, i8** %pt2, align 8
  %161 = load i8, i8* %160, align 1
  %conv232 = sext i8 %161 to i32
  %tobool233 = icmp ne i32 %conv232, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.229
  %162 = phi i1 [ false, %while.cond.229 ], [ %tobool233, %land.rhs ]
  br i1 %162, label %while.body.234, label %while.end.298

while.body.234:                                   ; preds = %land.end
  %163 = load i8*, i8** %pt1, align 8
  %164 = load i8, i8* %163, align 1
  %conv235 = sext i8 %164 to i32
  %cmp236 = icmp ne i32 %conv235, 45
  br i1 %cmp236, label %land.lhs.true, label %if.else.252

land.lhs.true:                                    ; preds = %while.body.234
  %165 = load i8*, i8** %pt2, align 8
  %166 = load i8, i8* %165, align 1
  %conv238 = sext i8 %166 to i32
  %cmp239 = icmp ne i32 %conv238, 45
  br i1 %cmp239, label %if.then.241, label %if.else.252

if.then.241:                                      ; preds = %land.lhs.true
  %167 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %fimportance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %167, i32 0, i32 11
  %168 = load float, float* %fimportance, align 4
  %169 = load float, float* %effij, align 4
  %mul242 = fmul float %168, %169
  %170 = load i32, i32* %k2, align 4
  %idxprom243 = sext i32 %170 to i64
  %171 = load i32, i32* %k1, align 4
  %idxprom244 = sext i32 %171 to i64
  %172 = load float**, float*** @impmtx, align 8
  %arrayidx245 = getelementptr inbounds float*, float** %172, i64 %idxprom244
  %173 = load float*, float** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds float, float* %173, i64 %idxprom243
  %174 = load float, float* %arrayidx246, align 4
  %add247 = fadd float %174, %mul242
  store float %add247, float* %arrayidx246, align 4
  %175 = load i32, i32* %k1, align 4
  %inc248 = add nsw i32 %175, 1
  store i32 %inc248, i32* %k1, align 4
  %176 = load i32, i32* %k2, align 4
  %inc249 = add nsw i32 %176, 1
  store i32 %inc249, i32* %k2, align 4
  %177 = load i8*, i8** %pt1, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr250, i8** %pt1, align 8
  %178 = load i8*, i8** %pt2, align 8
  %incdec.ptr251 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr251, i8** %pt2, align 8
  br label %if.end.290

if.else.252:                                      ; preds = %land.lhs.true, %while.body.234
  %179 = load i8*, i8** %pt1, align 8
  %180 = load i8, i8* %179, align 1
  %conv253 = sext i8 %180 to i32
  %cmp254 = icmp ne i32 %conv253, 45
  br i1 %cmp254, label %land.lhs.true.256, label %if.else.263

land.lhs.true.256:                                ; preds = %if.else.252
  %181 = load i8*, i8** %pt2, align 8
  %182 = load i8, i8* %181, align 1
  %conv257 = sext i8 %182 to i32
  %cmp258 = icmp eq i32 %conv257, 45
  br i1 %cmp258, label %if.then.260, label %if.else.263

if.then.260:                                      ; preds = %land.lhs.true.256
  %183 = load i32, i32* %k2, align 4
  %inc261 = add nsw i32 %183, 1
  store i32 %inc261, i32* %k2, align 4
  %184 = load i8*, i8** %pt2, align 8
  %incdec.ptr262 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr262, i8** %pt2, align 8
  br label %if.end.289

if.else.263:                                      ; preds = %land.lhs.true.256, %if.else.252
  %185 = load i8*, i8** %pt1, align 8
  %186 = load i8, i8* %185, align 1
  %conv264 = sext i8 %186 to i32
  %cmp265 = icmp eq i32 %conv264, 45
  br i1 %cmp265, label %land.lhs.true.267, label %if.else.274

land.lhs.true.267:                                ; preds = %if.else.263
  %187 = load i8*, i8** %pt2, align 8
  %188 = load i8, i8* %187, align 1
  %conv268 = sext i8 %188 to i32
  %cmp269 = icmp ne i32 %conv268, 45
  br i1 %cmp269, label %if.then.271, label %if.else.274

if.then.271:                                      ; preds = %land.lhs.true.267
  %189 = load i32, i32* %k1, align 4
  %inc272 = add nsw i32 %189, 1
  store i32 %inc272, i32* %k1, align 4
  %190 = load i8*, i8** %pt1, align 8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr273, i8** %pt1, align 8
  br label %if.end.288

if.else.274:                                      ; preds = %land.lhs.true.267, %if.else.263
  %191 = load i8*, i8** %pt1, align 8
  %192 = load i8, i8* %191, align 1
  %conv275 = sext i8 %192 to i32
  %cmp276 = icmp eq i32 %conv275, 45
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.287

land.lhs.true.278:                                ; preds = %if.else.274
  %193 = load i8*, i8** %pt2, align 8
  %194 = load i8, i8* %193, align 1
  %conv279 = sext i8 %194 to i32
  %cmp280 = icmp eq i32 %conv279, 45
  br i1 %cmp280, label %if.then.282, label %if.end.287

if.then.282:                                      ; preds = %land.lhs.true.278
  %195 = load i32, i32* %k1, align 4
  %inc283 = add nsw i32 %195, 1
  store i32 %inc283, i32* %k1, align 4
  %196 = load i8*, i8** %pt1, align 8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr284, i8** %pt1, align 8
  %197 = load i32, i32* %k2, align 4
  %inc285 = add nsw i32 %197, 1
  store i32 %inc285, i32* %k2, align 4
  %198 = load i8*, i8** %pt2, align 8
  %incdec.ptr286 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr286, i8** %pt2, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.282, %land.lhs.true.278, %if.else.274
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.271
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.260
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.241
  %199 = load i32, i32* %k1, align 4
  %200 = load i32, i32* %end1, align 4
  %cmp291 = icmp sgt i32 %199, %200
  br i1 %cmp291, label %if.then.296, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %if.end.290
  %201 = load i32, i32* %k2, align 4
  %202 = load i32, i32* %end2, align 4
  %cmp294 = icmp sgt i32 %201, %202
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %lor.lhs.false.293, %if.end.290
  br label %while.end.298

if.end.297:                                       ; preds = %lor.lhs.false.293
  br label %while.cond.229

while.end.298:                                    ; preds = %if.then.296, %land.end
  %203 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %203, i32 0, i32 1
  %204 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %204, %struct._LocalHom** %tmpptr, align 8
  br label %while.cond

while.end.299:                                    ; preds = %while.cond
  br label %for.inc.300

for.inc.300:                                      ; preds = %while.end.299
  %205 = load i32, i32* %j, align 4
  %inc301 = add nsw i32 %205, 1
  store i32 %inc301, i32* %j, align 4
  br label %for.cond.90

for.end.302:                                      ; preds = %for.cond.90
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.end.302
  %206 = load i32, i32* %i, align 4
  %inc304 = add nsw i32 %206, 1
  store i32 %inc304, i32* %i, align 4
  br label %for.cond.86

for.end.305:                                      ; preds = %for.cond.86
  ret void
}

declare void @FreeFloatMtx(float**) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare float** @AllocateFloatMtx(i32, i32) #1

declare i8* @AllocateCharVec(i32) #1

; Function Attrs: nounwind uwtable
define float @A__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %localhom.addr = alloca %struct._LocalHom***, align 8
  %impmatch.addr = alloca float*, align 8
  %sgap1.addr = alloca i8*, align 8
  %sgap2.addr = alloca i8*, align 8
  %egap1.addr = alloca i8*, align 8
  %egap2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %resultlen = alloca i32, align 4
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
  %fpenalty = alloca float, align 4
  %fgcp2pt = alloca float*, align 8
  %ogcp2pt = alloca float*, align 8
  %fgcp1va = alloca float, align 4
  %ogcp1va = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1116 = alloca i32, align 4
  %ll2117 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store %struct._LocalHom*** %localhom, %struct._LocalHom**** %localhom.addr, align 8
  store float* %impmatch, float** %impmatch.addr, align 8
  store i8* %sgap1, i8** %sgap1.addr, align 8
  store i8* %sgap2, i8** %sgap2.addr, align 8
  store i8* %egap1, i8** %egap1.addr, align 8
  store i8* %egap2, i8** %egap2.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @A__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @A__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @A__align.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %call3 = call i64 @strlen(i8* %5) #5
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %lgth1, align 4
  %6 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i64 @strlen(i8* %7) #5
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %lgth2, align 4
  %8 = load i32, i32* %lgth1, align 4
  %9 = load i32, i32* @A__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @A__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.84

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @A__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @A__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @A__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @A__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @A__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @A__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @A__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @A__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @A__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @A__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @A__align.ogcp1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @A__align.ogcp2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @A__align.fgcp1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @A__align.fgcp2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float**, float*** @A__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %26)
  %27 = load float**, float*** @A__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %27)
  %28 = load float**, float*** @A__align.floatwork, align 8
  call void @FreeFloatMtx(float** %28)
  %29 = load i32**, i32*** @A__align.intwork, align 8
  call void @FreeIntMtx(i32** %29)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %30 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %30 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %31 = load i32, i32* @A__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %31
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %32 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %32 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %33 = load i32, i32* @A__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %33, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %34 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %35 = load i32, i32* @A__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %35
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %36 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %36 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %37 = load i32, i32* @A__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %37, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %38 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %38, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @A__align.w1, align 8
  %39 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %39, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @A__align.w2, align 8
  %40 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %40, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @A__align.match, align 8
  %41 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %41, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @A__align.initverticalw, align 8
  %42 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %42, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @A__align.lastverticalw, align 8
  %43 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %43, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @A__align.m, align 8
  %44 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %44, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @A__align.mp, align 8
  %45 = load i32, i32* @njob, align 4
  %46 = load i32, i32* %ll1, align 4
  %47 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %46, %47
  %call54 = call i8** @AllocateCharMtx(i32 %45, i32 %add53)
  store i8** %call54, i8*** @A__align.mseq, align 8
  %48 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %48, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @A__align.ogcp1, align 8
  %49 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %49, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @A__align.ogcp2, align 8
  %50 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %50, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @A__align.fgcp1, align 8
  %51 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %51, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @A__align.fgcp2, align 8
  %52 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %52, 2
  %call64 = call float** @AllocateFloatMtx(i32 26, i32 %add63)
  store float** %call64, float*** @A__align.cpmx1, align 8
  %53 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %53, 2
  %call66 = call float** @AllocateFloatMtx(i32 26, i32 %add65)
  store float** %call66, float*** @A__align.cpmx2, align 8
  %54 = load i32, i32* %ll1, align 4
  %55 = load i32, i32* %ll2, align 4
  %cmp67 = icmp sgt i32 %54, %55
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.36
  %56 = load i32, i32* %ll1, align 4
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.end.36
  %57 = load i32, i32* %ll2, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi i32 [ %56, %cond.true.69 ], [ %57, %cond.false.70 ]
  %add73 = add nsw i32 %cond72, 2
  %call74 = call float** @AllocateFloatMtx(i32 %add73, i32 26)
  store float** %call74, float*** @A__align.floatwork, align 8
  %58 = load i32, i32* %ll1, align 4
  %59 = load i32, i32* %ll2, align 4
  %cmp75 = icmp sgt i32 %58, %59
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.71
  %60 = load i32, i32* %ll1, align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.end.71
  %61 = load i32, i32* %ll2, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %60, %cond.true.77 ], [ %61, %cond.false.78 ]
  %add81 = add nsw i32 %cond80, 2
  %call82 = call i32** @AllocateIntMtx(i32 %add81, i32 27)
  store i32** %call82, i32*** @A__align.intwork, align 8
  %62 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %62, 100
  store i32 %sub, i32* @A__align.orlgth1, align 4
  %63 = load i32, i32* %ll2, align 4
  %sub83 = sub nsw i32 %63, 100
  store i32 %sub83, i32* @A__align.orlgth2, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.79, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.84
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %icyc.addr, align 4
  %cmp85 = icmp slt i32 %64, %65
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %idxprom = sext i32 %66 to i64
  %67 = load i8**, i8*** @A__align.mseq, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %67, i64 %idxprom
  %68 = load i8*, i8** %arrayidx87, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i8**, i8*** @A__align.mseq1, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %70, i64 %idxprom88
  store i8* %68, i8** %arrayidx89, align 8
  %71 = load i32, i32* %lgth1, align 4
  %idxprom90 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %73, i64 %idxprom91
  %74 = load i8*, i8** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %74, i64 %idxprom90
  store i8 0, i8* %arrayidx93, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.107, %for.end
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %jcyc.addr, align 4
  %cmp95 = icmp slt i32 %76, %77
  br i1 %cmp95, label %for.body.97, label %for.end.109

for.body.97:                                      ; preds = %for.cond.94
  %78 = load i32, i32* %icyc.addr, align 4
  %79 = load i32, i32* %j, align 4
  %add98 = add nsw i32 %78, %79
  %idxprom99 = sext i32 %add98 to i64
  %80 = load i8**, i8*** @A__align.mseq, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %80, i64 %idxprom99
  %81 = load i8*, i8** %arrayidx100, align 8
  %82 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %82 to i64
  %83 = load i8**, i8*** @A__align.mseq2, align 8
  %arrayidx102 = getelementptr inbounds i8*, i8** %83, i64 %idxprom101
  store i8* %81, i8** %arrayidx102, align 8
  %84 = load i32, i32* %lgth2, align 4
  %idxprom103 = sext i32 %84 to i64
  %85 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %85 to i64
  %86 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %86, i64 %idxprom104
  %87 = load i8*, i8** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %87, i64 %idxprom103
  store i8 0, i8* %arrayidx106, align 1
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.97
  %88 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %88, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond.94

for.end.109:                                      ; preds = %for.cond.94
  %89 = load i32, i32* @A__align.orlgth1, align 4
  %90 = load i32, i32* @commonAlloc1, align 4
  %cmp110 = icmp sgt i32 %89, %90
  br i1 %cmp110, label %if.then.115, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %for.end.109
  %91 = load i32, i32* @A__align.orlgth2, align 4
  %92 = load i32, i32* @commonAlloc2, align 4
  %cmp113 = icmp sgt i32 %91, %92
  br i1 %cmp113, label %if.then.115, label %if.end.137

if.then.115:                                      ; preds = %lor.lhs.false.112, %for.end.109
  %93 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %land.lhs.true.118, label %if.end.121

land.lhs.true.118:                                ; preds = %if.then.115
  %94 = load i32, i32* @commonAlloc2, align 4
  %tobool119 = icmp ne i32 %94, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.118
  %95 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %95)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.118, %if.then.115
  %96 = load i32, i32* @A__align.orlgth1, align 4
  %97 = load i32, i32* @commonAlloc1, align 4
  %cmp122 = icmp sgt i32 %96, %97
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %if.end.121
  %98 = load i32, i32* @A__align.orlgth1, align 4
  br label %cond.end.126

cond.false.125:                                   ; preds = %if.end.121
  %99 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.124
  %cond127 = phi i32 [ %98, %cond.true.124 ], [ %99, %cond.false.125 ]
  store i32 %cond127, i32* %ll1116, align 4
  %100 = load i32, i32* @A__align.orlgth2, align 4
  %101 = load i32, i32* @commonAlloc2, align 4
  %cmp128 = icmp sgt i32 %100, %101
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.end.126
  %102 = load i32, i32* @A__align.orlgth2, align 4
  br label %cond.end.132

cond.false.131:                                   ; preds = %cond.end.126
  %103 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.130
  %cond133 = phi i32 [ %102, %cond.true.130 ], [ %103, %cond.false.131 ]
  store i32 %cond133, i32* %ll2117, align 4
  %104 = load i32, i32* %ll1116, align 4
  %add134 = add nsw i32 %104, 10
  %105 = load i32, i32* %ll2117, align 4
  %add135 = add nsw i32 %105, 10
  %call136 = call i32** @AllocateIntMtx(i32 %add134, i32 %add135)
  store i32** %call136, i32*** @commonIP, align 8
  %106 = load i32, i32* %ll1116, align 4
  store i32 %106, i32* @commonAlloc1, align 4
  %107 = load i32, i32* %ll2117, align 4
  store i32 %107, i32* @commonAlloc2, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %cond.end.132, %lor.lhs.false.112
  %108 = load i32**, i32*** @commonIP, align 8
  store i32** %108, i32*** @A__align.ijp, align 8
  %109 = load i8**, i8*** %seq1.addr, align 8
  %110 = load float**, float*** @A__align.cpmx1, align 8
  %111 = load double*, double** %eff1.addr, align 8
  %112 = load i32, i32* %lgth1, align 4
  %113 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %109, float** %110, double* %111, i32 %112, i32 %113)
  %114 = load i8**, i8*** %seq2.addr, align 8
  %115 = load float**, float*** @A__align.cpmx2, align 8
  %116 = load double*, double** %eff2.addr, align 8
  %117 = load i32, i32* %lgth2, align 4
  %118 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %114, float** %115, double* %116, i32 %117, i32 %118)
  %119 = load i8*, i8** %sgap1.addr, align 8
  %tobool138 = icmp ne i8* %119, null
  br i1 %tobool138, label %if.then.139, label %if.else

if.then.139:                                      ; preds = %if.end.137
  %120 = load float*, float** @A__align.ogcp1, align 8
  %121 = load i32, i32* %icyc.addr, align 4
  %122 = load i8**, i8*** %seq1.addr, align 8
  %123 = load double*, double** %eff1.addr, align 8
  %124 = load i32, i32* %lgth1, align 4
  %125 = load i8*, i8** %sgap1.addr, align 8
  call void @new_OpeningGapCount(float* %120, i32 %121, i8** %122, double* %123, i32 %124, i8* %125)
  %126 = load float*, float** @A__align.ogcp2, align 8
  %127 = load i32, i32* %jcyc.addr, align 4
  %128 = load i8**, i8*** %seq2.addr, align 8
  %129 = load double*, double** %eff2.addr, align 8
  %130 = load i32, i32* %lgth2, align 4
  %131 = load i8*, i8** %sgap2.addr, align 8
  call void @new_OpeningGapCount(float* %126, i32 %127, i8** %128, double* %129, i32 %130, i8* %131)
  %132 = load float*, float** @A__align.fgcp1, align 8
  %133 = load i32, i32* %icyc.addr, align 4
  %134 = load i8**, i8*** %seq1.addr, align 8
  %135 = load double*, double** %eff1.addr, align 8
  %136 = load i32, i32* %lgth1, align 4
  %137 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount(float* %132, i32 %133, i8** %134, double* %135, i32 %136, i8* %137)
  %138 = load float*, float** @A__align.fgcp2, align 8
  %139 = load i32, i32* %jcyc.addr, align 4
  %140 = load i8**, i8*** %seq2.addr, align 8
  %141 = load double*, double** %eff2.addr, align 8
  %142 = load i32, i32* %lgth2, align 4
  %143 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %138, i32 %139, i8** %140, double* %141, i32 %142, i8* %143)
  br label %if.end.140

if.else:                                          ; preds = %if.end.137
  %144 = load float*, float** @A__align.ogcp1, align 8
  %145 = load i32, i32* %icyc.addr, align 4
  %146 = load i8**, i8*** %seq1.addr, align 8
  %147 = load double*, double** %eff1.addr, align 8
  %148 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %144, i32 %145, i8** %146, double* %147, i32 %148)
  %149 = load float*, float** @A__align.ogcp2, align 8
  %150 = load i32, i32* %jcyc.addr, align 4
  %151 = load i8**, i8*** %seq2.addr, align 8
  %152 = load double*, double** %eff2.addr, align 8
  %153 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %149, i32 %150, i8** %151, double* %152, i32 %153)
  %154 = load float*, float** @A__align.fgcp1, align 8
  %155 = load i32, i32* %icyc.addr, align 4
  %156 = load i8**, i8*** %seq1.addr, align 8
  %157 = load double*, double** %eff1.addr, align 8
  %158 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount(float* %154, i32 %155, i8** %156, double* %157, i32 %158)
  %159 = load float*, float** @A__align.fgcp2, align 8
  %160 = load i32, i32* %jcyc.addr, align 4
  %161 = load i8**, i8*** %seq2.addr, align 8
  %162 = load double*, double** %eff2.addr, align 8
  %163 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount(float* %159, i32 %160, i8** %161, double* %162, i32 %163)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else, %if.then.139
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.165, %if.end.140
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %lgth1, align 4
  %cmp142 = icmp slt i32 %164, %165
  br i1 %cmp142, label %for.body.144, label %for.end.167

for.body.144:                                     ; preds = %for.cond.141
  %166 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %166 to i64
  %167 = load float*, float** @A__align.ogcp1, align 8
  %arrayidx146 = getelementptr inbounds float, float* %167, i64 %idxprom145
  %168 = load float, float* %arrayidx146, align 4
  %conv147 = fpext float %168 to double
  %sub148 = fsub double 1.000000e+00, %conv147
  %mul149 = fmul double 5.000000e-01, %sub148
  %169 = load float, float* %fpenalty, align 4
  %conv150 = fpext float %169 to double
  %mul151 = fmul double %mul149, %conv150
  %conv152 = fptrunc double %mul151 to float
  %170 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %170 to i64
  %171 = load float*, float** @A__align.ogcp1, align 8
  %arrayidx154 = getelementptr inbounds float, float* %171, i64 %idxprom153
  store float %conv152, float* %arrayidx154, align 4
  %172 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %172 to i64
  %173 = load float*, float** @A__align.fgcp1, align 8
  %arrayidx156 = getelementptr inbounds float, float* %173, i64 %idxprom155
  %174 = load float, float* %arrayidx156, align 4
  %conv157 = fpext float %174 to double
  %sub158 = fsub double 1.000000e+00, %conv157
  %mul159 = fmul double 5.000000e-01, %sub158
  %175 = load float, float* %fpenalty, align 4
  %conv160 = fpext float %175 to double
  %mul161 = fmul double %mul159, %conv160
  %conv162 = fptrunc double %mul161 to float
  %176 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %176 to i64
  %177 = load float*, float** @A__align.fgcp1, align 8
  %arrayidx164 = getelementptr inbounds float, float* %177, i64 %idxprom163
  store float %conv162, float* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.144
  %178 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %178, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.141

for.end.167:                                      ; preds = %for.cond.141
  store i32 0, i32* %i, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.192, %for.end.167
  %179 = load i32, i32* %i, align 4
  %180 = load i32, i32* %lgth2, align 4
  %cmp169 = icmp slt i32 %179, %180
  br i1 %cmp169, label %for.body.171, label %for.end.194

for.body.171:                                     ; preds = %for.cond.168
  %181 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %181 to i64
  %182 = load float*, float** @A__align.ogcp2, align 8
  %arrayidx173 = getelementptr inbounds float, float* %182, i64 %idxprom172
  %183 = load float, float* %arrayidx173, align 4
  %conv174 = fpext float %183 to double
  %sub175 = fsub double 1.000000e+00, %conv174
  %mul176 = fmul double 5.000000e-01, %sub175
  %184 = load float, float* %fpenalty, align 4
  %conv177 = fpext float %184 to double
  %mul178 = fmul double %mul176, %conv177
  %conv179 = fptrunc double %mul178 to float
  %185 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %185 to i64
  %186 = load float*, float** @A__align.ogcp2, align 8
  %arrayidx181 = getelementptr inbounds float, float* %186, i64 %idxprom180
  store float %conv179, float* %arrayidx181, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %187 to i64
  %188 = load float*, float** @A__align.fgcp2, align 8
  %arrayidx183 = getelementptr inbounds float, float* %188, i64 %idxprom182
  %189 = load float, float* %arrayidx183, align 4
  %conv184 = fpext float %189 to double
  %sub185 = fsub double 1.000000e+00, %conv184
  %mul186 = fmul double 5.000000e-01, %sub185
  %190 = load float, float* %fpenalty, align 4
  %conv187 = fpext float %190 to double
  %mul188 = fmul double %mul186, %conv187
  %conv189 = fptrunc double %mul188 to float
  %191 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %191 to i64
  %192 = load float*, float** @A__align.fgcp2, align 8
  %arrayidx191 = getelementptr inbounds float, float* %192, i64 %idxprom190
  store float %conv189, float* %arrayidx191, align 4
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.171
  %193 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %193, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.168

for.end.194:                                      ; preds = %for.cond.168
  %194 = load float*, float** @A__align.w1, align 8
  store float* %194, float** %currentw, align 8
  %195 = load float*, float** @A__align.w2, align 8
  store float* %195, float** %previousw, align 8
  %196 = load float*, float** @A__align.initverticalw, align 8
  %197 = load float**, float*** @A__align.cpmx2, align 8
  %198 = load float**, float*** @A__align.cpmx1, align 8
  %199 = load i32, i32* %lgth1, align 4
  %200 = load float**, float*** @A__align.floatwork, align 8
  %201 = load i32**, i32*** @A__align.intwork, align 8
  call void @match_calc(float* %196, float** %197, float** %198, i32 0, i32 %199, float** %200, i32** %201, i32 1)
  %202 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool195 = icmp ne %struct._LocalHom*** %202, null
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %for.end.194
  %203 = load float*, float** @A__align.initverticalw, align 8
  %204 = load i32, i32* %lgth1, align 4
  call void @imp_match_out_vead_tate(float* %203, i32 0, i32 %204)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %for.end.194
  %205 = load float*, float** %currentw, align 8
  %206 = load float**, float*** @A__align.cpmx1, align 8
  %207 = load float**, float*** @A__align.cpmx2, align 8
  %208 = load i32, i32* %lgth2, align 4
  %209 = load float**, float*** @A__align.floatwork, align 8
  %210 = load i32**, i32*** @A__align.intwork, align 8
  call void @match_calc(float* %205, float** %206, float** %207, i32 0, i32 %208, float** %209, i32** %210, i32 1)
  %211 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool198 = icmp ne %struct._LocalHom*** %211, null
  br i1 %tobool198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.197
  %212 = load float*, float** %currentw, align 8
  %213 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_vead(float* %212, i32 0, i32 %213)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %if.end.197
  %214 = load i32, i32* @outgap, align 4
  %cmp201 = icmp eq i32 %214, 1
  br i1 %cmp201, label %if.then.203, label %if.else.236

if.then.203:                                      ; preds = %if.end.200
  store i32 1, i32* %i, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.217, %if.then.203
  %215 = load i32, i32* %i, align 4
  %216 = load i32, i32* %lgth1, align 4
  %add205 = add nsw i32 %216, 1
  %cmp206 = icmp slt i32 %215, %add205
  br i1 %cmp206, label %for.body.208, label %for.end.219

for.body.208:                                     ; preds = %for.cond.204
  %217 = load float*, float** @A__align.ogcp1, align 8
  %arrayidx209 = getelementptr inbounds float, float* %217, i64 0
  %218 = load float, float* %arrayidx209, align 4
  %219 = load i32, i32* %i, align 4
  %sub210 = sub nsw i32 %219, 1
  %idxprom211 = sext i32 %sub210 to i64
  %220 = load float*, float** @A__align.fgcp1, align 8
  %arrayidx212 = getelementptr inbounds float, float* %220, i64 %idxprom211
  %221 = load float, float* %arrayidx212, align 4
  %add213 = fadd float %218, %221
  %222 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %222 to i64
  %223 = load float*, float** @A__align.initverticalw, align 8
  %arrayidx215 = getelementptr inbounds float, float* %223, i64 %idxprom214
  %224 = load float, float* %arrayidx215, align 4
  %add216 = fadd float %224, %add213
  store float %add216, float* %arrayidx215, align 4
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.208
  %225 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %225, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond.204

for.end.219:                                      ; preds = %for.cond.204
  store i32 1, i32* %j, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.233, %for.end.219
  %226 = load i32, i32* %j, align 4
  %227 = load i32, i32* %lgth2, align 4
  %add221 = add nsw i32 %227, 1
  %cmp222 = icmp slt i32 %226, %add221
  br i1 %cmp222, label %for.body.224, label %for.end.235

for.body.224:                                     ; preds = %for.cond.220
  %228 = load float*, float** @A__align.ogcp2, align 8
  %arrayidx225 = getelementptr inbounds float, float* %228, i64 0
  %229 = load float, float* %arrayidx225, align 4
  %230 = load i32, i32* %j, align 4
  %sub226 = sub nsw i32 %230, 1
  %idxprom227 = sext i32 %sub226 to i64
  %231 = load float*, float** @A__align.fgcp2, align 8
  %arrayidx228 = getelementptr inbounds float, float* %231, i64 %idxprom227
  %232 = load float, float* %arrayidx228, align 4
  %add229 = fadd float %229, %232
  %233 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %233 to i64
  %234 = load float*, float** %currentw, align 8
  %arrayidx231 = getelementptr inbounds float, float* %234, i64 %idxprom230
  %235 = load float, float* %arrayidx231, align 4
  %add232 = fadd float %235, %add229
  store float %add232, float* %arrayidx231, align 4
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.224
  %236 = load i32, i32* %j, align 4
  %inc234 = add nsw i32 %236, 1
  store i32 %inc234, i32* %j, align 4
  br label %for.cond.220

for.end.235:                                      ; preds = %for.cond.220
  br label %if.end.268

if.else.236:                                      ; preds = %if.end.200
  store i32 1, i32* %j, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.249, %if.else.236
  %237 = load i32, i32* %j, align 4
  %238 = load i32, i32* %lgth2, align 4
  %add238 = add nsw i32 %238, 1
  %cmp239 = icmp slt i32 %237, %add238
  br i1 %cmp239, label %for.body.241, label %for.end.251

for.body.241:                                     ; preds = %for.cond.237
  %239 = load i32, i32* @offset, align 4
  %240 = load i32, i32* %j, align 4
  %mul242 = mul nsw i32 %239, %240
  %conv243 = sitofp i32 %mul242 to double
  %div = fdiv double %conv243, 2.000000e+00
  %241 = load i32, i32* %j, align 4
  %idxprom244 = sext i32 %241 to i64
  %242 = load float*, float** %currentw, align 8
  %arrayidx245 = getelementptr inbounds float, float* %242, i64 %idxprom244
  %243 = load float, float* %arrayidx245, align 4
  %conv246 = fpext float %243 to double
  %sub247 = fsub double %conv246, %div
  %conv248 = fptrunc double %sub247 to float
  store float %conv248, float* %arrayidx245, align 4
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.body.241
  %244 = load i32, i32* %j, align 4
  %inc250 = add nsw i32 %244, 1
  store i32 %inc250, i32* %j, align 4
  br label %for.cond.237

for.end.251:                                      ; preds = %for.cond.237
  store i32 1, i32* %i, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.265, %for.end.251
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %lgth1, align 4
  %add253 = add nsw i32 %246, 1
  %cmp254 = icmp slt i32 %245, %add253
  br i1 %cmp254, label %for.body.256, label %for.end.267

for.body.256:                                     ; preds = %for.cond.252
  %247 = load i32, i32* @offset, align 4
  %248 = load i32, i32* %i, align 4
  %mul257 = mul nsw i32 %247, %248
  %conv258 = sitofp i32 %mul257 to double
  %div259 = fdiv double %conv258, 2.000000e+00
  %249 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %249 to i64
  %250 = load float*, float** @A__align.initverticalw, align 8
  %arrayidx261 = getelementptr inbounds float, float* %250, i64 %idxprom260
  %251 = load float, float* %arrayidx261, align 4
  %conv262 = fpext float %251 to double
  %sub263 = fsub double %conv262, %div259
  %conv264 = fptrunc double %sub263 to float
  store float %conv264, float* %arrayidx261, align 4
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.body.256
  %252 = load i32, i32* %i, align 4
  %inc266 = add nsw i32 %252, 1
  store i32 %inc266, i32* %i, align 4
  br label %for.cond.252

for.end.267:                                      ; preds = %for.cond.252
  br label %if.end.268

if.end.268:                                       ; preds = %for.end.267, %for.end.235
  store i32 1, i32* %j, align 4
  br label %for.cond.269

for.cond.269:                                     ; preds = %for.inc.283, %if.end.268
  %253 = load i32, i32* %j, align 4
  %254 = load i32, i32* %lgth2, align 4
  %add270 = add nsw i32 %254, 1
  %cmp271 = icmp slt i32 %253, %add270
  br i1 %cmp271, label %for.body.273, label %for.end.285

for.body.273:                                     ; preds = %for.cond.269
  %255 = load i32, i32* %j, align 4
  %sub274 = sub nsw i32 %255, 1
  %idxprom275 = sext i32 %sub274 to i64
  %256 = load float*, float** %currentw, align 8
  %arrayidx276 = getelementptr inbounds float, float* %256, i64 %idxprom275
  %257 = load float, float* %arrayidx276, align 4
  %258 = load float*, float** @A__align.ogcp1, align 8
  %arrayidx277 = getelementptr inbounds float, float* %258, i64 1
  %259 = load float, float* %arrayidx277, align 4
  %add278 = fadd float %257, %259
  %260 = load i32, i32* %j, align 4
  %idxprom279 = sext i32 %260 to i64
  %261 = load float*, float** @A__align.m, align 8
  %arrayidx280 = getelementptr inbounds float, float* %261, i64 %idxprom279
  store float %add278, float* %arrayidx280, align 4
  %262 = load i32, i32* %j, align 4
  %idxprom281 = sext i32 %262 to i64
  %263 = load i32*, i32** @A__align.mp, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %263, i64 %idxprom281
  store i32 0, i32* %arrayidx282, align 4
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.body.273
  %264 = load i32, i32* %j, align 4
  %inc284 = add nsw i32 %264, 1
  store i32 %inc284, i32* %j, align 4
  br label %for.cond.269

for.end.285:                                      ; preds = %for.cond.269
  %265 = load i32, i32* %lgth2, align 4
  %cmp286 = icmp eq i32 %265, 0
  br i1 %cmp286, label %if.then.288, label %if.else.290

if.then.288:                                      ; preds = %for.end.285
  %266 = load float*, float** @A__align.lastverticalw, align 8
  %arrayidx289 = getelementptr inbounds float, float* %266, i64 0
  store float 0.000000e+00, float* %arrayidx289, align 4
  br label %if.end.295

if.else.290:                                      ; preds = %for.end.285
  %267 = load i32, i32* %lgth2, align 4
  %sub291 = sub nsw i32 %267, 1
  %idxprom292 = sext i32 %sub291 to i64
  %268 = load float*, float** %currentw, align 8
  %arrayidx293 = getelementptr inbounds float, float* %268, i64 %idxprom292
  %269 = load float, float* %arrayidx293, align 4
  %270 = load float*, float** @A__align.lastverticalw, align 8
  %arrayidx294 = getelementptr inbounds float, float* %270, i64 0
  store float %269, float* %arrayidx294, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.290, %if.then.288
  %271 = load i32, i32* @outgap, align 4
  %tobool296 = icmp ne i32 %271, 0
  br i1 %tobool296, label %if.then.297, label %if.else.299

if.then.297:                                      ; preds = %if.end.295
  %272 = load i32, i32* %lgth1, align 4
  %add298 = add nsw i32 %272, 1
  store i32 %add298, i32* %lasti, align 4
  br label %if.end.300

if.else.299:                                      ; preds = %if.end.295
  %273 = load i32, i32* %lgth1, align 4
  store i32 %273, i32* %lasti, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.299, %if.then.297
  store i32 1, i32* %i, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.374, %if.end.300
  %274 = load i32, i32* %i, align 4
  %275 = load i32, i32* %lasti, align 4
  %cmp302 = icmp slt i32 %274, %275
  br i1 %cmp302, label %for.body.304, label %for.end.376

for.body.304:                                     ; preds = %for.cond.301
  %276 = load float*, float** %previousw, align 8
  store float* %276, float** %wtmp, align 8
  %277 = load float*, float** %currentw, align 8
  store float* %277, float** %previousw, align 8
  %278 = load float*, float** %wtmp, align 8
  store float* %278, float** %currentw, align 8
  %279 = load i32, i32* %i, align 4
  %sub305 = sub nsw i32 %279, 1
  %idxprom306 = sext i32 %sub305 to i64
  %280 = load float*, float** @A__align.initverticalw, align 8
  %arrayidx307 = getelementptr inbounds float, float* %280, i64 %idxprom306
  %281 = load float, float* %arrayidx307, align 4
  %282 = load float*, float** %previousw, align 8
  %arrayidx308 = getelementptr inbounds float, float* %282, i64 0
  store float %281, float* %arrayidx308, align 4
  %283 = load float*, float** %currentw, align 8
  %284 = load float**, float*** @A__align.cpmx1, align 8
  %285 = load float**, float*** @A__align.cpmx2, align 8
  %286 = load i32, i32* %i, align 4
  %287 = load i32, i32* %lgth2, align 4
  %288 = load float**, float*** @A__align.floatwork, align 8
  %289 = load i32**, i32*** @A__align.intwork, align 8
  call void @match_calc(float* %283, float** %284, float** %285, i32 %286, i32 %287, float** %288, i32** %289, i32 0)
  %290 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool309 = icmp ne %struct._LocalHom*** %290, null
  br i1 %tobool309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %for.body.304
  %291 = load float*, float** %currentw, align 8
  %292 = load i32, i32* %i, align 4
  %293 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_vead(float* %291, i32 %292, i32 %293)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %for.body.304
  %294 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %294 to i64
  %295 = load float*, float** @A__align.initverticalw, align 8
  %arrayidx313 = getelementptr inbounds float, float* %295, i64 %idxprom312
  %296 = load float, float* %arrayidx313, align 4
  %297 = load float*, float** %currentw, align 8
  %arrayidx314 = getelementptr inbounds float, float* %297, i64 0
  store float %296, float* %arrayidx314, align 4
  %298 = load float*, float** %previousw, align 8
  %arrayidx315 = getelementptr inbounds float, float* %298, i64 0
  %299 = load float, float* %arrayidx315, align 4
  %300 = load float*, float** @A__align.ogcp2, align 8
  %arrayidx316 = getelementptr inbounds float, float* %300, i64 1
  %301 = load float, float* %arrayidx316, align 4
  %add317 = fadd float %299, %301
  store float %add317, float* @A__align.mi, align 4
  store i32 0, i32* @A__align.mpi, align 4
  %302 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %302 to i64
  %303 = load i32**, i32*** @A__align.ijp, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %303, i64 %idxprom318
  %304 = load i32*, i32** %arrayidx319, align 8
  %add.ptr = getelementptr inbounds i32, i32* %304, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %305 = load float*, float** @A__align.m, align 8
  %add.ptr320 = getelementptr inbounds float, float* %305, i64 1
  store float* %add.ptr320, float** %mjpt, align 8
  %306 = load float*, float** %previousw, align 8
  store float* %306, float** %prept, align 8
  %307 = load float*, float** %currentw, align 8
  %add.ptr321 = getelementptr inbounds float, float* %307, i64 1
  store float* %add.ptr321, float** %curpt, align 8
  %308 = load i32*, i32** @A__align.mp, align 8
  %add.ptr322 = getelementptr inbounds i32, i32* %308, i64 1
  store i32* %add.ptr322, i32** %mpjpt, align 8
  %309 = load float*, float** @A__align.fgcp2, align 8
  store float* %309, float** %fgcp2pt, align 8
  %310 = load float*, float** @A__align.ogcp2, align 8
  %add.ptr323 = getelementptr inbounds float, float* %310, i64 1
  store float* %add.ptr323, float** %ogcp2pt, align 8
  %311 = load i32, i32* %i, align 4
  %sub324 = sub nsw i32 %311, 1
  %idxprom325 = sext i32 %sub324 to i64
  %312 = load float*, float** @A__align.fgcp1, align 8
  %arrayidx326 = getelementptr inbounds float, float* %312, i64 %idxprom325
  %313 = load float, float* %arrayidx326, align 4
  store float %313, float* %fgcp1va, align 4
  %314 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %314 to i64
  %315 = load float*, float** @A__align.ogcp1, align 8
  %arrayidx328 = getelementptr inbounds float, float* %315, i64 %idxprom327
  %316 = load float, float* %arrayidx328, align 4
  store float %316, float* %ogcp1va, align 4
  %317 = load i32, i32* %lgth2, align 4
  %add329 = add nsw i32 %317, 1
  store i32 %add329, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.366, %if.end.311
  %318 = load i32, i32* %j, align 4
  %319 = load i32, i32* %lastj, align 4
  %cmp331 = icmp slt i32 %318, %319
  br i1 %cmp331, label %for.body.333, label %for.end.368

for.body.333:                                     ; preds = %for.cond.330
  %320 = load float*, float** %prept, align 8
  %321 = load float, float* %320, align 4
  store float %321, float* %wm, align 4
  %322 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %322, align 4
  %323 = load float, float* @A__align.mi, align 4
  %324 = load float*, float** %fgcp2pt, align 8
  %325 = load float, float* %324, align 4
  %add334 = fadd float %323, %325
  store float %add334, float* %g, align 4
  %326 = load float, float* %wm, align 4
  %cmp335 = fcmp ogt float %add334, %326
  br i1 %cmp335, label %if.then.337, label %if.end.340

if.then.337:                                      ; preds = %for.body.333
  %327 = load float, float* %g, align 4
  store float %327, float* %wm, align 4
  %328 = load i32, i32* %j, align 4
  %329 = load i32, i32* @A__align.mpi, align 4
  %sub338 = sub nsw i32 %328, %329
  %sub339 = sub nsw i32 0, %sub338
  %330 = load i32*, i32** %ijppt, align 8
  store i32 %sub339, i32* %330, align 4
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.337, %for.body.333
  %331 = load float*, float** %prept, align 8
  %332 = load float, float* %331, align 4
  %333 = load float*, float** %ogcp2pt, align 8
  %334 = load float, float* %333, align 4
  %add341 = fadd float %332, %334
  store float %add341, float* %g, align 4
  %335 = load float, float* @A__align.mi, align 4
  %cmp342 = fcmp oge float %add341, %335
  br i1 %cmp342, label %if.then.344, label %if.end.346

if.then.344:                                      ; preds = %if.end.340
  %336 = load float, float* %g, align 4
  store float %336, float* @A__align.mi, align 4
  %337 = load i32, i32* %j, align 4
  %sub345 = sub nsw i32 %337, 1
  store i32 %sub345, i32* @A__align.mpi, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.344, %if.end.340
  %338 = load float*, float** %mjpt, align 8
  %339 = load float, float* %338, align 4
  %340 = load float, float* %fgcp1va, align 4
  %add347 = fadd float %339, %340
  store float %add347, float* %g, align 4
  %341 = load float, float* %wm, align 4
  %cmp348 = fcmp ogt float %add347, %341
  br i1 %cmp348, label %if.then.350, label %if.end.352

if.then.350:                                      ; preds = %if.end.346
  %342 = load float, float* %g, align 4
  store float %342, float* %wm, align 4
  %343 = load i32, i32* %i, align 4
  %344 = load i32*, i32** %mpjpt, align 8
  %345 = load i32, i32* %344, align 4
  %sub351 = sub nsw i32 %343, %345
  %346 = load i32*, i32** %ijppt, align 8
  store i32 %sub351, i32* %346, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.350, %if.end.346
  %347 = load float*, float** %prept, align 8
  %348 = load float, float* %347, align 4
  %349 = load float, float* %ogcp1va, align 4
  %add353 = fadd float %348, %349
  store float %add353, float* %g, align 4
  %350 = load float*, float** %mjpt, align 8
  %351 = load float, float* %350, align 4
  %cmp354 = fcmp oge float %add353, %351
  br i1 %cmp354, label %if.then.356, label %if.end.358

if.then.356:                                      ; preds = %if.end.352
  %352 = load float, float* %g, align 4
  %353 = load float*, float** %mjpt, align 8
  store float %352, float* %353, align 4
  %354 = load i32, i32* %i, align 4
  %sub357 = sub nsw i32 %354, 1
  %355 = load i32*, i32** %mpjpt, align 8
  store i32 %sub357, i32* %355, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.356, %if.end.352
  %356 = load float, float* %wm, align 4
  %357 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %357, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %358 = load float, float* %357, align 4
  %add359 = fadd float %358, %356
  store float %add359, float* %357, align 4
  %359 = load i32*, i32** %ijppt, align 8
  %incdec.ptr360 = getelementptr inbounds i32, i32* %359, i32 1
  store i32* %incdec.ptr360, i32** %ijppt, align 8
  %360 = load float*, float** %mjpt, align 8
  %incdec.ptr361 = getelementptr inbounds float, float* %360, i32 1
  store float* %incdec.ptr361, float** %mjpt, align 8
  %361 = load float*, float** %prept, align 8
  %incdec.ptr362 = getelementptr inbounds float, float* %361, i32 1
  store float* %incdec.ptr362, float** %prept, align 8
  %362 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr363 = getelementptr inbounds i32, i32* %362, i32 1
  store i32* %incdec.ptr363, i32** %mpjpt, align 8
  %363 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr364 = getelementptr inbounds float, float* %363, i32 1
  store float* %incdec.ptr364, float** %fgcp2pt, align 8
  %364 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr365 = getelementptr inbounds float, float* %364, i32 1
  store float* %incdec.ptr365, float** %ogcp2pt, align 8
  br label %for.inc.366

for.inc.366:                                      ; preds = %if.end.358
  %365 = load i32, i32* %j, align 4
  %inc367 = add nsw i32 %365, 1
  store i32 %inc367, i32* %j, align 4
  br label %for.cond.330

for.end.368:                                      ; preds = %for.cond.330
  %366 = load i32, i32* %lgth2, align 4
  %sub369 = sub nsw i32 %366, 1
  %idxprom370 = sext i32 %sub369 to i64
  %367 = load float*, float** %currentw, align 8
  %arrayidx371 = getelementptr inbounds float, float* %367, i64 %idxprom370
  %368 = load float, float* %arrayidx371, align 4
  %369 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %369 to i64
  %370 = load float*, float** @A__align.lastverticalw, align 8
  %arrayidx373 = getelementptr inbounds float, float* %370, i64 %idxprom372
  store float %368, float* %arrayidx373, align 4
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.end.368
  %371 = load i32, i32* %i, align 4
  %inc375 = add nsw i32 %371, 1
  store i32 %inc375, i32* %i, align 4
  br label %for.cond.301

for.end.376:                                      ; preds = %for.cond.301
  %372 = load i32, i32* @outgap, align 4
  %tobool377 = icmp ne i32 %372, 0
  br i1 %tobool377, label %if.end.415, label %if.then.378

if.then.378:                                      ; preds = %for.end.376
  store i32 1, i32* %j, align 4
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.393, %if.then.378
  %373 = load i32, i32* %j, align 4
  %374 = load i32, i32* %lgth2, align 4
  %add380 = add nsw i32 %374, 1
  %cmp381 = icmp slt i32 %373, %add380
  br i1 %cmp381, label %for.body.383, label %for.end.395

for.body.383:                                     ; preds = %for.cond.379
  %375 = load i32, i32* @offset, align 4
  %376 = load i32, i32* %lgth2, align 4
  %377 = load i32, i32* %j, align 4
  %sub384 = sub nsw i32 %376, %377
  %mul385 = mul nsw i32 %375, %sub384
  %conv386 = sitofp i32 %mul385 to double
  %div387 = fdiv double %conv386, 2.000000e+00
  %378 = load i32, i32* %j, align 4
  %idxprom388 = sext i32 %378 to i64
  %379 = load float*, float** %currentw, align 8
  %arrayidx389 = getelementptr inbounds float, float* %379, i64 %idxprom388
  %380 = load float, float* %arrayidx389, align 4
  %conv390 = fpext float %380 to double
  %sub391 = fsub double %conv390, %div387
  %conv392 = fptrunc double %sub391 to float
  store float %conv392, float* %arrayidx389, align 4
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.body.383
  %381 = load i32, i32* %j, align 4
  %inc394 = add nsw i32 %381, 1
  store i32 %inc394, i32* %j, align 4
  br label %for.cond.379

for.end.395:                                      ; preds = %for.cond.379
  store i32 1, i32* %i, align 4
  br label %for.cond.396

for.cond.396:                                     ; preds = %for.inc.412, %for.end.395
  %382 = load i32, i32* %i, align 4
  %383 = load i32, i32* %lgth1, align 4
  %add397 = add nsw i32 %383, 1
  %cmp398 = icmp slt i32 %382, %add397
  br i1 %cmp398, label %for.body.400, label %for.end.414

for.body.400:                                     ; preds = %for.cond.396
  %384 = load i32, i32* @offset, align 4
  %conv401 = sitofp i32 %384 to double
  %385 = load i32, i32* %lgth1, align 4
  %conv402 = sitofp i32 %385 to double
  %386 = load i32, i32* %i, align 4
  %conv403 = sitofp i32 %386 to double
  %div404 = fdiv double %conv403, 2.000000e+00
  %sub405 = fsub double %conv402, %div404
  %mul406 = fmul double %conv401, %sub405
  %387 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %387 to i64
  %388 = load float*, float** @A__align.lastverticalw, align 8
  %arrayidx408 = getelementptr inbounds float, float* %388, i64 %idxprom407
  %389 = load float, float* %arrayidx408, align 4
  %conv409 = fpext float %389 to double
  %sub410 = fsub double %conv409, %mul406
  %conv411 = fptrunc double %sub410 to float
  store float %conv411, float* %arrayidx408, align 4
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.body.400
  %390 = load i32, i32* %i, align 4
  %inc413 = add nsw i32 %390, 1
  store i32 %inc413, i32* %i, align 4
  br label %for.cond.396

for.end.414:                                      ; preds = %for.cond.396
  br label %if.end.415

if.end.415:                                       ; preds = %for.end.414, %for.end.376
  %391 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool416 = icmp ne %struct._LocalHom*** %391, null
  br i1 %tobool416, label %if.then.417, label %if.else.418

if.then.417:                                      ; preds = %if.end.415
  %392 = load float*, float** %impmatch.addr, align 8
  %393 = load float*, float** %currentw, align 8
  %394 = load float*, float** @A__align.lastverticalw, align 8
  %395 = load i8**, i8*** %seq1.addr, align 8
  %396 = load i8**, i8*** %seq2.addr, align 8
  %397 = load i8**, i8*** @A__align.mseq1, align 8
  %398 = load i8**, i8*** @A__align.mseq2, align 8
  %399 = load float**, float*** @A__align.cpmx1, align 8
  %400 = load float**, float*** @A__align.cpmx2, align 8
  %401 = load i32**, i32*** @A__align.ijp, align 8
  %402 = load i32, i32* %icyc.addr, align 4
  %403 = load i32, i32* %jcyc.addr, align 4
  call void @Atracking_localhom(float* %392, float* %393, float* %394, i8** %395, i8** %396, i8** %397, i8** %398, float** %399, float** %400, i32** %401, i32 %402, i32 %403)
  br label %if.end.420

if.else.418:                                      ; preds = %if.end.415
  %404 = load float*, float** %currentw, align 8
  %405 = load float*, float** @A__align.lastverticalw, align 8
  %406 = load i8**, i8*** %seq1.addr, align 8
  %407 = load i8**, i8*** %seq2.addr, align 8
  %408 = load i8**, i8*** @A__align.mseq1, align 8
  %409 = load i8**, i8*** @A__align.mseq2, align 8
  %410 = load float**, float*** @A__align.cpmx1, align 8
  %411 = load float**, float*** @A__align.cpmx2, align 8
  %412 = load i32**, i32*** @A__align.ijp, align 8
  %413 = load i32, i32* %icyc.addr, align 4
  %414 = load i32, i32* %jcyc.addr, align 4
  %call419 = call float @Atracking(float* %404, float* %405, i8** %406, i8** %407, i8** %408, i8** %409, float** %410, float** %411, i32** %412, i32 %413, i32 %414)
  br label %if.end.420

if.end.420:                                       ; preds = %if.else.418, %if.then.417
  %415 = load i8**, i8*** @A__align.mseq1, align 8
  %arrayidx421 = getelementptr inbounds i8*, i8** %415, i64 0
  %416 = load i8*, i8** %arrayidx421, align 8
  %call422 = call i64 @strlen(i8* %416) #5
  %conv423 = trunc i64 %call422 to i32
  store i32 %conv423, i32* %resultlen, align 4
  %417 = load i32, i32* %alloclen.addr, align 4
  %418 = load i32, i32* %resultlen, align 4
  %cmp424 = icmp slt i32 %417, %418
  br i1 %cmp424, label %if.then.429, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %if.end.420
  %419 = load i32, i32* %resultlen, align 4
  %cmp427 = icmp sgt i32 %419, 5000000
  br i1 %cmp427, label %if.then.429, label %if.end.431

if.then.429:                                      ; preds = %lor.lhs.false.426, %if.end.420
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %421 = load i32, i32* %alloclen.addr, align 4
  %422 = load i32, i32* %resultlen, align 4
  %call430 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %421, i32 %422, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.429, %lor.lhs.false.426
  store i32 0, i32* %i, align 4
  br label %for.cond.432

for.cond.432:                                     ; preds = %for.inc.441, %if.end.431
  %423 = load i32, i32* %i, align 4
  %424 = load i32, i32* %icyc.addr, align 4
  %cmp433 = icmp slt i32 %423, %424
  br i1 %cmp433, label %for.body.435, label %for.end.443

for.body.435:                                     ; preds = %for.cond.432
  %425 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %425 to i64
  %426 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx437 = getelementptr inbounds i8*, i8** %426, i64 %idxprom436
  %427 = load i8*, i8** %arrayidx437, align 8
  %428 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %428 to i64
  %429 = load i8**, i8*** @A__align.mseq1, align 8
  %arrayidx439 = getelementptr inbounds i8*, i8** %429, i64 %idxprom438
  %430 = load i8*, i8** %arrayidx439, align 8
  %call440 = call i8* @strcpy(i8* %427, i8* %430) #4
  br label %for.inc.441

for.inc.441:                                      ; preds = %for.body.435
  %431 = load i32, i32* %i, align 4
  %inc442 = add nsw i32 %431, 1
  store i32 %inc442, i32* %i, align 4
  br label %for.cond.432

for.end.443:                                      ; preds = %for.cond.432
  store i32 0, i32* %j, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.453, %for.end.443
  %432 = load i32, i32* %j, align 4
  %433 = load i32, i32* %jcyc.addr, align 4
  %cmp445 = icmp slt i32 %432, %433
  br i1 %cmp445, label %for.body.447, label %for.end.455

for.body.447:                                     ; preds = %for.cond.444
  %434 = load i32, i32* %j, align 4
  %idxprom448 = sext i32 %434 to i64
  %435 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx449 = getelementptr inbounds i8*, i8** %435, i64 %idxprom448
  %436 = load i8*, i8** %arrayidx449, align 8
  %437 = load i32, i32* %j, align 4
  %idxprom450 = sext i32 %437 to i64
  %438 = load i8**, i8*** @A__align.mseq2, align 8
  %arrayidx451 = getelementptr inbounds i8*, i8** %438, i64 %idxprom450
  %439 = load i8*, i8** %arrayidx451, align 8
  %call452 = call i8* @strcpy(i8* %436, i8* %439) #4
  br label %for.inc.453

for.inc.453:                                      ; preds = %for.body.447
  %440 = load i32, i32* %j, align 4
  %inc454 = add nsw i32 %440, 1
  store i32 %inc454, i32* %j, align 4
  br label %for.cond.444

for.end.455:                                      ; preds = %for.cond.444
  %441 = load float, float* %wm, align 4
  ret float %441
}

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @FreeFloatVec(float*) #1

declare void @FreeIntVec(i32*) #1

declare void @FreeCharMtx(i8**) #1

declare void @FreeIntMtx(i32**) #1

declare float* @AllocateFloatVec(i32) #1

declare i32* @AllocateIntVec(i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

declare void @cpmx_calc_new(i8**, float**, double*, i32, i32) #1

declare void @new_OpeningGapCount(float*, i32, i8**, double*, i32, i8*) #1

declare void @new_FinalGapCount(float*, i32, i8**, double*, i32, i8*) #1

declare void @st_OpeningGapCount(float*, i32, i8**, double*, i32) #1

declare void @st_FinalGapCount(float*, i32, i8**, double*, i32) #1

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
  %l = alloca i32, align 4
  %scarr = alloca [26 x float], align 16
  %cpmxpd = alloca float**, align 8
  %cpmxpdn = alloca i32**, align 8
  %matchpt = alloca float*, align 8
  %cpmxpdpt = alloca float*, align 8
  %cpmxpdptpt = alloca float**, align 8
  %cpmxpdnpt = alloca i32*, align 8
  %cpmxpdnptpt = alloca i32**, align 8
  %count = alloca i32, align 4
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
  %2 = load i32, i32* %initialize.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  store i32 0, i32* %count, align 4
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
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load float**, float*** %cpmx2.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %8, i64 %idxprom4
  %9 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx5, align 4
  %tobool6 = fcmp une float %10, 0.000000e+00
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %l, align 4
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
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.body.31
  %34 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %34, 26
  br i1 %cmp35, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* @n_dis_consweight_multi, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [26 x float], [26 x float]* %arrayidx39, i32 0, i64 %idxprom37
  %37 = load float, float* %arrayidx40, align 4
  %38 = load i32, i32* %i1.addr, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load float**, float*** %cpmx1.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %40, i64 %idxprom42
  %41 = load float*, float** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %41, i64 %idxprom41
  %42 = load float, float* %arrayidx44, align 4
  %mul = fmul float %37, %42
  %43 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom45
  %44 = load float, float* %arrayidx46, align 4
  %add = fadd float %44, %mul
  store float %add, float* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.36
  %45 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %j, align 4
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
  store i32** %48, i32*** %cpmxpdnptpt, align 8
  %49 = load float**, float*** %cpmxpd, align 8
  store float** %49, float*** %cpmxpdptpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end.52
  %50 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool53 = icmp ne i32 %50, 0
  br i1 %tobool53, label %while.body, label %while.end.65

while.body:                                       ; preds = %while.cond
  %51 = load float*, float** %matchpt, align 8
  store float 0.000000e+00, float* %51, align 4
  %52 = load i32**, i32*** %cpmxpdnptpt, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %52, i32 1
  store i32** %incdec.ptr, i32*** %cpmxpdnptpt, align 8
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %cpmxpdnpt, align 8
  %54 = load float**, float*** %cpmxpdptpt, align 8
  %incdec.ptr54 = getelementptr inbounds float*, float** %54, i32 1
  store float** %incdec.ptr54, float*** %cpmxpdptpt, align 8
  %55 = load float*, float** %54, align 8
  store float* %55, float** %cpmxpdpt, align 8
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.57, %while.body
  %56 = load i32*, i32** %cpmxpdnpt, align 8
  %57 = load i32, i32* %56, align 4
  %cmp56 = icmp sgt i32 %57, -1
  br i1 %cmp56, label %while.body.57, label %while.end

while.body.57:                                    ; preds = %while.cond.55
  %58 = load i32*, i32** %cpmxpdnpt, align 8
  %incdec.ptr58 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %incdec.ptr58, i32** %cpmxpdnpt, align 8
  %59 = load i32, i32* %58, align 4
  %idxprom59 = sext i32 %59 to i64
  %arrayidx60 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom59
  %60 = load float, float* %arrayidx60, align 4
  %61 = load float*, float** %cpmxpdpt, align 8
  %incdec.ptr61 = getelementptr inbounds float, float* %61, i32 1
  store float* %incdec.ptr61, float** %cpmxpdpt, align 8
  %62 = load float, float* %61, align 4
  %mul62 = fmul float %60, %62
  %63 = load float*, float** %matchpt, align 8
  %64 = load float, float* %63, align 4
  %add63 = fadd float %64, %mul62
  store float %add63, float* %63, align 4
  br label %while.cond.55

while.end:                                        ; preds = %while.cond.55
  %65 = load float*, float** %matchpt, align 8
  %incdec.ptr64 = getelementptr inbounds float, float* %65, i32 1
  store float* %incdec.ptr64, float** %matchpt, align 8
  br label %while.cond

while.end.65:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_tate(float* %imp, i32 %j1, i32 %lgth1) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %j1.addr = alloca i32, align 4
  %lgth1.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %imp, float** %imp.addr, align 8
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %lgth1, i32* %lgth1.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j1.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %4, i64 %idxprom1
  %5 = load float*, float** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx2, align 4
  %7 = load float*, float** %imp.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %7, i32 1
  store float* %incdec.ptr, float** %imp.addr, align 8
  %8 = load float, float* %7, align 4
  %add = fadd float %8, %6
  store float %add, float* %7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead(float* %imp, i32 %i1, i32 %lgth2) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %pt = alloca float*, align 8
  store float* %imp, float** %imp.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  %0 = load i32, i32* %i1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 %idxprom
  %2 = load float*, float** %arrayidx, align 8
  store float* %2, float** %pt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load float*, float** %pt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %4, i32 1
  store float* %incdec.ptr, float** %pt, align 8
  %5 = load float, float* %4, align 4
  %6 = load float*, float** %imp.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr1, float** %imp.addr, align 8
  %7 = load float, float* %6, align 4
  %add = fadd float %7, %5
  store float %add, float* %6, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Atracking_localhom(float* %impwmpt, float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijp, i32 %icyc, i32 %jcyc) #0 {
entry:
  %impwmpt.addr = alloca float*, align 8
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ijp.addr = alloca i32**, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
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
  %wm = alloca float, align 4
  %gaptable1 = alloca i8*, align 8
  %gt1bk = alloca i8*, align 8
  %gaptable2 = alloca i8*, align 8
  %gt2bk = alloca i8*, align 8
  store float* %impwmpt, float** %impwmpt.addr, align 8
  store float* %lasthorizontalw, float** %lasthorizontalw.addr, align 8
  store float* %lastverticalw, float** %lastverticalw.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %lgth2, align 4
  %4 = load i32, i32* %lgth1, align 4
  %5 = load i32, i32* %lgth2, align 4
  %add = add nsw i32 %4, %5
  %add4 = add nsw i32 %add, 1
  %call5 = call i8* @AllocateCharVec(i32 %add4)
  store i8* %call5, i8** %gt1bk, align 8
  %6 = load i32, i32* %lgth1, align 4
  %7 = load i32, i32* %lgth2, align 4
  %add6 = add nsw i32 %6, %7
  %add7 = add nsw i32 %add6, 1
  %call8 = call i8* @AllocateCharVec(i32 %add7)
  store i8* %call8, i8** %gt2bk, align 8
  %8 = load i32, i32* @outgap, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.46

if.else:                                          ; preds = %entry
  %9 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx10, align 4
  store float %10, float* %wm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %lgth1, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx13, align 4
  %16 = load float, float* %wm, align 4
  %cmp14 = fcmp oge float %15, %16
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  %19 = load float, float* %arrayidx18, align 4
  store float %19, float* %wm, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %iin, align 4
  %21 = load i32, i32* %lgth2, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %jin, align 4
  %22 = load i32, i32* %lgth1, align 4
  %23 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %22, %23
  %24 = load i32, i32* %lgth2, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32, i32* %lgth1, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %26, i64 %idxprom21
  %27 = load i32*, i32** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  store i32 %sub19, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.43, %for.end
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %lgth2, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body.27, label %for.end.45

for.body.27:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %32, i64 %idxprom28
  %33 = load float, float* %arrayidx29, align 4
  %34 = load float, float* %wm, align 4
  %cmp30 = fcmp oge float %33, %34
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.body.27
  %35 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %36, i64 %idxprom33
  %37 = load float, float* %arrayidx34, align 4
  store float %37, float* %wm, align 4
  %38 = load i32, i32* %lgth1, align 4
  %sub35 = sub nsw i32 %38, 1
  store i32 %sub35, i32* %iin, align 4
  %39 = load i32, i32* %j, align 4
  store i32 %39, i32* %jin, align 4
  %40 = load i32, i32* %lgth2, align 4
  %41 = load i32, i32* %j, align 4
  %sub36 = sub nsw i32 %40, %41
  %sub37 = sub nsw i32 0, %sub36
  %42 = load i32, i32* %lgth2, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load i32, i32* %lgth1, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %44, i64 %idxprom39
  %45 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %45, i64 %idxprom38
  store i32 %sub37, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %for.body.27
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %46 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.24

for.end.45:                                       ; preds = %for.cond.24
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.56, %if.end.46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %lgth1, align 4
  %add48 = add nsw i32 %48, 1
  %cmp49 = icmp slt i32 %47, %add48
  br i1 %cmp49, label %for.body.51, label %for.end.58

for.body.51:                                      ; preds = %for.cond.47
  %49 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %49, 1
  %50 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %51, i64 %idxprom53
  %52 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %add52, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.51
  %53 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %53, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.47

for.end.58:                                       ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.69, %for.end.58
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %lgth2, align 4
  %add60 = add nsw i32 %55, 1
  %cmp61 = icmp slt i32 %54, %add60
  br i1 %cmp61, label %for.body.63, label %for.end.71

for.body.63:                                      ; preds = %for.cond.59
  %56 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %56, 1
  %sub65 = sub nsw i32 0, %add64
  %57 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %58, i64 0
  %59 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %59, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.63
  %60 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.59

for.end.71:                                       ; preds = %for.cond.59
  %61 = load i8*, i8** %gt1bk, align 8
  %62 = load i32, i32* %lgth1, align 4
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  %63 = load i32, i32* %lgth2, align 4
  %idx.ext72 = sext i32 %63 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext72
  store i8* %add.ptr73, i8** %gaptable1, align 8
  %64 = load i8*, i8** %gaptable1, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %gt2bk, align 8
  %66 = load i32, i32* %lgth1, align 4
  %idx.ext74 = sext i32 %66 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %65, i64 %idx.ext74
  %67 = load i32, i32* %lgth2, align 4
  %idx.ext76 = sext i32 %67 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %add.ptr75, i64 %idx.ext76
  store i8* %add.ptr77, i8** %gaptable2, align 8
  %68 = load i8*, i8** %gaptable2, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %lgth1, align 4
  store i32 %69, i32* %iin, align 4
  %70 = load i32, i32* %lgth2, align 4
  store i32 %70, i32* %jin, align 4
  %71 = load float*, float** %impwmpt.addr, align 8
  store float 0.000000e+00, float* %71, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.146, %for.end.71
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %lgth1, align 4
  %74 = load i32, i32* %lgth2, align 4
  %add79 = add nsw i32 %73, %74
  %cmp80 = icmp sle i32 %72, %add79
  br i1 %cmp80, label %for.body.82, label %for.end.148

for.body.82:                                      ; preds = %for.cond.78
  %75 = load i32, i32* %jin, align 4
  %idxprom83 = sext i32 %75 to i64
  %76 = load i32, i32* %iin, align 4
  %idxprom84 = sext i32 %76 to i64
  %77 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %77, i64 %idxprom84
  %78 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %78, i64 %idxprom83
  %79 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %79, 0
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %for.body.82
  %80 = load i32, i32* %iin, align 4
  %sub90 = sub nsw i32 %80, 1
  store i32 %sub90, i32* %ifi, align 4
  %81 = load i32, i32* %jin, align 4
  %82 = load i32, i32* %jin, align 4
  %idxprom91 = sext i32 %82 to i64
  %83 = load i32, i32* %iin, align 4
  %idxprom92 = sext i32 %83 to i64
  %84 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %84, i64 %idxprom92
  %85 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %85, i64 %idxprom91
  %86 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %81, %86
  store i32 %add95, i32* %jfi, align 4
  br label %if.end.114

if.else.96:                                       ; preds = %for.body.82
  %87 = load i32, i32* %jin, align 4
  %idxprom97 = sext i32 %87 to i64
  %88 = load i32, i32* %iin, align 4
  %idxprom98 = sext i32 %88 to i64
  %89 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %89, i64 %idxprom98
  %90 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %90, i64 %idxprom97
  %91 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp sgt i32 %91, 0
  br i1 %cmp101, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.else.96
  %92 = load i32, i32* %iin, align 4
  %93 = load i32, i32* %jin, align 4
  %idxprom104 = sext i32 %93 to i64
  %94 = load i32, i32* %iin, align 4
  %idxprom105 = sext i32 %94 to i64
  %95 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %95, i64 %idxprom105
  %96 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %96, i64 %idxprom104
  %97 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %92, %97
  store i32 %sub108, i32* %ifi, align 4
  %98 = load i32, i32* %jin, align 4
  %sub109 = sub nsw i32 %98, 1
  store i32 %sub109, i32* %jfi, align 4
  br label %if.end.113

if.else.110:                                      ; preds = %if.else.96
  %99 = load i32, i32* %iin, align 4
  %sub111 = sub nsw i32 %99, 1
  store i32 %sub111, i32* %ifi, align 4
  %100 = load i32, i32* %jin, align 4
  %sub112 = sub nsw i32 %100, 1
  store i32 %sub112, i32* %jfi, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.103
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.89
  %101 = load i32, i32* %iin, align 4
  %102 = load i32, i32* %ifi, align 4
  %sub115 = sub nsw i32 %101, %102
  store i32 %sub115, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.114
  %103 = load i32, i32* %l, align 4
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %104 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr, align 1
  %105 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %incdec.ptr116, i8** %gaptable2, align 8
  store i8 45, i8* %incdec.ptr116, align 1
  %106 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %106, 1
  store i32 %inc117, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %107 = load i32, i32* %jin, align 4
  %108 = load i32, i32* %jfi, align 4
  %sub118 = sub nsw i32 %107, %108
  store i32 %sub118, i32* %l, align 4
  br label %while.cond.119

while.cond.119:                                   ; preds = %while.body.122, %while.end
  %109 = load i32, i32* %l, align 4
  %dec120 = add nsw i32 %109, -1
  store i32 %dec120, i32* %l, align 4
  %tobool121 = icmp ne i32 %dec120, 0
  br i1 %tobool121, label %while.body.122, label %while.end.126

while.body.122:                                   ; preds = %while.cond.119
  %110 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr123, i8** %gaptable1, align 8
  store i8 45, i8* %incdec.ptr123, align 1
  %111 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %incdec.ptr124, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr124, align 1
  %112 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %112, 1
  store i32 %inc125, i32* %k, align 4
  br label %while.cond.119

while.end.126:                                    ; preds = %while.cond.119
  %113 = load i32, i32* %iin, align 4
  %114 = load i32, i32* %lgth1, align 4
  %cmp127 = icmp eq i32 %113, %114
  br i1 %cmp127, label %if.then.131, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.126
  %115 = load i32, i32* %jin, align 4
  %116 = load i32, i32* %lgth2, align 4
  %cmp129 = icmp eq i32 %115, %116
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %lor.lhs.false, %while.end.126
  br label %if.end.135

if.else.132:                                      ; preds = %lor.lhs.false
  %117 = load i32, i32* %iin, align 4
  %118 = load i32, i32* %jin, align 4
  %call133 = call float @imp_match_out_sc(i32 %117, i32 %118)
  %119 = load float*, float** %impwmpt.addr, align 8
  %120 = load float, float* %119, align 4
  %add134 = fadd float %120, %call133
  store float %add134, float* %119, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  %121 = load i32, i32* %iin, align 4
  %cmp136 = icmp sle i32 %121, 0
  br i1 %cmp136, label %if.then.141, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.135
  %122 = load i32, i32* %jin, align 4
  %cmp139 = icmp sle i32 %122, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %lor.lhs.false.138, %if.end.135
  br label %for.end.148

if.end.142:                                       ; preds = %lor.lhs.false.138
  %123 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr143, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr143, align 1
  %124 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %incdec.ptr144, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr144, align 1
  %125 = load i32, i32* %k, align 4
  %inc145 = add nsw i32 %125, 1
  store i32 %inc145, i32* %k, align 4
  %126 = load i32, i32* %ifi, align 4
  store i32 %126, i32* %iin, align 4
  %127 = load i32, i32* %jfi, align 4
  store i32 %127, i32* %jin, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.142
  %128 = load i32, i32* %k, align 4
  %inc147 = add nsw i32 %128, 1
  store i32 %inc147, i32* %k, align 4
  br label %for.cond.78

for.end.148:                                      ; preds = %if.then.141, %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.157, %for.end.148
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %icyc.addr, align 4
  %cmp150 = icmp slt i32 %129, %130
  br i1 %cmp150, label %for.body.152, label %for.end.159

for.body.152:                                     ; preds = %for.cond.149
  %131 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %131 to i64
  %132 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %132, i64 %idxprom153
  %133 = load i8*, i8** %arrayidx154, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %134 to i64
  %135 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %135, i64 %idxprom155
  %136 = load i8*, i8** %arrayidx156, align 8
  %137 = load i8*, i8** %gaptable1, align 8
  call void @gapireru(i8* %133, i8* %136, i8* %137)
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.152
  %138 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %138, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.149

for.end.159:                                      ; preds = %for.cond.149
  store i32 0, i32* %j, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.168, %for.end.159
  %139 = load i32, i32* %j, align 4
  %140 = load i32, i32* %jcyc.addr, align 4
  %cmp161 = icmp slt i32 %139, %140
  br i1 %cmp161, label %for.body.163, label %for.end.170

for.body.163:                                     ; preds = %for.cond.160
  %141 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %141 to i64
  %142 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx165 = getelementptr inbounds i8*, i8** %142, i64 %idxprom164
  %143 = load i8*, i8** %arrayidx165, align 8
  %144 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %144 to i64
  %145 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %145, i64 %idxprom166
  %146 = load i8*, i8** %arrayidx167, align 8
  %147 = load i8*, i8** %gaptable2, align 8
  call void @gapireru(i8* %143, i8* %146, i8* %147)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.163
  %148 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %148, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.160

for.end.170:                                      ; preds = %for.cond.160
  %149 = load i8*, i8** %gt1bk, align 8
  call void @free(i8* %149) #4
  %150 = load i8*, i8** %gt2bk, align 8
  call void @free(i8* %150) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @Atracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijp, i32 %icyc, i32 %jcyc) #0 {
entry:
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ijp.addr = alloca i32**, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
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
  %wm = alloca float, align 4
  %gaptable1 = alloca i8*, align 8
  %gt1bk = alloca i8*, align 8
  %gaptable2 = alloca i8*, align 8
  %gt2bk = alloca i8*, align 8
  store float* %lasthorizontalw, float** %lasthorizontalw.addr, align 8
  store float* %lastverticalw, float** %lastverticalw.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %lgth2, align 4
  %4 = load i32, i32* %lgth1, align 4
  %5 = load i32, i32* %lgth2, align 4
  %add = add nsw i32 %4, %5
  %add4 = add nsw i32 %add, 1
  %call5 = call i8* @AllocateCharVec(i32 %add4)
  store i8* %call5, i8** %gt1bk, align 8
  %6 = load i32, i32* %lgth1, align 4
  %7 = load i32, i32* %lgth2, align 4
  %add6 = add nsw i32 %6, %7
  %add7 = add nsw i32 %add6, 1
  %call8 = call i8* @AllocateCharVec(i32 %add7)
  store i8* %call8, i8** %gt2bk, align 8
  %8 = load i32, i32* @outgap, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.46

if.else:                                          ; preds = %entry
  %9 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx10, align 4
  store float %10, float* %wm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %lgth1, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx13, align 4
  %16 = load float, float* %wm, align 4
  %cmp14 = fcmp oge float %15, %16
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  %19 = load float, float* %arrayidx18, align 4
  store float %19, float* %wm, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %iin, align 4
  %21 = load i32, i32* %lgth2, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %jin, align 4
  %22 = load i32, i32* %lgth1, align 4
  %23 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %22, %23
  %24 = load i32, i32* %lgth2, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32, i32* %lgth1, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %26, i64 %idxprom21
  %27 = load i32*, i32** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  store i32 %sub19, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.43, %for.end
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %lgth2, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body.27, label %for.end.45

for.body.27:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %32, i64 %idxprom28
  %33 = load float, float* %arrayidx29, align 4
  %34 = load float, float* %wm, align 4
  %cmp30 = fcmp oge float %33, %34
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.body.27
  %35 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %36, i64 %idxprom33
  %37 = load float, float* %arrayidx34, align 4
  store float %37, float* %wm, align 4
  %38 = load i32, i32* %lgth1, align 4
  %sub35 = sub nsw i32 %38, 1
  store i32 %sub35, i32* %iin, align 4
  %39 = load i32, i32* %j, align 4
  store i32 %39, i32* %jin, align 4
  %40 = load i32, i32* %lgth2, align 4
  %41 = load i32, i32* %j, align 4
  %sub36 = sub nsw i32 %40, %41
  %sub37 = sub nsw i32 0, %sub36
  %42 = load i32, i32* %lgth2, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load i32, i32* %lgth1, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %44, i64 %idxprom39
  %45 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %45, i64 %idxprom38
  store i32 %sub37, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %for.body.27
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %46 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.24

for.end.45:                                       ; preds = %for.cond.24
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.56, %if.end.46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %lgth1, align 4
  %add48 = add nsw i32 %48, 1
  %cmp49 = icmp slt i32 %47, %add48
  br i1 %cmp49, label %for.body.51, label %for.end.58

for.body.51:                                      ; preds = %for.cond.47
  %49 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %49, 1
  %50 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %51, i64 %idxprom53
  %52 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %add52, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.51
  %53 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %53, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.47

for.end.58:                                       ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.69, %for.end.58
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %lgth2, align 4
  %add60 = add nsw i32 %55, 1
  %cmp61 = icmp slt i32 %54, %add60
  br i1 %cmp61, label %for.body.63, label %for.end.71

for.body.63:                                      ; preds = %for.cond.59
  %56 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %56, 1
  %sub65 = sub nsw i32 0, %add64
  %57 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %58, i64 0
  %59 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %59, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.63
  %60 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.59

for.end.71:                                       ; preds = %for.cond.59
  %61 = load i8*, i8** %gt1bk, align 8
  %62 = load i32, i32* %lgth1, align 4
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  %63 = load i32, i32* %lgth2, align 4
  %idx.ext72 = sext i32 %63 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext72
  store i8* %add.ptr73, i8** %gaptable1, align 8
  %64 = load i8*, i8** %gaptable1, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %gt2bk, align 8
  %66 = load i32, i32* %lgth1, align 4
  %idx.ext74 = sext i32 %66 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %65, i64 %idx.ext74
  %67 = load i32, i32* %lgth2, align 4
  %idx.ext76 = sext i32 %67 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %add.ptr75, i64 %idx.ext76
  store i8* %add.ptr77, i8** %gaptable2, align 8
  %68 = load i8*, i8** %gaptable2, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %lgth1, align 4
  store i32 %69, i32* %iin, align 4
  %70 = load i32, i32* %lgth2, align 4
  store i32 %70, i32* %jin, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.136, %for.end.71
  %71 = load i32, i32* %k, align 4
  %72 = load i32, i32* %lgth1, align 4
  %73 = load i32, i32* %lgth2, align 4
  %add79 = add nsw i32 %72, %73
  %cmp80 = icmp sle i32 %71, %add79
  br i1 %cmp80, label %for.body.82, label %for.end.138

for.body.82:                                      ; preds = %for.cond.78
  %74 = load i32, i32* %jin, align 4
  %idxprom83 = sext i32 %74 to i64
  %75 = load i32, i32* %iin, align 4
  %idxprom84 = sext i32 %75 to i64
  %76 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %76, i64 %idxprom84
  %77 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %77, i64 %idxprom83
  %78 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %78, 0
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %for.body.82
  %79 = load i32, i32* %iin, align 4
  %sub90 = sub nsw i32 %79, 1
  store i32 %sub90, i32* %ifi, align 4
  %80 = load i32, i32* %jin, align 4
  %81 = load i32, i32* %jin, align 4
  %idxprom91 = sext i32 %81 to i64
  %82 = load i32, i32* %iin, align 4
  %idxprom92 = sext i32 %82 to i64
  %83 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %83, i64 %idxprom92
  %84 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %84, i64 %idxprom91
  %85 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %80, %85
  store i32 %add95, i32* %jfi, align 4
  br label %if.end.114

if.else.96:                                       ; preds = %for.body.82
  %86 = load i32, i32* %jin, align 4
  %idxprom97 = sext i32 %86 to i64
  %87 = load i32, i32* %iin, align 4
  %idxprom98 = sext i32 %87 to i64
  %88 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %88, i64 %idxprom98
  %89 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %89, i64 %idxprom97
  %90 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp sgt i32 %90, 0
  br i1 %cmp101, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.else.96
  %91 = load i32, i32* %iin, align 4
  %92 = load i32, i32* %jin, align 4
  %idxprom104 = sext i32 %92 to i64
  %93 = load i32, i32* %iin, align 4
  %idxprom105 = sext i32 %93 to i64
  %94 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %94, i64 %idxprom105
  %95 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %95, i64 %idxprom104
  %96 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %91, %96
  store i32 %sub108, i32* %ifi, align 4
  %97 = load i32, i32* %jin, align 4
  %sub109 = sub nsw i32 %97, 1
  store i32 %sub109, i32* %jfi, align 4
  br label %if.end.113

if.else.110:                                      ; preds = %if.else.96
  %98 = load i32, i32* %iin, align 4
  %sub111 = sub nsw i32 %98, 1
  store i32 %sub111, i32* %ifi, align 4
  %99 = load i32, i32* %jin, align 4
  %sub112 = sub nsw i32 %99, 1
  store i32 %sub112, i32* %jfi, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.103
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.89
  %100 = load i32, i32* %iin, align 4
  %101 = load i32, i32* %ifi, align 4
  %sub115 = sub nsw i32 %100, %101
  store i32 %sub115, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.114
  %102 = load i32, i32* %l, align 4
  %dec = add nsw i32 %102, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %103 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr, align 1
  %104 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr116, i8** %gaptable2, align 8
  store i8 45, i8* %incdec.ptr116, align 1
  %105 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %105, 1
  store i32 %inc117, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %106 = load i32, i32* %jin, align 4
  %107 = load i32, i32* %jfi, align 4
  %sub118 = sub nsw i32 %106, %107
  store i32 %sub118, i32* %l, align 4
  br label %while.cond.119

while.cond.119:                                   ; preds = %while.body.122, %while.end
  %108 = load i32, i32* %l, align 4
  %dec120 = add nsw i32 %108, -1
  store i32 %dec120, i32* %l, align 4
  %tobool121 = icmp ne i32 %dec120, 0
  br i1 %tobool121, label %while.body.122, label %while.end.126

while.body.122:                                   ; preds = %while.cond.119
  %109 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %incdec.ptr123, i8** %gaptable1, align 8
  store i8 45, i8* %incdec.ptr123, align 1
  %110 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr124, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr124, align 1
  %111 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %111, 1
  store i32 %inc125, i32* %k, align 4
  br label %while.cond.119

while.end.126:                                    ; preds = %while.cond.119
  %112 = load i32, i32* %iin, align 4
  %cmp127 = icmp sle i32 %112, 0
  br i1 %cmp127, label %if.then.131, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.126
  %113 = load i32, i32* %jin, align 4
  %cmp129 = icmp sle i32 %113, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %lor.lhs.false, %while.end.126
  br label %for.end.138

if.end.132:                                       ; preds = %lor.lhs.false
  %114 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %incdec.ptr133, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr133, align 1
  %115 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr134, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr134, align 1
  %116 = load i32, i32* %k, align 4
  %inc135 = add nsw i32 %116, 1
  store i32 %inc135, i32* %k, align 4
  %117 = load i32, i32* %ifi, align 4
  store i32 %117, i32* %iin, align 4
  %118 = load i32, i32* %jfi, align 4
  store i32 %118, i32* %jin, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.132
  %119 = load i32, i32* %k, align 4
  %inc137 = add nsw i32 %119, 1
  store i32 %inc137, i32* %k, align 4
  br label %for.cond.78

for.end.138:                                      ; preds = %if.then.131, %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.147, %for.end.138
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %icyc.addr, align 4
  %cmp140 = icmp slt i32 %120, %121
  br i1 %cmp140, label %for.body.142, label %for.end.149

for.body.142:                                     ; preds = %for.cond.139
  %122 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %122 to i64
  %123 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %123, i64 %idxprom143
  %124 = load i8*, i8** %arrayidx144, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %125 to i64
  %126 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %126, i64 %idxprom145
  %127 = load i8*, i8** %arrayidx146, align 8
  %128 = load i8*, i8** %gaptable1, align 8
  call void @gapireru(i8* %124, i8* %127, i8* %128)
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.142
  %129 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %129, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond.139

for.end.149:                                      ; preds = %for.cond.139
  store i32 0, i32* %j, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.158, %for.end.149
  %130 = load i32, i32* %j, align 4
  %131 = load i32, i32* %jcyc.addr, align 4
  %cmp151 = icmp slt i32 %130, %131
  br i1 %cmp151, label %for.body.153, label %for.end.160

for.body.153:                                     ; preds = %for.cond.150
  %132 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %132 to i64
  %133 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx155 = getelementptr inbounds i8*, i8** %133, i64 %idxprom154
  %134 = load i8*, i8** %arrayidx155, align 8
  %135 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %135 to i64
  %136 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %136, i64 %idxprom156
  %137 = load i8*, i8** %arrayidx157, align 8
  %138 = load i8*, i8** %gaptable2, align 8
  call void @gapireru(i8* %134, i8* %137, i8* %138)
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.153
  %139 = load i32, i32* %j, align 4
  %inc159 = add nsw i32 %139, 1
  store i32 %inc159, i32* %j, align 4
  br label %for.cond.150

for.end.160:                                      ; preds = %for.cond.150
  %140 = load i8*, i8** %gt1bk, align 8
  call void @free(i8* %140) #4
  %141 = load i8*, i8** %gt2bk, align 8
  call void @free(i8* %141) #4
  ret float 0.000000e+00
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @ErrorExit(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define float @A__align_gapmap(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i32* %gapmap1, i32* %gapmap2) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %localhom.addr = alloca %struct._LocalHom***, align 8
  %impmatch.addr = alloca float*, align 8
  %gapmap1.addr = alloca i32*, align 8
  %gapmap2.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %resultlen = alloca i32, align 4
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
  %fgcp2pt = alloca float*, align 8
  %ogcp2pt = alloca float*, align 8
  %fgcp1va = alloca float, align 4
  %ogcp1va = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1114 = alloca i32, align 4
  %ll2115 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store %struct._LocalHom*** %localhom, %struct._LocalHom**** %localhom.addr, align 8
  store float* %impmatch, float** %impmatch.addr, align 8
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %1, i32 0)
  store i8** %call, i8*** @A__align_gapmap.mseq1, align 8
  %2 = load i32, i32* @njob, align 4
  %call1 = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call1, i8*** @A__align_gapmap.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %lgth1, align 4
  %5 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth2, align 4
  %7 = load i32, i32* %lgth1, align 4
  %8 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %cmp6 = icmp sgt i32 %7, %8
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %lgth2, align 4
  %10 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  %cmp8 = icmp sgt i32 %9, %10
  br i1 %cmp8, label %if.then.10, label %if.end.82

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %11 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %cmp11 = icmp sgt i32 %11, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.10
  %12 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %13 = load float*, float** @A__align_gapmap.w1, align 8
  call void @FreeFloatVec(float* %13)
  %14 = load float*, float** @A__align_gapmap.w2, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @A__align_gapmap.match, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @A__align_gapmap.initverticalw, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @A__align_gapmap.m, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load i32*, i32** @A__align_gapmap.mp, align 8
  call void @FreeIntVec(i32* %19)
  %20 = load i8**, i8*** @A__align_gapmap.mseq, align 8
  call void @FreeCharMtx(i8** %20)
  %21 = load float*, float** @A__align_gapmap.ogcp1, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @A__align_gapmap.ogcp2, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @A__align_gapmap.fgcp1, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @A__align_gapmap.fgcp2, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  call void @FreeFloatMtx(float** %25)
  %26 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  call void @FreeFloatMtx(float** %26)
  %27 = load float**, float*** @A__align_gapmap.floatwork, align 8
  call void @FreeFloatMtx(float** %27)
  %28 = load i32**, i32*** @A__align_gapmap.intwork, align 8
  call void @FreeIntMtx(i32** %28)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.10
  %29 = load i32, i32* %lgth1, align 4
  %conv17 = sitofp i32 %29 to double
  %mul = fmul double 1.300000e+00, %conv17
  %conv18 = fptosi double %mul to i32
  %30 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %cmp19 = icmp sgt i32 %conv18, %30
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %31 = load i32, i32* %lgth1, align 4
  %conv21 = sitofp i32 %31 to double
  %mul22 = fmul double 1.300000e+00, %conv21
  %conv23 = fptosi double %mul22 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %32 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %32, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %33 = load i32, i32* %lgth2, align 4
  %conv24 = sitofp i32 %33 to double
  %mul25 = fmul double 1.300000e+00, %conv24
  %conv26 = fptosi double %mul25 to i32
  %34 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  %cmp27 = icmp sgt i32 %conv26, %34
  br i1 %cmp27, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %cond.end
  %35 = load i32, i32* %lgth2, align 4
  %conv30 = sitofp i32 %35 to double
  %mul31 = fmul double 1.300000e+00, %conv30
  %conv32 = fptosi double %mul31 to i32
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end
  %36 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.29
  %cond35 = phi i32 [ %conv32, %cond.true.29 ], [ %36, %cond.false.33 ]
  %add36 = add nsw i32 %cond35, 100
  store i32 %add36, i32* %ll2, align 4
  %37 = load i32, i32* %ll2, align 4
  %add37 = add nsw i32 %37, 2
  %call38 = call float* @AllocateFloatVec(i32 %add37)
  store float* %call38, float** @A__align_gapmap.w1, align 8
  %38 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %38, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @A__align_gapmap.w2, align 8
  %39 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %39, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @A__align_gapmap.match, align 8
  %40 = load i32, i32* %ll1, align 4
  %add43 = add nsw i32 %40, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @A__align_gapmap.initverticalw, align 8
  %41 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %41, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @A__align_gapmap.lastverticalw, align 8
  %42 = load i32, i32* %ll2, align 4
  %add47 = add nsw i32 %42, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @A__align_gapmap.m, align 8
  %43 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %43, 2
  %call50 = call i32* @AllocateIntVec(i32 %add49)
  store i32* %call50, i32** @A__align_gapmap.mp, align 8
  %44 = load i32, i32* @njob, align 4
  %45 = load i32, i32* %ll1, align 4
  %46 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %45, %46
  %call52 = call i8** @AllocateCharMtx(i32 %44, i32 %add51)
  store i8** %call52, i8*** @A__align_gapmap.mseq, align 8
  %47 = load i32, i32* %ll1, align 4
  %add53 = add nsw i32 %47, 2
  %call54 = call float* @AllocateFloatVec(i32 %add53)
  store float* %call54, float** @A__align_gapmap.ogcp1, align 8
  %48 = load i32, i32* %ll2, align 4
  %add55 = add nsw i32 %48, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @A__align_gapmap.ogcp2, align 8
  %49 = load i32, i32* %ll1, align 4
  %add57 = add nsw i32 %49, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @A__align_gapmap.fgcp1, align 8
  %50 = load i32, i32* %ll2, align 4
  %add59 = add nsw i32 %50, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @A__align_gapmap.fgcp2, align 8
  %51 = load i32, i32* %ll1, align 4
  %add61 = add nsw i32 %51, 2
  %call62 = call float** @AllocateFloatMtx(i32 26, i32 %add61)
  store float** %call62, float*** @A__align_gapmap.cpmx1, align 8
  %52 = load i32, i32* %ll2, align 4
  %add63 = add nsw i32 %52, 2
  %call64 = call float** @AllocateFloatMtx(i32 26, i32 %add63)
  store float** %call64, float*** @A__align_gapmap.cpmx2, align 8
  %53 = load i32, i32* %ll1, align 4
  %54 = load i32, i32* %ll2, align 4
  %cmp65 = icmp sgt i32 %53, %54
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.34
  %55 = load i32, i32* %ll1, align 4
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.34
  %56 = load i32, i32* %ll2, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ %55, %cond.true.67 ], [ %56, %cond.false.68 ]
  %add71 = add nsw i32 %cond70, 2
  %call72 = call float** @AllocateFloatMtx(i32 %add71, i32 26)
  store float** %call72, float*** @A__align_gapmap.floatwork, align 8
  %57 = load i32, i32* %ll1, align 4
  %58 = load i32, i32* %ll2, align 4
  %cmp73 = icmp sgt i32 %57, %58
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.69
  %59 = load i32, i32* %ll1, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end.69
  %60 = load i32, i32* %ll2, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %59, %cond.true.75 ], [ %60, %cond.false.76 ]
  %add79 = add nsw i32 %cond78, 2
  %call80 = call i32** @AllocateIntMtx(i32 %add79, i32 26)
  store i32** %call80, i32*** @A__align_gapmap.intwork, align 8
  %61 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %61, 100
  store i32 %sub, i32* @A__align_gapmap.orlgth1, align 4
  %62 = load i32, i32* %ll2, align 4
  %sub81 = sub nsw i32 %62, 100
  store i32 %sub81, i32* @A__align_gapmap.orlgth2, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %cond.end.77, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.82
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %icyc.addr, align 4
  %cmp83 = icmp slt i32 %63, %64
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %i, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i8**, i8*** @A__align_gapmap.mseq, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %66, i64 %idxprom
  %67 = load i8*, i8** %arrayidx85, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %68 to i64
  %69 = load i8**, i8*** @A__align_gapmap.mseq1, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %69, i64 %idxprom86
  store i8* %67, i8** %arrayidx87, align 8
  %70 = load i32, i32* %lgth1, align 4
  %idxprom88 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %71 to i64
  %72 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %72, i64 %idxprom89
  %73 = load i8*, i8** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %73, i64 %idxprom88
  store i8 0, i8* %arrayidx91, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.105, %for.end
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %jcyc.addr, align 4
  %cmp93 = icmp slt i32 %75, %76
  br i1 %cmp93, label %for.body.95, label %for.end.107

for.body.95:                                      ; preds = %for.cond.92
  %77 = load i32, i32* %icyc.addr, align 4
  %78 = load i32, i32* %j, align 4
  %add96 = add nsw i32 %77, %78
  %idxprom97 = sext i32 %add96 to i64
  %79 = load i8**, i8*** @A__align_gapmap.mseq, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %79, i64 %idxprom97
  %80 = load i8*, i8** %arrayidx98, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %81 to i64
  %82 = load i8**, i8*** @A__align_gapmap.mseq2, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %82, i64 %idxprom99
  store i8* %80, i8** %arrayidx100, align 8
  %83 = load i32, i32* %lgth2, align 4
  %idxprom101 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %84 to i64
  %85 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %85, i64 %idxprom102
  %86 = load i8*, i8** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %86, i64 %idxprom101
  store i8 0, i8* %arrayidx104, align 1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.95
  %87 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %87, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.92

for.end.107:                                      ; preds = %for.cond.92
  %88 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %89 = load i32, i32* @commonAlloc1, align 4
  %cmp108 = icmp sgt i32 %88, %89
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %for.end.107
  %90 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  %91 = load i32, i32* @commonAlloc2, align 4
  %cmp111 = icmp sgt i32 %90, %91
  br i1 %cmp111, label %if.then.113, label %if.end.135

if.then.113:                                      ; preds = %lor.lhs.false.110, %for.end.107
  %92 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %92, 0
  br i1 %tobool, label %land.lhs.true.116, label %if.end.119

land.lhs.true.116:                                ; preds = %if.then.113
  %93 = load i32, i32* @commonAlloc2, align 4
  %tobool117 = icmp ne i32 %93, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %land.lhs.true.116
  %94 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %94)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %land.lhs.true.116, %if.then.113
  %95 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  %96 = load i32, i32* @commonAlloc1, align 4
  %cmp120 = icmp sgt i32 %95, %96
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.end.119
  %97 = load i32, i32* @A__align_gapmap.orlgth1, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %if.end.119
  %98 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %97, %cond.true.122 ], [ %98, %cond.false.123 ]
  store i32 %cond125, i32* %ll1114, align 4
  %99 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  %100 = load i32, i32* @commonAlloc2, align 4
  %cmp126 = icmp sgt i32 %99, %100
  br i1 %cmp126, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.end.124
  %101 = load i32, i32* @A__align_gapmap.orlgth2, align 4
  br label %cond.end.130

cond.false.129:                                   ; preds = %cond.end.124
  %102 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.128
  %cond131 = phi i32 [ %101, %cond.true.128 ], [ %102, %cond.false.129 ]
  store i32 %cond131, i32* %ll2115, align 4
  %103 = load i32, i32* %ll1114, align 4
  %add132 = add nsw i32 %103, 10
  %104 = load i32, i32* %ll2115, align 4
  %add133 = add nsw i32 %104, 10
  %call134 = call i32** @AllocateIntMtx(i32 %add132, i32 %add133)
  store i32** %call134, i32*** @commonIP, align 8
  %105 = load i32, i32* %ll1114, align 4
  store i32 %105, i32* @commonAlloc1, align 4
  %106 = load i32, i32* %ll2115, align 4
  store i32 %106, i32* @commonAlloc2, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %cond.end.130, %lor.lhs.false.110
  %107 = load i32**, i32*** @commonIP, align 8
  store i32** %107, i32*** @A__align_gapmap.ijp, align 8
  %108 = load i8**, i8*** %seq1.addr, align 8
  %109 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %110 = load double*, double** %eff1.addr, align 8
  %111 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %111, i64 0
  %112 = load i8*, i8** %arrayidx136, align 8
  %call137 = call i64 @strlen(i8* %112) #5
  %conv138 = trunc i64 %call137 to i32
  %113 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %108, float** %109, double* %110, i32 %conv138, i32 %113)
  %114 = load i8**, i8*** %seq2.addr, align 8
  %115 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %116 = load double*, double** %eff2.addr, align 8
  %117 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %117, i64 0
  %118 = load i8*, i8** %arrayidx139, align 8
  %call140 = call i64 @strlen(i8* %118) #5
  %conv141 = trunc i64 %call140 to i32
  %119 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %114, float** %115, double* %116, i32 %conv141, i32 %119)
  %120 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %121 = load i32, i32* %icyc.addr, align 4
  %122 = load i8**, i8*** %seq1.addr, align 8
  %123 = load double*, double** %eff1.addr, align 8
  %124 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %120, i32 %121, i8** %122, double* %123, i32 %124)
  %125 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %126 = load i32, i32* %jcyc.addr, align 4
  %127 = load i8**, i8*** %seq2.addr, align 8
  %128 = load double*, double** %eff2.addr, align 8
  %129 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %125, i32 %126, i8** %127, double* %128, i32 %129)
  %130 = load float*, float** @A__align_gapmap.fgcp1, align 8
  %131 = load i32, i32* %icyc.addr, align 4
  %132 = load i8**, i8*** %seq1.addr, align 8
  %133 = load double*, double** %eff1.addr, align 8
  %134 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount(float* %130, i32 %131, i8** %132, double* %133, i32 %134)
  %135 = load float*, float** @A__align_gapmap.fgcp2, align 8
  %136 = load i32, i32* %jcyc.addr, align 4
  %137 = load i8**, i8*** %seq2.addr, align 8
  %138 = load double*, double** %eff2.addr, align 8
  %139 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount(float* %135, i32 %136, i8** %137, double* %138, i32 %139)
  store i32 0, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.162, %if.end.135
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %lgth1, align 4
  %cmp143 = icmp slt i32 %140, %141
  br i1 %cmp143, label %for.body.145, label %for.end.164

for.body.145:                                     ; preds = %for.cond.142
  %142 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %142 to i64
  %143 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %arrayidx147 = getelementptr inbounds float, float* %143, i64 %idxprom146
  %144 = load float, float* %arrayidx147, align 4
  %conv148 = fpext float %144 to double
  %sub149 = fsub double 1.000000e+00, %conv148
  %mul150 = fmul double 5.000000e-01, %sub149
  %conv151 = fptrunc double %mul150 to float
  %145 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %145 to i64
  %146 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %arrayidx153 = getelementptr inbounds float, float* %146, i64 %idxprom152
  store float %conv151, float* %arrayidx153, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %147 to i64
  %148 = load float*, float** @A__align_gapmap.fgcp1, align 8
  %arrayidx155 = getelementptr inbounds float, float* %148, i64 %idxprom154
  %149 = load float, float* %arrayidx155, align 4
  %conv156 = fpext float %149 to double
  %sub157 = fsub double 1.000000e+00, %conv156
  %mul158 = fmul double 5.000000e-01, %sub157
  %conv159 = fptrunc double %mul158 to float
  %150 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %150 to i64
  %151 = load float*, float** @A__align_gapmap.fgcp1, align 8
  %arrayidx161 = getelementptr inbounds float, float* %151, i64 %idxprom160
  store float %conv159, float* %arrayidx161, align 4
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.145
  %152 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %152, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.142

for.end.164:                                      ; preds = %for.cond.142
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.185, %for.end.164
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %lgth2, align 4
  %cmp166 = icmp slt i32 %153, %154
  br i1 %cmp166, label %for.body.168, label %for.end.187

for.body.168:                                     ; preds = %for.cond.165
  %155 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %155 to i64
  %156 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %arrayidx170 = getelementptr inbounds float, float* %156, i64 %idxprom169
  %157 = load float, float* %arrayidx170, align 4
  %conv171 = fpext float %157 to double
  %sub172 = fsub double 1.000000e+00, %conv171
  %mul173 = fmul double 5.000000e-01, %sub172
  %conv174 = fptrunc double %mul173 to float
  %158 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %158 to i64
  %159 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %arrayidx176 = getelementptr inbounds float, float* %159, i64 %idxprom175
  store float %conv174, float* %arrayidx176, align 4
  %160 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %160 to i64
  %161 = load float*, float** @A__align_gapmap.fgcp2, align 8
  %arrayidx178 = getelementptr inbounds float, float* %161, i64 %idxprom177
  %162 = load float, float* %arrayidx178, align 4
  %conv179 = fpext float %162 to double
  %sub180 = fsub double 1.000000e+00, %conv179
  %mul181 = fmul double 5.000000e-01, %sub180
  %conv182 = fptrunc double %mul181 to float
  %163 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %163 to i64
  %164 = load float*, float** @A__align_gapmap.fgcp2, align 8
  %arrayidx184 = getelementptr inbounds float, float* %164, i64 %idxprom183
  store float %conv182, float* %arrayidx184, align 4
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.168
  %165 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %165, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.165

for.end.187:                                      ; preds = %for.cond.165
  %166 = load float*, float** @A__align_gapmap.w1, align 8
  store float* %166, float** %currentw, align 8
  %167 = load float*, float** @A__align_gapmap.w2, align 8
  store float* %167, float** %previousw, align 8
  %168 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %169 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %170 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %171 = load i32, i32* %lgth1, align 4
  %172 = load float**, float*** @A__align_gapmap.floatwork, align 8
  %173 = load i32**, i32*** @A__align_gapmap.intwork, align 8
  call void @match_calc(float* %168, float** %169, float** %170, i32 0, i32 %171, float** %172, i32** %173, i32 1)
  %174 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool188 = icmp ne %struct._LocalHom*** %174, null
  br i1 %tobool188, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %for.end.187
  %175 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %176 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %176, i64 0
  %177 = load i32, i32* %arrayidx190, align 4
  %178 = load i32, i32* %lgth1, align 4
  %179 = load i32*, i32** %gapmap1.addr, align 8
  call void @imp_match_out_vead_tate_gapmap(float* %175, i32 %177, i32 %178, i32* %179)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %for.end.187
  %180 = load float*, float** %currentw, align 8
  %181 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %182 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %183 = load i32, i32* %lgth2, align 4
  %184 = load float**, float*** @A__align_gapmap.floatwork, align 8
  %185 = load i32**, i32*** @A__align_gapmap.intwork, align 8
  call void @match_calc(float* %180, float** %181, float** %182, i32 0, i32 %183, float** %184, i32** %185, i32 1)
  %186 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool192 = icmp ne %struct._LocalHom*** %186, null
  br i1 %tobool192, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.end.191
  %187 = load float*, float** %currentw, align 8
  %188 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %188, i64 0
  %189 = load i32, i32* %arrayidx194, align 4
  %190 = load i32, i32* %lgth2, align 4
  %191 = load i32*, i32** %gapmap2.addr, align 8
  call void @imp_match_out_vead_gapmap(float* %187, i32 %189, i32 %190, i32* %191)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %if.end.191
  %192 = load i32, i32* @outgap, align 4
  %cmp196 = icmp eq i32 %192, 1
  br i1 %cmp196, label %if.then.198, label %if.else

if.then.198:                                      ; preds = %if.end.195
  store i32 1, i32* %i, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.212, %if.then.198
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %lgth1, align 4
  %add200 = add nsw i32 %194, 1
  %cmp201 = icmp slt i32 %193, %add200
  br i1 %cmp201, label %for.body.203, label %for.end.214

for.body.203:                                     ; preds = %for.cond.199
  %195 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %arrayidx204 = getelementptr inbounds float, float* %195, i64 0
  %196 = load float, float* %arrayidx204, align 4
  %197 = load i32, i32* %i, align 4
  %sub205 = sub nsw i32 %197, 1
  %idxprom206 = sext i32 %sub205 to i64
  %198 = load float*, float** @A__align_gapmap.fgcp1, align 8
  %arrayidx207 = getelementptr inbounds float, float* %198, i64 %idxprom206
  %199 = load float, float* %arrayidx207, align 4
  %add208 = fadd float %196, %199
  %200 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %200 to i64
  %201 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %arrayidx210 = getelementptr inbounds float, float* %201, i64 %idxprom209
  %202 = load float, float* %arrayidx210, align 4
  %add211 = fadd float %202, %add208
  store float %add211, float* %arrayidx210, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.203
  %203 = load i32, i32* %i, align 4
  %inc213 = add nsw i32 %203, 1
  store i32 %inc213, i32* %i, align 4
  br label %for.cond.199

for.end.214:                                      ; preds = %for.cond.199
  store i32 1, i32* %j, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.228, %for.end.214
  %204 = load i32, i32* %j, align 4
  %205 = load i32, i32* %lgth2, align 4
  %add216 = add nsw i32 %205, 1
  %cmp217 = icmp slt i32 %204, %add216
  br i1 %cmp217, label %for.body.219, label %for.end.230

for.body.219:                                     ; preds = %for.cond.215
  %206 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %arrayidx220 = getelementptr inbounds float, float* %206, i64 0
  %207 = load float, float* %arrayidx220, align 4
  %208 = load i32, i32* %j, align 4
  %sub221 = sub nsw i32 %208, 1
  %idxprom222 = sext i32 %sub221 to i64
  %209 = load float*, float** @A__align_gapmap.fgcp2, align 8
  %arrayidx223 = getelementptr inbounds float, float* %209, i64 %idxprom222
  %210 = load float, float* %arrayidx223, align 4
  %add224 = fadd float %207, %210
  %211 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %211 to i64
  %212 = load float*, float** %currentw, align 8
  %arrayidx226 = getelementptr inbounds float, float* %212, i64 %idxprom225
  %213 = load float, float* %arrayidx226, align 4
  %add227 = fadd float %213, %add224
  store float %add227, float* %arrayidx226, align 4
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.219
  %214 = load i32, i32* %j, align 4
  %inc229 = add nsw i32 %214, 1
  store i32 %inc229, i32* %j, align 4
  br label %for.cond.215

for.end.230:                                      ; preds = %for.cond.215
  br label %if.end.262

if.else:                                          ; preds = %if.end.195
  store i32 1, i32* %j, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.243, %if.else
  %215 = load i32, i32* %j, align 4
  %216 = load i32, i32* %lgth2, align 4
  %add232 = add nsw i32 %216, 1
  %cmp233 = icmp slt i32 %215, %add232
  br i1 %cmp233, label %for.body.235, label %for.end.245

for.body.235:                                     ; preds = %for.cond.231
  %217 = load i32, i32* @offset, align 4
  %218 = load i32, i32* %j, align 4
  %mul236 = mul nsw i32 %217, %218
  %conv237 = sitofp i32 %mul236 to double
  %div = fdiv double %conv237, 2.000000e+00
  %219 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %219 to i64
  %220 = load float*, float** %currentw, align 8
  %arrayidx239 = getelementptr inbounds float, float* %220, i64 %idxprom238
  %221 = load float, float* %arrayidx239, align 4
  %conv240 = fpext float %221 to double
  %sub241 = fsub double %conv240, %div
  %conv242 = fptrunc double %sub241 to float
  store float %conv242, float* %arrayidx239, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.body.235
  %222 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %222, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.231

for.end.245:                                      ; preds = %for.cond.231
  store i32 1, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.259, %for.end.245
  %223 = load i32, i32* %i, align 4
  %224 = load i32, i32* %lgth1, align 4
  %add247 = add nsw i32 %224, 1
  %cmp248 = icmp slt i32 %223, %add247
  br i1 %cmp248, label %for.body.250, label %for.end.261

for.body.250:                                     ; preds = %for.cond.246
  %225 = load i32, i32* @offset, align 4
  %226 = load i32, i32* %i, align 4
  %mul251 = mul nsw i32 %225, %226
  %conv252 = sitofp i32 %mul251 to double
  %div253 = fdiv double %conv252, 2.000000e+00
  %227 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %227 to i64
  %228 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %arrayidx255 = getelementptr inbounds float, float* %228, i64 %idxprom254
  %229 = load float, float* %arrayidx255, align 4
  %conv256 = fpext float %229 to double
  %sub257 = fsub double %conv256, %div253
  %conv258 = fptrunc double %sub257 to float
  store float %conv258, float* %arrayidx255, align 4
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.body.250
  %230 = load i32, i32* %i, align 4
  %inc260 = add nsw i32 %230, 1
  store i32 %inc260, i32* %i, align 4
  br label %for.cond.246

for.end.261:                                      ; preds = %for.cond.246
  br label %if.end.262

if.end.262:                                       ; preds = %for.end.261, %for.end.230
  store i32 1, i32* %j, align 4
  br label %for.cond.263

for.cond.263:                                     ; preds = %for.inc.277, %if.end.262
  %231 = load i32, i32* %j, align 4
  %232 = load i32, i32* %lgth2, align 4
  %add264 = add nsw i32 %232, 1
  %cmp265 = icmp slt i32 %231, %add264
  br i1 %cmp265, label %for.body.267, label %for.end.279

for.body.267:                                     ; preds = %for.cond.263
  %233 = load i32, i32* %j, align 4
  %sub268 = sub nsw i32 %233, 1
  %idxprom269 = sext i32 %sub268 to i64
  %234 = load float*, float** %currentw, align 8
  %arrayidx270 = getelementptr inbounds float, float* %234, i64 %idxprom269
  %235 = load float, float* %arrayidx270, align 4
  %236 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %arrayidx271 = getelementptr inbounds float, float* %236, i64 1
  %237 = load float, float* %arrayidx271, align 4
  %add272 = fadd float %235, %237
  %238 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %238 to i64
  %239 = load float*, float** @A__align_gapmap.m, align 8
  %arrayidx274 = getelementptr inbounds float, float* %239, i64 %idxprom273
  store float %add272, float* %arrayidx274, align 4
  %240 = load i32, i32* %j, align 4
  %idxprom275 = sext i32 %240 to i64
  %241 = load i32*, i32** @A__align_gapmap.mp, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %241, i64 %idxprom275
  store i32 0, i32* %arrayidx276, align 4
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.267
  %242 = load i32, i32* %j, align 4
  %inc278 = add nsw i32 %242, 1
  store i32 %inc278, i32* %j, align 4
  br label %for.cond.263

for.end.279:                                      ; preds = %for.cond.263
  %243 = load i32, i32* %lgth2, align 4
  %cmp280 = icmp eq i32 %243, 0
  br i1 %cmp280, label %if.then.282, label %if.else.284

if.then.282:                                      ; preds = %for.end.279
  %244 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %arrayidx283 = getelementptr inbounds float, float* %244, i64 0
  store float 0.000000e+00, float* %arrayidx283, align 4
  br label %if.end.289

if.else.284:                                      ; preds = %for.end.279
  %245 = load i32, i32* %lgth2, align 4
  %sub285 = sub nsw i32 %245, 1
  %idxprom286 = sext i32 %sub285 to i64
  %246 = load float*, float** %currentw, align 8
  %arrayidx287 = getelementptr inbounds float, float* %246, i64 %idxprom286
  %247 = load float, float* %arrayidx287, align 4
  %248 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %arrayidx288 = getelementptr inbounds float, float* %248, i64 0
  store float %247, float* %arrayidx288, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.284, %if.then.282
  %249 = load i32, i32* @outgap, align 4
  %tobool290 = icmp ne i32 %249, 0
  br i1 %tobool290, label %if.then.291, label %if.else.293

if.then.291:                                      ; preds = %if.end.289
  %250 = load i32, i32* %lgth1, align 4
  %add292 = add nsw i32 %250, 1
  store i32 %add292, i32* %lasti, align 4
  br label %if.end.294

if.else.293:                                      ; preds = %if.end.289
  %251 = load i32, i32* %lgth1, align 4
  store i32 %251, i32* %lasti, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.293, %if.then.291
  store i32 1, i32* %i, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.370, %if.end.294
  %252 = load i32, i32* %i, align 4
  %253 = load i32, i32* %lasti, align 4
  %cmp296 = icmp slt i32 %252, %253
  br i1 %cmp296, label %for.body.298, label %for.end.372

for.body.298:                                     ; preds = %for.cond.295
  %254 = load float*, float** %previousw, align 8
  store float* %254, float** %wtmp, align 8
  %255 = load float*, float** %currentw, align 8
  store float* %255, float** %previousw, align 8
  %256 = load float*, float** %wtmp, align 8
  store float* %256, float** %currentw, align 8
  %257 = load i32, i32* %i, align 4
  %sub299 = sub nsw i32 %257, 1
  %idxprom300 = sext i32 %sub299 to i64
  %258 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %arrayidx301 = getelementptr inbounds float, float* %258, i64 %idxprom300
  %259 = load float, float* %arrayidx301, align 4
  %260 = load float*, float** %previousw, align 8
  %arrayidx302 = getelementptr inbounds float, float* %260, i64 0
  store float %259, float* %arrayidx302, align 4
  %261 = load float*, float** %currentw, align 8
  %262 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %263 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %264 = load i32, i32* %i, align 4
  %265 = load i32, i32* %lgth2, align 4
  %266 = load float**, float*** @A__align_gapmap.floatwork, align 8
  %267 = load i32**, i32*** @A__align_gapmap.intwork, align 8
  call void @match_calc(float* %261, float** %262, float** %263, i32 %264, i32 %265, float** %266, i32** %267, i32 0)
  %268 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool303 = icmp ne %struct._LocalHom*** %268, null
  br i1 %tobool303, label %if.then.304, label %if.end.307

if.then.304:                                      ; preds = %for.body.298
  %269 = load float*, float** %currentw, align 8
  %270 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %270 to i64
  %271 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %271, i64 %idxprom305
  %272 = load i32, i32* %arrayidx306, align 4
  %273 = load i32, i32* %lgth2, align 4
  %274 = load i32*, i32** %gapmap2.addr, align 8
  call void @imp_match_out_vead_gapmap(float* %269, i32 %272, i32 %273, i32* %274)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.304, %for.body.298
  %275 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %275 to i64
  %276 = load float*, float** @A__align_gapmap.initverticalw, align 8
  %arrayidx309 = getelementptr inbounds float, float* %276, i64 %idxprom308
  %277 = load float, float* %arrayidx309, align 4
  %278 = load float*, float** %currentw, align 8
  %arrayidx310 = getelementptr inbounds float, float* %278, i64 0
  store float %277, float* %arrayidx310, align 4
  %279 = load float*, float** %previousw, align 8
  %arrayidx311 = getelementptr inbounds float, float* %279, i64 0
  %280 = load float, float* %arrayidx311, align 4
  %281 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %arrayidx312 = getelementptr inbounds float, float* %281, i64 1
  %282 = load float, float* %arrayidx312, align 4
  %add313 = fadd float %280, %282
  store float %add313, float* @A__align_gapmap.mi, align 4
  store i32 0, i32* @A__align_gapmap.mpi, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %283 to i64
  %284 = load i32**, i32*** @A__align_gapmap.ijp, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %284, i64 %idxprom314
  %285 = load i32*, i32** %arrayidx315, align 8
  %add.ptr = getelementptr inbounds i32, i32* %285, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %286 = load float*, float** @A__align_gapmap.m, align 8
  %add.ptr316 = getelementptr inbounds float, float* %286, i64 1
  store float* %add.ptr316, float** %mjpt, align 8
  %287 = load float*, float** %previousw, align 8
  store float* %287, float** %prept, align 8
  %288 = load float*, float** %currentw, align 8
  %add.ptr317 = getelementptr inbounds float, float* %288, i64 1
  store float* %add.ptr317, float** %curpt, align 8
  %289 = load i32*, i32** @A__align_gapmap.mp, align 8
  %add.ptr318 = getelementptr inbounds i32, i32* %289, i64 1
  store i32* %add.ptr318, i32** %mpjpt, align 8
  %290 = load float*, float** @A__align_gapmap.fgcp2, align 8
  store float* %290, float** %fgcp2pt, align 8
  %291 = load float*, float** @A__align_gapmap.ogcp2, align 8
  %add.ptr319 = getelementptr inbounds float, float* %291, i64 1
  store float* %add.ptr319, float** %ogcp2pt, align 8
  %292 = load i32, i32* %i, align 4
  %sub320 = sub nsw i32 %292, 1
  %idxprom321 = sext i32 %sub320 to i64
  %293 = load float*, float** @A__align_gapmap.fgcp1, align 8
  %arrayidx322 = getelementptr inbounds float, float* %293, i64 %idxprom321
  %294 = load float, float* %arrayidx322, align 4
  store float %294, float* %fgcp1va, align 4
  %295 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %295 to i64
  %296 = load float*, float** @A__align_gapmap.ogcp1, align 8
  %arrayidx324 = getelementptr inbounds float, float* %296, i64 %idxprom323
  %297 = load float, float* %arrayidx324, align 4
  store float %297, float* %ogcp1va, align 4
  %298 = load i32, i32* %lgth2, align 4
  %add325 = add nsw i32 %298, 1
  store i32 %add325, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.326

for.cond.326:                                     ; preds = %for.inc.362, %if.end.307
  %299 = load i32, i32* %j, align 4
  %300 = load i32, i32* %lastj, align 4
  %cmp327 = icmp slt i32 %299, %300
  br i1 %cmp327, label %for.body.329, label %for.end.364

for.body.329:                                     ; preds = %for.cond.326
  %301 = load float*, float** %prept, align 8
  %302 = load float, float* %301, align 4
  store float %302, float* %wm, align 4
  %303 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %303, align 4
  %304 = load float, float* @A__align_gapmap.mi, align 4
  %305 = load float*, float** %fgcp2pt, align 8
  %306 = load float, float* %305, align 4
  %add330 = fadd float %304, %306
  store float %add330, float* %g, align 4
  %307 = load float, float* %g, align 4
  %308 = load float, float* %wm, align 4
  %cmp331 = fcmp ogt float %307, %308
  br i1 %cmp331, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %for.body.329
  %309 = load float, float* %g, align 4
  store float %309, float* %wm, align 4
  %310 = load i32, i32* %j, align 4
  %311 = load i32, i32* @A__align_gapmap.mpi, align 4
  %sub334 = sub nsw i32 %310, %311
  %sub335 = sub nsw i32 0, %sub334
  %312 = load i32*, i32** %ijppt, align 8
  store i32 %sub335, i32* %312, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.333, %for.body.329
  %313 = load float*, float** %prept, align 8
  %314 = load float, float* %313, align 4
  %315 = load float*, float** %ogcp2pt, align 8
  %316 = load float, float* %315, align 4
  %add337 = fadd float %314, %316
  store float %add337, float* %g, align 4
  %317 = load float, float* %g, align 4
  %318 = load float, float* @A__align_gapmap.mi, align 4
  %cmp338 = fcmp oge float %317, %318
  br i1 %cmp338, label %if.then.340, label %if.end.342

if.then.340:                                      ; preds = %if.end.336
  %319 = load float, float* %g, align 4
  store float %319, float* @A__align_gapmap.mi, align 4
  %320 = load i32, i32* %j, align 4
  %sub341 = sub nsw i32 %320, 1
  store i32 %sub341, i32* @A__align_gapmap.mpi, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.340, %if.end.336
  %321 = load float*, float** %mjpt, align 8
  %322 = load float, float* %321, align 4
  %323 = load float, float* %fgcp1va, align 4
  %add343 = fadd float %322, %323
  store float %add343, float* %g, align 4
  %324 = load float, float* %g, align 4
  %325 = load float, float* %wm, align 4
  %cmp344 = fcmp ogt float %324, %325
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %if.end.342
  %326 = load float, float* %g, align 4
  store float %326, float* %wm, align 4
  %327 = load i32, i32* %i, align 4
  %328 = load i32*, i32** %mpjpt, align 8
  %329 = load i32, i32* %328, align 4
  %sub347 = sub nsw i32 %327, %329
  %330 = load i32*, i32** %ijppt, align 8
  store i32 %sub347, i32* %330, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.346, %if.end.342
  %331 = load float*, float** %prept, align 8
  %332 = load float, float* %331, align 4
  %333 = load float, float* %ogcp1va, align 4
  %add349 = fadd float %332, %333
  store float %add349, float* %g, align 4
  %334 = load float, float* %g, align 4
  %335 = load float*, float** %mjpt, align 8
  %336 = load float, float* %335, align 4
  %cmp350 = fcmp oge float %334, %336
  br i1 %cmp350, label %if.then.352, label %if.end.354

if.then.352:                                      ; preds = %if.end.348
  %337 = load float, float* %g, align 4
  %338 = load float*, float** %mjpt, align 8
  store float %337, float* %338, align 4
  %339 = load i32, i32* %i, align 4
  %sub353 = sub nsw i32 %339, 1
  %340 = load i32*, i32** %mpjpt, align 8
  store i32 %sub353, i32* %340, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.352, %if.end.348
  %341 = load float, float* %wm, align 4
  %342 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %342, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %343 = load float, float* %342, align 4
  %add355 = fadd float %343, %341
  store float %add355, float* %342, align 4
  %344 = load i32*, i32** %ijppt, align 8
  %incdec.ptr356 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %incdec.ptr356, i32** %ijppt, align 8
  %345 = load float*, float** %mjpt, align 8
  %incdec.ptr357 = getelementptr inbounds float, float* %345, i32 1
  store float* %incdec.ptr357, float** %mjpt, align 8
  %346 = load float*, float** %prept, align 8
  %incdec.ptr358 = getelementptr inbounds float, float* %346, i32 1
  store float* %incdec.ptr358, float** %prept, align 8
  %347 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr359 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %incdec.ptr359, i32** %mpjpt, align 8
  %348 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr360 = getelementptr inbounds float, float* %348, i32 1
  store float* %incdec.ptr360, float** %fgcp2pt, align 8
  %349 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr361 = getelementptr inbounds float, float* %349, i32 1
  store float* %incdec.ptr361, float** %ogcp2pt, align 8
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.354
  %350 = load i32, i32* %j, align 4
  %inc363 = add nsw i32 %350, 1
  store i32 %inc363, i32* %j, align 4
  br label %for.cond.326

for.end.364:                                      ; preds = %for.cond.326
  %351 = load i32, i32* %lgth2, align 4
  %sub365 = sub nsw i32 %351, 1
  %idxprom366 = sext i32 %sub365 to i64
  %352 = load float*, float** %currentw, align 8
  %arrayidx367 = getelementptr inbounds float, float* %352, i64 %idxprom366
  %353 = load float, float* %arrayidx367, align 4
  %354 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %354 to i64
  %355 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %arrayidx369 = getelementptr inbounds float, float* %355, i64 %idxprom368
  store float %353, float* %arrayidx369, align 4
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.end.364
  %356 = load i32, i32* %i, align 4
  %inc371 = add nsw i32 %356, 1
  store i32 %inc371, i32* %i, align 4
  br label %for.cond.295

for.end.372:                                      ; preds = %for.cond.295
  %357 = load i32, i32* @outgap, align 4
  %tobool373 = icmp ne i32 %357, 0
  br i1 %tobool373, label %if.end.411, label %if.then.374

if.then.374:                                      ; preds = %for.end.372
  store i32 1, i32* %j, align 4
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.389, %if.then.374
  %358 = load i32, i32* %j, align 4
  %359 = load i32, i32* %lgth2, align 4
  %add376 = add nsw i32 %359, 1
  %cmp377 = icmp slt i32 %358, %add376
  br i1 %cmp377, label %for.body.379, label %for.end.391

for.body.379:                                     ; preds = %for.cond.375
  %360 = load i32, i32* @offset, align 4
  %361 = load i32, i32* %lgth2, align 4
  %362 = load i32, i32* %j, align 4
  %sub380 = sub nsw i32 %361, %362
  %mul381 = mul nsw i32 %360, %sub380
  %conv382 = sitofp i32 %mul381 to double
  %div383 = fdiv double %conv382, 2.000000e+00
  %363 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %363 to i64
  %364 = load float*, float** %currentw, align 8
  %arrayidx385 = getelementptr inbounds float, float* %364, i64 %idxprom384
  %365 = load float, float* %arrayidx385, align 4
  %conv386 = fpext float %365 to double
  %sub387 = fsub double %conv386, %div383
  %conv388 = fptrunc double %sub387 to float
  store float %conv388, float* %arrayidx385, align 4
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.379
  %366 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %366, 1
  store i32 %inc390, i32* %j, align 4
  br label %for.cond.375

for.end.391:                                      ; preds = %for.cond.375
  store i32 1, i32* %i, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.408, %for.end.391
  %367 = load i32, i32* %i, align 4
  %368 = load i32, i32* %lgth1, align 4
  %add393 = add nsw i32 %368, 1
  %cmp394 = icmp slt i32 %367, %add393
  br i1 %cmp394, label %for.body.396, label %for.end.410

for.body.396:                                     ; preds = %for.cond.392
  %369 = load i32, i32* @offset, align 4
  %conv397 = sitofp i32 %369 to double
  %370 = load i32, i32* %lgth1, align 4
  %conv398 = sitofp i32 %370 to double
  %371 = load i32, i32* %i, align 4
  %conv399 = sitofp i32 %371 to double
  %div400 = fdiv double %conv399, 2.000000e+00
  %sub401 = fsub double %conv398, %div400
  %mul402 = fmul double %conv397, %sub401
  %372 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %372 to i64
  %373 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %arrayidx404 = getelementptr inbounds float, float* %373, i64 %idxprom403
  %374 = load float, float* %arrayidx404, align 4
  %conv405 = fpext float %374 to double
  %sub406 = fsub double %conv405, %mul402
  %conv407 = fptrunc double %sub406 to float
  store float %conv407, float* %arrayidx404, align 4
  br label %for.inc.408

for.inc.408:                                      ; preds = %for.body.396
  %375 = load i32, i32* %i, align 4
  %inc409 = add nsw i32 %375, 1
  store i32 %inc409, i32* %i, align 4
  br label %for.cond.392

for.end.410:                                      ; preds = %for.cond.392
  br label %if.end.411

if.end.411:                                       ; preds = %for.end.410, %for.end.372
  %376 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool412 = icmp ne %struct._LocalHom*** %376, null
  br i1 %tobool412, label %if.then.413, label %if.else.414

if.then.413:                                      ; preds = %if.end.411
  %377 = load float*, float** %impmatch.addr, align 8
  %378 = load float*, float** %currentw, align 8
  %379 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %380 = load i8**, i8*** %seq1.addr, align 8
  %381 = load i8**, i8*** %seq2.addr, align 8
  %382 = load i8**, i8*** @A__align_gapmap.mseq1, align 8
  %383 = load i8**, i8*** @A__align_gapmap.mseq2, align 8
  %384 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %385 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %386 = load i32**, i32*** @A__align_gapmap.ijp, align 8
  %387 = load i32, i32* %icyc.addr, align 4
  %388 = load i32, i32* %jcyc.addr, align 4
  %389 = load i32*, i32** %gapmap1.addr, align 8
  %390 = load i32*, i32** %gapmap2.addr, align 8
  call void @Atracking_localhom_gapmap(float* %377, float* %378, float* %379, i8** %380, i8** %381, i8** %382, i8** %383, float** %384, float** %385, i32** %386, i32 %387, i32 %388, i32* %389, i32* %390)
  br label %if.end.416

if.else.414:                                      ; preds = %if.end.411
  %391 = load float*, float** %currentw, align 8
  %392 = load float*, float** @A__align_gapmap.lastverticalw, align 8
  %393 = load i8**, i8*** %seq1.addr, align 8
  %394 = load i8**, i8*** %seq2.addr, align 8
  %395 = load i8**, i8*** @A__align_gapmap.mseq1, align 8
  %396 = load i8**, i8*** @A__align_gapmap.mseq2, align 8
  %397 = load float**, float*** @A__align_gapmap.cpmx1, align 8
  %398 = load float**, float*** @A__align_gapmap.cpmx2, align 8
  %399 = load i32**, i32*** @A__align_gapmap.ijp, align 8
  %400 = load i32, i32* %icyc.addr, align 4
  %401 = load i32, i32* %jcyc.addr, align 4
  %call415 = call float @Atracking(float* %391, float* %392, i8** %393, i8** %394, i8** %395, i8** %396, float** %397, float** %398, i32** %399, i32 %400, i32 %401)
  br label %if.end.416

if.end.416:                                       ; preds = %if.else.414, %if.then.413
  %402 = load i8**, i8*** @A__align_gapmap.mseq1, align 8
  %arrayidx417 = getelementptr inbounds i8*, i8** %402, i64 0
  %403 = load i8*, i8** %arrayidx417, align 8
  %call418 = call i64 @strlen(i8* %403) #5
  %conv419 = trunc i64 %call418 to i32
  store i32 %conv419, i32* %resultlen, align 4
  %404 = load i32, i32* %alloclen.addr, align 4
  %405 = load i32, i32* %resultlen, align 4
  %cmp420 = icmp slt i32 %404, %405
  br i1 %cmp420, label %if.then.425, label %lor.lhs.false.422

lor.lhs.false.422:                                ; preds = %if.end.416
  %406 = load i32, i32* %resultlen, align 4
  %cmp423 = icmp sgt i32 %406, 5000000
  br i1 %cmp423, label %if.then.425, label %if.end.427

if.then.425:                                      ; preds = %lor.lhs.false.422, %if.end.416
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %408 = load i32, i32* %alloclen.addr, align 4
  %409 = load i32, i32* %resultlen, align 4
  %call426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %408, i32 %409, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.425, %lor.lhs.false.422
  store i32 0, i32* %i, align 4
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.437, %if.end.427
  %410 = load i32, i32* %i, align 4
  %411 = load i32, i32* %icyc.addr, align 4
  %cmp429 = icmp slt i32 %410, %411
  br i1 %cmp429, label %for.body.431, label %for.end.439

for.body.431:                                     ; preds = %for.cond.428
  %412 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %412 to i64
  %413 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx433 = getelementptr inbounds i8*, i8** %413, i64 %idxprom432
  %414 = load i8*, i8** %arrayidx433, align 8
  %415 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %415 to i64
  %416 = load i8**, i8*** @A__align_gapmap.mseq1, align 8
  %arrayidx435 = getelementptr inbounds i8*, i8** %416, i64 %idxprom434
  %417 = load i8*, i8** %arrayidx435, align 8
  %call436 = call i8* @strcpy(i8* %414, i8* %417) #4
  br label %for.inc.437

for.inc.437:                                      ; preds = %for.body.431
  %418 = load i32, i32* %i, align 4
  %inc438 = add nsw i32 %418, 1
  store i32 %inc438, i32* %i, align 4
  br label %for.cond.428

for.end.439:                                      ; preds = %for.cond.428
  store i32 0, i32* %j, align 4
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.449, %for.end.439
  %419 = load i32, i32* %j, align 4
  %420 = load i32, i32* %jcyc.addr, align 4
  %cmp441 = icmp slt i32 %419, %420
  br i1 %cmp441, label %for.body.443, label %for.end.451

for.body.443:                                     ; preds = %for.cond.440
  %421 = load i32, i32* %j, align 4
  %idxprom444 = sext i32 %421 to i64
  %422 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx445 = getelementptr inbounds i8*, i8** %422, i64 %idxprom444
  %423 = load i8*, i8** %arrayidx445, align 8
  %424 = load i32, i32* %j, align 4
  %idxprom446 = sext i32 %424 to i64
  %425 = load i8**, i8*** @A__align_gapmap.mseq2, align 8
  %arrayidx447 = getelementptr inbounds i8*, i8** %425, i64 %idxprom446
  %426 = load i8*, i8** %arrayidx447, align 8
  %call448 = call i8* @strcpy(i8* %423, i8* %426) #4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.443
  %427 = load i32, i32* %j, align 4
  %inc450 = add nsw i32 %427, 1
  store i32 %inc450, i32* %j, align 4
  br label %for.cond.440

for.end.451:                                      ; preds = %for.cond.440
  %428 = load float, float* %wm, align 4
  ret float %428
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_tate_gapmap(float* %imp, i32 %j1, i32 %lgth1, i32* %gapmap1) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %j1.addr = alloca i32, align 4
  %lgth1.addr = alloca i32, align 4
  %gapmap1.addr = alloca i32*, align 8
  %gapmappt = alloca i32*, align 8
  store float* %imp, float** %imp.addr, align 8
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %lgth1, i32* %lgth1.addr, align 4
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  %0 = load i32*, i32** %gapmap1.addr, align 8
  store i32* %0, i32** %gapmappt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %lgth1.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %lgth1.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %j1.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %gapmappt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %gapmappt, align 8
  %4 = load i32, i32* %3, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom1
  %6 = load float*, float** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx2, align 4
  %8 = load float*, float** %imp.addr, align 8
  %incdec.ptr3 = getelementptr inbounds float, float* %8, i32 1
  store float* %incdec.ptr3, float** %imp.addr, align 8
  %9 = load float, float* %8, align 4
  %add = fadd float %9, %7
  store float %add, float* %8, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_gapmap(float* %imp, i32 %i1, i32 %lgth2, i32* %gapmap2) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %gapmap2.addr = alloca i32*, align 8
  %pt = alloca float*, align 8
  %gapmappt = alloca i32*, align 8
  store float* %imp, float** %imp.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  %0 = load i32, i32* %i1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 %idxprom
  %2 = load float*, float** %arrayidx, align 8
  store float* %2, float** %pt, align 8
  %3 = load i32*, i32** %gapmap2.addr, align 8
  store i32* %3, i32** %gapmappt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32*, i32** %gapmappt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr, i32** %gapmappt, align 8
  %6 = load i32, i32* %5, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load float*, float** %pt, align 8
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  %8 = load float, float* %arrayidx2, align 4
  %9 = load float*, float** %imp.addr, align 8
  %incdec.ptr3 = getelementptr inbounds float, float* %9, i32 1
  store float* %incdec.ptr3, float** %imp.addr, align 8
  %10 = load float, float* %9, align 4
  %add = fadd float %10, %8
  store float %add, float* %9, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Atracking_localhom_gapmap(float* %impwmpt, float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijp, i32 %icyc, i32 %jcyc, i32* %gapmap1, i32* %gapmap2) #0 {
entry:
  %impwmpt.addr = alloca float*, align 8
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ijp.addr = alloca i32**, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %gapmap1.addr = alloca i32*, align 8
  %gapmap2.addr = alloca i32*, align 8
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
  %wm = alloca float, align 4
  %gaptable1 = alloca i8*, align 8
  %gt1bk = alloca i8*, align 8
  %gaptable2 = alloca i8*, align 8
  %gt2bk = alloca i8*, align 8
  store float* %impwmpt, float** %impwmpt.addr, align 8
  store float* %lasthorizontalw, float** %lasthorizontalw.addr, align 8
  store float* %lastverticalw, float** %lastverticalw.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth1, align 4
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %lgth2, align 4
  %4 = load i32, i32* %lgth1, align 4
  %5 = load i32, i32* %lgth2, align 4
  %add = add nsw i32 %4, %5
  %add4 = add nsw i32 %add, 1
  %call5 = call i8* @AllocateCharVec(i32 %add4)
  store i8* %call5, i8** %gt1bk, align 8
  %6 = load i32, i32* %lgth1, align 4
  %7 = load i32, i32* %lgth2, align 4
  %add6 = add nsw i32 %6, %7
  %add7 = add nsw i32 %add6, 1
  %call8 = call i8* @AllocateCharVec(i32 %add7)
  store i8* %call8, i8** %gt2bk, align 8
  %8 = load i32, i32* @outgap, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.46

if.else:                                          ; preds = %entry
  %9 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx10, align 4
  store float %10, float* %wm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %lgth1, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx13, align 4
  %16 = load float, float* %wm, align 4
  %cmp14 = fcmp oge float %15, %16
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  %19 = load float, float* %arrayidx18, align 4
  store float %19, float* %wm, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %iin, align 4
  %21 = load i32, i32* %lgth2, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %jin, align 4
  %22 = load i32, i32* %lgth1, align 4
  %23 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %22, %23
  %24 = load i32, i32* %lgth2, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32, i32* %lgth1, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx22 = getelementptr inbounds i32*, i32** %26, i64 %idxprom21
  %27 = load i32*, i32** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  store i32 %sub19, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.43, %for.end
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %lgth2, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body.27, label %for.end.45

for.body.27:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %32, i64 %idxprom28
  %33 = load float, float* %arrayidx29, align 4
  %34 = load float, float* %wm, align 4
  %cmp30 = fcmp oge float %33, %34
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %for.body.27
  %35 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %36, i64 %idxprom33
  %37 = load float, float* %arrayidx34, align 4
  store float %37, float* %wm, align 4
  %38 = load i32, i32* %lgth1, align 4
  %sub35 = sub nsw i32 %38, 1
  store i32 %sub35, i32* %iin, align 4
  %39 = load i32, i32* %j, align 4
  store i32 %39, i32* %jin, align 4
  %40 = load i32, i32* %lgth2, align 4
  %41 = load i32, i32* %j, align 4
  %sub36 = sub nsw i32 %40, %41
  %sub37 = sub nsw i32 0, %sub36
  %42 = load i32, i32* %lgth2, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load i32, i32* %lgth1, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %44, i64 %idxprom39
  %45 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %45, i64 %idxprom38
  store i32 %sub37, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %for.body.27
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %46 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.24

for.end.45:                                       ; preds = %for.cond.24
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.56, %if.end.46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %lgth1, align 4
  %add48 = add nsw i32 %48, 1
  %cmp49 = icmp slt i32 %47, %add48
  br i1 %cmp49, label %for.body.51, label %for.end.58

for.body.51:                                      ; preds = %for.cond.47
  %49 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %49, 1
  %50 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %51, i64 %idxprom53
  %52 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %add52, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.51
  %53 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %53, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.47

for.end.58:                                       ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.69, %for.end.58
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %lgth2, align 4
  %add60 = add nsw i32 %55, 1
  %cmp61 = icmp slt i32 %54, %add60
  br i1 %cmp61, label %for.body.63, label %for.end.71

for.body.63:                                      ; preds = %for.cond.59
  %56 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %56, 1
  %sub65 = sub nsw i32 0, %add64
  %57 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %58, i64 0
  %59 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %59, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.63
  %60 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.59

for.end.71:                                       ; preds = %for.cond.59
  %61 = load i8*, i8** %gt1bk, align 8
  %62 = load i32, i32* %lgth1, align 4
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  %63 = load i32, i32* %lgth2, align 4
  %idx.ext72 = sext i32 %63 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext72
  store i8* %add.ptr73, i8** %gaptable1, align 8
  %64 = load i8*, i8** %gaptable1, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %gt2bk, align 8
  %66 = load i32, i32* %lgth1, align 4
  %idx.ext74 = sext i32 %66 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %65, i64 %idx.ext74
  %67 = load i32, i32* %lgth2, align 4
  %idx.ext76 = sext i32 %67 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %add.ptr75, i64 %idx.ext76
  store i8* %add.ptr77, i8** %gaptable2, align 8
  %68 = load i8*, i8** %gaptable2, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %lgth1, align 4
  store i32 %69, i32* %iin, align 4
  %70 = load i32, i32* %lgth2, align 4
  store i32 %70, i32* %jin, align 4
  %71 = load float*, float** %impwmpt.addr, align 8
  store float 0.000000e+00, float* %71, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.150, %for.end.71
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %lgth1, align 4
  %74 = load i32, i32* %lgth2, align 4
  %add79 = add nsw i32 %73, %74
  %cmp80 = icmp sle i32 %72, %add79
  br i1 %cmp80, label %for.body.82, label %for.end.152

for.body.82:                                      ; preds = %for.cond.78
  %75 = load i32, i32* %jin, align 4
  %idxprom83 = sext i32 %75 to i64
  %76 = load i32, i32* %iin, align 4
  %idxprom84 = sext i32 %76 to i64
  %77 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %77, i64 %idxprom84
  %78 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %78, i64 %idxprom83
  %79 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %79, 0
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %for.body.82
  %80 = load i32, i32* %iin, align 4
  %sub90 = sub nsw i32 %80, 1
  store i32 %sub90, i32* %ifi, align 4
  %81 = load i32, i32* %jin, align 4
  %82 = load i32, i32* %jin, align 4
  %idxprom91 = sext i32 %82 to i64
  %83 = load i32, i32* %iin, align 4
  %idxprom92 = sext i32 %83 to i64
  %84 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %84, i64 %idxprom92
  %85 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %85, i64 %idxprom91
  %86 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %81, %86
  store i32 %add95, i32* %jfi, align 4
  br label %if.end.114

if.else.96:                                       ; preds = %for.body.82
  %87 = load i32, i32* %jin, align 4
  %idxprom97 = sext i32 %87 to i64
  %88 = load i32, i32* %iin, align 4
  %idxprom98 = sext i32 %88 to i64
  %89 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %89, i64 %idxprom98
  %90 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %90, i64 %idxprom97
  %91 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp sgt i32 %91, 0
  br i1 %cmp101, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.else.96
  %92 = load i32, i32* %iin, align 4
  %93 = load i32, i32* %jin, align 4
  %idxprom104 = sext i32 %93 to i64
  %94 = load i32, i32* %iin, align 4
  %idxprom105 = sext i32 %94 to i64
  %95 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %95, i64 %idxprom105
  %96 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %96, i64 %idxprom104
  %97 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %92, %97
  store i32 %sub108, i32* %ifi, align 4
  %98 = load i32, i32* %jin, align 4
  %sub109 = sub nsw i32 %98, 1
  store i32 %sub109, i32* %jfi, align 4
  br label %if.end.113

if.else.110:                                      ; preds = %if.else.96
  %99 = load i32, i32* %iin, align 4
  %sub111 = sub nsw i32 %99, 1
  store i32 %sub111, i32* %ifi, align 4
  %100 = load i32, i32* %jin, align 4
  %sub112 = sub nsw i32 %100, 1
  store i32 %sub112, i32* %jfi, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.103
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.89
  %101 = load i32, i32* %iin, align 4
  %102 = load i32, i32* %ifi, align 4
  %sub115 = sub nsw i32 %101, %102
  store i32 %sub115, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.114
  %103 = load i32, i32* %l, align 4
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %104 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr, i8** %gaptable1, align 8
  store i8 111, i8* %incdec.ptr, align 1
  %105 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %incdec.ptr116, i8** %gaptable2, align 8
  store i8 45, i8* %incdec.ptr116, align 1
  %106 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %106, 1
  store i32 %inc117, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %107 = load i32, i32* %jin, align 4
  %108 = load i32, i32* %jfi, align 4
  %sub118 = sub nsw i32 %107, %108
  store i32 %sub118, i32* %l, align 4
  br label %while.cond.119

while.cond.119:                                   ; preds = %while.body.122, %while.end
  %109 = load i32, i32* %l, align 4
  %dec120 = add nsw i32 %109, -1
  store i32 %dec120, i32* %l, align 4
  %tobool121 = icmp ne i32 %dec120, 0
  br i1 %tobool121, label %while.body.122, label %while.end.126

while.body.122:                                   ; preds = %while.cond.119
  %110 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr123, i8** %gaptable1, align 8
  store i8 45, i8* %incdec.ptr123, align 1
  %111 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %incdec.ptr124, i8** %gaptable2, align 8
  store i8 111, i8* %incdec.ptr124, align 1
  %112 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %112, 1
  store i32 %inc125, i32* %k, align 4
  br label %while.cond.119

while.end.126:                                    ; preds = %while.cond.119
  %113 = load i32, i32* %iin, align 4
  %114 = load i32, i32* %lgth1, align 4
  %cmp127 = icmp eq i32 %113, %114
  br i1 %cmp127, label %if.then.131, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.126
  %115 = load i32, i32* %jin, align 4
  %116 = load i32, i32* %lgth2, align 4
  %cmp129 = icmp eq i32 %115, %116
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %lor.lhs.false, %while.end.126
  br label %if.end.139

if.else.132:                                      ; preds = %lor.lhs.false
  %117 = load i32, i32* %iin, align 4
  %idxprom133 = sext i32 %117 to i64
  %118 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %118, i64 %idxprom133
  %119 = load i32, i32* %arrayidx134, align 4
  %120 = load i32, i32* %jin, align 4
  %idxprom135 = sext i32 %120 to i64
  %121 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %121, i64 %idxprom135
  %122 = load i32, i32* %arrayidx136, align 4
  %call137 = call float @imp_match_out_sc(i32 %119, i32 %122)
  %123 = load float*, float** %impwmpt.addr, align 8
  %124 = load float, float* %123, align 4
  %add138 = fadd float %124, %call137
  store float %add138, float* %123, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.132, %if.then.131
  %125 = load i32, i32* %iin, align 4
  %cmp140 = icmp sle i32 %125, 0
  br i1 %cmp140, label %if.then.145, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.139
  %126 = load i32, i32* %jin, align 4
  %cmp143 = icmp sle i32 %126, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false.142, %if.end.139
  br label %for.end.152

if.end.146:                                       ; preds = %lor.lhs.false.142
  %127 = load i8*, i8** %gaptable1, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr147, i8** %gaptable1, align 8
  store i8 45, i8* %incdec.ptr147, align 1
  %128 = load i8*, i8** %gaptable2, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %128, i32 -1
  store i8* %incdec.ptr148, i8** %gaptable2, align 8
  store i8 45, i8* %incdec.ptr148, align 1
  %129 = load i32, i32* %k, align 4
  %inc149 = add nsw i32 %129, 1
  store i32 %inc149, i32* %k, align 4
  %130 = load i32, i32* %ifi, align 4
  store i32 %130, i32* %iin, align 4
  %131 = load i32, i32* %jfi, align 4
  store i32 %131, i32* %jin, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.146
  %132 = load i32, i32* %k, align 4
  %inc151 = add nsw i32 %132, 1
  store i32 %inc151, i32* %k, align 4
  br label %for.cond.78

for.end.152:                                      ; preds = %if.then.145, %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.161, %for.end.152
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %icyc.addr, align 4
  %cmp154 = icmp slt i32 %133, %134
  br i1 %cmp154, label %for.body.156, label %for.end.163

for.body.156:                                     ; preds = %for.cond.153
  %135 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %135 to i64
  %136 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8*, i8** %136, i64 %idxprom157
  %137 = load i8*, i8** %arrayidx158, align 8
  %138 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %138 to i64
  %139 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %139, i64 %idxprom159
  %140 = load i8*, i8** %arrayidx160, align 8
  %141 = load i8*, i8** %gaptable1, align 8
  call void @gapireru(i8* %137, i8* %140, i8* %141)
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.156
  %142 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %142, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond.153

for.end.163:                                      ; preds = %for.cond.153
  store i32 0, i32* %j, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.172, %for.end.163
  %143 = load i32, i32* %j, align 4
  %144 = load i32, i32* %jcyc.addr, align 4
  %cmp165 = icmp slt i32 %143, %144
  br i1 %cmp165, label %for.body.167, label %for.end.174

for.body.167:                                     ; preds = %for.cond.164
  %145 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %145 to i64
  %146 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx169 = getelementptr inbounds i8*, i8** %146, i64 %idxprom168
  %147 = load i8*, i8** %arrayidx169, align 8
  %148 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %148 to i64
  %149 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %149, i64 %idxprom170
  %150 = load i8*, i8** %arrayidx171, align 8
  %151 = load i8*, i8** %gaptable2, align 8
  call void @gapireru(i8* %147, i8* %150, i8* %151)
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.167
  %152 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %152, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond.164

for.end.174:                                      ; preds = %for.cond.164
  %153 = load i8*, i8** %gt1bk, align 8
  call void @free(i8* %153) #4
  %154 = load i8*, i8** %gt2bk, align 8
  call void @free(i8* %154) #4
  ret void
}

; Function Attrs: nounwind uwtable
define float @translate_and_Calign(i8** %mseq1, i8** %mseq2, double* %effarr1, double* %effarr2, i32 %clus1, i32 %clus2, i32 %alloclen) #0 {
entry:
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %effarr1.addr = alloca double*, align 8
  %effarr2.addr = alloca double*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %wm = alloca float, align 4
  %result = alloca i8**, align 8
  %seq = alloca i8*, align 8
  %aseq = alloca i8**, align 8
  %effarr = alloca double*, align 8
  %nseq = alloca i32, align 4
  %resultlen = alloca i32, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store double* %effarr1, double** %effarr1.addr, align 8
  store double* %effarr2, double** %effarr2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i8* null, i8** %seq, align 8
  store i8** null, i8*** %aseq, align 8
  store double* null, double** %effarr, align 8
  store i32 0, i32* %nseq, align 4
  %0 = load i32, i32* %clus1.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %clus2.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %seq, align 8
  %4 = load i8**, i8*** %mseq2.addr, align 8
  store i8** %4, i8*** %aseq, align 8
  %5 = load double*, double** %effarr2.addr, align 8
  store double* %5, double** %effarr, align 8
  %6 = load i32, i32* %clus2.addr, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %nseq, align 4
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %clus1.addr, align 4
  %cmp2 = icmp ne i32 %7, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.else.8

land.lhs.true.3:                                  ; preds = %if.else
  %8 = load i32, i32* %clus2.addr, align 4
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %land.lhs.true.3
  %9 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx6, align 8
  store i8* %10, i8** %seq, align 8
  %11 = load i8**, i8*** %mseq1.addr, align 8
  store i8** %11, i8*** %aseq, align 8
  %12 = load double*, double** %effarr1.addr, align 8
  store double* %12, double** %effarr, align 8
  %13 = load i32, i32* %clus1.addr, align 4
  %add7 = add nsw i32 %13, 1
  store i32 %add7, i32* %nseq, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true.3, %if.else
  call void @ErrorExit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i8**, i8*** %aseq, align 8
  %15 = load i8*, i8** %seq, align 8
  %16 = load double*, double** %effarr, align 8
  %17 = load i32, i32* %nseq, align 4
  %sub = sub nsw i32 %17, 2
  %call = call i8** (float*, i8**, i8*, double*, i32, i32, ...) bitcast (i8** (...)* @Calignm1 to i8** (float*, i8**, i8*, double*, i32, i32, ...)*)(float* %wm, i8** %14, i8* %15, double* %16, i32 %sub, i32 0)
  store i8** %call, i8*** %result, align 8
  %18 = load i8**, i8*** %result, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %19) #5
  %conv = trunc i64 %call11 to i32
  store i32 %conv, i32* %resultlen, align 4
  %20 = load i32, i32* %alloclen.addr, align 4
  %21 = load i32, i32* %resultlen, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %22 = load i32, i32* %resultlen, align 4
  %cmp14 = icmp sgt i32 %22, 5000000
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i32, i32* %alloclen.addr, align 4
  %25 = load i32, i32* %resultlen, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %24, i32 %25, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %nseq, align 4
  %sub19 = sub nsw i32 %27, 1
  %cmp20 = icmp slt i32 %26, %sub19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8**, i8*** %aseq, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx22, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load i8**, i8*** %result, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %32, i64 %idxprom23
  %33 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i8* @strcpy(i8* %30, i8* %33) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %seq, align 8
  %36 = load i32, i32* %nseq, align 4
  %sub26 = sub nsw i32 %36, 1
  %idxprom27 = sext i32 %sub26 to i64
  %37 = load i8**, i8*** %result, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %37, i64 %idxprom27
  %38 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i8* @strcpy(i8* %35, i8* %38) #4
  ret float 0.000000e+00
}

declare i8** @Calignm1(...) #1

declare void @gapireru(i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
