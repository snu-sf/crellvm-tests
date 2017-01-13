; ModuleID = './MultiSource.Benchmarks.mafft/21.Qalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._RNApair = type { i32, float, i32, float, i32, float }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@impmtx = internal global float** null, align 8
@imp_match_init_strictQ.nocount1 = internal global i8* null, align 8
@imp_match_init_strictQ.nocount2 = internal global i8* null, align 8
@impalloclen = internal global i32 0, align 4
@fastathreshold = external global double, align 8
@Q__align.mi = internal global float 0.000000e+00, align 4
@Q__align.m = internal global float* null, align 8
@Q__align.ijp = internal global i32** null, align 8
@Q__align.mpi = internal global i32 0, align 4
@Q__align.mp = internal global i32* null, align 8
@Q__align.w1 = internal global float* null, align 8
@Q__align.w2 = internal global float* null, align 8
@Q__align.match = internal global float* null, align 8
@Q__align.initverticalw = internal global float* null, align 8
@Q__align.lastverticalw = internal global float* null, align 8
@Q__align.mseq1 = internal global i8** null, align 8
@Q__align.mseq2 = internal global i8** null, align 8
@Q__align.mseq = internal global i8** null, align 8
@Q__align.digf1 = internal global float* null, align 8
@Q__align.digf2 = internal global float* null, align 8
@Q__align.diaf1 = internal global float* null, align 8
@Q__align.diaf2 = internal global float* null, align 8
@Q__align.gapz1 = internal global float* null, align 8
@Q__align.gapz2 = internal global float* null, align 8
@Q__align.gapf1 = internal global float* null, align 8
@Q__align.gapf2 = internal global float* null, align 8
@Q__align.ogcp1g = internal global float* null, align 8
@Q__align.ogcp2g = internal global float* null, align 8
@Q__align.fgcp1g = internal global float* null, align 8
@Q__align.fgcp2g = internal global float* null, align 8
@Q__align.og_h_dg_n1_p = internal global float* null, align 8
@Q__align.og_h_dg_n2_p = internal global float* null, align 8
@Q__align.fg_h_dg_n1_p = internal global float* null, align 8
@Q__align.fg_h_dg_n2_p = internal global float* null, align 8
@Q__align.og_t_fg_h_dg_n1_p = internal global float* null, align 8
@Q__align.og_t_fg_h_dg_n2_p = internal global float* null, align 8
@Q__align.fg_t_og_h_dg_n1_p = internal global float* null, align 8
@Q__align.fg_t_og_h_dg_n2_p = internal global float* null, align 8
@Q__align.gapz_n1 = internal global float* null, align 8
@Q__align.gapz_n2 = internal global float* null, align 8
@Q__align.cpmx1 = internal global float** null, align 8
@Q__align.cpmx2 = internal global float** null, align 8
@Q__align.intwork = internal global i32** null, align 8
@Q__align.floatwork = internal global float** null, align 8
@Q__align.orlgth1 = internal global i32 0, align 4
@Q__align.orlgth2 = internal global i32 0, align 4
@penalty = external global i32, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@RNAscoremtx = external global i8, align 1
@outgap = external global i32, align 4
@offset = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@Q__align_gapmap.mi = internal global float 0.000000e+00, align 4
@Q__align_gapmap.m = internal global float* null, align 8
@Q__align_gapmap.ijp = internal global i32** null, align 8
@Q__align_gapmap.mpi = internal global i32 0, align 4
@Q__align_gapmap.mp = internal global i32* null, align 8
@Q__align_gapmap.w1 = internal global float* null, align 8
@Q__align_gapmap.w2 = internal global float* null, align 8
@Q__align_gapmap.match = internal global float* null, align 8
@Q__align_gapmap.initverticalw = internal global float* null, align 8
@Q__align_gapmap.lastverticalw = internal global float* null, align 8
@Q__align_gapmap.mseq1 = internal global i8** null, align 8
@Q__align_gapmap.mseq2 = internal global i8** null, align 8
@Q__align_gapmap.mseq = internal global i8** null, align 8
@Q__align_gapmap.digf1 = internal global float* null, align 8
@Q__align_gapmap.digf2 = internal global float* null, align 8
@Q__align_gapmap.diaf1 = internal global float* null, align 8
@Q__align_gapmap.diaf2 = internal global float* null, align 8
@Q__align_gapmap.gapz1 = internal global float* null, align 8
@Q__align_gapmap.gapz2 = internal global float* null, align 8
@Q__align_gapmap.gapf1 = internal global float* null, align 8
@Q__align_gapmap.gapf2 = internal global float* null, align 8
@Q__align_gapmap.ogcp1g = internal global float* null, align 8
@Q__align_gapmap.ogcp2g = internal global float* null, align 8
@Q__align_gapmap.fgcp1g = internal global float* null, align 8
@Q__align_gapmap.fgcp2g = internal global float* null, align 8
@Q__align_gapmap.og_h_dg_n1_p = internal global float* null, align 8
@Q__align_gapmap.og_h_dg_n2_p = internal global float* null, align 8
@Q__align_gapmap.fg_h_dg_n1_p = internal global float* null, align 8
@Q__align_gapmap.fg_h_dg_n2_p = internal global float* null, align 8
@Q__align_gapmap.og_t_fg_h_dg_n1_p = internal global float* null, align 8
@Q__align_gapmap.og_t_fg_h_dg_n2_p = internal global float* null, align 8
@Q__align_gapmap.fg_t_og_h_dg_n1_p = internal global float* null, align 8
@Q__align_gapmap.fg_t_og_h_dg_n2_p = internal global float* null, align 8
@Q__align_gapmap.gapz_n1 = internal global float* null, align 8
@Q__align_gapmap.gapz_n2 = internal global float* null, align 8
@Q__align_gapmap.cpmx1 = internal global float** null, align 8
@Q__align_gapmap.cpmx2 = internal global float** null, align 8
@Q__align_gapmap.intwork = internal global i32** null, align 8
@Q__align_gapmap.floatwork = internal global float** null, align 8
@Q__align_gapmap.orlgth1 = internal global i32 0, align 4
@Q__align_gapmap.orlgth2 = internal global i32 0, align 4
@n_dis_consweight_multi = external global [26 x [26 x float]], align 16
@Atracking_localhom_gapmap.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @imp_match_out_scQ(i32 %i1, i32 %j1) #0 {
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
define void @imp_rnaQ(i32 %nseq1, i32 %nseq2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._RNApair*** %grouprna1, %struct._RNApair*** %grouprna2, i32* %gapmap1, i32* %gapmap2, %struct._RNApair* %additionalpair) #0 {
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
  %additionalpair.addr = alloca %struct._RNApair*, align 8
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
  store %struct._RNApair* %additionalpair, %struct._RNApair** %additionalpair.addr, align 8
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
  %11 = load %struct._RNApair*, %struct._RNApair** %additionalpair.addr, align 8
  call void @foldrna(i32 %0, i32 %1, i8** %2, i8** %3, double* %4, double* %5, %struct._RNApair*** %6, %struct._RNApair*** %7, float** %8, i32* %9, i32* %10, %struct._RNApair* %11)
  ret void
}

declare void @foldrna(i32, i32, i8**, i8**, double*, double*, %struct._RNApair***, %struct._RNApair***, float**, i32*, i32*, %struct._RNApair*) #1

; Function Attrs: nounwind uwtable
define void @imp_match_init_strictQ(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
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
  %6 = load i8*, i8** @imp_match_init_strictQ.nocount1, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** @imp_match_init_strictQ.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** @imp_match_init_strictQ.nocount2, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8*, i8** @imp_match_init_strictQ.nocount2, align 8
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
  store i8* %call12, i8** @imp_match_init_strictQ.nocount1, align 8
  %17 = load i32, i32* @impalloclen, align 4
  %call13 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call13, i8** @imp_match_init_strictQ.nocount2, align 8
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
  %31 = load i8*, i8** @imp_match_init_strictQ.nocount1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8*, i8** @imp_match_init_strictQ.nocount1, align 8
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
  %48 = load i8*, i8** @imp_match_init_strictQ.nocount2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 1, i8* %arrayidx60, align 1
  br label %if.end.64

if.else.61:                                       ; preds = %for.end.55
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %50 = load i8*, i8** @imp_match_init_strictQ.nocount2, align 8
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
define float @Q__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %tmppenal = alloca float, align 4
  %fg_t_og_h_dg_n2_p_pt = alloca float*, align 8
  %og_t_fg_h_dg_n2_p_pt = alloca float*, align 8
  %og_h_dg_n2_p_pt = alloca float*, align 8
  %fg_h_dg_n2_p_pt = alloca float*, align 8
  %gapz_n2_pt0 = alloca float*, align 8
  %gapz_n2_pt1 = alloca float*, align 8
  %fgcp2pt = alloca float*, align 8
  %ogcp2pt = alloca float*, align 8
  %fg_t_og_h_dg_n1_p_va = alloca float, align 4
  %og_t_fg_h_dg_n1_p_va = alloca float, align 4
  %og_h_dg_n1_p_va = alloca float, align 4
  %fg_h_dg_n1_p_va = alloca float, align 4
  %gapz_n1_va0 = alloca float, align 4
  %gapz_n1_va1 = alloca float, align 4
  %fgcp1va = alloca float, align 4
  %ogcp1va = alloca float, align 4
  %kyokaipenal = alloca float, align 4
  %fpenalty = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1152 = alloca i32, align 4
  %ll2153 = alloca i32, align 4
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
  %1 = load i32, i32* @Q__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @Q__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @Q__align.mseq2, align 8
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
  %9 = load i32, i32* @Q__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @Q__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.120

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @Q__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @Q__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @Q__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @Q__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @Q__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @Q__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @Q__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @Q__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @Q__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @Q__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @Q__align.digf1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @Q__align.digf2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @Q__align.diaf1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @Q__align.diaf2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float*, float** @Q__align.gapz1, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load float*, float** @Q__align.gapz2, align 8
  call void @FreeFloatVec(float* %27)
  %28 = load float*, float** @Q__align.gapf1, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load float*, float** @Q__align.gapf2, align 8
  call void @FreeFloatVec(float* %29)
  %30 = load float*, float** @Q__align.ogcp1g, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load float*, float** @Q__align.ogcp2g, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @Q__align.fgcp1g, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @Q__align.fgcp2g, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @Q__align.og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load float*, float** @Q__align.og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %35)
  %36 = load float*, float** @Q__align.fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load float*, float** @Q__align.fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %37)
  %38 = load float*, float** @Q__align.og_t_fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %38)
  %39 = load float*, float** @Q__align.og_t_fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %39)
  %40 = load float*, float** @Q__align.fg_t_og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %40)
  %41 = load float*, float** @Q__align.fg_t_og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %41)
  %42 = load float*, float** @Q__align.gapz_n1, align 8
  call void @FreeFloatVec(float* %42)
  %43 = load float*, float** @Q__align.gapz_n2, align 8
  call void @FreeFloatVec(float* %43)
  %44 = load float**, float*** @Q__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %44)
  %45 = load float**, float*** @Q__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %45)
  %46 = load float**, float*** @Q__align.floatwork, align 8
  call void @FreeFloatMtx(float** %46)
  %47 = load i32**, i32*** @Q__align.intwork, align 8
  call void @FreeIntMtx(i32** %47)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %48 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %48 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %49 = load i32, i32* @Q__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %49
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %50 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %50 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %51 = load i32, i32* @Q__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %51, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %52 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %52 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %53 = load i32, i32* @Q__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %53
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %54 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %54 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %55 = load i32, i32* @Q__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %55, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %56 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %56, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @Q__align.w1, align 8
  %57 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %57, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @Q__align.w2, align 8
  %58 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %58, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @Q__align.match, align 8
  %59 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %59, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @Q__align.initverticalw, align 8
  %60 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %60, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @Q__align.lastverticalw, align 8
  %61 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %61, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @Q__align.m, align 8
  %62 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %62, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @Q__align.mp, align 8
  %63 = load i32, i32* @njob, align 4
  %64 = load i32, i32* %ll1, align 4
  %65 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %64, %65
  %call54 = call i8** @AllocateCharMtx(i32 %63, i32 %add53)
  store i8** %call54, i8*** @Q__align.mseq, align 8
  %66 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %66, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @Q__align.digf1, align 8
  %67 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %67, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @Q__align.digf2, align 8
  %68 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %68, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @Q__align.diaf1, align 8
  %69 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %69, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @Q__align.diaf2, align 8
  %70 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %70, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @Q__align.gapz1, align 8
  %71 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %71, 2
  %call66 = call float* @AllocateFloatVec(i32 %add65)
  store float* %call66, float** @Q__align.gapz2, align 8
  %72 = load i32, i32* %ll1, align 4
  %add67 = add nsw i32 %72, 2
  %call68 = call float* @AllocateFloatVec(i32 %add67)
  store float* %call68, float** @Q__align.gapf1, align 8
  %73 = load i32, i32* %ll2, align 4
  %add69 = add nsw i32 %73, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @Q__align.gapf2, align 8
  %74 = load i32, i32* %ll1, align 4
  %add71 = add nsw i32 %74, 2
  %call72 = call float* @AllocateFloatVec(i32 %add71)
  store float* %call72, float** @Q__align.ogcp1g, align 8
  %75 = load i32, i32* %ll2, align 4
  %add73 = add nsw i32 %75, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @Q__align.ogcp2g, align 8
  %76 = load i32, i32* %ll1, align 4
  %add75 = add nsw i32 %76, 2
  %call76 = call float* @AllocateFloatVec(i32 %add75)
  store float* %call76, float** @Q__align.fgcp1g, align 8
  %77 = load i32, i32* %ll2, align 4
  %add77 = add nsw i32 %77, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** @Q__align.fgcp2g, align 8
  %78 = load i32, i32* %ll1, align 4
  %add79 = add nsw i32 %78, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** @Q__align.og_h_dg_n1_p, align 8
  %79 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %79, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @Q__align.og_h_dg_n2_p, align 8
  %80 = load i32, i32* %ll1, align 4
  %add83 = add nsw i32 %80, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** @Q__align.fg_h_dg_n1_p, align 8
  %81 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %81, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** @Q__align.fg_h_dg_n2_p, align 8
  %82 = load i32, i32* %ll1, align 4
  %add87 = add nsw i32 %82, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** @Q__align.og_t_fg_h_dg_n1_p, align 8
  %83 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %83, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** @Q__align.og_t_fg_h_dg_n2_p, align 8
  %84 = load i32, i32* %ll1, align 4
  %add91 = add nsw i32 %84, 2
  %call92 = call float* @AllocateFloatVec(i32 %add91)
  store float* %call92, float** @Q__align.fg_t_og_h_dg_n1_p, align 8
  %85 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %85, 2
  %call94 = call float* @AllocateFloatVec(i32 %add93)
  store float* %call94, float** @Q__align.fg_t_og_h_dg_n2_p, align 8
  %86 = load i32, i32* %ll1, align 4
  %add95 = add nsw i32 %86, 2
  %call96 = call float* @AllocateFloatVec(i32 %add95)
  store float* %call96, float** @Q__align.gapz_n1, align 8
  %87 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %87, 2
  %call98 = call float* @AllocateFloatVec(i32 %add97)
  store float* %call98, float** @Q__align.gapz_n2, align 8
  %88 = load i32, i32* %ll1, align 4
  %add99 = add nsw i32 %88, 2
  %call100 = call float** @AllocateFloatMtx(i32 26, i32 %add99)
  store float** %call100, float*** @Q__align.cpmx1, align 8
  %89 = load i32, i32* %ll2, align 4
  %add101 = add nsw i32 %89, 2
  %call102 = call float** @AllocateFloatMtx(i32 26, i32 %add101)
  store float** %call102, float*** @Q__align.cpmx2, align 8
  %90 = load i32, i32* %ll1, align 4
  %91 = load i32, i32* %ll2, align 4
  %cmp103 = icmp sgt i32 %90, %91
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.end.36
  %92 = load i32, i32* %ll1, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.36
  %93 = load i32, i32* %ll2, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi i32 [ %92, %cond.true.105 ], [ %93, %cond.false.106 ]
  %add109 = add nsw i32 %cond108, 2
  %call110 = call float** @AllocateFloatMtx(i32 %add109, i32 26)
  store float** %call110, float*** @Q__align.floatwork, align 8
  %94 = load i32, i32* %ll1, align 4
  %95 = load i32, i32* %ll2, align 4
  %cmp111 = icmp sgt i32 %94, %95
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.107
  %96 = load i32, i32* %ll1, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.107
  %97 = load i32, i32* %ll2, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ %96, %cond.true.113 ], [ %97, %cond.false.114 ]
  %add117 = add nsw i32 %cond116, 2
  %call118 = call i32** @AllocateIntMtx(i32 %add117, i32 27)
  store i32** %call118, i32*** @Q__align.intwork, align 8
  %98 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %98, 100
  store i32 %sub, i32* @Q__align.orlgth1, align 4
  %99 = load i32, i32* %ll2, align 4
  %sub119 = sub nsw i32 %99, 100
  store i32 %sub119, i32* @Q__align.orlgth2, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.115, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.120
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %icyc.addr, align 4
  %cmp121 = icmp slt i32 %100, %101
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i32, i32* %i, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load i8**, i8*** @Q__align.mseq, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %103, i64 %idxprom
  %104 = load i8*, i8** %arrayidx123, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %105 to i64
  %106 = load i8**, i8*** @Q__align.mseq1, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %106, i64 %idxprom124
  store i8* %104, i8** %arrayidx125, align 8
  %107 = load i32, i32* %lgth1, align 4
  %idxprom126 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %108 to i64
  %109 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %109, i64 %idxprom127
  %110 = load i8*, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %110, i64 %idxprom126
  store i8 0, i8* %arrayidx129, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.143, %for.end
  %112 = load i32, i32* %j, align 4
  %113 = load i32, i32* %jcyc.addr, align 4
  %cmp131 = icmp slt i32 %112, %113
  br i1 %cmp131, label %for.body.133, label %for.end.145

for.body.133:                                     ; preds = %for.cond.130
  %114 = load i32, i32* %icyc.addr, align 4
  %115 = load i32, i32* %j, align 4
  %add134 = add nsw i32 %114, %115
  %idxprom135 = sext i32 %add134 to i64
  %116 = load i8**, i8*** @Q__align.mseq, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %116, i64 %idxprom135
  %117 = load i8*, i8** %arrayidx136, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %118 to i64
  %119 = load i8**, i8*** @Q__align.mseq2, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %119, i64 %idxprom137
  store i8* %117, i8** %arrayidx138, align 8
  %120 = load i32, i32* %lgth2, align 4
  %idxprom139 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %121 to i64
  %122 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %122, i64 %idxprom140
  %123 = load i8*, i8** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %123, i64 %idxprom139
  store i8 0, i8* %arrayidx142, align 1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.133
  %124 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %124, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.130

for.end.145:                                      ; preds = %for.cond.130
  %125 = load i32, i32* @Q__align.orlgth1, align 4
  %126 = load i32, i32* @commonAlloc1, align 4
  %cmp146 = icmp sgt i32 %125, %126
  br i1 %cmp146, label %if.then.151, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %for.end.145
  %127 = load i32, i32* @Q__align.orlgth2, align 4
  %128 = load i32, i32* @commonAlloc2, align 4
  %cmp149 = icmp sgt i32 %127, %128
  br i1 %cmp149, label %if.then.151, label %if.end.173

if.then.151:                                      ; preds = %lor.lhs.false.148, %for.end.145
  %129 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %129, 0
  br i1 %tobool, label %land.lhs.true.154, label %if.end.157

land.lhs.true.154:                                ; preds = %if.then.151
  %130 = load i32, i32* @commonAlloc2, align 4
  %tobool155 = icmp ne i32 %130, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %land.lhs.true.154
  %131 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %131)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %land.lhs.true.154, %if.then.151
  %132 = load i32, i32* @Q__align.orlgth1, align 4
  %133 = load i32, i32* @commonAlloc1, align 4
  %cmp158 = icmp sgt i32 %132, %133
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %if.end.157
  %134 = load i32, i32* @Q__align.orlgth1, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %if.end.157
  %135 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.160
  %cond163 = phi i32 [ %134, %cond.true.160 ], [ %135, %cond.false.161 ]
  store i32 %cond163, i32* %ll1152, align 4
  %136 = load i32, i32* @Q__align.orlgth2, align 4
  %137 = load i32, i32* @commonAlloc2, align 4
  %cmp164 = icmp sgt i32 %136, %137
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.end.162
  %138 = load i32, i32* @Q__align.orlgth2, align 4
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.162
  %139 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.166
  %cond169 = phi i32 [ %138, %cond.true.166 ], [ %139, %cond.false.167 ]
  store i32 %cond169, i32* %ll2153, align 4
  %140 = load i32, i32* %ll1152, align 4
  %add170 = add nsw i32 %140, 10
  %141 = load i32, i32* %ll2153, align 4
  %add171 = add nsw i32 %141, 10
  %call172 = call i32** @AllocateIntMtx(i32 %add170, i32 %add171)
  store i32** %call172, i32*** @commonIP, align 8
  %142 = load i32, i32* %ll1152, align 4
  store i32 %142, i32* @commonAlloc1, align 4
  %143 = load i32, i32* %ll2153, align 4
  store i32 %143, i32* @commonAlloc2, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %cond.end.168, %lor.lhs.false.148
  %144 = load i32**, i32*** @commonIP, align 8
  store i32** %144, i32*** @Q__align.ijp, align 8
  %145 = load i8**, i8*** %seq1.addr, align 8
  %146 = load float**, float*** @Q__align.cpmx1, align 8
  %147 = load double*, double** %eff1.addr, align 8
  %148 = load i32, i32* %lgth1, align 4
  %149 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %145, float** %146, double* %147, i32 %148, i32 %149)
  %150 = load i8**, i8*** %seq2.addr, align 8
  %151 = load float**, float*** @Q__align.cpmx2, align 8
  %152 = load double*, double** %eff2.addr, align 8
  %153 = load i32, i32* %lgth2, align 4
  %154 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %150, float** %151, double* %152, i32 %153, i32 %154)
  %155 = load i8*, i8** %sgap1.addr, align 8
  %tobool174 = icmp ne i8* %155, null
  br i1 %tobool174, label %if.then.175, label %if.else

if.then.175:                                      ; preds = %if.end.173
  %156 = load float*, float** @Q__align.ogcp1g, align 8
  %157 = load i32, i32* %icyc.addr, align 4
  %158 = load i8**, i8*** %seq1.addr, align 8
  %159 = load double*, double** %eff1.addr, align 8
  %160 = load i32, i32* %lgth1, align 4
  %161 = load i8*, i8** %sgap1.addr, align 8
  %162 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %156, i32 %157, i8** %158, double* %159, i32 %160, i8* %161, i8* %162)
  %163 = load float*, float** @Q__align.ogcp2g, align 8
  %164 = load i32, i32* %jcyc.addr, align 4
  %165 = load i8**, i8*** %seq2.addr, align 8
  %166 = load double*, double** %eff2.addr, align 8
  %167 = load i32, i32* %lgth2, align 4
  %168 = load i8*, i8** %sgap2.addr, align 8
  %169 = load i8*, i8** %egap2.addr, align 8
  call void @new_OpeningGapCount_zure(float* %163, i32 %164, i8** %165, double* %166, i32 %167, i8* %168, i8* %169)
  %170 = load float*, float** @Q__align.fgcp1g, align 8
  %171 = load i32, i32* %icyc.addr, align 4
  %172 = load i8**, i8*** %seq1.addr, align 8
  %173 = load double*, double** %eff1.addr, align 8
  %174 = load i32, i32* %lgth1, align 4
  %175 = load i8*, i8** %sgap1.addr, align 8
  %176 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount_zure(float* %170, i32 %171, i8** %172, double* %173, i32 %174, i8* %175, i8* %176)
  %177 = load float*, float** @Q__align.fgcp2g, align 8
  %178 = load i32, i32* %jcyc.addr, align 4
  %179 = load i8**, i8*** %seq2.addr, align 8
  %180 = load double*, double** %eff2.addr, align 8
  %181 = load i32, i32* %lgth2, align 4
  %182 = load i8*, i8** %sgap2.addr, align 8
  %183 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount_zure(float* %177, i32 %178, i8** %179, double* %180, i32 %181, i8* %182, i8* %183)
  %184 = load float*, float** @Q__align.digf1, align 8
  %185 = load i32, i32* %icyc.addr, align 4
  %186 = load i8**, i8*** %seq1.addr, align 8
  %187 = load double*, double** %eff1.addr, align 8
  %188 = load i32, i32* %lgth1, align 4
  %189 = load i8*, i8** %sgap1.addr, align 8
  %190 = load i8*, i8** %egap1.addr, align 8
  call void @getdigapfreq_part(float* %184, i32 %185, i8** %186, double* %187, i32 %188, i8* %189, i8* %190)
  %191 = load float*, float** @Q__align.digf2, align 8
  %192 = load i32, i32* %jcyc.addr, align 4
  %193 = load i8**, i8*** %seq2.addr, align 8
  %194 = load double*, double** %eff2.addr, align 8
  %195 = load i32, i32* %lgth2, align 4
  %196 = load i8*, i8** %sgap2.addr, align 8
  %197 = load i8*, i8** %egap2.addr, align 8
  call void @getdigapfreq_part(float* %191, i32 %192, i8** %193, double* %194, i32 %195, i8* %196, i8* %197)
  %198 = load float*, float** @Q__align.diaf1, align 8
  %199 = load i32, i32* %icyc.addr, align 4
  %200 = load i8**, i8*** %seq1.addr, align 8
  %201 = load double*, double** %eff1.addr, align 8
  %202 = load i32, i32* %lgth1, align 4
  %203 = load i8*, i8** %sgap1.addr, align 8
  %204 = load i8*, i8** %egap1.addr, align 8
  call void @getdiaminofreq_part(float* %198, i32 %199, i8** %200, double* %201, i32 %202, i8* %203, i8* %204)
  %205 = load float*, float** @Q__align.diaf2, align 8
  %206 = load i32, i32* %jcyc.addr, align 4
  %207 = load i8**, i8*** %seq2.addr, align 8
  %208 = load double*, double** %eff2.addr, align 8
  %209 = load i32, i32* %lgth2, align 4
  %210 = load i8*, i8** %sgap2.addr, align 8
  %211 = load i8*, i8** %egap2.addr, align 8
  call void @getdiaminofreq_part(float* %205, i32 %206, i8** %207, double* %208, i32 %209, i8* %210, i8* %211)
  %212 = load float*, float** @Q__align.gapf1, align 8
  %213 = load i32, i32* %icyc.addr, align 4
  %214 = load i8**, i8*** %seq1.addr, align 8
  %215 = load double*, double** %eff1.addr, align 8
  %216 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %212, i32 %213, i8** %214, double* %215, i32 %216)
  %217 = load float*, float** @Q__align.gapf2, align 8
  %218 = load i32, i32* %jcyc.addr, align 4
  %219 = load i8**, i8*** %seq2.addr, align 8
  %220 = load double*, double** %eff2.addr, align 8
  %221 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %217, i32 %218, i8** %219, double* %220, i32 %221)
  %222 = load float*, float** @Q__align.gapz1, align 8
  %223 = load i32, i32* %icyc.addr, align 4
  %224 = load i8**, i8*** %seq1.addr, align 8
  %225 = load double*, double** %eff1.addr, align 8
  %226 = load i32, i32* %lgth1, align 4
  %227 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %222, i32 %223, i8** %224, double* %225, i32 %226, i8* %227)
  %228 = load float*, float** @Q__align.gapz2, align 8
  %229 = load i32, i32* %jcyc.addr, align 4
  %230 = load i8**, i8*** %seq2.addr, align 8
  %231 = load double*, double** %eff2.addr, align 8
  %232 = load i32, i32* %lgth2, align 4
  %233 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %228, i32 %229, i8** %230, double* %231, i32 %232, i8* %233)
  br label %if.end.176

if.else:                                          ; preds = %if.end.173
  %234 = load float*, float** @Q__align.ogcp1g, align 8
  %235 = load i32, i32* %icyc.addr, align 4
  %236 = load i8**, i8*** %seq1.addr, align 8
  %237 = load double*, double** %eff1.addr, align 8
  %238 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %234, i32 %235, i8** %236, double* %237, i32 %238)
  %239 = load float*, float** @Q__align.ogcp2g, align 8
  %240 = load i32, i32* %jcyc.addr, align 4
  %241 = load i8**, i8*** %seq2.addr, align 8
  %242 = load double*, double** %eff2.addr, align 8
  %243 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %239, i32 %240, i8** %241, double* %242, i32 %243)
  %244 = load float*, float** @Q__align.fgcp1g, align 8
  %245 = load i32, i32* %icyc.addr, align 4
  %246 = load i8**, i8*** %seq1.addr, align 8
  %247 = load double*, double** %eff1.addr, align 8
  %248 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount_zure(float* %244, i32 %245, i8** %246, double* %247, i32 %248)
  %249 = load float*, float** @Q__align.fgcp2g, align 8
  %250 = load i32, i32* %jcyc.addr, align 4
  %251 = load i8**, i8*** %seq2.addr, align 8
  %252 = load double*, double** %eff2.addr, align 8
  %253 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount_zure(float* %249, i32 %250, i8** %251, double* %252, i32 %253)
  %254 = load float*, float** @Q__align.digf1, align 8
  %255 = load i32, i32* %icyc.addr, align 4
  %256 = load i8**, i8*** %seq1.addr, align 8
  %257 = load double*, double** %eff1.addr, align 8
  %258 = load i32, i32* %lgth1, align 4
  call void @getdigapfreq_st(float* %254, i32 %255, i8** %256, double* %257, i32 %258)
  %259 = load float*, float** @Q__align.digf2, align 8
  %260 = load i32, i32* %jcyc.addr, align 4
  %261 = load i8**, i8*** %seq2.addr, align 8
  %262 = load double*, double** %eff2.addr, align 8
  %263 = load i32, i32* %lgth2, align 4
  call void @getdigapfreq_st(float* %259, i32 %260, i8** %261, double* %262, i32 %263)
  %264 = load float*, float** @Q__align.diaf1, align 8
  %265 = load i32, i32* %icyc.addr, align 4
  %266 = load i8**, i8*** %seq1.addr, align 8
  %267 = load double*, double** %eff1.addr, align 8
  %268 = load i32, i32* %lgth1, align 4
  call void @getdiaminofreq_x(float* %264, i32 %265, i8** %266, double* %267, i32 %268)
  %269 = load float*, float** @Q__align.diaf2, align 8
  %270 = load i32, i32* %jcyc.addr, align 4
  %271 = load i8**, i8*** %seq2.addr, align 8
  %272 = load double*, double** %eff2.addr, align 8
  %273 = load i32, i32* %lgth2, align 4
  call void @getdiaminofreq_x(float* %269, i32 %270, i8** %271, double* %272, i32 %273)
  %274 = load float*, float** @Q__align.gapf1, align 8
  %275 = load i32, i32* %icyc.addr, align 4
  %276 = load i8**, i8*** %seq1.addr, align 8
  %277 = load double*, double** %eff1.addr, align 8
  %278 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %274, i32 %275, i8** %276, double* %277, i32 %278)
  %279 = load float*, float** @Q__align.gapf2, align 8
  %280 = load i32, i32* %jcyc.addr, align 4
  %281 = load i8**, i8*** %seq2.addr, align 8
  %282 = load double*, double** %eff2.addr, align 8
  %283 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %279, i32 %280, i8** %281, double* %282, i32 %283)
  %284 = load float*, float** @Q__align.gapz1, align 8
  %285 = load i32, i32* %icyc.addr, align 4
  %286 = load i8**, i8*** %seq1.addr, align 8
  %287 = load double*, double** %eff1.addr, align 8
  %288 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %284, i32 %285, i8** %286, double* %287, i32 %288)
  %289 = load float*, float** @Q__align.gapz2, align 8
  %290 = load i32, i32* %jcyc.addr, align 4
  %291 = load i8**, i8*** %seq2.addr, align 8
  %292 = load double*, double** %eff2.addr, align 8
  %293 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %289, i32 %290, i8** %291, double* %292, i32 %293)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else, %if.then.175
  %294 = load i32, i32* %lgth2, align 4
  %add177 = add nsw i32 %294, 2
  store i32 %add177, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.253, %if.end.176
  %295 = load i32, i32* %i, align 4
  %296 = load i32, i32* %lastj, align 4
  %cmp179 = icmp slt i32 %295, %296
  br i1 %cmp179, label %for.body.181, label %for.end.255

for.body.181:                                     ; preds = %for.cond.178
  %297 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %297 to i64
  %298 = load float*, float** @Q__align.ogcp2g, align 8
  %arrayidx183 = getelementptr inbounds float, float* %298, i64 %idxprom182
  %299 = load float, float* %arrayidx183, align 4
  %conv184 = fpext float %299 to double
  %sub185 = fsub double 1.000000e+00, %conv184
  %300 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %300 to i64
  %301 = load float*, float** @Q__align.digf2, align 8
  %arrayidx187 = getelementptr inbounds float, float* %301, i64 %idxprom186
  %302 = load float, float* %arrayidx187, align 4
  %conv188 = fpext float %302 to double
  %sub189 = fsub double %sub185, %conv188
  %303 = load float, float* %fpenalty, align 4
  %conv190 = fpext float %303 to double
  %mul191 = fmul double %sub189, %conv190
  %mul192 = fmul double %mul191, 5.000000e-01
  %conv193 = fptrunc double %mul192 to float
  %304 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %304 to i64
  %305 = load float*, float** @Q__align.og_h_dg_n2_p, align 8
  %arrayidx195 = getelementptr inbounds float, float* %305, i64 %idxprom194
  store float %conv193, float* %arrayidx195, align 4
  %306 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %306 to i64
  %307 = load float*, float** @Q__align.fgcp2g, align 8
  %arrayidx197 = getelementptr inbounds float, float* %307, i64 %idxprom196
  %308 = load float, float* %arrayidx197, align 4
  %conv198 = fpext float %308 to double
  %sub199 = fsub double 1.000000e+00, %conv198
  %309 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %309 to i64
  %310 = load float*, float** @Q__align.digf2, align 8
  %arrayidx201 = getelementptr inbounds float, float* %310, i64 %idxprom200
  %311 = load float, float* %arrayidx201, align 4
  %conv202 = fpext float %311 to double
  %sub203 = fsub double %sub199, %conv202
  %312 = load float, float* %fpenalty, align 4
  %conv204 = fpext float %312 to double
  %mul205 = fmul double %sub203, %conv204
  %mul206 = fmul double %mul205, 5.000000e-01
  %conv207 = fptrunc double %mul206 to float
  %313 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %313 to i64
  %314 = load float*, float** @Q__align.fg_h_dg_n2_p, align 8
  %arrayidx209 = getelementptr inbounds float, float* %314, i64 %idxprom208
  store float %conv207, float* %arrayidx209, align 4
  %315 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %315 to i64
  %316 = load float*, float** @Q__align.ogcp2g, align 8
  %arrayidx211 = getelementptr inbounds float, float* %316, i64 %idxprom210
  %317 = load float, float* %arrayidx211, align 4
  %conv212 = fpext float %317 to double
  %sub213 = fsub double 1.000000e+00, %conv212
  %318 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %318 to i64
  %319 = load float*, float** @Q__align.fgcp2g, align 8
  %arrayidx215 = getelementptr inbounds float, float* %319, i64 %idxprom214
  %320 = load float, float* %arrayidx215, align 4
  %conv216 = fpext float %320 to double
  %add217 = fadd double %sub213, %conv216
  %321 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %321 to i64
  %322 = load float*, float** @Q__align.digf2, align 8
  %arrayidx219 = getelementptr inbounds float, float* %322, i64 %idxprom218
  %323 = load float, float* %arrayidx219, align 4
  %conv220 = fpext float %323 to double
  %sub221 = fsub double %add217, %conv220
  %mul222 = fmul double %sub221, 5.000000e-01
  %324 = load float, float* %fpenalty, align 4
  %conv223 = fpext float %324 to double
  %mul224 = fmul double %mul222, %conv223
  %conv225 = fptrunc double %mul224 to float
  %325 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %325 to i64
  %326 = load float*, float** @Q__align.og_t_fg_h_dg_n2_p, align 8
  %arrayidx227 = getelementptr inbounds float, float* %326, i64 %idxprom226
  store float %conv225, float* %arrayidx227, align 4
  %327 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %327 to i64
  %328 = load float*, float** @Q__align.fgcp2g, align 8
  %arrayidx229 = getelementptr inbounds float, float* %328, i64 %idxprom228
  %329 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %329 to double
  %sub231 = fsub double 1.000000e+00, %conv230
  %330 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %330 to i64
  %331 = load float*, float** @Q__align.ogcp2g, align 8
  %arrayidx233 = getelementptr inbounds float, float* %331, i64 %idxprom232
  %332 = load float, float* %arrayidx233, align 4
  %conv234 = fpext float %332 to double
  %add235 = fadd double %sub231, %conv234
  %333 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %333 to i64
  %334 = load float*, float** @Q__align.digf2, align 8
  %arrayidx237 = getelementptr inbounds float, float* %334, i64 %idxprom236
  %335 = load float, float* %arrayidx237, align 4
  %conv238 = fpext float %335 to double
  %sub239 = fsub double %add235, %conv238
  %mul240 = fmul double %sub239, 5.000000e-01
  %336 = load float, float* %fpenalty, align 4
  %conv241 = fpext float %336 to double
  %mul242 = fmul double %mul240, %conv241
  %conv243 = fptrunc double %mul242 to float
  %337 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %337 to i64
  %338 = load float*, float** @Q__align.fg_t_og_h_dg_n2_p, align 8
  %arrayidx245 = getelementptr inbounds float, float* %338, i64 %idxprom244
  store float %conv243, float* %arrayidx245, align 4
  %339 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %339 to i64
  %340 = load float*, float** @Q__align.gapz2, align 8
  %arrayidx247 = getelementptr inbounds float, float* %340, i64 %idxprom246
  %341 = load float, float* %arrayidx247, align 4
  %conv248 = fpext float %341 to double
  %sub249 = fsub double 1.000000e+00, %conv248
  %conv250 = fptrunc double %sub249 to float
  %342 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %342 to i64
  %343 = load float*, float** @Q__align.gapz_n2, align 8
  %arrayidx252 = getelementptr inbounds float, float* %343, i64 %idxprom251
  store float %conv250, float* %arrayidx252, align 4
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.181
  %344 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %344, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.178

for.end.255:                                      ; preds = %for.cond.178
  %345 = load i32, i32* %lgth1, align 4
  %add256 = add nsw i32 %345, 2
  store i32 %add256, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.332, %for.end.255
  %346 = load i32, i32* %i, align 4
  %347 = load i32, i32* %lastj, align 4
  %cmp258 = icmp slt i32 %346, %347
  br i1 %cmp258, label %for.body.260, label %for.end.334

for.body.260:                                     ; preds = %for.cond.257
  %348 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %348 to i64
  %349 = load float*, float** @Q__align.ogcp1g, align 8
  %arrayidx262 = getelementptr inbounds float, float* %349, i64 %idxprom261
  %350 = load float, float* %arrayidx262, align 4
  %conv263 = fpext float %350 to double
  %sub264 = fsub double 1.000000e+00, %conv263
  %351 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %351 to i64
  %352 = load float*, float** @Q__align.digf1, align 8
  %arrayidx266 = getelementptr inbounds float, float* %352, i64 %idxprom265
  %353 = load float, float* %arrayidx266, align 4
  %conv267 = fpext float %353 to double
  %sub268 = fsub double %sub264, %conv267
  %354 = load float, float* %fpenalty, align 4
  %conv269 = fpext float %354 to double
  %mul270 = fmul double %sub268, %conv269
  %mul271 = fmul double %mul270, 5.000000e-01
  %conv272 = fptrunc double %mul271 to float
  %355 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %355 to i64
  %356 = load float*, float** @Q__align.og_h_dg_n1_p, align 8
  %arrayidx274 = getelementptr inbounds float, float* %356, i64 %idxprom273
  store float %conv272, float* %arrayidx274, align 4
  %357 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %357 to i64
  %358 = load float*, float** @Q__align.fgcp1g, align 8
  %arrayidx276 = getelementptr inbounds float, float* %358, i64 %idxprom275
  %359 = load float, float* %arrayidx276, align 4
  %conv277 = fpext float %359 to double
  %sub278 = fsub double 1.000000e+00, %conv277
  %360 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %360 to i64
  %361 = load float*, float** @Q__align.digf1, align 8
  %arrayidx280 = getelementptr inbounds float, float* %361, i64 %idxprom279
  %362 = load float, float* %arrayidx280, align 4
  %conv281 = fpext float %362 to double
  %sub282 = fsub double %sub278, %conv281
  %363 = load float, float* %fpenalty, align 4
  %conv283 = fpext float %363 to double
  %mul284 = fmul double %sub282, %conv283
  %mul285 = fmul double %mul284, 5.000000e-01
  %conv286 = fptrunc double %mul285 to float
  %364 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %364 to i64
  %365 = load float*, float** @Q__align.fg_h_dg_n1_p, align 8
  %arrayidx288 = getelementptr inbounds float, float* %365, i64 %idxprom287
  store float %conv286, float* %arrayidx288, align 4
  %366 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %366 to i64
  %367 = load float*, float** @Q__align.ogcp1g, align 8
  %arrayidx290 = getelementptr inbounds float, float* %367, i64 %idxprom289
  %368 = load float, float* %arrayidx290, align 4
  %conv291 = fpext float %368 to double
  %sub292 = fsub double 1.000000e+00, %conv291
  %369 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %369 to i64
  %370 = load float*, float** @Q__align.fgcp1g, align 8
  %arrayidx294 = getelementptr inbounds float, float* %370, i64 %idxprom293
  %371 = load float, float* %arrayidx294, align 4
  %conv295 = fpext float %371 to double
  %add296 = fadd double %sub292, %conv295
  %372 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %372 to i64
  %373 = load float*, float** @Q__align.digf1, align 8
  %arrayidx298 = getelementptr inbounds float, float* %373, i64 %idxprom297
  %374 = load float, float* %arrayidx298, align 4
  %conv299 = fpext float %374 to double
  %sub300 = fsub double %add296, %conv299
  %mul301 = fmul double %sub300, 5.000000e-01
  %375 = load float, float* %fpenalty, align 4
  %conv302 = fpext float %375 to double
  %mul303 = fmul double %mul301, %conv302
  %conv304 = fptrunc double %mul303 to float
  %376 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %376 to i64
  %377 = load float*, float** @Q__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx306 = getelementptr inbounds float, float* %377, i64 %idxprom305
  store float %conv304, float* %arrayidx306, align 4
  %378 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %378 to i64
  %379 = load float*, float** @Q__align.fgcp1g, align 8
  %arrayidx308 = getelementptr inbounds float, float* %379, i64 %idxprom307
  %380 = load float, float* %arrayidx308, align 4
  %conv309 = fpext float %380 to double
  %sub310 = fsub double 1.000000e+00, %conv309
  %381 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %381 to i64
  %382 = load float*, float** @Q__align.ogcp1g, align 8
  %arrayidx312 = getelementptr inbounds float, float* %382, i64 %idxprom311
  %383 = load float, float* %arrayidx312, align 4
  %conv313 = fpext float %383 to double
  %add314 = fadd double %sub310, %conv313
  %384 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %384 to i64
  %385 = load float*, float** @Q__align.digf1, align 8
  %arrayidx316 = getelementptr inbounds float, float* %385, i64 %idxprom315
  %386 = load float, float* %arrayidx316, align 4
  %conv317 = fpext float %386 to double
  %sub318 = fsub double %add314, %conv317
  %mul319 = fmul double %sub318, 5.000000e-01
  %387 = load float, float* %fpenalty, align 4
  %conv320 = fpext float %387 to double
  %mul321 = fmul double %mul319, %conv320
  %conv322 = fptrunc double %mul321 to float
  %388 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %388 to i64
  %389 = load float*, float** @Q__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx324 = getelementptr inbounds float, float* %389, i64 %idxprom323
  store float %conv322, float* %arrayidx324, align 4
  %390 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %390 to i64
  %391 = load float*, float** @Q__align.gapz1, align 8
  %arrayidx326 = getelementptr inbounds float, float* %391, i64 %idxprom325
  %392 = load float, float* %arrayidx326, align 4
  %conv327 = fpext float %392 to double
  %sub328 = fsub double 1.000000e+00, %conv327
  %conv329 = fptrunc double %sub328 to float
  %393 = load i32, i32* %i, align 4
  %idxprom330 = sext i32 %393 to i64
  %394 = load float*, float** @Q__align.gapz_n1, align 8
  %arrayidx331 = getelementptr inbounds float, float* %394, i64 %idxprom330
  store float %conv329, float* %arrayidx331, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body.260
  %395 = load i32, i32* %i, align 4
  %inc333 = add nsw i32 %395, 1
  store i32 %inc333, i32* %i, align 4
  br label %for.cond.257

for.end.334:                                      ; preds = %for.cond.257
  %396 = load float*, float** @Q__align.w1, align 8
  store float* %396, float** %currentw, align 8
  %397 = load float*, float** @Q__align.w2, align 8
  store float* %397, float** %previousw, align 8
  %398 = load i8, i8* @RNAscoremtx, align 1
  %conv335 = sext i8 %398 to i32
  %cmp336 = icmp ne i32 %conv335, 114
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %for.end.334
  %399 = load float*, float** @Q__align.initverticalw, align 8
  %400 = load float**, float*** @Q__align.cpmx2, align 8
  %401 = load float**, float*** @Q__align.cpmx1, align 8
  %402 = load i32, i32* %lgth1, align 4
  %403 = load float**, float*** @Q__align.floatwork, align 8
  %404 = load i32**, i32*** @Q__align.intwork, align 8
  call void @match_calc(float* %399, float** %400, float** %401, i32 0, i32 %402, float** %403, i32** %404, i32 1)
  br label %if.end.340

if.else.339:                                      ; preds = %for.end.334
  %405 = load float*, float** @Q__align.initverticalw, align 8
  %406 = load i32, i32* %lgth1, align 4
  call void @clearvec(float* %405, i32 %406)
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.339, %if.then.338
  %407 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool341 = icmp ne %struct._LocalHom*** %407, null
  br i1 %tobool341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.end.340
  %408 = load float*, float** @Q__align.initverticalw, align 8
  %409 = load i32, i32* %lgth1, align 4
  call void @imp_match_out_vead_tateQ(float* %408, i32 0, i32 %409)
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %if.end.340
  %410 = load i8, i8* @RNAscoremtx, align 1
  %conv344 = sext i8 %410 to i32
  %cmp345 = icmp ne i32 %conv344, 114
  br i1 %cmp345, label %if.then.347, label %if.else.348

if.then.347:                                      ; preds = %if.end.343
  %411 = load float*, float** %currentw, align 8
  %412 = load float**, float*** @Q__align.cpmx1, align 8
  %413 = load float**, float*** @Q__align.cpmx2, align 8
  %414 = load i32, i32* %lgth2, align 4
  %415 = load float**, float*** @Q__align.floatwork, align 8
  %416 = load i32**, i32*** @Q__align.intwork, align 8
  call void @match_calc(float* %411, float** %412, float** %413, i32 0, i32 %414, float** %415, i32** %416, i32 1)
  br label %if.end.349

if.else.348:                                      ; preds = %if.end.343
  %417 = load float*, float** %currentw, align 8
  %418 = load i32, i32* %lgth2, align 4
  call void @clearvec(float* %417, i32 %418)
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.348, %if.then.347
  %419 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool350 = icmp ne %struct._LocalHom*** %419, null
  br i1 %tobool350, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.end.349
  %420 = load float*, float** %currentw, align 8
  %421 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadQ(float* %420, i32 0, i32 %421)
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.351, %if.end.349
  store float 0.000000e+00, float* %kyokaipenal, align 4
  %422 = load i32, i32* @outgap, align 4
  %cmp353 = icmp eq i32 %422, 1
  br i1 %cmp353, label %if.then.355, label %if.else.418

if.then.355:                                      ; preds = %if.end.352
  store float 0.000000e+00, float* %g, align 4
  %423 = load float*, float** @Q__align.ogcp1g, align 8
  %arrayidx356 = getelementptr inbounds float, float* %423, i64 0
  %424 = load float, float* %arrayidx356, align 4
  %425 = load float*, float** @Q__align.og_h_dg_n2_p, align 8
  %arrayidx357 = getelementptr inbounds float, float* %425, i64 0
  %426 = load float, float* %arrayidx357, align 4
  %mul358 = fmul float %424, %426
  %427 = load float, float* %g, align 4
  %add359 = fadd float %427, %mul358
  store float %add359, float* %g, align 4
  %428 = load float*, float** @Q__align.ogcp2g, align 8
  %arrayidx360 = getelementptr inbounds float, float* %428, i64 0
  %429 = load float, float* %arrayidx360, align 4
  %430 = load float*, float** @Q__align.og_h_dg_n1_p, align 8
  %arrayidx361 = getelementptr inbounds float, float* %430, i64 0
  %431 = load float, float* %arrayidx361, align 4
  %mul362 = fmul float %429, %431
  %432 = load float, float* %g, align 4
  %add363 = fadd float %432, %mul362
  store float %add363, float* %g, align 4
  %433 = load float*, float** @Q__align.fgcp1g, align 8
  %arrayidx364 = getelementptr inbounds float, float* %433, i64 0
  %434 = load float, float* %arrayidx364, align 4
  %435 = load float*, float** @Q__align.fg_h_dg_n2_p, align 8
  %arrayidx365 = getelementptr inbounds float, float* %435, i64 0
  %436 = load float, float* %arrayidx365, align 4
  %mul366 = fmul float %434, %436
  %437 = load float, float* %g, align 4
  %add367 = fadd float %437, %mul366
  store float %add367, float* %g, align 4
  %438 = load float*, float** @Q__align.fgcp2g, align 8
  %arrayidx368 = getelementptr inbounds float, float* %438, i64 0
  %439 = load float, float* %arrayidx368, align 4
  %440 = load float*, float** @Q__align.fg_h_dg_n1_p, align 8
  %arrayidx369 = getelementptr inbounds float, float* %440, i64 0
  %441 = load float, float* %arrayidx369, align 4
  %mul370 = fmul float %439, %441
  %442 = load float, float* %g, align 4
  %add371 = fadd float %442, %mul370
  store float %add371, float* %g, align 4
  %443 = load float, float* %g, align 4
  store float %443, float* %kyokaipenal, align 4
  %444 = load float, float* %g, align 4
  %445 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx372 = getelementptr inbounds float, float* %445, i64 0
  %446 = load float, float* %arrayidx372, align 4
  %add373 = fadd float %446, %444
  store float %add373, float* %arrayidx372, align 4
  %447 = load float, float* %g, align 4
  %448 = load float*, float** %currentw, align 8
  %arrayidx374 = getelementptr inbounds float, float* %448, i64 0
  %449 = load float, float* %arrayidx374, align 4
  %add375 = fadd float %449, %447
  store float %add375, float* %arrayidx374, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.inc.394, %if.then.355
  %450 = load i32, i32* %i, align 4
  %451 = load i32, i32* %lgth1, align 4
  %add377 = add nsw i32 %451, 1
  %cmp378 = icmp slt i32 %450, %add377
  br i1 %cmp378, label %for.body.380, label %for.end.396

for.body.380:                                     ; preds = %for.cond.376
  %452 = load float*, float** @Q__align.gapz_n2, align 8
  %arrayidx381 = getelementptr inbounds float, float* %452, i64 0
  %453 = load float, float* %arrayidx381, align 4
  %454 = load float*, float** @Q__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx382 = getelementptr inbounds float, float* %454, i64 0
  %455 = load float, float* %arrayidx382, align 4
  %mul383 = fmul float %453, %455
  store float %mul383, float* %tmppenal, align 4
  %456 = load float, float* %tmppenal, align 4
  %457 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %457 to i64
  %458 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx385 = getelementptr inbounds float, float* %458, i64 %idxprom384
  %459 = load float, float* %arrayidx385, align 4
  %add386 = fadd float %459, %456
  store float %add386, float* %arrayidx385, align 4
  %460 = load float*, float** @Q__align.gapz_n2, align 8
  %arrayidx387 = getelementptr inbounds float, float* %460, i64 1
  %461 = load float, float* %arrayidx387, align 4
  %462 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %462 to i64
  %463 = load float*, float** @Q__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx389 = getelementptr inbounds float, float* %463, i64 %idxprom388
  %464 = load float, float* %arrayidx389, align 4
  %mul390 = fmul float %461, %464
  store float %mul390, float* %tmppenal, align 4
  %465 = load float, float* %tmppenal, align 4
  %466 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %466 to i64
  %467 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx392 = getelementptr inbounds float, float* %467, i64 %idxprom391
  %468 = load float, float* %arrayidx392, align 4
  %add393 = fadd float %468, %465
  store float %add393, float* %arrayidx392, align 4
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.body.380
  %469 = load i32, i32* %i, align 4
  %inc395 = add nsw i32 %469, 1
  store i32 %inc395, i32* %i, align 4
  br label %for.cond.376

for.end.396:                                      ; preds = %for.cond.376
  store i32 1, i32* %j, align 4
  br label %for.cond.397

for.cond.397:                                     ; preds = %for.inc.415, %for.end.396
  %470 = load i32, i32* %j, align 4
  %471 = load i32, i32* %lgth2, align 4
  %add398 = add nsw i32 %471, 1
  %cmp399 = icmp slt i32 %470, %add398
  br i1 %cmp399, label %for.body.401, label %for.end.417

for.body.401:                                     ; preds = %for.cond.397
  %472 = load float*, float** @Q__align.gapz_n1, align 8
  %arrayidx402 = getelementptr inbounds float, float* %472, i64 0
  %473 = load float, float* %arrayidx402, align 4
  %474 = load float*, float** @Q__align.og_t_fg_h_dg_n2_p, align 8
  %arrayidx403 = getelementptr inbounds float, float* %474, i64 0
  %475 = load float, float* %arrayidx403, align 4
  %mul404 = fmul float %473, %475
  store float %mul404, float* %tmppenal, align 4
  %476 = load float, float* %tmppenal, align 4
  %477 = load i32, i32* %j, align 4
  %idxprom405 = sext i32 %477 to i64
  %478 = load float*, float** %currentw, align 8
  %arrayidx406 = getelementptr inbounds float, float* %478, i64 %idxprom405
  %479 = load float, float* %arrayidx406, align 4
  %add407 = fadd float %479, %476
  store float %add407, float* %arrayidx406, align 4
  %480 = load float*, float** @Q__align.gapz_n1, align 8
  %arrayidx408 = getelementptr inbounds float, float* %480, i64 1
  %481 = load float, float* %arrayidx408, align 4
  %482 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %482 to i64
  %483 = load float*, float** @Q__align.fg_t_og_h_dg_n2_p, align 8
  %arrayidx410 = getelementptr inbounds float, float* %483, i64 %idxprom409
  %484 = load float, float* %arrayidx410, align 4
  %mul411 = fmul float %481, %484
  store float %mul411, float* %tmppenal, align 4
  %485 = load float, float* %tmppenal, align 4
  %486 = load i32, i32* %j, align 4
  %idxprom412 = sext i32 %486 to i64
  %487 = load float*, float** %currentw, align 8
  %arrayidx413 = getelementptr inbounds float, float* %487, i64 %idxprom412
  %488 = load float, float* %arrayidx413, align 4
  %add414 = fadd float %488, %485
  store float %add414, float* %arrayidx413, align 4
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.401
  %489 = load i32, i32* %j, align 4
  %inc416 = add nsw i32 %489, 1
  store i32 %inc416, i32* %j, align 4
  br label %for.cond.397

for.end.417:                                      ; preds = %for.cond.397
  br label %if.end.450

if.else.418:                                      ; preds = %if.end.352
  store i32 1, i32* %j, align 4
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.431, %if.else.418
  %490 = load i32, i32* %j, align 4
  %491 = load i32, i32* %lgth2, align 4
  %add420 = add nsw i32 %491, 1
  %cmp421 = icmp slt i32 %490, %add420
  br i1 %cmp421, label %for.body.423, label %for.end.433

for.body.423:                                     ; preds = %for.cond.419
  %492 = load i32, i32* @offset, align 4
  %493 = load i32, i32* %j, align 4
  %mul424 = mul nsw i32 %492, %493
  %conv425 = sitofp i32 %mul424 to double
  %div = fdiv double %conv425, 2.000000e+00
  %494 = load i32, i32* %j, align 4
  %idxprom426 = sext i32 %494 to i64
  %495 = load float*, float** %currentw, align 8
  %arrayidx427 = getelementptr inbounds float, float* %495, i64 %idxprom426
  %496 = load float, float* %arrayidx427, align 4
  %conv428 = fpext float %496 to double
  %sub429 = fsub double %conv428, %div
  %conv430 = fptrunc double %sub429 to float
  store float %conv430, float* %arrayidx427, align 4
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.body.423
  %497 = load i32, i32* %j, align 4
  %inc432 = add nsw i32 %497, 1
  store i32 %inc432, i32* %j, align 4
  br label %for.cond.419

for.end.433:                                      ; preds = %for.cond.419
  store i32 1, i32* %i, align 4
  br label %for.cond.434

for.cond.434:                                     ; preds = %for.inc.447, %for.end.433
  %498 = load i32, i32* %i, align 4
  %499 = load i32, i32* %lgth1, align 4
  %add435 = add nsw i32 %499, 1
  %cmp436 = icmp slt i32 %498, %add435
  br i1 %cmp436, label %for.body.438, label %for.end.449

for.body.438:                                     ; preds = %for.cond.434
  %500 = load i32, i32* @offset, align 4
  %501 = load i32, i32* %i, align 4
  %mul439 = mul nsw i32 %500, %501
  %conv440 = sitofp i32 %mul439 to double
  %div441 = fdiv double %conv440, 2.000000e+00
  %502 = load i32, i32* %i, align 4
  %idxprom442 = sext i32 %502 to i64
  %503 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx443 = getelementptr inbounds float, float* %503, i64 %idxprom442
  %504 = load float, float* %arrayidx443, align 4
  %conv444 = fpext float %504 to double
  %sub445 = fsub double %conv444, %div441
  %conv446 = fptrunc double %sub445 to float
  store float %conv446, float* %arrayidx443, align 4
  br label %for.inc.447

for.inc.447:                                      ; preds = %for.body.438
  %505 = load i32, i32* %i, align 4
  %inc448 = add nsw i32 %505, 1
  store i32 %inc448, i32* %i, align 4
  br label %for.cond.434

for.end.449:                                      ; preds = %for.cond.434
  br label %if.end.450

if.end.450:                                       ; preds = %for.end.449, %for.end.417
  %506 = load float*, float** @Q__align.m, align 8
  %arrayidx451 = getelementptr inbounds float, float* %506, i64 0
  store float 0.000000e+00, float* %arrayidx451, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.466, %if.end.450
  %507 = load i32, i32* %j, align 4
  %508 = load i32, i32* %lgth2, align 4
  %add453 = add nsw i32 %508, 1
  %cmp454 = icmp slt i32 %507, %add453
  br i1 %cmp454, label %for.body.456, label %for.end.468

for.body.456:                                     ; preds = %for.cond.452
  %509 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %509 to i64
  %510 = load i32*, i32** @Q__align.mp, align 8
  %arrayidx458 = getelementptr inbounds i32, i32* %510, i64 %idxprom457
  store i32 0, i32* %arrayidx458, align 4
  %511 = load i32, i32* %j, align 4
  %sub459 = sub nsw i32 %511, 1
  %idxprom460 = sext i32 %sub459 to i64
  %512 = load float*, float** %currentw, align 8
  %arrayidx461 = getelementptr inbounds float, float* %512, i64 %idxprom460
  %513 = load float, float* %arrayidx461, align 4
  %514 = load float, float* %fpenalty, align 4
  %mul462 = fmul float 1.000000e+04, %514
  %add463 = fadd float %513, %mul462
  %515 = load i32, i32* %j, align 4
  %idxprom464 = sext i32 %515 to i64
  %516 = load float*, float** @Q__align.m, align 8
  %arrayidx465 = getelementptr inbounds float, float* %516, i64 %idxprom464
  store float %add463, float* %arrayidx465, align 4
  br label %for.inc.466

for.inc.466:                                      ; preds = %for.body.456
  %517 = load i32, i32* %j, align 4
  %inc467 = add nsw i32 %517, 1
  store i32 %inc467, i32* %j, align 4
  br label %for.cond.452

for.end.468:                                      ; preds = %for.cond.452
  %518 = load i32, i32* %lgth2, align 4
  %cmp469 = icmp eq i32 %518, 0
  br i1 %cmp469, label %if.then.471, label %if.else.473

if.then.471:                                      ; preds = %for.end.468
  %519 = load float*, float** @Q__align.lastverticalw, align 8
  %arrayidx472 = getelementptr inbounds float, float* %519, i64 0
  store float 0.000000e+00, float* %arrayidx472, align 4
  br label %if.end.478

if.else.473:                                      ; preds = %for.end.468
  %520 = load i32, i32* %lgth2, align 4
  %sub474 = sub nsw i32 %520, 1
  %idxprom475 = sext i32 %sub474 to i64
  %521 = load float*, float** %currentw, align 8
  %arrayidx476 = getelementptr inbounds float, float* %521, i64 %idxprom475
  %522 = load float, float* %arrayidx476, align 4
  %523 = load float*, float** @Q__align.lastverticalw, align 8
  %arrayidx477 = getelementptr inbounds float, float* %523, i64 0
  store float %522, float* %arrayidx477, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.else.473, %if.then.471
  %524 = load i32, i32* @outgap, align 4
  %tobool479 = icmp ne i32 %524, 0
  br i1 %tobool479, label %if.then.480, label %if.else.482

if.then.480:                                      ; preds = %if.end.478
  %525 = load i32, i32* %lgth1, align 4
  %add481 = add nsw i32 %525, 1
  store i32 %add481, i32* %lasti, align 4
  br label %if.end.483

if.else.482:                                      ; preds = %if.end.478
  %526 = load i32, i32* %lgth1, align 4
  store i32 %526, i32* %lasti, align 4
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.482, %if.then.480
  store i32 1, i32* %i, align 4
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.600, %if.end.483
  %527 = load i32, i32* %i, align 4
  %528 = load i32, i32* %lasti, align 4
  %cmp485 = icmp slt i32 %527, %528
  br i1 %cmp485, label %for.body.487, label %for.end.602

for.body.487:                                     ; preds = %for.cond.484
  %529 = load float*, float** %previousw, align 8
  store float* %529, float** %wtmp, align 8
  %530 = load float*, float** %currentw, align 8
  store float* %530, float** %previousw, align 8
  %531 = load float*, float** %wtmp, align 8
  store float* %531, float** %currentw, align 8
  %532 = load i32, i32* %i, align 4
  %sub488 = sub nsw i32 %532, 1
  %idxprom489 = sext i32 %sub488 to i64
  %533 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx490 = getelementptr inbounds float, float* %533, i64 %idxprom489
  %534 = load float, float* %arrayidx490, align 4
  %535 = load float*, float** %previousw, align 8
  %arrayidx491 = getelementptr inbounds float, float* %535, i64 0
  store float %534, float* %arrayidx491, align 4
  %536 = load i8, i8* @RNAscoremtx, align 1
  %conv492 = sext i8 %536 to i32
  %cmp493 = icmp ne i32 %conv492, 114
  br i1 %cmp493, label %if.then.495, label %if.else.496

if.then.495:                                      ; preds = %for.body.487
  %537 = load float*, float** %currentw, align 8
  %538 = load float**, float*** @Q__align.cpmx1, align 8
  %539 = load float**, float*** @Q__align.cpmx2, align 8
  %540 = load i32, i32* %i, align 4
  %541 = load i32, i32* %lgth2, align 4
  %542 = load float**, float*** @Q__align.floatwork, align 8
  %543 = load i32**, i32*** @Q__align.intwork, align 8
  call void @match_calc(float* %537, float** %538, float** %539, i32 %540, i32 %541, float** %542, i32** %543, i32 0)
  br label %if.end.497

if.else.496:                                      ; preds = %for.body.487
  %544 = load float*, float** %currentw, align 8
  %545 = load i32, i32* %lgth2, align 4
  call void @clearvec(float* %544, i32 %545)
  br label %if.end.497

if.end.497:                                       ; preds = %if.else.496, %if.then.495
  %546 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool498 = icmp ne %struct._LocalHom*** %546, null
  br i1 %tobool498, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %if.end.497
  %547 = load float*, float** %currentw, align 8
  %548 = load i32, i32* %i, align 4
  %549 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadQ(float* %547, i32 %548, i32 %549)
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.499, %if.end.497
  %550 = load i32, i32* %i, align 4
  %idxprom501 = sext i32 %550 to i64
  %551 = load float*, float** @Q__align.initverticalw, align 8
  %arrayidx502 = getelementptr inbounds float, float* %551, i64 %idxprom501
  %552 = load float, float* %arrayidx502, align 4
  %553 = load float*, float** %currentw, align 8
  %arrayidx503 = getelementptr inbounds float, float* %553, i64 0
  store float %552, float* %arrayidx503, align 4
  store i32 0, i32* @Q__align.mpi, align 4
  %554 = load float*, float** %previousw, align 8
  %arrayidx504 = getelementptr inbounds float, float* %554, i64 0
  %555 = load float, float* %arrayidx504, align 4
  %556 = load float, float* %fpenalty, align 4
  %mul505 = fmul float 1.000000e+04, %556
  %add506 = fadd float %555, %mul505
  store float %add506, float* @Q__align.mi, align 4
  %557 = load i32, i32* %i, align 4
  %idxprom507 = sext i32 %557 to i64
  %558 = load i32**, i32*** @Q__align.ijp, align 8
  %arrayidx508 = getelementptr inbounds i32*, i32** %558, i64 %idxprom507
  %559 = load i32*, i32** %arrayidx508, align 8
  %add.ptr = getelementptr inbounds i32, i32* %559, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %560 = load float*, float** @Q__align.m, align 8
  %add.ptr509 = getelementptr inbounds float, float* %560, i64 1
  store float* %add.ptr509, float** %mjpt, align 8
  %561 = load float*, float** %previousw, align 8
  store float* %561, float** %prept, align 8
  %562 = load float*, float** %currentw, align 8
  %add.ptr510 = getelementptr inbounds float, float* %562, i64 1
  store float* %add.ptr510, float** %curpt, align 8
  %563 = load i32*, i32** @Q__align.mp, align 8
  %add.ptr511 = getelementptr inbounds i32, i32* %563, i64 1
  store i32* %add.ptr511, i32** %mpjpt, align 8
  %564 = load float*, float** @Q__align.fg_t_og_h_dg_n2_p, align 8
  %add.ptr512 = getelementptr inbounds float, float* %564, i64 1
  store float* %add.ptr512, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %565 = load float*, float** @Q__align.og_t_fg_h_dg_n2_p, align 8
  %add.ptr513 = getelementptr inbounds float, float* %565, i64 1
  store float* %add.ptr513, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %566 = load float*, float** @Q__align.og_h_dg_n2_p, align 8
  %add.ptr514 = getelementptr inbounds float, float* %566, i64 1
  store float* %add.ptr514, float** %og_h_dg_n2_p_pt, align 8
  %567 = load float*, float** @Q__align.fg_h_dg_n2_p, align 8
  %add.ptr515 = getelementptr inbounds float, float* %567, i64 1
  store float* %add.ptr515, float** %fg_h_dg_n2_p_pt, align 8
  %568 = load float*, float** @Q__align.gapz_n2, align 8
  %add.ptr516 = getelementptr inbounds float, float* %568, i64 1
  store float* %add.ptr516, float** %gapz_n2_pt0, align 8
  %569 = load float*, float** @Q__align.gapz_n2, align 8
  %add.ptr517 = getelementptr inbounds float, float* %569, i64 2
  store float* %add.ptr517, float** %gapz_n2_pt1, align 8
  %570 = load float*, float** @Q__align.fgcp2g, align 8
  %add.ptr518 = getelementptr inbounds float, float* %570, i64 1
  store float* %add.ptr518, float** %fgcp2pt, align 8
  %571 = load float*, float** @Q__align.ogcp2g, align 8
  %add.ptr519 = getelementptr inbounds float, float* %571, i64 1
  store float* %add.ptr519, float** %ogcp2pt, align 8
  %572 = load i32, i32* %i, align 4
  %idxprom520 = sext i32 %572 to i64
  %573 = load float*, float** @Q__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx521 = getelementptr inbounds float, float* %573, i64 %idxprom520
  %574 = load float, float* %arrayidx521, align 4
  store float %574, float* %fg_t_og_h_dg_n1_p_va, align 4
  %575 = load i32, i32* %i, align 4
  %idxprom522 = sext i32 %575 to i64
  %576 = load float*, float** @Q__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx523 = getelementptr inbounds float, float* %576, i64 %idxprom522
  %577 = load float, float* %arrayidx523, align 4
  store float %577, float* %og_t_fg_h_dg_n1_p_va, align 4
  %578 = load i32, i32* %i, align 4
  %idxprom524 = sext i32 %578 to i64
  %579 = load float*, float** @Q__align.og_h_dg_n1_p, align 8
  %arrayidx525 = getelementptr inbounds float, float* %579, i64 %idxprom524
  %580 = load float, float* %arrayidx525, align 4
  store float %580, float* %og_h_dg_n1_p_va, align 4
  %581 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %581 to i64
  %582 = load float*, float** @Q__align.fg_h_dg_n1_p, align 8
  %arrayidx527 = getelementptr inbounds float, float* %582, i64 %idxprom526
  %583 = load float, float* %arrayidx527, align 4
  store float %583, float* %fg_h_dg_n1_p_va, align 4
  %584 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %584 to i64
  %585 = load float*, float** @Q__align.gapz_n1, align 8
  %arrayidx529 = getelementptr inbounds float, float* %585, i64 %idxprom528
  %586 = load float, float* %arrayidx529, align 4
  store float %586, float* %gapz_n1_va0, align 4
  %587 = load i32, i32* %i, align 4
  %add530 = add nsw i32 %587, 1
  %idxprom531 = sext i32 %add530 to i64
  %588 = load float*, float** @Q__align.gapz_n1, align 8
  %arrayidx532 = getelementptr inbounds float, float* %588, i64 %idxprom531
  %589 = load float, float* %arrayidx532, align 4
  store float %589, float* %gapz_n1_va1, align 4
  %590 = load i32, i32* %i, align 4
  %idxprom533 = sext i32 %590 to i64
  %591 = load float*, float** @Q__align.fgcp1g, align 8
  %arrayidx534 = getelementptr inbounds float, float* %591, i64 %idxprom533
  %592 = load float, float* %arrayidx534, align 4
  store float %592, float* %fgcp1va, align 4
  %593 = load i32, i32* %i, align 4
  %idxprom535 = sext i32 %593 to i64
  %594 = load float*, float** @Q__align.ogcp1g, align 8
  %arrayidx536 = getelementptr inbounds float, float* %594, i64 %idxprom535
  %595 = load float, float* %arrayidx536, align 4
  store float %595, float* %ogcp1va, align 4
  %596 = load i32, i32* %lgth2, align 4
  %add537 = add nsw i32 %596, 1
  store i32 %add537, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.592, %if.end.500
  %597 = load i32, i32* %j, align 4
  %598 = load i32, i32* %lastj, align 4
  %cmp539 = icmp slt i32 %597, %598
  br i1 %cmp539, label %for.body.541, label %for.end.594

for.body.541:                                     ; preds = %for.cond.538
  %599 = load float*, float** %prept, align 8
  %600 = load float, float* %599, align 4
  store float %600, float* %wm, align 4
  %601 = load float, float* %ogcp1va, align 4
  %602 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %603 = load float, float* %602, align 4
  %mul542 = fmul float %601, %603
  store float %mul542, float* %g, align 4
  %604 = load float, float* %g, align 4
  %605 = load float, float* %wm, align 4
  %add543 = fadd float %605, %604
  store float %add543, float* %wm, align 4
  %606 = load float*, float** %ogcp2pt, align 8
  %607 = load float, float* %606, align 4
  %608 = load float, float* %og_h_dg_n1_p_va, align 4
  %mul544 = fmul float %607, %608
  store float %mul544, float* %g, align 4
  %609 = load float, float* %g, align 4
  %610 = load float, float* %wm, align 4
  %add545 = fadd float %610, %609
  store float %add545, float* %wm, align 4
  %611 = load float, float* %fgcp1va, align 4
  %612 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %613 = load float, float* %612, align 4
  %mul546 = fmul float %611, %613
  store float %mul546, float* %g, align 4
  %614 = load float, float* %g, align 4
  %615 = load float, float* %wm, align 4
  %add547 = fadd float %615, %614
  store float %add547, float* %wm, align 4
  %616 = load float*, float** %fgcp2pt, align 8
  %617 = load float, float* %616, align 4
  %618 = load float, float* %fg_h_dg_n1_p_va, align 4
  %mul548 = fmul float %617, %618
  store float %mul548, float* %g, align 4
  %619 = load float, float* %g, align 4
  %620 = load float, float* %wm, align 4
  %add549 = fadd float %620, %619
  store float %add549, float* %wm, align 4
  %621 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %621, align 4
  %622 = load float, float* %gapz_n1_va1, align 4
  %623 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %624 = load float, float* %623, align 4
  %mul550 = fmul float %622, %624
  store float %mul550, float* %tmppenal, align 4
  %625 = load float, float* @Q__align.mi, align 4
  %626 = load float, float* %tmppenal, align 4
  %add551 = fadd float %625, %626
  store float %add551, float* %g, align 4
  %627 = load float, float* %wm, align 4
  %cmp552 = fcmp ogt float %add551, %627
  br i1 %cmp552, label %if.then.554, label %if.end.557

if.then.554:                                      ; preds = %for.body.541
  %628 = load float, float* %g, align 4
  store float %628, float* %wm, align 4
  %629 = load i32, i32* %j, align 4
  %630 = load i32, i32* @Q__align.mpi, align 4
  %sub555 = sub nsw i32 %629, %630
  %sub556 = sub nsw i32 0, %sub555
  %631 = load i32*, i32** %ijppt, align 8
  store i32 %sub556, i32* %631, align 4
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.554, %for.body.541
  %632 = load float, float* %gapz_n1_va0, align 4
  %633 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %634 = load float, float* %633, align 4
  %mul558 = fmul float %632, %634
  store float %mul558, float* %tmppenal, align 4
  %635 = load float*, float** %prept, align 8
  %636 = load float, float* %635, align 4
  %637 = load float, float* %tmppenal, align 4
  %add559 = fadd float %636, %637
  store float %add559, float* %g, align 4
  %638 = load float, float* @Q__align.mi, align 4
  %cmp560 = fcmp oge float %add559, %638
  br i1 %cmp560, label %if.then.562, label %if.end.564

if.then.562:                                      ; preds = %if.end.557
  %639 = load float, float* %g, align 4
  store float %639, float* @Q__align.mi, align 4
  %640 = load i32, i32* %j, align 4
  %sub563 = sub nsw i32 %640, 1
  store i32 %sub563, i32* @Q__align.mpi, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.562, %if.end.557
  %641 = load float*, float** %gapz_n2_pt1, align 8
  %642 = load float, float* %641, align 4
  %643 = load float, float* %fg_t_og_h_dg_n1_p_va, align 4
  %mul565 = fmul float %642, %643
  store float %mul565, float* %tmppenal, align 4
  %644 = load float*, float** %mjpt, align 8
  %645 = load float, float* %644, align 4
  %646 = load float, float* %tmppenal, align 4
  %add566 = fadd float %645, %646
  store float %add566, float* %g, align 4
  %647 = load float, float* %wm, align 4
  %cmp567 = fcmp ogt float %add566, %647
  br i1 %cmp567, label %if.then.569, label %if.end.571

if.then.569:                                      ; preds = %if.end.564
  %648 = load float, float* %g, align 4
  store float %648, float* %wm, align 4
  %649 = load i32, i32* %i, align 4
  %650 = load i32*, i32** %mpjpt, align 8
  %651 = load i32, i32* %650, align 4
  %sub570 = sub nsw i32 %649, %651
  %652 = load i32*, i32** %ijppt, align 8
  store i32 %sub570, i32* %652, align 4
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.569, %if.end.564
  %653 = load float*, float** %gapz_n2_pt0, align 8
  %654 = load float, float* %653, align 4
  %655 = load float, float* %og_t_fg_h_dg_n1_p_va, align 4
  %mul572 = fmul float %654, %655
  store float %mul572, float* %tmppenal, align 4
  %656 = load float*, float** %prept, align 8
  %657 = load float, float* %656, align 4
  %658 = load float, float* %tmppenal, align 4
  %add573 = fadd float %657, %658
  store float %add573, float* %g, align 4
  %659 = load float*, float** %mjpt, align 8
  %660 = load float, float* %659, align 4
  %cmp574 = fcmp oge float %add573, %660
  br i1 %cmp574, label %if.then.576, label %if.end.578

if.then.576:                                      ; preds = %if.end.571
  %661 = load float, float* %g, align 4
  %662 = load float*, float** %mjpt, align 8
  store float %661, float* %662, align 4
  %663 = load i32, i32* %i, align 4
  %sub577 = sub nsw i32 %663, 1
  %664 = load i32*, i32** %mpjpt, align 8
  store i32 %sub577, i32* %664, align 4
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.576, %if.end.571
  %665 = load float, float* %wm, align 4
  %666 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %666, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %667 = load float, float* %666, align 4
  %add579 = fadd float %667, %665
  store float %add579, float* %666, align 4
  %668 = load i32*, i32** %ijppt, align 8
  %incdec.ptr580 = getelementptr inbounds i32, i32* %668, i32 1
  store i32* %incdec.ptr580, i32** %ijppt, align 8
  %669 = load float*, float** %mjpt, align 8
  %incdec.ptr581 = getelementptr inbounds float, float* %669, i32 1
  store float* %incdec.ptr581, float** %mjpt, align 8
  %670 = load float*, float** %prept, align 8
  %incdec.ptr582 = getelementptr inbounds float, float* %670, i32 1
  store float* %incdec.ptr582, float** %prept, align 8
  %671 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr583 = getelementptr inbounds i32, i32* %671, i32 1
  store i32* %incdec.ptr583, i32** %mpjpt, align 8
  %672 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %incdec.ptr584 = getelementptr inbounds float, float* %672, i32 1
  store float* %incdec.ptr584, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %673 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %incdec.ptr585 = getelementptr inbounds float, float* %673, i32 1
  store float* %incdec.ptr585, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %674 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %incdec.ptr586 = getelementptr inbounds float, float* %674, i32 1
  store float* %incdec.ptr586, float** %og_h_dg_n2_p_pt, align 8
  %675 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %incdec.ptr587 = getelementptr inbounds float, float* %675, i32 1
  store float* %incdec.ptr587, float** %fg_h_dg_n2_p_pt, align 8
  %676 = load float*, float** %gapz_n2_pt0, align 8
  %incdec.ptr588 = getelementptr inbounds float, float* %676, i32 1
  store float* %incdec.ptr588, float** %gapz_n2_pt0, align 8
  %677 = load float*, float** %gapz_n2_pt1, align 8
  %incdec.ptr589 = getelementptr inbounds float, float* %677, i32 1
  store float* %incdec.ptr589, float** %gapz_n2_pt1, align 8
  %678 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr590 = getelementptr inbounds float, float* %678, i32 1
  store float* %incdec.ptr590, float** %fgcp2pt, align 8
  %679 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr591 = getelementptr inbounds float, float* %679, i32 1
  store float* %incdec.ptr591, float** %ogcp2pt, align 8
  br label %for.inc.592

for.inc.592:                                      ; preds = %if.end.578
  %680 = load i32, i32* %j, align 4
  %inc593 = add nsw i32 %680, 1
  store i32 %inc593, i32* %j, align 4
  br label %for.cond.538

for.end.594:                                      ; preds = %for.cond.538
  %681 = load i32, i32* %lgth2, align 4
  %sub595 = sub nsw i32 %681, 1
  %idxprom596 = sext i32 %sub595 to i64
  %682 = load float*, float** %currentw, align 8
  %arrayidx597 = getelementptr inbounds float, float* %682, i64 %idxprom596
  %683 = load float, float* %arrayidx597, align 4
  %684 = load i32, i32* %i, align 4
  %idxprom598 = sext i32 %684 to i64
  %685 = load float*, float** @Q__align.lastverticalw, align 8
  %arrayidx599 = getelementptr inbounds float, float* %685, i64 %idxprom598
  store float %683, float* %arrayidx599, align 4
  br label %for.inc.600

for.inc.600:                                      ; preds = %for.end.594
  %686 = load i32, i32* %i, align 4
  %inc601 = add nsw i32 %686, 1
  store i32 %inc601, i32* %i, align 4
  br label %for.cond.484

for.end.602:                                      ; preds = %for.cond.484
  %687 = load i32, i32* @outgap, align 4
  %tobool603 = icmp ne i32 %687, 0
  br i1 %tobool603, label %if.end.641, label %if.then.604

if.then.604:                                      ; preds = %for.end.602
  store i32 1, i32* %j, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.619, %if.then.604
  %688 = load i32, i32* %j, align 4
  %689 = load i32, i32* %lgth2, align 4
  %add606 = add nsw i32 %689, 1
  %cmp607 = icmp slt i32 %688, %add606
  br i1 %cmp607, label %for.body.609, label %for.end.621

for.body.609:                                     ; preds = %for.cond.605
  %690 = load i32, i32* @offset, align 4
  %691 = load i32, i32* %lgth2, align 4
  %692 = load i32, i32* %j, align 4
  %sub610 = sub nsw i32 %691, %692
  %mul611 = mul nsw i32 %690, %sub610
  %conv612 = sitofp i32 %mul611 to double
  %div613 = fdiv double %conv612, 2.000000e+00
  %693 = load i32, i32* %j, align 4
  %idxprom614 = sext i32 %693 to i64
  %694 = load float*, float** %currentw, align 8
  %arrayidx615 = getelementptr inbounds float, float* %694, i64 %idxprom614
  %695 = load float, float* %arrayidx615, align 4
  %conv616 = fpext float %695 to double
  %sub617 = fsub double %conv616, %div613
  %conv618 = fptrunc double %sub617 to float
  store float %conv618, float* %arrayidx615, align 4
  br label %for.inc.619

for.inc.619:                                      ; preds = %for.body.609
  %696 = load i32, i32* %j, align 4
  %inc620 = add nsw i32 %696, 1
  store i32 %inc620, i32* %j, align 4
  br label %for.cond.605

for.end.621:                                      ; preds = %for.cond.605
  store i32 1, i32* %i, align 4
  br label %for.cond.622

for.cond.622:                                     ; preds = %for.inc.638, %for.end.621
  %697 = load i32, i32* %i, align 4
  %698 = load i32, i32* %lgth1, align 4
  %add623 = add nsw i32 %698, 1
  %cmp624 = icmp slt i32 %697, %add623
  br i1 %cmp624, label %for.body.626, label %for.end.640

for.body.626:                                     ; preds = %for.cond.622
  %699 = load i32, i32* @offset, align 4
  %conv627 = sitofp i32 %699 to double
  %700 = load i32, i32* %lgth1, align 4
  %conv628 = sitofp i32 %700 to double
  %701 = load i32, i32* %i, align 4
  %conv629 = sitofp i32 %701 to double
  %div630 = fdiv double %conv629, 2.000000e+00
  %sub631 = fsub double %conv628, %div630
  %mul632 = fmul double %conv627, %sub631
  %702 = load i32, i32* %i, align 4
  %idxprom633 = sext i32 %702 to i64
  %703 = load float*, float** @Q__align.lastverticalw, align 8
  %arrayidx634 = getelementptr inbounds float, float* %703, i64 %idxprom633
  %704 = load float, float* %arrayidx634, align 4
  %conv635 = fpext float %704 to double
  %sub636 = fsub double %conv635, %mul632
  %conv637 = fptrunc double %sub636 to float
  store float %conv637, float* %arrayidx634, align 4
  br label %for.inc.638

for.inc.638:                                      ; preds = %for.body.626
  %705 = load i32, i32* %i, align 4
  %inc639 = add nsw i32 %705, 1
  store i32 %inc639, i32* %i, align 4
  br label %for.cond.622

for.end.640:                                      ; preds = %for.cond.622
  br label %if.end.641

if.end.641:                                       ; preds = %for.end.640, %for.end.602
  %706 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool642 = icmp ne %struct._LocalHom*** %706, null
  br i1 %tobool642, label %if.then.643, label %if.else.644

if.then.643:                                      ; preds = %if.end.641
  %707 = load float*, float** %impmatch.addr, align 8
  %708 = load float*, float** %currentw, align 8
  %709 = load float*, float** @Q__align.lastverticalw, align 8
  %710 = load i8**, i8*** %seq1.addr, align 8
  %711 = load i8**, i8*** %seq2.addr, align 8
  %712 = load i8**, i8*** @Q__align.mseq1, align 8
  %713 = load i8**, i8*** @Q__align.mseq2, align 8
  %714 = load float**, float*** @Q__align.cpmx1, align 8
  %715 = load float**, float*** @Q__align.cpmx2, align 8
  %716 = load i32**, i32*** @Q__align.ijp, align 8
  %717 = load i32, i32* %icyc.addr, align 4
  %718 = load i32, i32* %jcyc.addr, align 4
  call void @Atracking_localhom(float* %707, float* %708, float* %709, i8** %710, i8** %711, i8** %712, i8** %713, float** %714, float** %715, i32** %716, i32 %717, i32 %718)
  br label %if.end.646

if.else.644:                                      ; preds = %if.end.641
  %719 = load float*, float** %currentw, align 8
  %720 = load float*, float** @Q__align.lastverticalw, align 8
  %721 = load i8**, i8*** %seq1.addr, align 8
  %722 = load i8**, i8*** %seq2.addr, align 8
  %723 = load i8**, i8*** @Q__align.mseq1, align 8
  %724 = load i8**, i8*** @Q__align.mseq2, align 8
  %725 = load float**, float*** @Q__align.cpmx1, align 8
  %726 = load float**, float*** @Q__align.cpmx2, align 8
  %727 = load i32**, i32*** @Q__align.ijp, align 8
  %728 = load i32, i32* %icyc.addr, align 4
  %729 = load i32, i32* %jcyc.addr, align 4
  %call645 = call float @Atracking(float* %719, float* %720, i8** %721, i8** %722, i8** %723, i8** %724, float** %725, float** %726, i32** %727, i32 %728, i32 %729)
  br label %if.end.646

if.end.646:                                       ; preds = %if.else.644, %if.then.643
  %730 = load i8**, i8*** @Q__align.mseq1, align 8
  %arrayidx647 = getelementptr inbounds i8*, i8** %730, i64 0
  %731 = load i8*, i8** %arrayidx647, align 8
  %call648 = call i64 @strlen(i8* %731) #5
  %conv649 = trunc i64 %call648 to i32
  store i32 %conv649, i32* %resultlen, align 4
  %732 = load i32, i32* %alloclen.addr, align 4
  %733 = load i32, i32* %resultlen, align 4
  %cmp650 = icmp slt i32 %732, %733
  br i1 %cmp650, label %if.then.655, label %lor.lhs.false.652

lor.lhs.false.652:                                ; preds = %if.end.646
  %734 = load i32, i32* %resultlen, align 4
  %cmp653 = icmp sgt i32 %734, 5000000
  br i1 %cmp653, label %if.then.655, label %if.end.657

if.then.655:                                      ; preds = %lor.lhs.false.652, %if.end.646
  %735 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %736 = load i32, i32* %alloclen.addr, align 4
  %737 = load i32, i32* %resultlen, align 4
  %call656 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %735, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %736, i32 %737, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.655, %lor.lhs.false.652
  store i32 0, i32* %i, align 4
  br label %for.cond.658

for.cond.658:                                     ; preds = %for.inc.667, %if.end.657
  %738 = load i32, i32* %i, align 4
  %739 = load i32, i32* %icyc.addr, align 4
  %cmp659 = icmp slt i32 %738, %739
  br i1 %cmp659, label %for.body.661, label %for.end.669

for.body.661:                                     ; preds = %for.cond.658
  %740 = load i32, i32* %i, align 4
  %idxprom662 = sext i32 %740 to i64
  %741 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx663 = getelementptr inbounds i8*, i8** %741, i64 %idxprom662
  %742 = load i8*, i8** %arrayidx663, align 8
  %743 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %743 to i64
  %744 = load i8**, i8*** @Q__align.mseq1, align 8
  %arrayidx665 = getelementptr inbounds i8*, i8** %744, i64 %idxprom664
  %745 = load i8*, i8** %arrayidx665, align 8
  %call666 = call i8* @strcpy(i8* %742, i8* %745) #4
  br label %for.inc.667

for.inc.667:                                      ; preds = %for.body.661
  %746 = load i32, i32* %i, align 4
  %inc668 = add nsw i32 %746, 1
  store i32 %inc668, i32* %i, align 4
  br label %for.cond.658

for.end.669:                                      ; preds = %for.cond.658
  store i32 0, i32* %j, align 4
  br label %for.cond.670

for.cond.670:                                     ; preds = %for.inc.679, %for.end.669
  %747 = load i32, i32* %j, align 4
  %748 = load i32, i32* %jcyc.addr, align 4
  %cmp671 = icmp slt i32 %747, %748
  br i1 %cmp671, label %for.body.673, label %for.end.681

for.body.673:                                     ; preds = %for.cond.670
  %749 = load i32, i32* %j, align 4
  %idxprom674 = sext i32 %749 to i64
  %750 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx675 = getelementptr inbounds i8*, i8** %750, i64 %idxprom674
  %751 = load i8*, i8** %arrayidx675, align 8
  %752 = load i32, i32* %j, align 4
  %idxprom676 = sext i32 %752 to i64
  %753 = load i8**, i8*** @Q__align.mseq2, align 8
  %arrayidx677 = getelementptr inbounds i8*, i8** %753, i64 %idxprom676
  %754 = load i8*, i8** %arrayidx677, align 8
  %call678 = call i8* @strcpy(i8* %751, i8* %754) #4
  br label %for.inc.679

for.inc.679:                                      ; preds = %for.body.673
  %755 = load i32, i32* %j, align 4
  %inc680 = add nsw i32 %755, 1
  store i32 %inc680, i32* %j, align 4
  br label %for.cond.670

for.end.681:                                      ; preds = %for.cond.670
  %756 = load float, float* %wm, align 4
  ret float %756
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

declare void @new_OpeningGapCount_zure(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @new_FinalGapCount_zure(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getdigapfreq_part(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getdiaminofreq_part(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getgapfreq(float*, i32, i8**, double*, i32) #1

declare void @getgapfreq_zure_part(float*, i32, i8**, double*, i32, i8*) #1

declare void @st_OpeningGapCount(float*, i32, i8**, double*, i32) #1

declare void @st_FinalGapCount_zure(float*, i32, i8**, double*, i32) #1

declare void @getdigapfreq_st(float*, i32, i8**, double*, i32) #1

declare void @getdiaminofreq_x(float*, i32, i8**, double*, i32) #1

declare void @getgapfreq_zure(float*, i32, i8**, double*, i32) #1

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
define internal void @clearvec(float* %match, i32 %lgth) #0 {
entry:
  %match.addr = alloca float*, align 8
  %lgth.addr = alloca i32, align 4
  store float* %match, float** %match.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %lgth.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %lgth.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float*, float** %match.addr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %1, i32 1
  store float* %incdec.ptr, float** %match.addr, align 8
  store float 0.000000e+00, float* %1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_tateQ(float* %imp, i32 %j1, i32 %lgth1) #0 {
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
define internal void @imp_match_out_veadQ(float* %imp, i32 %i1, i32 %lgth2) #0 {
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
  %call133 = call float @imp_match_out_scQ(i32 %117, i32 %118)
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
define float @Q__align_gapmap(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2, i32* %gapmap1, i32* %gapmap2) #0 {
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
  %tmppenal = alloca float, align 4
  %fg_t_og_h_dg_n2_p_pt = alloca float*, align 8
  %og_t_fg_h_dg_n2_p_pt = alloca float*, align 8
  %og_h_dg_n2_p_pt = alloca float*, align 8
  %fg_h_dg_n2_p_pt = alloca float*, align 8
  %gapz_n2_pt0 = alloca float*, align 8
  %gapz_n2_pt1 = alloca float*, align 8
  %fgcp2pt = alloca float*, align 8
  %ogcp2pt = alloca float*, align 8
  %fg_t_og_h_dg_n1_p_va = alloca float, align 4
  %og_t_fg_h_dg_n1_p_va = alloca float, align 4
  %og_h_dg_n1_p_va = alloca float, align 4
  %fg_h_dg_n1_p_va = alloca float, align 4
  %gapz_n1_va0 = alloca float, align 4
  %gapz_n1_va1 = alloca float, align 4
  %fgcp1va = alloca float, align 4
  %ogcp1va = alloca float, align 4
  %kyokaipenal = alloca float, align 4
  %fpenalty = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1152 = alloca i32, align 4
  %ll2153 = alloca i32, align 4
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
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @Q__align_gapmap.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @Q__align_gapmap.mseq2, align 8
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
  %9 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.120

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @Q__align_gapmap.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @Q__align_gapmap.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @Q__align_gapmap.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @Q__align_gapmap.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @Q__align_gapmap.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @Q__align_gapmap.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @Q__align_gapmap.digf1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @Q__align_gapmap.digf2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @Q__align_gapmap.diaf1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @Q__align_gapmap.diaf2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float*, float** @Q__align_gapmap.gapz1, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load float*, float** @Q__align_gapmap.gapz2, align 8
  call void @FreeFloatVec(float* %27)
  %28 = load float*, float** @Q__align_gapmap.gapf1, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load float*, float** @Q__align_gapmap.gapf2, align 8
  call void @FreeFloatVec(float* %29)
  %30 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @Q__align_gapmap.og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load float*, float** @Q__align_gapmap.og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %35)
  %36 = load float*, float** @Q__align_gapmap.fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load float*, float** @Q__align_gapmap.fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %37)
  %38 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %38)
  %39 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %39)
  %40 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %40)
  %41 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %41)
  %42 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  call void @FreeFloatVec(float* %42)
  %43 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  call void @FreeFloatVec(float* %43)
  %44 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  call void @FreeFloatMtx(float** %44)
  %45 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  call void @FreeFloatMtx(float** %45)
  %46 = load float**, float*** @Q__align_gapmap.floatwork, align 8
  call void @FreeFloatMtx(float** %46)
  %47 = load i32**, i32*** @Q__align_gapmap.intwork, align 8
  call void @FreeIntMtx(i32** %47)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %48 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %48 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %49 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %49
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %50 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %50 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %51 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %51, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %52 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %52 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %53 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %53
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %54 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %54 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %55 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %55, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %56 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %56, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @Q__align_gapmap.w1, align 8
  %57 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %57, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @Q__align_gapmap.w2, align 8
  %58 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %58, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @Q__align_gapmap.match, align 8
  %59 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %59, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @Q__align_gapmap.initverticalw, align 8
  %60 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %60, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @Q__align_gapmap.lastverticalw, align 8
  %61 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %61, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @Q__align_gapmap.m, align 8
  %62 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %62, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @Q__align_gapmap.mp, align 8
  %63 = load i32, i32* @njob, align 4
  %64 = load i32, i32* %ll1, align 4
  %65 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %64, %65
  %call54 = call i8** @AllocateCharMtx(i32 %63, i32 %add53)
  store i8** %call54, i8*** @Q__align_gapmap.mseq, align 8
  %66 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %66, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @Q__align_gapmap.digf1, align 8
  %67 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %67, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @Q__align_gapmap.digf2, align 8
  %68 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %68, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @Q__align_gapmap.diaf1, align 8
  %69 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %69, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @Q__align_gapmap.diaf2, align 8
  %70 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %70, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @Q__align_gapmap.gapz1, align 8
  %71 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %71, 2
  %call66 = call float* @AllocateFloatVec(i32 %add65)
  store float* %call66, float** @Q__align_gapmap.gapz2, align 8
  %72 = load i32, i32* %ll1, align 4
  %add67 = add nsw i32 %72, 2
  %call68 = call float* @AllocateFloatVec(i32 %add67)
  store float* %call68, float** @Q__align_gapmap.gapf1, align 8
  %73 = load i32, i32* %ll2, align 4
  %add69 = add nsw i32 %73, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @Q__align_gapmap.gapf2, align 8
  %74 = load i32, i32* %ll1, align 4
  %add71 = add nsw i32 %74, 2
  %call72 = call float* @AllocateFloatVec(i32 %add71)
  store float* %call72, float** @Q__align_gapmap.ogcp1g, align 8
  %75 = load i32, i32* %ll2, align 4
  %add73 = add nsw i32 %75, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @Q__align_gapmap.ogcp2g, align 8
  %76 = load i32, i32* %ll1, align 4
  %add75 = add nsw i32 %76, 2
  %call76 = call float* @AllocateFloatVec(i32 %add75)
  store float* %call76, float** @Q__align_gapmap.fgcp1g, align 8
  %77 = load i32, i32* %ll2, align 4
  %add77 = add nsw i32 %77, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** @Q__align_gapmap.fgcp2g, align 8
  %78 = load i32, i32* %ll1, align 4
  %add79 = add nsw i32 %78, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** @Q__align_gapmap.og_h_dg_n1_p, align 8
  %79 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %79, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @Q__align_gapmap.og_h_dg_n2_p, align 8
  %80 = load i32, i32* %ll1, align 4
  %add83 = add nsw i32 %80, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** @Q__align_gapmap.fg_h_dg_n1_p, align 8
  %81 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %81, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** @Q__align_gapmap.fg_h_dg_n2_p, align 8
  %82 = load i32, i32* %ll1, align 4
  %add87 = add nsw i32 %82, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8
  %83 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %83, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8
  %84 = load i32, i32* %ll1, align 4
  %add91 = add nsw i32 %84, 2
  %call92 = call float* @AllocateFloatVec(i32 %add91)
  store float* %call92, float** @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8
  %85 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %85, 2
  %call94 = call float* @AllocateFloatVec(i32 %add93)
  store float* %call94, float** @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8
  %86 = load i32, i32* %ll1, align 4
  %add95 = add nsw i32 %86, 2
  %call96 = call float* @AllocateFloatVec(i32 %add95)
  store float* %call96, float** @Q__align_gapmap.gapz_n1, align 8
  %87 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %87, 2
  %call98 = call float* @AllocateFloatVec(i32 %add97)
  store float* %call98, float** @Q__align_gapmap.gapz_n2, align 8
  %88 = load i32, i32* %ll1, align 4
  %add99 = add nsw i32 %88, 2
  %call100 = call float** @AllocateFloatMtx(i32 26, i32 %add99)
  store float** %call100, float*** @Q__align_gapmap.cpmx1, align 8
  %89 = load i32, i32* %ll2, align 4
  %add101 = add nsw i32 %89, 2
  %call102 = call float** @AllocateFloatMtx(i32 26, i32 %add101)
  store float** %call102, float*** @Q__align_gapmap.cpmx2, align 8
  %90 = load i32, i32* %ll1, align 4
  %91 = load i32, i32* %ll2, align 4
  %cmp103 = icmp sgt i32 %90, %91
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.end.36
  %92 = load i32, i32* %ll1, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.36
  %93 = load i32, i32* %ll2, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi i32 [ %92, %cond.true.105 ], [ %93, %cond.false.106 ]
  %add109 = add nsw i32 %cond108, 2
  %call110 = call float** @AllocateFloatMtx(i32 %add109, i32 26)
  store float** %call110, float*** @Q__align_gapmap.floatwork, align 8
  %94 = load i32, i32* %ll1, align 4
  %95 = load i32, i32* %ll2, align 4
  %cmp111 = icmp sgt i32 %94, %95
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.107
  %96 = load i32, i32* %ll1, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.107
  %97 = load i32, i32* %ll2, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ %96, %cond.true.113 ], [ %97, %cond.false.114 ]
  %add117 = add nsw i32 %cond116, 2
  %call118 = call i32** @AllocateIntMtx(i32 %add117, i32 27)
  store i32** %call118, i32*** @Q__align_gapmap.intwork, align 8
  %98 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %98, 100
  store i32 %sub, i32* @Q__align_gapmap.orlgth1, align 4
  %99 = load i32, i32* %ll2, align 4
  %sub119 = sub nsw i32 %99, 100
  store i32 %sub119, i32* @Q__align_gapmap.orlgth2, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.115, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.120
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %icyc.addr, align 4
  %cmp121 = icmp slt i32 %100, %101
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i32, i32* %i, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load i8**, i8*** @Q__align_gapmap.mseq, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %103, i64 %idxprom
  %104 = load i8*, i8** %arrayidx123, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %105 to i64
  %106 = load i8**, i8*** @Q__align_gapmap.mseq1, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %106, i64 %idxprom124
  store i8* %104, i8** %arrayidx125, align 8
  %107 = load i32, i32* %lgth1, align 4
  %idxprom126 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %108 to i64
  %109 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %109, i64 %idxprom127
  %110 = load i8*, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %110, i64 %idxprom126
  store i8 0, i8* %arrayidx129, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.143, %for.end
  %112 = load i32, i32* %j, align 4
  %113 = load i32, i32* %jcyc.addr, align 4
  %cmp131 = icmp slt i32 %112, %113
  br i1 %cmp131, label %for.body.133, label %for.end.145

for.body.133:                                     ; preds = %for.cond.130
  %114 = load i32, i32* %icyc.addr, align 4
  %115 = load i32, i32* %j, align 4
  %add134 = add nsw i32 %114, %115
  %idxprom135 = sext i32 %add134 to i64
  %116 = load i8**, i8*** @Q__align_gapmap.mseq, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %116, i64 %idxprom135
  %117 = load i8*, i8** %arrayidx136, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %118 to i64
  %119 = load i8**, i8*** @Q__align_gapmap.mseq2, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %119, i64 %idxprom137
  store i8* %117, i8** %arrayidx138, align 8
  %120 = load i32, i32* %lgth2, align 4
  %idxprom139 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %121 to i64
  %122 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %122, i64 %idxprom140
  %123 = load i8*, i8** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %123, i64 %idxprom139
  store i8 0, i8* %arrayidx142, align 1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.133
  %124 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %124, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.130

for.end.145:                                      ; preds = %for.cond.130
  %125 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %126 = load i32, i32* @commonAlloc1, align 4
  %cmp146 = icmp sgt i32 %125, %126
  br i1 %cmp146, label %if.then.151, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %for.end.145
  %127 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  %128 = load i32, i32* @commonAlloc2, align 4
  %cmp149 = icmp sgt i32 %127, %128
  br i1 %cmp149, label %if.then.151, label %if.end.173

if.then.151:                                      ; preds = %lor.lhs.false.148, %for.end.145
  %129 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %129, 0
  br i1 %tobool, label %land.lhs.true.154, label %if.end.157

land.lhs.true.154:                                ; preds = %if.then.151
  %130 = load i32, i32* @commonAlloc2, align 4
  %tobool155 = icmp ne i32 %130, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %land.lhs.true.154
  %131 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %131)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %land.lhs.true.154, %if.then.151
  %132 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  %133 = load i32, i32* @commonAlloc1, align 4
  %cmp158 = icmp sgt i32 %132, %133
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %if.end.157
  %134 = load i32, i32* @Q__align_gapmap.orlgth1, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %if.end.157
  %135 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.160
  %cond163 = phi i32 [ %134, %cond.true.160 ], [ %135, %cond.false.161 ]
  store i32 %cond163, i32* %ll1152, align 4
  %136 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  %137 = load i32, i32* @commonAlloc2, align 4
  %cmp164 = icmp sgt i32 %136, %137
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.end.162
  %138 = load i32, i32* @Q__align_gapmap.orlgth2, align 4
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.162
  %139 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.166
  %cond169 = phi i32 [ %138, %cond.true.166 ], [ %139, %cond.false.167 ]
  store i32 %cond169, i32* %ll2153, align 4
  %140 = load i32, i32* %ll1152, align 4
  %add170 = add nsw i32 %140, 10
  %141 = load i32, i32* %ll2153, align 4
  %add171 = add nsw i32 %141, 10
  %call172 = call i32** @AllocateIntMtx(i32 %add170, i32 %add171)
  store i32** %call172, i32*** @commonIP, align 8
  %142 = load i32, i32* %ll1152, align 4
  store i32 %142, i32* @commonAlloc1, align 4
  %143 = load i32, i32* %ll2153, align 4
  store i32 %143, i32* @commonAlloc2, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %cond.end.168, %lor.lhs.false.148
  %144 = load i32**, i32*** @commonIP, align 8
  store i32** %144, i32*** @Q__align_gapmap.ijp, align 8
  %145 = load i8**, i8*** %seq1.addr, align 8
  %146 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %147 = load double*, double** %eff1.addr, align 8
  %148 = load i32, i32* %lgth1, align 4
  %149 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %145, float** %146, double* %147, i32 %148, i32 %149)
  %150 = load i8**, i8*** %seq2.addr, align 8
  %151 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %152 = load double*, double** %eff2.addr, align 8
  %153 = load i32, i32* %lgth2, align 4
  %154 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %150, float** %151, double* %152, i32 %153, i32 %154)
  %155 = load i8*, i8** %sgap1.addr, align 8
  %tobool174 = icmp ne i8* %155, null
  br i1 %tobool174, label %if.then.175, label %if.else

if.then.175:                                      ; preds = %if.end.173
  %156 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %157 = load i32, i32* %icyc.addr, align 4
  %158 = load i8**, i8*** %seq1.addr, align 8
  %159 = load double*, double** %eff1.addr, align 8
  %160 = load i32, i32* %lgth1, align 4
  %161 = load i8*, i8** %sgap1.addr, align 8
  %162 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %156, i32 %157, i8** %158, double* %159, i32 %160, i8* %161, i8* %162)
  %163 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %164 = load i32, i32* %jcyc.addr, align 4
  %165 = load i8**, i8*** %seq2.addr, align 8
  %166 = load double*, double** %eff2.addr, align 8
  %167 = load i32, i32* %lgth2, align 4
  %168 = load i8*, i8** %sgap2.addr, align 8
  %169 = load i8*, i8** %egap2.addr, align 8
  call void @new_OpeningGapCount_zure(float* %163, i32 %164, i8** %165, double* %166, i32 %167, i8* %168, i8* %169)
  %170 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %171 = load i32, i32* %icyc.addr, align 4
  %172 = load i8**, i8*** %seq1.addr, align 8
  %173 = load double*, double** %eff1.addr, align 8
  %174 = load i32, i32* %lgth1, align 4
  %175 = load i8*, i8** %sgap1.addr, align 8
  %176 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount_zure(float* %170, i32 %171, i8** %172, double* %173, i32 %174, i8* %175, i8* %176)
  %177 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %178 = load i32, i32* %jcyc.addr, align 4
  %179 = load i8**, i8*** %seq2.addr, align 8
  %180 = load double*, double** %eff2.addr, align 8
  %181 = load i32, i32* %lgth2, align 4
  %182 = load i8*, i8** %sgap2.addr, align 8
  %183 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount_zure(float* %177, i32 %178, i8** %179, double* %180, i32 %181, i8* %182, i8* %183)
  %184 = load float*, float** @Q__align_gapmap.digf1, align 8
  %185 = load i32, i32* %icyc.addr, align 4
  %186 = load i8**, i8*** %seq1.addr, align 8
  %187 = load double*, double** %eff1.addr, align 8
  %188 = load i32, i32* %lgth1, align 4
  %189 = load i8*, i8** %sgap1.addr, align 8
  %190 = load i8*, i8** %egap1.addr, align 8
  call void @getdigapfreq_part(float* %184, i32 %185, i8** %186, double* %187, i32 %188, i8* %189, i8* %190)
  %191 = load float*, float** @Q__align_gapmap.digf2, align 8
  %192 = load i32, i32* %jcyc.addr, align 4
  %193 = load i8**, i8*** %seq2.addr, align 8
  %194 = load double*, double** %eff2.addr, align 8
  %195 = load i32, i32* %lgth2, align 4
  %196 = load i8*, i8** %sgap2.addr, align 8
  %197 = load i8*, i8** %egap2.addr, align 8
  call void @getdigapfreq_part(float* %191, i32 %192, i8** %193, double* %194, i32 %195, i8* %196, i8* %197)
  %198 = load float*, float** @Q__align_gapmap.diaf1, align 8
  %199 = load i32, i32* %icyc.addr, align 4
  %200 = load i8**, i8*** %seq1.addr, align 8
  %201 = load double*, double** %eff1.addr, align 8
  %202 = load i32, i32* %lgth1, align 4
  %203 = load i8*, i8** %sgap1.addr, align 8
  %204 = load i8*, i8** %egap1.addr, align 8
  call void @getdiaminofreq_part(float* %198, i32 %199, i8** %200, double* %201, i32 %202, i8* %203, i8* %204)
  %205 = load float*, float** @Q__align_gapmap.diaf2, align 8
  %206 = load i32, i32* %jcyc.addr, align 4
  %207 = load i8**, i8*** %seq2.addr, align 8
  %208 = load double*, double** %eff2.addr, align 8
  %209 = load i32, i32* %lgth2, align 4
  %210 = load i8*, i8** %sgap2.addr, align 8
  %211 = load i8*, i8** %egap2.addr, align 8
  call void @getdiaminofreq_part(float* %205, i32 %206, i8** %207, double* %208, i32 %209, i8* %210, i8* %211)
  %212 = load float*, float** @Q__align_gapmap.gapf1, align 8
  %213 = load i32, i32* %icyc.addr, align 4
  %214 = load i8**, i8*** %seq1.addr, align 8
  %215 = load double*, double** %eff1.addr, align 8
  %216 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %212, i32 %213, i8** %214, double* %215, i32 %216)
  %217 = load float*, float** @Q__align_gapmap.gapf2, align 8
  %218 = load i32, i32* %jcyc.addr, align 4
  %219 = load i8**, i8*** %seq2.addr, align 8
  %220 = load double*, double** %eff2.addr, align 8
  %221 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %217, i32 %218, i8** %219, double* %220, i32 %221)
  %222 = load float*, float** @Q__align_gapmap.gapz1, align 8
  %223 = load i32, i32* %icyc.addr, align 4
  %224 = load i8**, i8*** %seq1.addr, align 8
  %225 = load double*, double** %eff1.addr, align 8
  %226 = load i32, i32* %lgth1, align 4
  %227 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %222, i32 %223, i8** %224, double* %225, i32 %226, i8* %227)
  %228 = load float*, float** @Q__align_gapmap.gapz2, align 8
  %229 = load i32, i32* %jcyc.addr, align 4
  %230 = load i8**, i8*** %seq2.addr, align 8
  %231 = load double*, double** %eff2.addr, align 8
  %232 = load i32, i32* %lgth2, align 4
  %233 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %228, i32 %229, i8** %230, double* %231, i32 %232, i8* %233)
  br label %if.end.176

if.else:                                          ; preds = %if.end.173
  %234 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %235 = load i32, i32* %icyc.addr, align 4
  %236 = load i8**, i8*** %seq1.addr, align 8
  %237 = load double*, double** %eff1.addr, align 8
  %238 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %234, i32 %235, i8** %236, double* %237, i32 %238)
  %239 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %240 = load i32, i32* %jcyc.addr, align 4
  %241 = load i8**, i8*** %seq2.addr, align 8
  %242 = load double*, double** %eff2.addr, align 8
  %243 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %239, i32 %240, i8** %241, double* %242, i32 %243)
  %244 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %245 = load i32, i32* %icyc.addr, align 4
  %246 = load i8**, i8*** %seq1.addr, align 8
  %247 = load double*, double** %eff1.addr, align 8
  %248 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount_zure(float* %244, i32 %245, i8** %246, double* %247, i32 %248)
  %249 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %250 = load i32, i32* %jcyc.addr, align 4
  %251 = load i8**, i8*** %seq2.addr, align 8
  %252 = load double*, double** %eff2.addr, align 8
  %253 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount_zure(float* %249, i32 %250, i8** %251, double* %252, i32 %253)
  %254 = load float*, float** @Q__align_gapmap.digf1, align 8
  %255 = load i32, i32* %icyc.addr, align 4
  %256 = load i8**, i8*** %seq1.addr, align 8
  %257 = load double*, double** %eff1.addr, align 8
  %258 = load i32, i32* %lgth1, align 4
  call void @getdigapfreq_st(float* %254, i32 %255, i8** %256, double* %257, i32 %258)
  %259 = load float*, float** @Q__align_gapmap.digf2, align 8
  %260 = load i32, i32* %jcyc.addr, align 4
  %261 = load i8**, i8*** %seq2.addr, align 8
  %262 = load double*, double** %eff2.addr, align 8
  %263 = load i32, i32* %lgth2, align 4
  call void @getdigapfreq_st(float* %259, i32 %260, i8** %261, double* %262, i32 %263)
  %264 = load float*, float** @Q__align_gapmap.diaf1, align 8
  %265 = load i32, i32* %icyc.addr, align 4
  %266 = load i8**, i8*** %seq1.addr, align 8
  %267 = load double*, double** %eff1.addr, align 8
  %268 = load i32, i32* %lgth1, align 4
  call void @getdiaminofreq_x(float* %264, i32 %265, i8** %266, double* %267, i32 %268)
  %269 = load float*, float** @Q__align_gapmap.diaf2, align 8
  %270 = load i32, i32* %jcyc.addr, align 4
  %271 = load i8**, i8*** %seq2.addr, align 8
  %272 = load double*, double** %eff2.addr, align 8
  %273 = load i32, i32* %lgth2, align 4
  call void @getdiaminofreq_x(float* %269, i32 %270, i8** %271, double* %272, i32 %273)
  %274 = load float*, float** @Q__align_gapmap.gapf1, align 8
  %275 = load i32, i32* %icyc.addr, align 4
  %276 = load i8**, i8*** %seq1.addr, align 8
  %277 = load double*, double** %eff1.addr, align 8
  %278 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %274, i32 %275, i8** %276, double* %277, i32 %278)
  %279 = load float*, float** @Q__align_gapmap.gapf2, align 8
  %280 = load i32, i32* %jcyc.addr, align 4
  %281 = load i8**, i8*** %seq2.addr, align 8
  %282 = load double*, double** %eff2.addr, align 8
  %283 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %279, i32 %280, i8** %281, double* %282, i32 %283)
  %284 = load float*, float** @Q__align_gapmap.gapz1, align 8
  %285 = load i32, i32* %icyc.addr, align 4
  %286 = load i8**, i8*** %seq1.addr, align 8
  %287 = load double*, double** %eff1.addr, align 8
  %288 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %284, i32 %285, i8** %286, double* %287, i32 %288)
  %289 = load float*, float** @Q__align_gapmap.gapz2, align 8
  %290 = load i32, i32* %jcyc.addr, align 4
  %291 = load i8**, i8*** %seq2.addr, align 8
  %292 = load double*, double** %eff2.addr, align 8
  %293 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %289, i32 %290, i8** %291, double* %292, i32 %293)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else, %if.then.175
  %294 = load i32, i32* %lgth2, align 4
  %add177 = add nsw i32 %294, 2
  store i32 %add177, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.253, %if.end.176
  %295 = load i32, i32* %i, align 4
  %296 = load i32, i32* %lastj, align 4
  %cmp179 = icmp slt i32 %295, %296
  br i1 %cmp179, label %for.body.181, label %for.end.255

for.body.181:                                     ; preds = %for.cond.178
  %297 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %297 to i64
  %298 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %arrayidx183 = getelementptr inbounds float, float* %298, i64 %idxprom182
  %299 = load float, float* %arrayidx183, align 4
  %conv184 = fpext float %299 to double
  %sub185 = fsub double 1.000000e+00, %conv184
  %300 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %300 to i64
  %301 = load float*, float** @Q__align_gapmap.digf2, align 8
  %arrayidx187 = getelementptr inbounds float, float* %301, i64 %idxprom186
  %302 = load float, float* %arrayidx187, align 4
  %conv188 = fpext float %302 to double
  %sub189 = fsub double %sub185, %conv188
  %303 = load float, float* %fpenalty, align 4
  %conv190 = fpext float %303 to double
  %mul191 = fmul double %sub189, %conv190
  %mul192 = fmul double %mul191, 5.000000e-01
  %conv193 = fptrunc double %mul192 to float
  %304 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %304 to i64
  %305 = load float*, float** @Q__align_gapmap.og_h_dg_n2_p, align 8
  %arrayidx195 = getelementptr inbounds float, float* %305, i64 %idxprom194
  store float %conv193, float* %arrayidx195, align 4
  %306 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %306 to i64
  %307 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %arrayidx197 = getelementptr inbounds float, float* %307, i64 %idxprom196
  %308 = load float, float* %arrayidx197, align 4
  %conv198 = fpext float %308 to double
  %sub199 = fsub double 1.000000e+00, %conv198
  %309 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %309 to i64
  %310 = load float*, float** @Q__align_gapmap.digf2, align 8
  %arrayidx201 = getelementptr inbounds float, float* %310, i64 %idxprom200
  %311 = load float, float* %arrayidx201, align 4
  %conv202 = fpext float %311 to double
  %sub203 = fsub double %sub199, %conv202
  %312 = load float, float* %fpenalty, align 4
  %conv204 = fpext float %312 to double
  %mul205 = fmul double %sub203, %conv204
  %mul206 = fmul double %mul205, 5.000000e-01
  %conv207 = fptrunc double %mul206 to float
  %313 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %313 to i64
  %314 = load float*, float** @Q__align_gapmap.fg_h_dg_n2_p, align 8
  %arrayidx209 = getelementptr inbounds float, float* %314, i64 %idxprom208
  store float %conv207, float* %arrayidx209, align 4
  %315 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %315 to i64
  %316 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %arrayidx211 = getelementptr inbounds float, float* %316, i64 %idxprom210
  %317 = load float, float* %arrayidx211, align 4
  %conv212 = fpext float %317 to double
  %sub213 = fsub double 1.000000e+00, %conv212
  %318 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %318 to i64
  %319 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %arrayidx215 = getelementptr inbounds float, float* %319, i64 %idxprom214
  %320 = load float, float* %arrayidx215, align 4
  %conv216 = fpext float %320 to double
  %add217 = fadd double %sub213, %conv216
  %321 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %321 to i64
  %322 = load float*, float** @Q__align_gapmap.digf2, align 8
  %arrayidx219 = getelementptr inbounds float, float* %322, i64 %idxprom218
  %323 = load float, float* %arrayidx219, align 4
  %conv220 = fpext float %323 to double
  %sub221 = fsub double %add217, %conv220
  %mul222 = fmul double %sub221, 5.000000e-01
  %324 = load float, float* %fpenalty, align 4
  %conv223 = fpext float %324 to double
  %mul224 = fmul double %mul222, %conv223
  %conv225 = fptrunc double %mul224 to float
  %325 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %325 to i64
  %326 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8
  %arrayidx227 = getelementptr inbounds float, float* %326, i64 %idxprom226
  store float %conv225, float* %arrayidx227, align 4
  %327 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %327 to i64
  %328 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %arrayidx229 = getelementptr inbounds float, float* %328, i64 %idxprom228
  %329 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %329 to double
  %sub231 = fsub double 1.000000e+00, %conv230
  %330 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %330 to i64
  %331 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %arrayidx233 = getelementptr inbounds float, float* %331, i64 %idxprom232
  %332 = load float, float* %arrayidx233, align 4
  %conv234 = fpext float %332 to double
  %add235 = fadd double %sub231, %conv234
  %333 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %333 to i64
  %334 = load float*, float** @Q__align_gapmap.digf2, align 8
  %arrayidx237 = getelementptr inbounds float, float* %334, i64 %idxprom236
  %335 = load float, float* %arrayidx237, align 4
  %conv238 = fpext float %335 to double
  %sub239 = fsub double %add235, %conv238
  %mul240 = fmul double %sub239, 5.000000e-01
  %336 = load float, float* %fpenalty, align 4
  %conv241 = fpext float %336 to double
  %mul242 = fmul double %mul240, %conv241
  %conv243 = fptrunc double %mul242 to float
  %337 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %337 to i64
  %338 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8
  %arrayidx245 = getelementptr inbounds float, float* %338, i64 %idxprom244
  store float %conv243, float* %arrayidx245, align 4
  %339 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %339 to i64
  %340 = load float*, float** @Q__align_gapmap.gapz2, align 8
  %arrayidx247 = getelementptr inbounds float, float* %340, i64 %idxprom246
  %341 = load float, float* %arrayidx247, align 4
  %conv248 = fpext float %341 to double
  %sub249 = fsub double 1.000000e+00, %conv248
  %conv250 = fptrunc double %sub249 to float
  %342 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %342 to i64
  %343 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  %arrayidx252 = getelementptr inbounds float, float* %343, i64 %idxprom251
  store float %conv250, float* %arrayidx252, align 4
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.181
  %344 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %344, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.178

for.end.255:                                      ; preds = %for.cond.178
  %345 = load i32, i32* %lgth1, align 4
  %add256 = add nsw i32 %345, 2
  store i32 %add256, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.332, %for.end.255
  %346 = load i32, i32* %i, align 4
  %347 = load i32, i32* %lastj, align 4
  %cmp258 = icmp slt i32 %346, %347
  br i1 %cmp258, label %for.body.260, label %for.end.334

for.body.260:                                     ; preds = %for.cond.257
  %348 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %348 to i64
  %349 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %arrayidx262 = getelementptr inbounds float, float* %349, i64 %idxprom261
  %350 = load float, float* %arrayidx262, align 4
  %conv263 = fpext float %350 to double
  %sub264 = fsub double 1.000000e+00, %conv263
  %351 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %351 to i64
  %352 = load float*, float** @Q__align_gapmap.digf1, align 8
  %arrayidx266 = getelementptr inbounds float, float* %352, i64 %idxprom265
  %353 = load float, float* %arrayidx266, align 4
  %conv267 = fpext float %353 to double
  %sub268 = fsub double %sub264, %conv267
  %354 = load float, float* %fpenalty, align 4
  %conv269 = fpext float %354 to double
  %mul270 = fmul double %sub268, %conv269
  %mul271 = fmul double %mul270, 5.000000e-01
  %conv272 = fptrunc double %mul271 to float
  %355 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %355 to i64
  %356 = load float*, float** @Q__align_gapmap.og_h_dg_n1_p, align 8
  %arrayidx274 = getelementptr inbounds float, float* %356, i64 %idxprom273
  store float %conv272, float* %arrayidx274, align 4
  %357 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %357 to i64
  %358 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %arrayidx276 = getelementptr inbounds float, float* %358, i64 %idxprom275
  %359 = load float, float* %arrayidx276, align 4
  %conv277 = fpext float %359 to double
  %sub278 = fsub double 1.000000e+00, %conv277
  %360 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %360 to i64
  %361 = load float*, float** @Q__align_gapmap.digf1, align 8
  %arrayidx280 = getelementptr inbounds float, float* %361, i64 %idxprom279
  %362 = load float, float* %arrayidx280, align 4
  %conv281 = fpext float %362 to double
  %sub282 = fsub double %sub278, %conv281
  %363 = load float, float* %fpenalty, align 4
  %conv283 = fpext float %363 to double
  %mul284 = fmul double %sub282, %conv283
  %mul285 = fmul double %mul284, 5.000000e-01
  %conv286 = fptrunc double %mul285 to float
  %364 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %364 to i64
  %365 = load float*, float** @Q__align_gapmap.fg_h_dg_n1_p, align 8
  %arrayidx288 = getelementptr inbounds float, float* %365, i64 %idxprom287
  store float %conv286, float* %arrayidx288, align 4
  %366 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %366 to i64
  %367 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %arrayidx290 = getelementptr inbounds float, float* %367, i64 %idxprom289
  %368 = load float, float* %arrayidx290, align 4
  %conv291 = fpext float %368 to double
  %sub292 = fsub double 1.000000e+00, %conv291
  %369 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %369 to i64
  %370 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %arrayidx294 = getelementptr inbounds float, float* %370, i64 %idxprom293
  %371 = load float, float* %arrayidx294, align 4
  %conv295 = fpext float %371 to double
  %add296 = fadd double %sub292, %conv295
  %372 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %372 to i64
  %373 = load float*, float** @Q__align_gapmap.digf1, align 8
  %arrayidx298 = getelementptr inbounds float, float* %373, i64 %idxprom297
  %374 = load float, float* %arrayidx298, align 4
  %conv299 = fpext float %374 to double
  %sub300 = fsub double %add296, %conv299
  %mul301 = fmul double %sub300, 5.000000e-01
  %375 = load float, float* %fpenalty, align 4
  %conv302 = fpext float %375 to double
  %mul303 = fmul double %mul301, %conv302
  %conv304 = fptrunc double %mul303 to float
  %376 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %376 to i64
  %377 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8
  %arrayidx306 = getelementptr inbounds float, float* %377, i64 %idxprom305
  store float %conv304, float* %arrayidx306, align 4
  %378 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %378 to i64
  %379 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %arrayidx308 = getelementptr inbounds float, float* %379, i64 %idxprom307
  %380 = load float, float* %arrayidx308, align 4
  %conv309 = fpext float %380 to double
  %sub310 = fsub double 1.000000e+00, %conv309
  %381 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %381 to i64
  %382 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %arrayidx312 = getelementptr inbounds float, float* %382, i64 %idxprom311
  %383 = load float, float* %arrayidx312, align 4
  %conv313 = fpext float %383 to double
  %add314 = fadd double %sub310, %conv313
  %384 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %384 to i64
  %385 = load float*, float** @Q__align_gapmap.digf1, align 8
  %arrayidx316 = getelementptr inbounds float, float* %385, i64 %idxprom315
  %386 = load float, float* %arrayidx316, align 4
  %conv317 = fpext float %386 to double
  %sub318 = fsub double %add314, %conv317
  %mul319 = fmul double %sub318, 5.000000e-01
  %387 = load float, float* %fpenalty, align 4
  %conv320 = fpext float %387 to double
  %mul321 = fmul double %mul319, %conv320
  %conv322 = fptrunc double %mul321 to float
  %388 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %388 to i64
  %389 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8
  %arrayidx324 = getelementptr inbounds float, float* %389, i64 %idxprom323
  store float %conv322, float* %arrayidx324, align 4
  %390 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %390 to i64
  %391 = load float*, float** @Q__align_gapmap.gapz1, align 8
  %arrayidx326 = getelementptr inbounds float, float* %391, i64 %idxprom325
  %392 = load float, float* %arrayidx326, align 4
  %conv327 = fpext float %392 to double
  %sub328 = fsub double 1.000000e+00, %conv327
  %conv329 = fptrunc double %sub328 to float
  %393 = load i32, i32* %i, align 4
  %idxprom330 = sext i32 %393 to i64
  %394 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  %arrayidx331 = getelementptr inbounds float, float* %394, i64 %idxprom330
  store float %conv329, float* %arrayidx331, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body.260
  %395 = load i32, i32* %i, align 4
  %inc333 = add nsw i32 %395, 1
  store i32 %inc333, i32* %i, align 4
  br label %for.cond.257

for.end.334:                                      ; preds = %for.cond.257
  %396 = load float*, float** @Q__align_gapmap.w1, align 8
  store float* %396, float** %currentw, align 8
  %397 = load float*, float** @Q__align_gapmap.w2, align 8
  store float* %397, float** %previousw, align 8
  %398 = load i8, i8* @RNAscoremtx, align 1
  %conv335 = sext i8 %398 to i32
  %cmp336 = icmp ne i32 %conv335, 114
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %for.end.334
  %399 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %400 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %401 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %402 = load i32, i32* %lgth1, align 4
  %403 = load float**, float*** @Q__align_gapmap.floatwork, align 8
  %404 = load i32**, i32*** @Q__align_gapmap.intwork, align 8
  call void @match_calc(float* %399, float** %400, float** %401, i32 0, i32 %402, float** %403, i32** %404, i32 1)
  br label %if.end.340

if.else.339:                                      ; preds = %for.end.334
  %405 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %406 = load i32, i32* %lgth1, align 4
  call void @clearvec(float* %405, i32 %406)
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.339, %if.then.338
  %407 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool341 = icmp ne %struct._LocalHom*** %407, null
  br i1 %tobool341, label %if.then.342, label %if.end.344

if.then.342:                                      ; preds = %if.end.340
  %408 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %409 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %409, i64 0
  %410 = load i32, i32* %arrayidx343, align 4
  %411 = load i32, i32* %lgth1, align 4
  %412 = load i32*, i32** %gapmap1.addr, align 8
  call void @imp_match_out_vead_tateQ_gapmap(float* %408, i32 %410, i32 %411, i32* %412)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.342, %if.end.340
  %413 = load i8, i8* @RNAscoremtx, align 1
  %conv345 = sext i8 %413 to i32
  %cmp346 = icmp ne i32 %conv345, 114
  br i1 %cmp346, label %if.then.348, label %if.else.349

if.then.348:                                      ; preds = %if.end.344
  %414 = load float*, float** %currentw, align 8
  %415 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %416 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %417 = load i32, i32* %lgth2, align 4
  %418 = load float**, float*** @Q__align_gapmap.floatwork, align 8
  %419 = load i32**, i32*** @Q__align_gapmap.intwork, align 8
  call void @match_calc(float* %414, float** %415, float** %416, i32 0, i32 %417, float** %418, i32** %419, i32 1)
  br label %if.end.350

if.else.349:                                      ; preds = %if.end.344
  %420 = load float*, float** %currentw, align 8
  %421 = load i32, i32* %lgth2, align 4
  call void @clearvec(float* %420, i32 %421)
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.349, %if.then.348
  %422 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool351 = icmp ne %struct._LocalHom*** %422, null
  br i1 %tobool351, label %if.then.352, label %if.end.354

if.then.352:                                      ; preds = %if.end.350
  %423 = load float*, float** %currentw, align 8
  %424 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %424, i64 0
  %425 = load i32, i32* %arrayidx353, align 4
  %426 = load i32, i32* %lgth2, align 4
  %427 = load i32*, i32** %gapmap2.addr, align 8
  call void @imp_match_out_veadQ_gapmap(float* %423, i32 %425, i32 %426, i32* %427)
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.352, %if.end.350
  store float 0.000000e+00, float* %kyokaipenal, align 4
  %428 = load i32, i32* @outgap, align 4
  %cmp355 = icmp eq i32 %428, 1
  br i1 %cmp355, label %if.then.357, label %if.else.420

if.then.357:                                      ; preds = %if.end.354
  store float 0.000000e+00, float* %g, align 4
  %429 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %arrayidx358 = getelementptr inbounds float, float* %429, i64 0
  %430 = load float, float* %arrayidx358, align 4
  %431 = load float*, float** @Q__align_gapmap.og_h_dg_n2_p, align 8
  %arrayidx359 = getelementptr inbounds float, float* %431, i64 0
  %432 = load float, float* %arrayidx359, align 4
  %mul360 = fmul float %430, %432
  %433 = load float, float* %g, align 4
  %add361 = fadd float %433, %mul360
  store float %add361, float* %g, align 4
  %434 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %arrayidx362 = getelementptr inbounds float, float* %434, i64 0
  %435 = load float, float* %arrayidx362, align 4
  %436 = load float*, float** @Q__align_gapmap.og_h_dg_n1_p, align 8
  %arrayidx363 = getelementptr inbounds float, float* %436, i64 0
  %437 = load float, float* %arrayidx363, align 4
  %mul364 = fmul float %435, %437
  %438 = load float, float* %g, align 4
  %add365 = fadd float %438, %mul364
  store float %add365, float* %g, align 4
  %439 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %arrayidx366 = getelementptr inbounds float, float* %439, i64 0
  %440 = load float, float* %arrayidx366, align 4
  %441 = load float*, float** @Q__align_gapmap.fg_h_dg_n2_p, align 8
  %arrayidx367 = getelementptr inbounds float, float* %441, i64 0
  %442 = load float, float* %arrayidx367, align 4
  %mul368 = fmul float %440, %442
  %443 = load float, float* %g, align 4
  %add369 = fadd float %443, %mul368
  store float %add369, float* %g, align 4
  %444 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %arrayidx370 = getelementptr inbounds float, float* %444, i64 0
  %445 = load float, float* %arrayidx370, align 4
  %446 = load float*, float** @Q__align_gapmap.fg_h_dg_n1_p, align 8
  %arrayidx371 = getelementptr inbounds float, float* %446, i64 0
  %447 = load float, float* %arrayidx371, align 4
  %mul372 = fmul float %445, %447
  %448 = load float, float* %g, align 4
  %add373 = fadd float %448, %mul372
  store float %add373, float* %g, align 4
  %449 = load float, float* %g, align 4
  store float %449, float* %kyokaipenal, align 4
  %450 = load float, float* %g, align 4
  %451 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx374 = getelementptr inbounds float, float* %451, i64 0
  %452 = load float, float* %arrayidx374, align 4
  %add375 = fadd float %452, %450
  store float %add375, float* %arrayidx374, align 4
  %453 = load float, float* %g, align 4
  %454 = load float*, float** %currentw, align 8
  %arrayidx376 = getelementptr inbounds float, float* %454, i64 0
  %455 = load float, float* %arrayidx376, align 4
  %add377 = fadd float %455, %453
  store float %add377, float* %arrayidx376, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.396, %if.then.357
  %456 = load i32, i32* %i, align 4
  %457 = load i32, i32* %lgth1, align 4
  %add379 = add nsw i32 %457, 1
  %cmp380 = icmp slt i32 %456, %add379
  br i1 %cmp380, label %for.body.382, label %for.end.398

for.body.382:                                     ; preds = %for.cond.378
  %458 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  %arrayidx383 = getelementptr inbounds float, float* %458, i64 0
  %459 = load float, float* %arrayidx383, align 4
  %460 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8
  %arrayidx384 = getelementptr inbounds float, float* %460, i64 0
  %461 = load float, float* %arrayidx384, align 4
  %mul385 = fmul float %459, %461
  store float %mul385, float* %tmppenal, align 4
  %462 = load float, float* %tmppenal, align 4
  %463 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %463 to i64
  %464 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx387 = getelementptr inbounds float, float* %464, i64 %idxprom386
  %465 = load float, float* %arrayidx387, align 4
  %add388 = fadd float %465, %462
  store float %add388, float* %arrayidx387, align 4
  %466 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  %arrayidx389 = getelementptr inbounds float, float* %466, i64 1
  %467 = load float, float* %arrayidx389, align 4
  %468 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %468 to i64
  %469 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8
  %arrayidx391 = getelementptr inbounds float, float* %469, i64 %idxprom390
  %470 = load float, float* %arrayidx391, align 4
  %mul392 = fmul float %467, %470
  store float %mul392, float* %tmppenal, align 4
  %471 = load float, float* %tmppenal, align 4
  %472 = load i32, i32* %i, align 4
  %idxprom393 = sext i32 %472 to i64
  %473 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx394 = getelementptr inbounds float, float* %473, i64 %idxprom393
  %474 = load float, float* %arrayidx394, align 4
  %add395 = fadd float %474, %471
  store float %add395, float* %arrayidx394, align 4
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.382
  %475 = load i32, i32* %i, align 4
  %inc397 = add nsw i32 %475, 1
  store i32 %inc397, i32* %i, align 4
  br label %for.cond.378

for.end.398:                                      ; preds = %for.cond.378
  store i32 1, i32* %j, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.417, %for.end.398
  %476 = load i32, i32* %j, align 4
  %477 = load i32, i32* %lgth2, align 4
  %add400 = add nsw i32 %477, 1
  %cmp401 = icmp slt i32 %476, %add400
  br i1 %cmp401, label %for.body.403, label %for.end.419

for.body.403:                                     ; preds = %for.cond.399
  %478 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  %arrayidx404 = getelementptr inbounds float, float* %478, i64 0
  %479 = load float, float* %arrayidx404, align 4
  %480 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8
  %arrayidx405 = getelementptr inbounds float, float* %480, i64 0
  %481 = load float, float* %arrayidx405, align 4
  %mul406 = fmul float %479, %481
  store float %mul406, float* %tmppenal, align 4
  %482 = load float, float* %tmppenal, align 4
  %483 = load i32, i32* %j, align 4
  %idxprom407 = sext i32 %483 to i64
  %484 = load float*, float** %currentw, align 8
  %arrayidx408 = getelementptr inbounds float, float* %484, i64 %idxprom407
  %485 = load float, float* %arrayidx408, align 4
  %add409 = fadd float %485, %482
  store float %add409, float* %arrayidx408, align 4
  %486 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  %arrayidx410 = getelementptr inbounds float, float* %486, i64 1
  %487 = load float, float* %arrayidx410, align 4
  %488 = load i32, i32* %j, align 4
  %idxprom411 = sext i32 %488 to i64
  %489 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8
  %arrayidx412 = getelementptr inbounds float, float* %489, i64 %idxprom411
  %490 = load float, float* %arrayidx412, align 4
  %mul413 = fmul float %487, %490
  store float %mul413, float* %tmppenal, align 4
  %491 = load float, float* %tmppenal, align 4
  %492 = load i32, i32* %j, align 4
  %idxprom414 = sext i32 %492 to i64
  %493 = load float*, float** %currentw, align 8
  %arrayidx415 = getelementptr inbounds float, float* %493, i64 %idxprom414
  %494 = load float, float* %arrayidx415, align 4
  %add416 = fadd float %494, %491
  store float %add416, float* %arrayidx415, align 4
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.body.403
  %495 = load i32, i32* %j, align 4
  %inc418 = add nsw i32 %495, 1
  store i32 %inc418, i32* %j, align 4
  br label %for.cond.399

for.end.419:                                      ; preds = %for.cond.399
  br label %if.end.452

if.else.420:                                      ; preds = %if.end.354
  store i32 1, i32* %j, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.433, %if.else.420
  %496 = load i32, i32* %j, align 4
  %497 = load i32, i32* %lgth2, align 4
  %add422 = add nsw i32 %497, 1
  %cmp423 = icmp slt i32 %496, %add422
  br i1 %cmp423, label %for.body.425, label %for.end.435

for.body.425:                                     ; preds = %for.cond.421
  %498 = load i32, i32* @offset, align 4
  %499 = load i32, i32* %j, align 4
  %mul426 = mul nsw i32 %498, %499
  %conv427 = sitofp i32 %mul426 to double
  %div = fdiv double %conv427, 2.000000e+00
  %500 = load i32, i32* %j, align 4
  %idxprom428 = sext i32 %500 to i64
  %501 = load float*, float** %currentw, align 8
  %arrayidx429 = getelementptr inbounds float, float* %501, i64 %idxprom428
  %502 = load float, float* %arrayidx429, align 4
  %conv430 = fpext float %502 to double
  %sub431 = fsub double %conv430, %div
  %conv432 = fptrunc double %sub431 to float
  store float %conv432, float* %arrayidx429, align 4
  br label %for.inc.433

for.inc.433:                                      ; preds = %for.body.425
  %503 = load i32, i32* %j, align 4
  %inc434 = add nsw i32 %503, 1
  store i32 %inc434, i32* %j, align 4
  br label %for.cond.421

for.end.435:                                      ; preds = %for.cond.421
  store i32 1, i32* %i, align 4
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.449, %for.end.435
  %504 = load i32, i32* %i, align 4
  %505 = load i32, i32* %lgth1, align 4
  %add437 = add nsw i32 %505, 1
  %cmp438 = icmp slt i32 %504, %add437
  br i1 %cmp438, label %for.body.440, label %for.end.451

for.body.440:                                     ; preds = %for.cond.436
  %506 = load i32, i32* @offset, align 4
  %507 = load i32, i32* %i, align 4
  %mul441 = mul nsw i32 %506, %507
  %conv442 = sitofp i32 %mul441 to double
  %div443 = fdiv double %conv442, 2.000000e+00
  %508 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %508 to i64
  %509 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx445 = getelementptr inbounds float, float* %509, i64 %idxprom444
  %510 = load float, float* %arrayidx445, align 4
  %conv446 = fpext float %510 to double
  %sub447 = fsub double %conv446, %div443
  %conv448 = fptrunc double %sub447 to float
  store float %conv448, float* %arrayidx445, align 4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.440
  %511 = load i32, i32* %i, align 4
  %inc450 = add nsw i32 %511, 1
  store i32 %inc450, i32* %i, align 4
  br label %for.cond.436

for.end.451:                                      ; preds = %for.cond.436
  br label %if.end.452

if.end.452:                                       ; preds = %for.end.451, %for.end.419
  %512 = load float*, float** @Q__align_gapmap.m, align 8
  %arrayidx453 = getelementptr inbounds float, float* %512, i64 0
  store float 0.000000e+00, float* %arrayidx453, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.468, %if.end.452
  %513 = load i32, i32* %j, align 4
  %514 = load i32, i32* %lgth2, align 4
  %add455 = add nsw i32 %514, 1
  %cmp456 = icmp slt i32 %513, %add455
  br i1 %cmp456, label %for.body.458, label %for.end.470

for.body.458:                                     ; preds = %for.cond.454
  %515 = load i32, i32* %j, align 4
  %idxprom459 = sext i32 %515 to i64
  %516 = load i32*, i32** @Q__align_gapmap.mp, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %516, i64 %idxprom459
  store i32 0, i32* %arrayidx460, align 4
  %517 = load i32, i32* %j, align 4
  %sub461 = sub nsw i32 %517, 1
  %idxprom462 = sext i32 %sub461 to i64
  %518 = load float*, float** %currentw, align 8
  %arrayidx463 = getelementptr inbounds float, float* %518, i64 %idxprom462
  %519 = load float, float* %arrayidx463, align 4
  %520 = load float, float* %fpenalty, align 4
  %mul464 = fmul float 1.000000e+04, %520
  %add465 = fadd float %519, %mul464
  %521 = load i32, i32* %j, align 4
  %idxprom466 = sext i32 %521 to i64
  %522 = load float*, float** @Q__align_gapmap.m, align 8
  %arrayidx467 = getelementptr inbounds float, float* %522, i64 %idxprom466
  store float %add465, float* %arrayidx467, align 4
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.body.458
  %523 = load i32, i32* %j, align 4
  %inc469 = add nsw i32 %523, 1
  store i32 %inc469, i32* %j, align 4
  br label %for.cond.454

for.end.470:                                      ; preds = %for.cond.454
  %524 = load i32, i32* %lgth2, align 4
  %cmp471 = icmp eq i32 %524, 0
  br i1 %cmp471, label %if.then.473, label %if.else.475

if.then.473:                                      ; preds = %for.end.470
  %525 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %arrayidx474 = getelementptr inbounds float, float* %525, i64 0
  store float 0.000000e+00, float* %arrayidx474, align 4
  br label %if.end.480

if.else.475:                                      ; preds = %for.end.470
  %526 = load i32, i32* %lgth2, align 4
  %sub476 = sub nsw i32 %526, 1
  %idxprom477 = sext i32 %sub476 to i64
  %527 = load float*, float** %currentw, align 8
  %arrayidx478 = getelementptr inbounds float, float* %527, i64 %idxprom477
  %528 = load float, float* %arrayidx478, align 4
  %529 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %arrayidx479 = getelementptr inbounds float, float* %529, i64 0
  store float %528, float* %arrayidx479, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.475, %if.then.473
  %530 = load i32, i32* @outgap, align 4
  %tobool481 = icmp ne i32 %530, 0
  br i1 %tobool481, label %if.then.482, label %if.else.484

if.then.482:                                      ; preds = %if.end.480
  %531 = load i32, i32* %lgth1, align 4
  %add483 = add nsw i32 %531, 1
  store i32 %add483, i32* %lasti, align 4
  br label %if.end.485

if.else.484:                                      ; preds = %if.end.480
  %532 = load i32, i32* %lgth1, align 4
  store i32 %532, i32* %lasti, align 4
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.484, %if.then.482
  store i32 1, i32* %i, align 4
  br label %for.cond.486

for.cond.486:                                     ; preds = %for.inc.604, %if.end.485
  %533 = load i32, i32* %i, align 4
  %534 = load i32, i32* %lasti, align 4
  %cmp487 = icmp slt i32 %533, %534
  br i1 %cmp487, label %for.body.489, label %for.end.606

for.body.489:                                     ; preds = %for.cond.486
  %535 = load float*, float** %previousw, align 8
  store float* %535, float** %wtmp, align 8
  %536 = load float*, float** %currentw, align 8
  store float* %536, float** %previousw, align 8
  %537 = load float*, float** %wtmp, align 8
  store float* %537, float** %currentw, align 8
  %538 = load i32, i32* %i, align 4
  %sub490 = sub nsw i32 %538, 1
  %idxprom491 = sext i32 %sub490 to i64
  %539 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx492 = getelementptr inbounds float, float* %539, i64 %idxprom491
  %540 = load float, float* %arrayidx492, align 4
  %541 = load float*, float** %previousw, align 8
  %arrayidx493 = getelementptr inbounds float, float* %541, i64 0
  store float %540, float* %arrayidx493, align 4
  %542 = load i8, i8* @RNAscoremtx, align 1
  %conv494 = sext i8 %542 to i32
  %cmp495 = icmp ne i32 %conv494, 114
  br i1 %cmp495, label %if.then.497, label %if.else.498

if.then.497:                                      ; preds = %for.body.489
  %543 = load float*, float** %currentw, align 8
  %544 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %545 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %546 = load i32, i32* %i, align 4
  %547 = load i32, i32* %lgth2, align 4
  %548 = load float**, float*** @Q__align_gapmap.floatwork, align 8
  %549 = load i32**, i32*** @Q__align_gapmap.intwork, align 8
  call void @match_calc(float* %543, float** %544, float** %545, i32 %546, i32 %547, float** %548, i32** %549, i32 0)
  br label %if.end.499

if.else.498:                                      ; preds = %for.body.489
  %550 = load float*, float** %currentw, align 8
  %551 = load i32, i32* %lgth2, align 4
  call void @clearvec(float* %550, i32 %551)
  br label %if.end.499

if.end.499:                                       ; preds = %if.else.498, %if.then.497
  %552 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool500 = icmp ne %struct._LocalHom*** %552, null
  br i1 %tobool500, label %if.then.501, label %if.end.504

if.then.501:                                      ; preds = %if.end.499
  %553 = load float*, float** %currentw, align 8
  %554 = load i32, i32* %i, align 4
  %idxprom502 = sext i32 %554 to i64
  %555 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %555, i64 %idxprom502
  %556 = load i32, i32* %arrayidx503, align 4
  %557 = load i32, i32* %lgth2, align 4
  %558 = load i32*, i32** %gapmap2.addr, align 8
  call void @imp_match_out_veadQ_gapmap(float* %553, i32 %556, i32 %557, i32* %558)
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.501, %if.end.499
  %559 = load i32, i32* %i, align 4
  %idxprom505 = sext i32 %559 to i64
  %560 = load float*, float** @Q__align_gapmap.initverticalw, align 8
  %arrayidx506 = getelementptr inbounds float, float* %560, i64 %idxprom505
  %561 = load float, float* %arrayidx506, align 4
  %562 = load float*, float** %currentw, align 8
  %arrayidx507 = getelementptr inbounds float, float* %562, i64 0
  store float %561, float* %arrayidx507, align 4
  store i32 0, i32* @Q__align_gapmap.mpi, align 4
  %563 = load float*, float** %previousw, align 8
  %arrayidx508 = getelementptr inbounds float, float* %563, i64 0
  %564 = load float, float* %arrayidx508, align 4
  %565 = load float, float* %fpenalty, align 4
  %mul509 = fmul float 1.000000e+04, %565
  %add510 = fadd float %564, %mul509
  store float %add510, float* @Q__align_gapmap.mi, align 4
  %566 = load i32, i32* %i, align 4
  %idxprom511 = sext i32 %566 to i64
  %567 = load i32**, i32*** @Q__align_gapmap.ijp, align 8
  %arrayidx512 = getelementptr inbounds i32*, i32** %567, i64 %idxprom511
  %568 = load i32*, i32** %arrayidx512, align 8
  %add.ptr = getelementptr inbounds i32, i32* %568, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %569 = load float*, float** @Q__align_gapmap.m, align 8
  %add.ptr513 = getelementptr inbounds float, float* %569, i64 1
  store float* %add.ptr513, float** %mjpt, align 8
  %570 = load float*, float** %previousw, align 8
  store float* %570, float** %prept, align 8
  %571 = load float*, float** %currentw, align 8
  %add.ptr514 = getelementptr inbounds float, float* %571, i64 1
  store float* %add.ptr514, float** %curpt, align 8
  %572 = load i32*, i32** @Q__align_gapmap.mp, align 8
  %add.ptr515 = getelementptr inbounds i32, i32* %572, i64 1
  store i32* %add.ptr515, i32** %mpjpt, align 8
  %573 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8
  %add.ptr516 = getelementptr inbounds float, float* %573, i64 1
  store float* %add.ptr516, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %574 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8
  %add.ptr517 = getelementptr inbounds float, float* %574, i64 1
  store float* %add.ptr517, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %575 = load float*, float** @Q__align_gapmap.og_h_dg_n2_p, align 8
  %add.ptr518 = getelementptr inbounds float, float* %575, i64 1
  store float* %add.ptr518, float** %og_h_dg_n2_p_pt, align 8
  %576 = load float*, float** @Q__align_gapmap.fg_h_dg_n2_p, align 8
  %add.ptr519 = getelementptr inbounds float, float* %576, i64 1
  store float* %add.ptr519, float** %fg_h_dg_n2_p_pt, align 8
  %577 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  %add.ptr520 = getelementptr inbounds float, float* %577, i64 1
  store float* %add.ptr520, float** %gapz_n2_pt0, align 8
  %578 = load float*, float** @Q__align_gapmap.gapz_n2, align 8
  %add.ptr521 = getelementptr inbounds float, float* %578, i64 2
  store float* %add.ptr521, float** %gapz_n2_pt1, align 8
  %579 = load float*, float** @Q__align_gapmap.fgcp2g, align 8
  %add.ptr522 = getelementptr inbounds float, float* %579, i64 1
  store float* %add.ptr522, float** %fgcp2pt, align 8
  %580 = load float*, float** @Q__align_gapmap.ogcp2g, align 8
  %add.ptr523 = getelementptr inbounds float, float* %580, i64 1
  store float* %add.ptr523, float** %ogcp2pt, align 8
  %581 = load i32, i32* %i, align 4
  %idxprom524 = sext i32 %581 to i64
  %582 = load float*, float** @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8
  %arrayidx525 = getelementptr inbounds float, float* %582, i64 %idxprom524
  %583 = load float, float* %arrayidx525, align 4
  store float %583, float* %fg_t_og_h_dg_n1_p_va, align 4
  %584 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %584 to i64
  %585 = load float*, float** @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8
  %arrayidx527 = getelementptr inbounds float, float* %585, i64 %idxprom526
  %586 = load float, float* %arrayidx527, align 4
  store float %586, float* %og_t_fg_h_dg_n1_p_va, align 4
  %587 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %587 to i64
  %588 = load float*, float** @Q__align_gapmap.og_h_dg_n1_p, align 8
  %arrayidx529 = getelementptr inbounds float, float* %588, i64 %idxprom528
  %589 = load float, float* %arrayidx529, align 4
  store float %589, float* %og_h_dg_n1_p_va, align 4
  %590 = load i32, i32* %i, align 4
  %idxprom530 = sext i32 %590 to i64
  %591 = load float*, float** @Q__align_gapmap.fg_h_dg_n1_p, align 8
  %arrayidx531 = getelementptr inbounds float, float* %591, i64 %idxprom530
  %592 = load float, float* %arrayidx531, align 4
  store float %592, float* %fg_h_dg_n1_p_va, align 4
  %593 = load i32, i32* %i, align 4
  %idxprom532 = sext i32 %593 to i64
  %594 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  %arrayidx533 = getelementptr inbounds float, float* %594, i64 %idxprom532
  %595 = load float, float* %arrayidx533, align 4
  store float %595, float* %gapz_n1_va0, align 4
  %596 = load i32, i32* %i, align 4
  %add534 = add nsw i32 %596, 1
  %idxprom535 = sext i32 %add534 to i64
  %597 = load float*, float** @Q__align_gapmap.gapz_n1, align 8
  %arrayidx536 = getelementptr inbounds float, float* %597, i64 %idxprom535
  %598 = load float, float* %arrayidx536, align 4
  store float %598, float* %gapz_n1_va1, align 4
  %599 = load i32, i32* %i, align 4
  %idxprom537 = sext i32 %599 to i64
  %600 = load float*, float** @Q__align_gapmap.fgcp1g, align 8
  %arrayidx538 = getelementptr inbounds float, float* %600, i64 %idxprom537
  %601 = load float, float* %arrayidx538, align 4
  store float %601, float* %fgcp1va, align 4
  %602 = load i32, i32* %i, align 4
  %idxprom539 = sext i32 %602 to i64
  %603 = load float*, float** @Q__align_gapmap.ogcp1g, align 8
  %arrayidx540 = getelementptr inbounds float, float* %603, i64 %idxprom539
  %604 = load float, float* %arrayidx540, align 4
  store float %604, float* %ogcp1va, align 4
  %605 = load i32, i32* %lgth2, align 4
  %add541 = add nsw i32 %605, 1
  store i32 %add541, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.596, %if.end.504
  %606 = load i32, i32* %j, align 4
  %607 = load i32, i32* %lastj, align 4
  %cmp543 = icmp slt i32 %606, %607
  br i1 %cmp543, label %for.body.545, label %for.end.598

for.body.545:                                     ; preds = %for.cond.542
  %608 = load float*, float** %prept, align 8
  %609 = load float, float* %608, align 4
  store float %609, float* %wm, align 4
  %610 = load float, float* %ogcp1va, align 4
  %611 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %612 = load float, float* %611, align 4
  %mul546 = fmul float %610, %612
  store float %mul546, float* %g, align 4
  %613 = load float, float* %g, align 4
  %614 = load float, float* %wm, align 4
  %add547 = fadd float %614, %613
  store float %add547, float* %wm, align 4
  %615 = load float*, float** %ogcp2pt, align 8
  %616 = load float, float* %615, align 4
  %617 = load float, float* %og_h_dg_n1_p_va, align 4
  %mul548 = fmul float %616, %617
  store float %mul548, float* %g, align 4
  %618 = load float, float* %g, align 4
  %619 = load float, float* %wm, align 4
  %add549 = fadd float %619, %618
  store float %add549, float* %wm, align 4
  %620 = load float, float* %fgcp1va, align 4
  %621 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %622 = load float, float* %621, align 4
  %mul550 = fmul float %620, %622
  store float %mul550, float* %g, align 4
  %623 = load float, float* %g, align 4
  %624 = load float, float* %wm, align 4
  %add551 = fadd float %624, %623
  store float %add551, float* %wm, align 4
  %625 = load float*, float** %fgcp2pt, align 8
  %626 = load float, float* %625, align 4
  %627 = load float, float* %fg_h_dg_n1_p_va, align 4
  %mul552 = fmul float %626, %627
  store float %mul552, float* %g, align 4
  %628 = load float, float* %g, align 4
  %629 = load float, float* %wm, align 4
  %add553 = fadd float %629, %628
  store float %add553, float* %wm, align 4
  %630 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %630, align 4
  %631 = load float, float* %gapz_n1_va1, align 4
  %632 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %633 = load float, float* %632, align 4
  %mul554 = fmul float %631, %633
  store float %mul554, float* %tmppenal, align 4
  %634 = load float, float* @Q__align_gapmap.mi, align 4
  %635 = load float, float* %tmppenal, align 4
  %add555 = fadd float %634, %635
  store float %add555, float* %g, align 4
  %636 = load float, float* %wm, align 4
  %cmp556 = fcmp ogt float %add555, %636
  br i1 %cmp556, label %if.then.558, label %if.end.561

if.then.558:                                      ; preds = %for.body.545
  %637 = load float, float* %g, align 4
  store float %637, float* %wm, align 4
  %638 = load i32, i32* %j, align 4
  %639 = load i32, i32* @Q__align_gapmap.mpi, align 4
  %sub559 = sub nsw i32 %638, %639
  %sub560 = sub nsw i32 0, %sub559
  %640 = load i32*, i32** %ijppt, align 8
  store i32 %sub560, i32* %640, align 4
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.558, %for.body.545
  %641 = load float, float* %gapz_n1_va0, align 4
  %642 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %643 = load float, float* %642, align 4
  %mul562 = fmul float %641, %643
  store float %mul562, float* %tmppenal, align 4
  %644 = load float*, float** %prept, align 8
  %645 = load float, float* %644, align 4
  %646 = load float, float* %tmppenal, align 4
  %add563 = fadd float %645, %646
  store float %add563, float* %g, align 4
  %647 = load float, float* @Q__align_gapmap.mi, align 4
  %cmp564 = fcmp oge float %add563, %647
  br i1 %cmp564, label %if.then.566, label %if.end.568

if.then.566:                                      ; preds = %if.end.561
  %648 = load float, float* %g, align 4
  store float %648, float* @Q__align_gapmap.mi, align 4
  %649 = load i32, i32* %j, align 4
  %sub567 = sub nsw i32 %649, 1
  store i32 %sub567, i32* @Q__align_gapmap.mpi, align 4
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.566, %if.end.561
  %650 = load float*, float** %gapz_n2_pt1, align 8
  %651 = load float, float* %650, align 4
  %652 = load float, float* %fg_t_og_h_dg_n1_p_va, align 4
  %mul569 = fmul float %651, %652
  store float %mul569, float* %tmppenal, align 4
  %653 = load float*, float** %mjpt, align 8
  %654 = load float, float* %653, align 4
  %655 = load float, float* %tmppenal, align 4
  %add570 = fadd float %654, %655
  store float %add570, float* %g, align 4
  %656 = load float, float* %wm, align 4
  %cmp571 = fcmp ogt float %add570, %656
  br i1 %cmp571, label %if.then.573, label %if.end.575

if.then.573:                                      ; preds = %if.end.568
  %657 = load float, float* %g, align 4
  store float %657, float* %wm, align 4
  %658 = load i32, i32* %i, align 4
  %659 = load i32*, i32** %mpjpt, align 8
  %660 = load i32, i32* %659, align 4
  %sub574 = sub nsw i32 %658, %660
  %661 = load i32*, i32** %ijppt, align 8
  store i32 %sub574, i32* %661, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.573, %if.end.568
  %662 = load float*, float** %gapz_n2_pt0, align 8
  %663 = load float, float* %662, align 4
  %664 = load float, float* %og_t_fg_h_dg_n1_p_va, align 4
  %mul576 = fmul float %663, %664
  store float %mul576, float* %tmppenal, align 4
  %665 = load float*, float** %prept, align 8
  %666 = load float, float* %665, align 4
  %667 = load float, float* %tmppenal, align 4
  %add577 = fadd float %666, %667
  store float %add577, float* %g, align 4
  %668 = load float*, float** %mjpt, align 8
  %669 = load float, float* %668, align 4
  %cmp578 = fcmp oge float %add577, %669
  br i1 %cmp578, label %if.then.580, label %if.end.582

if.then.580:                                      ; preds = %if.end.575
  %670 = load float, float* %g, align 4
  %671 = load float*, float** %mjpt, align 8
  store float %670, float* %671, align 4
  %672 = load i32, i32* %i, align 4
  %sub581 = sub nsw i32 %672, 1
  %673 = load i32*, i32** %mpjpt, align 8
  store i32 %sub581, i32* %673, align 4
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.580, %if.end.575
  %674 = load float, float* %wm, align 4
  %675 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %675, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %676 = load float, float* %675, align 4
  %add583 = fadd float %676, %674
  store float %add583, float* %675, align 4
  %677 = load i32*, i32** %ijppt, align 8
  %incdec.ptr584 = getelementptr inbounds i32, i32* %677, i32 1
  store i32* %incdec.ptr584, i32** %ijppt, align 8
  %678 = load float*, float** %mjpt, align 8
  %incdec.ptr585 = getelementptr inbounds float, float* %678, i32 1
  store float* %incdec.ptr585, float** %mjpt, align 8
  %679 = load float*, float** %prept, align 8
  %incdec.ptr586 = getelementptr inbounds float, float* %679, i32 1
  store float* %incdec.ptr586, float** %prept, align 8
  %680 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr587 = getelementptr inbounds i32, i32* %680, i32 1
  store i32* %incdec.ptr587, i32** %mpjpt, align 8
  %681 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %incdec.ptr588 = getelementptr inbounds float, float* %681, i32 1
  store float* %incdec.ptr588, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %682 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %incdec.ptr589 = getelementptr inbounds float, float* %682, i32 1
  store float* %incdec.ptr589, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %683 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %incdec.ptr590 = getelementptr inbounds float, float* %683, i32 1
  store float* %incdec.ptr590, float** %og_h_dg_n2_p_pt, align 8
  %684 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %incdec.ptr591 = getelementptr inbounds float, float* %684, i32 1
  store float* %incdec.ptr591, float** %fg_h_dg_n2_p_pt, align 8
  %685 = load float*, float** %gapz_n2_pt0, align 8
  %incdec.ptr592 = getelementptr inbounds float, float* %685, i32 1
  store float* %incdec.ptr592, float** %gapz_n2_pt0, align 8
  %686 = load float*, float** %gapz_n2_pt1, align 8
  %incdec.ptr593 = getelementptr inbounds float, float* %686, i32 1
  store float* %incdec.ptr593, float** %gapz_n2_pt1, align 8
  %687 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr594 = getelementptr inbounds float, float* %687, i32 1
  store float* %incdec.ptr594, float** %fgcp2pt, align 8
  %688 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr595 = getelementptr inbounds float, float* %688, i32 1
  store float* %incdec.ptr595, float** %ogcp2pt, align 8
  br label %for.inc.596

for.inc.596:                                      ; preds = %if.end.582
  %689 = load i32, i32* %j, align 4
  %inc597 = add nsw i32 %689, 1
  store i32 %inc597, i32* %j, align 4
  br label %for.cond.542

for.end.598:                                      ; preds = %for.cond.542
  %690 = load i32, i32* %lgth2, align 4
  %sub599 = sub nsw i32 %690, 1
  %idxprom600 = sext i32 %sub599 to i64
  %691 = load float*, float** %currentw, align 8
  %arrayidx601 = getelementptr inbounds float, float* %691, i64 %idxprom600
  %692 = load float, float* %arrayidx601, align 4
  %693 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %693 to i64
  %694 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %arrayidx603 = getelementptr inbounds float, float* %694, i64 %idxprom602
  store float %692, float* %arrayidx603, align 4
  br label %for.inc.604

for.inc.604:                                      ; preds = %for.end.598
  %695 = load i32, i32* %i, align 4
  %inc605 = add nsw i32 %695, 1
  store i32 %inc605, i32* %i, align 4
  br label %for.cond.486

for.end.606:                                      ; preds = %for.cond.486
  %696 = load i32, i32* @outgap, align 4
  %tobool607 = icmp ne i32 %696, 0
  br i1 %tobool607, label %if.end.645, label %if.then.608

if.then.608:                                      ; preds = %for.end.606
  store i32 1, i32* %j, align 4
  br label %for.cond.609

for.cond.609:                                     ; preds = %for.inc.623, %if.then.608
  %697 = load i32, i32* %j, align 4
  %698 = load i32, i32* %lgth2, align 4
  %add610 = add nsw i32 %698, 1
  %cmp611 = icmp slt i32 %697, %add610
  br i1 %cmp611, label %for.body.613, label %for.end.625

for.body.613:                                     ; preds = %for.cond.609
  %699 = load i32, i32* @offset, align 4
  %700 = load i32, i32* %lgth2, align 4
  %701 = load i32, i32* %j, align 4
  %sub614 = sub nsw i32 %700, %701
  %mul615 = mul nsw i32 %699, %sub614
  %conv616 = sitofp i32 %mul615 to double
  %div617 = fdiv double %conv616, 2.000000e+00
  %702 = load i32, i32* %j, align 4
  %idxprom618 = sext i32 %702 to i64
  %703 = load float*, float** %currentw, align 8
  %arrayidx619 = getelementptr inbounds float, float* %703, i64 %idxprom618
  %704 = load float, float* %arrayidx619, align 4
  %conv620 = fpext float %704 to double
  %sub621 = fsub double %conv620, %div617
  %conv622 = fptrunc double %sub621 to float
  store float %conv622, float* %arrayidx619, align 4
  br label %for.inc.623

for.inc.623:                                      ; preds = %for.body.613
  %705 = load i32, i32* %j, align 4
  %inc624 = add nsw i32 %705, 1
  store i32 %inc624, i32* %j, align 4
  br label %for.cond.609

for.end.625:                                      ; preds = %for.cond.609
  store i32 1, i32* %i, align 4
  br label %for.cond.626

for.cond.626:                                     ; preds = %for.inc.642, %for.end.625
  %706 = load i32, i32* %i, align 4
  %707 = load i32, i32* %lgth1, align 4
  %add627 = add nsw i32 %707, 1
  %cmp628 = icmp slt i32 %706, %add627
  br i1 %cmp628, label %for.body.630, label %for.end.644

for.body.630:                                     ; preds = %for.cond.626
  %708 = load i32, i32* @offset, align 4
  %conv631 = sitofp i32 %708 to double
  %709 = load i32, i32* %lgth1, align 4
  %conv632 = sitofp i32 %709 to double
  %710 = load i32, i32* %i, align 4
  %conv633 = sitofp i32 %710 to double
  %div634 = fdiv double %conv633, 2.000000e+00
  %sub635 = fsub double %conv632, %div634
  %mul636 = fmul double %conv631, %sub635
  %711 = load i32, i32* %i, align 4
  %idxprom637 = sext i32 %711 to i64
  %712 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %arrayidx638 = getelementptr inbounds float, float* %712, i64 %idxprom637
  %713 = load float, float* %arrayidx638, align 4
  %conv639 = fpext float %713 to double
  %sub640 = fsub double %conv639, %mul636
  %conv641 = fptrunc double %sub640 to float
  store float %conv641, float* %arrayidx638, align 4
  br label %for.inc.642

for.inc.642:                                      ; preds = %for.body.630
  %714 = load i32, i32* %i, align 4
  %inc643 = add nsw i32 %714, 1
  store i32 %inc643, i32* %i, align 4
  br label %for.cond.626

for.end.644:                                      ; preds = %for.cond.626
  br label %if.end.645

if.end.645:                                       ; preds = %for.end.644, %for.end.606
  %715 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool646 = icmp ne %struct._LocalHom*** %715, null
  br i1 %tobool646, label %if.then.647, label %if.else.648

if.then.647:                                      ; preds = %if.end.645
  %716 = load float*, float** %impmatch.addr, align 8
  %717 = load float*, float** %currentw, align 8
  %718 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %719 = load i8**, i8*** %seq1.addr, align 8
  %720 = load i8**, i8*** %seq2.addr, align 8
  %721 = load i8**, i8*** @Q__align_gapmap.mseq1, align 8
  %722 = load i8**, i8*** @Q__align_gapmap.mseq2, align 8
  %723 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %724 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %725 = load i32**, i32*** @Q__align_gapmap.ijp, align 8
  %726 = load i32, i32* %icyc.addr, align 4
  %727 = load i32, i32* %jcyc.addr, align 4
  %728 = load i32*, i32** %gapmap1.addr, align 8
  %729 = load i32*, i32** %gapmap2.addr, align 8
  call void @Atracking_localhom_gapmap(float* %716, float* %717, float* %718, i8** %719, i8** %720, i8** %721, i8** %722, float** %723, float** %724, i32** %725, i32 %726, i32 %727, i32* %728, i32* %729)
  br label %if.end.650

if.else.648:                                      ; preds = %if.end.645
  %730 = load float*, float** %currentw, align 8
  %731 = load float*, float** @Q__align_gapmap.lastverticalw, align 8
  %732 = load i8**, i8*** %seq1.addr, align 8
  %733 = load i8**, i8*** %seq2.addr, align 8
  %734 = load i8**, i8*** @Q__align_gapmap.mseq1, align 8
  %735 = load i8**, i8*** @Q__align_gapmap.mseq2, align 8
  %736 = load float**, float*** @Q__align_gapmap.cpmx1, align 8
  %737 = load float**, float*** @Q__align_gapmap.cpmx2, align 8
  %738 = load i32**, i32*** @Q__align_gapmap.ijp, align 8
  %739 = load i32, i32* %icyc.addr, align 4
  %740 = load i32, i32* %jcyc.addr, align 4
  %call649 = call float @Atracking(float* %730, float* %731, i8** %732, i8** %733, i8** %734, i8** %735, float** %736, float** %737, i32** %738, i32 %739, i32 %740)
  br label %if.end.650

if.end.650:                                       ; preds = %if.else.648, %if.then.647
  %741 = load i8**, i8*** @Q__align_gapmap.mseq1, align 8
  %arrayidx651 = getelementptr inbounds i8*, i8** %741, i64 0
  %742 = load i8*, i8** %arrayidx651, align 8
  %call652 = call i64 @strlen(i8* %742) #5
  %conv653 = trunc i64 %call652 to i32
  store i32 %conv653, i32* %resultlen, align 4
  %743 = load i32, i32* %alloclen.addr, align 4
  %744 = load i32, i32* %resultlen, align 4
  %cmp654 = icmp slt i32 %743, %744
  br i1 %cmp654, label %if.then.659, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %if.end.650
  %745 = load i32, i32* %resultlen, align 4
  %cmp657 = icmp sgt i32 %745, 5000000
  br i1 %cmp657, label %if.then.659, label %if.end.661

if.then.659:                                      ; preds = %lor.lhs.false.656, %if.end.650
  %746 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %747 = load i32, i32* %alloclen.addr, align 4
  %748 = load i32, i32* %resultlen, align 4
  %call660 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %746, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %747, i32 %748, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.659, %lor.lhs.false.656
  store i32 0, i32* %i, align 4
  br label %for.cond.662

for.cond.662:                                     ; preds = %for.inc.671, %if.end.661
  %749 = load i32, i32* %i, align 4
  %750 = load i32, i32* %icyc.addr, align 4
  %cmp663 = icmp slt i32 %749, %750
  br i1 %cmp663, label %for.body.665, label %for.end.673

for.body.665:                                     ; preds = %for.cond.662
  %751 = load i32, i32* %i, align 4
  %idxprom666 = sext i32 %751 to i64
  %752 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx667 = getelementptr inbounds i8*, i8** %752, i64 %idxprom666
  %753 = load i8*, i8** %arrayidx667, align 8
  %754 = load i32, i32* %i, align 4
  %idxprom668 = sext i32 %754 to i64
  %755 = load i8**, i8*** @Q__align_gapmap.mseq1, align 8
  %arrayidx669 = getelementptr inbounds i8*, i8** %755, i64 %idxprom668
  %756 = load i8*, i8** %arrayidx669, align 8
  %call670 = call i8* @strcpy(i8* %753, i8* %756) #4
  br label %for.inc.671

for.inc.671:                                      ; preds = %for.body.665
  %757 = load i32, i32* %i, align 4
  %inc672 = add nsw i32 %757, 1
  store i32 %inc672, i32* %i, align 4
  br label %for.cond.662

for.end.673:                                      ; preds = %for.cond.662
  store i32 0, i32* %j, align 4
  br label %for.cond.674

for.cond.674:                                     ; preds = %for.inc.683, %for.end.673
  %758 = load i32, i32* %j, align 4
  %759 = load i32, i32* %jcyc.addr, align 4
  %cmp675 = icmp slt i32 %758, %759
  br i1 %cmp675, label %for.body.677, label %for.end.685

for.body.677:                                     ; preds = %for.cond.674
  %760 = load i32, i32* %j, align 4
  %idxprom678 = sext i32 %760 to i64
  %761 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx679 = getelementptr inbounds i8*, i8** %761, i64 %idxprom678
  %762 = load i8*, i8** %arrayidx679, align 8
  %763 = load i32, i32* %j, align 4
  %idxprom680 = sext i32 %763 to i64
  %764 = load i8**, i8*** @Q__align_gapmap.mseq2, align 8
  %arrayidx681 = getelementptr inbounds i8*, i8** %764, i64 %idxprom680
  %765 = load i8*, i8** %arrayidx681, align 8
  %call682 = call i8* @strcpy(i8* %762, i8* %765) #4
  br label %for.inc.683

for.inc.683:                                      ; preds = %for.body.677
  %766 = load i32, i32* %j, align 4
  %inc684 = add nsw i32 %766, 1
  store i32 %inc684, i32* %j, align 4
  br label %for.cond.674

for.end.685:                                      ; preds = %for.cond.674
  %767 = load float, float* %wm, align 4
  ret float %767
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_tateQ_gapmap(float* %imp, i32 %j1, i32 %lgth1, i32* %gapmap1) #0 {
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
define internal void @imp_match_out_veadQ_gapmap(float* %imp, i32 %i1, i32 %lgth2, i32* %gapmap2) #0 {
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
  %gap = alloca [2 x i8], align 1
  %wm = alloca float, align 4
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
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Atracking_localhom_gapmap.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth1, align 4
  %3 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %4) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %lgth2, align 4
  %5 = load i32, i32* @outgap, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.41

if.else:                                          ; preds = %entry
  %6 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx5, align 4
  store float %7, float* %wm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %lgth1, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %11, i64 %idxprom
  %12 = load float, float* %arrayidx8, align 4
  %13 = load float, float* %wm, align 4
  %cmp9 = fcmp oge float %12, %13
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load float*, float** %lastverticalw.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %15, i64 %idxprom12
  %16 = load float, float* %arrayidx13, align 4
  store float %16, float* %wm, align 4
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %iin, align 4
  %18 = load i32, i32* %lgth2, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %jin, align 4
  %19 = load i32, i32* %lgth1, align 4
  %20 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %19, %20
  %21 = load i32, i32* %lgth2, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32, i32* %lgth1, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %23, i64 %idxprom16
  %24 = load i32*, i32** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom15
  store i32 %sub14, i32* %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.38, %for.end
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %lgth2, align 4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body.22, label %for.end.40

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %29, i64 %idxprom23
  %30 = load float, float* %arrayidx24, align 4
  %31 = load float, float* %wm, align 4
  %cmp25 = fcmp oge float %30, %31
  br i1 %cmp25, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %for.body.22
  %32 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %32 to i64
  %33 = load float*, float** %lasthorizontalw.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %33, i64 %idxprom28
  %34 = load float, float* %arrayidx29, align 4
  store float %34, float* %wm, align 4
  %35 = load i32, i32* %lgth1, align 4
  %sub30 = sub nsw i32 %35, 1
  store i32 %sub30, i32* %iin, align 4
  %36 = load i32, i32* %j, align 4
  store i32 %36, i32* %jin, align 4
  %37 = load i32, i32* %lgth2, align 4
  %38 = load i32, i32* %j, align 4
  %sub31 = sub nsw i32 %37, %38
  %sub32 = sub nsw i32 0, %sub31
  %39 = load i32, i32* %lgth2, align 4
  %idxprom33 = sext i32 %39 to i64
  %40 = load i32, i32* %lgth1, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %41, i64 %idxprom34
  %42 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  store i32 %sub32, i32* %arrayidx36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.27, %for.body.22
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %43 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.19

for.end.40:                                       ; preds = %for.cond.19
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %if.end.41
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %lgth1, align 4
  %add = add nsw i32 %45, 1
  %cmp43 = icmp slt i32 %44, %add
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %46 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %46, 1
  %47 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %48, i64 %idxprom47
  %49 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %add46, i32* %arrayidx49, align 4
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %50 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %50, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.63, %for.end.52
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %lgth2, align 4
  %add54 = add nsw i32 %52, 1
  %cmp55 = icmp slt i32 %51, %add54
  br i1 %cmp55, label %for.body.57, label %for.end.65

for.body.57:                                      ; preds = %for.cond.53
  %53 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %53, 1
  %sub59 = sub nsw i32 0, %add58
  %54 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %54 to i64
  %55 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %55, i64 0
  %56 = load i32*, i32** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %56, i64 %idxprom60
  store i32 %sub59, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.57
  %57 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %57, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.53

for.end.65:                                       ; preds = %for.cond.53
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.75, %for.end.65
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %icyc.addr, align 4
  %cmp67 = icmp slt i32 %58, %59
  br i1 %cmp67, label %for.body.69, label %for.end.77

for.body.69:                                      ; preds = %for.cond.66
  %60 = load i32, i32* %lgth1, align 4
  %61 = load i32, i32* %lgth2, align 4
  %add70 = add nsw i32 %60, %61
  %62 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %62 to i64
  %63 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %63, i64 %idxprom71
  %64 = load i8*, i8** %arrayidx72, align 8
  %idx.ext = sext i32 %add70 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx72, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %65 to i64
  %66 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %66, i64 %idxprom73
  %67 = load i8*, i8** %arrayidx74, align 8
  store i8 0, i8* %67, align 1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.69
  %68 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %68, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.66

for.end.77:                                       ; preds = %for.cond.66
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.89, %for.end.77
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %jcyc.addr, align 4
  %cmp79 = icmp slt i32 %69, %70
  br i1 %cmp79, label %for.body.81, label %for.end.91

for.body.81:                                      ; preds = %for.cond.78
  %71 = load i32, i32* %lgth1, align 4
  %72 = load i32, i32* %lgth2, align 4
  %add82 = add nsw i32 %71, %72
  %73 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %73 to i64
  %74 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %74, i64 %idxprom83
  %75 = load i8*, i8** %arrayidx84, align 8
  %idx.ext85 = sext i32 %add82 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %75, i64 %idx.ext85
  store i8* %add.ptr86, i8** %arrayidx84, align 8
  %76 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %76 to i64
  %77 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %77, i64 %idxprom87
  %78 = load i8*, i8** %arrayidx88, align 8
  store i8 0, i8* %78, align 1
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.81
  %79 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %79, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond.78

for.end.91:                                       ; preds = %for.cond.78
  %80 = load i32, i32* %lgth1, align 4
  store i32 %80, i32* %iin, align 4
  %81 = load i32, i32* %lgth2, align 4
  store i32 %81, i32* %jin, align 4
  %82 = load float*, float** %impwmpt.addr, align 8
  store float 0.000000e+00, float* %82, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.235, %for.end.91
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %lgth1, align 4
  %85 = load i32, i32* %lgth2, align 4
  %add93 = add nsw i32 %84, %85
  %cmp94 = icmp sle i32 %83, %add93
  br i1 %cmp94, label %for.body.96, label %for.end.237

for.body.96:                                      ; preds = %for.cond.92
  %86 = load i32, i32* %jin, align 4
  %idxprom97 = sext i32 %86 to i64
  %87 = load i32, i32* %iin, align 4
  %idxprom98 = sext i32 %87 to i64
  %88 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %88, i64 %idxprom98
  %89 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %89, i64 %idxprom97
  %90 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp slt i32 %90, 0
  br i1 %cmp101, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %for.body.96
  %91 = load i32, i32* %iin, align 4
  %sub104 = sub nsw i32 %91, 1
  store i32 %sub104, i32* %ifi, align 4
  %92 = load i32, i32* %jin, align 4
  %93 = load i32, i32* %jin, align 4
  %idxprom105 = sext i32 %93 to i64
  %94 = load i32, i32* %iin, align 4
  %idxprom106 = sext i32 %94 to i64
  %95 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %95, i64 %idxprom106
  %96 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %96, i64 %idxprom105
  %97 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %92, %97
  store i32 %add109, i32* %jfi, align 4
  br label %if.end.128

if.else.110:                                      ; preds = %for.body.96
  %98 = load i32, i32* %jin, align 4
  %idxprom111 = sext i32 %98 to i64
  %99 = load i32, i32* %iin, align 4
  %idxprom112 = sext i32 %99 to i64
  %100 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %100, i64 %idxprom112
  %101 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %101, i64 %idxprom111
  %102 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp sgt i32 %102, 0
  br i1 %cmp115, label %if.then.117, label %if.else.124

if.then.117:                                      ; preds = %if.else.110
  %103 = load i32, i32* %iin, align 4
  %104 = load i32, i32* %jin, align 4
  %idxprom118 = sext i32 %104 to i64
  %105 = load i32, i32* %iin, align 4
  %idxprom119 = sext i32 %105 to i64
  %106 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %106, i64 %idxprom119
  %107 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %107, i64 %idxprom118
  %108 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %103, %108
  store i32 %sub122, i32* %ifi, align 4
  %109 = load i32, i32* %jin, align 4
  %sub123 = sub nsw i32 %109, 1
  store i32 %sub123, i32* %jfi, align 4
  br label %if.end.127

if.else.124:                                      ; preds = %if.else.110
  %110 = load i32, i32* %iin, align 4
  %sub125 = sub nsw i32 %110, 1
  store i32 %sub125, i32* %ifi, align 4
  %111 = load i32, i32* %jin, align 4
  %sub126 = sub nsw i32 %111, 1
  store i32 %sub126, i32* %jfi, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.117
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.103
  %112 = load i32, i32* %iin, align 4
  %113 = load i32, i32* %ifi, align 4
  %sub129 = sub nsw i32 %112, %113
  store i32 %sub129, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.153, %if.end.128
  %114 = load i32, i32* %l, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.141, %while.body
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %icyc.addr, align 4
  %cmp131 = icmp slt i32 %115, %116
  br i1 %cmp131, label %for.body.133, label %for.end.143

for.body.133:                                     ; preds = %for.cond.130
  %117 = load i32, i32* %ifi, align 4
  %118 = load i32, i32* %l, align 4
  %add134 = add nsw i32 %117, %118
  %idxprom135 = sext i32 %add134 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %119 to i64
  %120 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %120, i64 %idxprom136
  %121 = load i8*, i8** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %121, i64 %idxprom135
  %122 = load i8, i8* %arrayidx138, align 1
  %123 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %123 to i64
  %124 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8*, i8** %124, i64 %idxprom139
  %125 = load i8*, i8** %arrayidx140, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx140, align 8
  store i8 %122, i8* %incdec.ptr, align 1
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.133
  %126 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %126, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.130

for.end.143:                                      ; preds = %for.cond.130
  store i32 0, i32* %j, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.151, %for.end.143
  %127 = load i32, i32* %j, align 4
  %128 = load i32, i32* %jcyc.addr, align 4
  %cmp145 = icmp slt i32 %127, %128
  br i1 %cmp145, label %for.body.147, label %for.end.153

for.body.147:                                     ; preds = %for.cond.144
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %129 = load i8, i8* %arraydecay, align 1
  %130 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %130 to i64
  %131 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %131, i64 %idxprom148
  %132 = load i8*, i8** %arrayidx149, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %incdec.ptr150, i8** %arrayidx149, align 8
  store i8 %129, i8* %incdec.ptr150, align 1
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.147
  %133 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %133, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.144

for.end.153:                                      ; preds = %for.cond.144
  %134 = load i32, i32* %k, align 4
  %inc154 = add nsw i32 %134, 1
  store i32 %inc154, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %135 = load i32, i32* %jin, align 4
  %136 = load i32, i32* %jfi, align 4
  %sub155 = sub nsw i32 %135, %136
  store i32 %sub155, i32* %l, align 4
  br label %while.cond.156

while.cond.156:                                   ; preds = %for.end.185, %while.end
  %137 = load i32, i32* %l, align 4
  %dec157 = add nsw i32 %137, -1
  store i32 %dec157, i32* %l, align 4
  %tobool158 = icmp ne i32 %dec157, 0
  br i1 %tobool158, label %while.body.159, label %while.end.187

while.body.159:                                   ; preds = %while.cond.156
  store i32 0, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.168, %while.body.159
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* %icyc.addr, align 4
  %cmp161 = icmp slt i32 %138, %139
  br i1 %cmp161, label %for.body.163, label %for.end.170

for.body.163:                                     ; preds = %for.cond.160
  %arraydecay164 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %140 = load i8, i8* %arraydecay164, align 1
  %141 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %141 to i64
  %142 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %142, i64 %idxprom165
  %143 = load i8*, i8** %arrayidx166, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %incdec.ptr167, i8** %arrayidx166, align 8
  store i8 %140, i8* %incdec.ptr167, align 1
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.163
  %144 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %144, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.160

for.end.170:                                      ; preds = %for.cond.160
  store i32 0, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.183, %for.end.170
  %145 = load i32, i32* %j, align 4
  %146 = load i32, i32* %jcyc.addr, align 4
  %cmp172 = icmp slt i32 %145, %146
  br i1 %cmp172, label %for.body.174, label %for.end.185

for.body.174:                                     ; preds = %for.cond.171
  %147 = load i32, i32* %jfi, align 4
  %148 = load i32, i32* %l, align 4
  %add175 = add nsw i32 %147, %148
  %idxprom176 = sext i32 %add175 to i64
  %149 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %149 to i64
  %150 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %150, i64 %idxprom177
  %151 = load i8*, i8** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %151, i64 %idxprom176
  %152 = load i8, i8* %arrayidx179, align 1
  %153 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %153 to i64
  %154 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %154, i64 %idxprom180
  %155 = load i8*, i8** %arrayidx181, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %155, i32 -1
  store i8* %incdec.ptr182, i8** %arrayidx181, align 8
  store i8 %152, i8* %incdec.ptr182, align 1
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.174
  %156 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %156, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.171

for.end.185:                                      ; preds = %for.cond.171
  %157 = load i32, i32* %k, align 4
  %inc186 = add nsw i32 %157, 1
  store i32 %inc186, i32* %k, align 4
  br label %while.cond.156

while.end.187:                                    ; preds = %while.cond.156
  %158 = load i32, i32* %iin, align 4
  %159 = load i32, i32* %lgth1, align 4
  %cmp188 = icmp ne i32 %158, %159
  br i1 %cmp188, label %land.lhs.true, label %if.end.199

land.lhs.true:                                    ; preds = %while.end.187
  %160 = load i32, i32* %jin, align 4
  %161 = load i32, i32* %lgth2, align 4
  %cmp190 = icmp ne i32 %160, %161
  br i1 %cmp190, label %if.then.192, label %if.end.199

if.then.192:                                      ; preds = %land.lhs.true
  %162 = load i32, i32* %iin, align 4
  %idxprom193 = sext i32 %162 to i64
  %163 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %163, i64 %idxprom193
  %164 = load i32, i32* %arrayidx194, align 4
  %165 = load i32, i32* %jin, align 4
  %idxprom195 = sext i32 %165 to i64
  %166 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %166, i64 %idxprom195
  %167 = load i32, i32* %arrayidx196, align 4
  %call197 = call float @imp_match_out_scQ(i32 %164, i32 %167)
  %168 = load float*, float** %impwmpt.addr, align 8
  %169 = load float, float* %168, align 4
  %add198 = fadd float %169, %call197
  store float %add198, float* %168, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.192, %land.lhs.true, %while.end.187
  %170 = load i32, i32* %iin, align 4
  %cmp200 = icmp sle i32 %170, 0
  br i1 %cmp200, label %if.then.204, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.199
  %171 = load i32, i32* %jin, align 4
  %cmp202 = icmp sle i32 %171, 0
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %lor.lhs.false, %if.end.199
  br label %for.end.237

if.end.205:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.217, %if.end.205
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %icyc.addr, align 4
  %cmp207 = icmp slt i32 %172, %173
  br i1 %cmp207, label %for.body.209, label %for.end.219

for.body.209:                                     ; preds = %for.cond.206
  %174 = load i32, i32* %ifi, align 4
  %idxprom210 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %175 to i64
  %176 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx212 = getelementptr inbounds i8*, i8** %176, i64 %idxprom211
  %177 = load i8*, i8** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %177, i64 %idxprom210
  %178 = load i8, i8* %arrayidx213, align 1
  %179 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %179 to i64
  %180 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %180, i64 %idxprom214
  %181 = load i8*, i8** %arrayidx215, align 8
  %incdec.ptr216 = getelementptr inbounds i8, i8* %181, i32 -1
  store i8* %incdec.ptr216, i8** %arrayidx215, align 8
  store i8 %178, i8* %incdec.ptr216, align 1
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.209
  %182 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %182, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond.206

for.end.219:                                      ; preds = %for.cond.206
  store i32 0, i32* %j, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.231, %for.end.219
  %183 = load i32, i32* %j, align 4
  %184 = load i32, i32* %jcyc.addr, align 4
  %cmp221 = icmp slt i32 %183, %184
  br i1 %cmp221, label %for.body.223, label %for.end.233

for.body.223:                                     ; preds = %for.cond.220
  %185 = load i32, i32* %jfi, align 4
  %idxprom224 = sext i32 %185 to i64
  %186 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %186 to i64
  %187 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %187, i64 %idxprom225
  %188 = load i8*, i8** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %188, i64 %idxprom224
  %189 = load i8, i8* %arrayidx227, align 1
  %190 = load i32, i32* %j, align 4
  %idxprom228 = sext i32 %190 to i64
  %191 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %191, i64 %idxprom228
  %192 = load i8*, i8** %arrayidx229, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %incdec.ptr230, i8** %arrayidx229, align 8
  store i8 %189, i8* %incdec.ptr230, align 1
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.223
  %193 = load i32, i32* %j, align 4
  %inc232 = add nsw i32 %193, 1
  store i32 %inc232, i32* %j, align 4
  br label %for.cond.220

for.end.233:                                      ; preds = %for.cond.220
  %194 = load i32, i32* %k, align 4
  %inc234 = add nsw i32 %194, 1
  store i32 %inc234, i32* %k, align 4
  %195 = load i32, i32* %ifi, align 4
  store i32 %195, i32* %iin, align 4
  %196 = load i32, i32* %jfi, align 4
  store i32 %196, i32* %jin, align 4
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.end.233
  %197 = load i32, i32* %k, align 4
  %inc236 = add nsw i32 %197, 1
  store i32 %inc236, i32* %k, align 4
  br label %for.cond.92

for.end.237:                                      ; preds = %if.then.204, %for.cond.92
  ret void
}

declare void @gapireru(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
