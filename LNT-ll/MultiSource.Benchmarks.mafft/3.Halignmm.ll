; ModuleID = './MultiSource.Benchmarks.mafft/3.Halignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gappattern = type { i32, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@impmtx = internal global float** null, align 8
@imp_match_init_strictH.impalloclen = internal global i32 0, align 4
@imp_match_init_strictH.nocount1 = internal global i8* null, align 8
@imp_match_init_strictH.nocount2 = internal global i8* null, align 8
@fastathreshold = external global double, align 8
@H__align.mi = internal global float 0.000000e+00, align 4
@H__align.m = internal global float* null, align 8
@H__align.ijp = internal global i32** null, align 8
@H__align.mpi = internal global i32 0, align 4
@H__align.mp = internal global i32* null, align 8
@H__align.w1 = internal global float* null, align 8
@H__align.w2 = internal global float* null, align 8
@H__align.match = internal global float* null, align 8
@H__align.initverticalw = internal global float* null, align 8
@H__align.lastverticalw = internal global float* null, align 8
@H__align.mseq1 = internal global i8** null, align 8
@H__align.mseq2 = internal global i8** null, align 8
@H__align.mseq = internal global i8** null, align 8
@H__align.gappat1 = internal global %struct._Gappattern** null, align 8
@H__align.gappat2 = internal global %struct._Gappattern** null, align 8
@H__align.digf1 = internal global float* null, align 8
@H__align.digf2 = internal global float* null, align 8
@H__align.diaf1 = internal global float* null, align 8
@H__align.diaf2 = internal global float* null, align 8
@H__align.gapz1 = internal global float* null, align 8
@H__align.gapz2 = internal global float* null, align 8
@H__align.gapf1 = internal global float* null, align 8
@H__align.gapf2 = internal global float* null, align 8
@H__align.ogcp1g = internal global float* null, align 8
@H__align.ogcp2g = internal global float* null, align 8
@H__align.fgcp1g = internal global float* null, align 8
@H__align.fgcp2g = internal global float* null, align 8
@H__align.ogcp1 = internal global float* null, align 8
@H__align.ogcp2 = internal global float* null, align 8
@H__align.fgcp1 = internal global float* null, align 8
@H__align.fgcp2 = internal global float* null, align 8
@H__align.cpmx1 = internal global float** null, align 8
@H__align.cpmx2 = internal global float** null, align 8
@H__align.intwork = internal global i32** null, align 8
@H__align.floatwork = internal global float** null, align 8
@H__align.orlgth1 = internal global i32 0, align 4
@H__align.orlgth2 = internal global i32 0, align 4
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
@.str.2 = private unnamed_addr constant [9 x i8] c"wm = %f\0A\00", align 1
@n_dis = external global [26 x [26 x i32]], align 16

; Function Attrs: nounwind uwtable
define float @imp_match_out_scH(i32 %i1, i32 %j1) #0 {
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
define void @imp_match_init_strictH(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
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
  %0 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
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
  %6 = load i8*, i8** @imp_match_init_strictH.nocount1, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** @imp_match_init_strictH.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** @imp_match_init_strictH.nocount2, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8*, i8** @imp_match_init_strictH.nocount2, align 8
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
  store i32 %add11, i32* @imp_match_init_strictH.impalloclen, align 4
  %14 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
  %15 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
  %call = call float** @AllocateFloatMtx(i32 %14, i32 %15)
  store float** %call, float*** @impmtx, align 8
  %16 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
  %call12 = call i8* @AllocateCharVec(i32 %16)
  store i8* %call12, i8** @imp_match_init_strictH.nocount1, align 8
  %17 = load i32, i32* @imp_match_init_strictH.impalloclen, align 4
  %call13 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call13, i8** @imp_match_init_strictH.nocount2, align 8
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
  %31 = load i8*, i8** @imp_match_init_strictH.nocount1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8*, i8** @imp_match_init_strictH.nocount1, align 8
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
  %48 = load i8*, i8** @imp_match_init_strictH.nocount2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 1, i8* %arrayidx60, align 1
  br label %if.end.64

if.else.61:                                       ; preds = %for.end.55
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %50 = load i8*, i8** @imp_match_init_strictH.nocount2, align 8
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
define float @H__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %tmppenal = alloca float, align 4
  %cumpenal = alloca float, align 4
  %fgcp2pt = alloca float*, align 8
  %ogcp2pt = alloca float*, align 8
  %fgcp1va = alloca float, align 4
  %ogcp1va = alloca float, align 4
  %maegap = alloca i32, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1146 = alloca i32, align 4
  %ll2147 = alloca i32, align 4
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
  %1 = load i32, i32* @H__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @H__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @H__align.mseq2, align 8
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
  %9 = load i32, i32* @H__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @H__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.114

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @H__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @H__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @H__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @H__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @H__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @H__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @H__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @H__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @H__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @H__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %23 = bitcast %struct._Gappattern** %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %25 = bitcast %struct._Gappattern** %24 to i8*
  call void @free(i8* %25) #4
  %26 = load float*, float** @H__align.digf1, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load float*, float** @H__align.digf2, align 8
  call void @FreeFloatVec(float* %27)
  %28 = load float*, float** @H__align.diaf1, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load float*, float** @H__align.diaf2, align 8
  call void @FreeFloatVec(float* %29)
  %30 = load float*, float** @H__align.gapz1, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load float*, float** @H__align.gapz2, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @H__align.gapf1, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @H__align.gapf2, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @H__align.ogcp1, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load float*, float** @H__align.ogcp2, align 8
  call void @FreeFloatVec(float* %35)
  %36 = load float*, float** @H__align.fgcp1, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load float*, float** @H__align.fgcp2, align 8
  call void @FreeFloatVec(float* %37)
  %38 = load float*, float** @H__align.ogcp1g, align 8
  call void @FreeFloatVec(float* %38)
  %39 = load float*, float** @H__align.ogcp2g, align 8
  call void @FreeFloatVec(float* %39)
  %40 = load float*, float** @H__align.fgcp1g, align 8
  call void @FreeFloatVec(float* %40)
  %41 = load float*, float** @H__align.fgcp2g, align 8
  call void @FreeFloatVec(float* %41)
  %42 = load float**, float*** @H__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %42)
  %43 = load float**, float*** @H__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %43)
  %44 = load float**, float*** @H__align.floatwork, align 8
  call void @FreeFloatMtx(float** %44)
  %45 = load i32**, i32*** @H__align.intwork, align 8
  call void @FreeIntMtx(i32** %45)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %46 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %46 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %47 = load i32, i32* @H__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %47
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %48 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %48 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %49 = load i32, i32* @H__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %49, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %50 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %50 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %51 = load i32, i32* @H__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %51
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %52 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %52 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %53 = load i32, i32* @H__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %53, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %54 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %54, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @H__align.w1, align 8
  %55 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %55, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @H__align.w2, align 8
  %56 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %56, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @H__align.match, align 8
  %57 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %57, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @H__align.initverticalw, align 8
  %58 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %58, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @H__align.lastverticalw, align 8
  %59 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %59, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @H__align.m, align 8
  %60 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %60, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @H__align.mp, align 8
  %61 = load i32, i32* @njob, align 4
  %62 = load i32, i32* %ll1, align 4
  %63 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %62, %63
  %call54 = call i8** @AllocateCharMtx(i32 %61, i32 %add53)
  store i8** %call54, i8*** @H__align.mseq, align 8
  %64 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %64, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @H__align.digf1, align 8
  %65 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %65, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @H__align.digf2, align 8
  %66 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %66, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @H__align.diaf1, align 8
  %67 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %67, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @H__align.diaf2, align 8
  %68 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %68, 2
  %conv64 = sext i32 %add63 to i64
  %call65 = call noalias i8* @calloc(i64 %conv64, i64 8) #4
  %69 = bitcast i8* %call65 to %struct._Gappattern**
  store %struct._Gappattern** %69, %struct._Gappattern*** @H__align.gappat1, align 8
  %70 = load i32, i32* %ll2, align 4
  %add66 = add nsw i32 %70, 2
  %conv67 = sext i32 %add66 to i64
  %call68 = call noalias i8* @calloc(i64 %conv67, i64 8) #4
  %71 = bitcast i8* %call68 to %struct._Gappattern**
  store %struct._Gappattern** %71, %struct._Gappattern*** @H__align.gappat2, align 8
  %72 = load i32, i32* %ll1, align 4
  %add69 = add nsw i32 %72, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @H__align.gapz1, align 8
  %73 = load i32, i32* %ll2, align 4
  %add71 = add nsw i32 %73, 2
  %call72 = call float* @AllocateFloatVec(i32 %add71)
  store float* %call72, float** @H__align.gapz2, align 8
  %74 = load i32, i32* %ll1, align 4
  %add73 = add nsw i32 %74, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @H__align.gapf1, align 8
  %75 = load i32, i32* %ll2, align 4
  %add75 = add nsw i32 %75, 2
  %call76 = call float* @AllocateFloatVec(i32 %add75)
  store float* %call76, float** @H__align.gapf2, align 8
  %76 = load i32, i32* %ll1, align 4
  %add77 = add nsw i32 %76, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** @H__align.ogcp1, align 8
  %77 = load i32, i32* %ll2, align 4
  %add79 = add nsw i32 %77, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** @H__align.ogcp2, align 8
  %78 = load i32, i32* %ll1, align 4
  %add81 = add nsw i32 %78, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @H__align.fgcp1, align 8
  %79 = load i32, i32* %ll2, align 4
  %add83 = add nsw i32 %79, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** @H__align.fgcp2, align 8
  %80 = load i32, i32* %ll1, align 4
  %add85 = add nsw i32 %80, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** @H__align.ogcp1g, align 8
  %81 = load i32, i32* %ll2, align 4
  %add87 = add nsw i32 %81, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** @H__align.ogcp2g, align 8
  %82 = load i32, i32* %ll1, align 4
  %add89 = add nsw i32 %82, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** @H__align.fgcp1g, align 8
  %83 = load i32, i32* %ll2, align 4
  %add91 = add nsw i32 %83, 2
  %call92 = call float* @AllocateFloatVec(i32 %add91)
  store float* %call92, float** @H__align.fgcp2g, align 8
  %84 = load i32, i32* %ll1, align 4
  %add93 = add nsw i32 %84, 2
  %call94 = call float** @AllocateFloatMtx(i32 26, i32 %add93)
  store float** %call94, float*** @H__align.cpmx1, align 8
  %85 = load i32, i32* %ll2, align 4
  %add95 = add nsw i32 %85, 2
  %call96 = call float** @AllocateFloatMtx(i32 26, i32 %add95)
  store float** %call96, float*** @H__align.cpmx2, align 8
  %86 = load i32, i32* %ll1, align 4
  %87 = load i32, i32* %ll2, align 4
  %cmp97 = icmp sgt i32 %86, %87
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.end.36
  %88 = load i32, i32* %ll1, align 4
  br label %cond.end.101

cond.false.100:                                   ; preds = %cond.end.36
  %89 = load i32, i32* %ll2, align 4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ %88, %cond.true.99 ], [ %89, %cond.false.100 ]
  %add103 = add nsw i32 %cond102, 2
  %call104 = call float** @AllocateFloatMtx(i32 %add103, i32 26)
  store float** %call104, float*** @H__align.floatwork, align 8
  %90 = load i32, i32* %ll1, align 4
  %91 = load i32, i32* %ll2, align 4
  %cmp105 = icmp sgt i32 %90, %91
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.end.101
  %92 = load i32, i32* %ll1, align 4
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.end.101
  %93 = load i32, i32* %ll2, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ %92, %cond.true.107 ], [ %93, %cond.false.108 ]
  %add111 = add nsw i32 %cond110, 2
  %call112 = call i32** @AllocateIntMtx(i32 %add111, i32 27)
  store i32** %call112, i32*** @H__align.intwork, align 8
  %94 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %94, 100
  store i32 %sub, i32* @H__align.orlgth1, align 4
  %95 = load i32, i32* %ll2, align 4
  %sub113 = sub nsw i32 %95, 100
  store i32 %sub113, i32* @H__align.orlgth2, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %cond.end.109, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.114
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %icyc.addr, align 4
  %cmp115 = icmp slt i32 %96, %97
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %i, align 4
  %idxprom = sext i32 %98 to i64
  %99 = load i8**, i8*** @H__align.mseq, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %99, i64 %idxprom
  %100 = load i8*, i8** %arrayidx117, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %101 to i64
  %102 = load i8**, i8*** @H__align.mseq1, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %102, i64 %idxprom118
  store i8* %100, i8** %arrayidx119, align 8
  %103 = load i32, i32* %lgth1, align 4
  %idxprom120 = sext i32 %103 to i64
  %104 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %104 to i64
  %105 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %105, i64 %idxprom121
  %106 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %106, i64 %idxprom120
  store i8 0, i8* %arrayidx123, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.137, %for.end
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %jcyc.addr, align 4
  %cmp125 = icmp slt i32 %108, %109
  br i1 %cmp125, label %for.body.127, label %for.end.139

for.body.127:                                     ; preds = %for.cond.124
  %110 = load i32, i32* %icyc.addr, align 4
  %111 = load i32, i32* %j, align 4
  %add128 = add nsw i32 %110, %111
  %idxprom129 = sext i32 %add128 to i64
  %112 = load i8**, i8*** @H__align.mseq, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %112, i64 %idxprom129
  %113 = load i8*, i8** %arrayidx130, align 8
  %114 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %114 to i64
  %115 = load i8**, i8*** @H__align.mseq2, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %115, i64 %idxprom131
  store i8* %113, i8** %arrayidx132, align 8
  %116 = load i32, i32* %lgth2, align 4
  %idxprom133 = sext i32 %116 to i64
  %117 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %117 to i64
  %118 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %118, i64 %idxprom134
  %119 = load i8*, i8** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %119, i64 %idxprom133
  store i8 0, i8* %arrayidx136, align 1
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.127
  %120 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %120, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond.124

for.end.139:                                      ; preds = %for.cond.124
  %121 = load i32, i32* @H__align.orlgth1, align 4
  %122 = load i32, i32* @commonAlloc1, align 4
  %cmp140 = icmp sgt i32 %121, %122
  br i1 %cmp140, label %if.then.145, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %for.end.139
  %123 = load i32, i32* @H__align.orlgth2, align 4
  %124 = load i32, i32* @commonAlloc2, align 4
  %cmp143 = icmp sgt i32 %123, %124
  br i1 %cmp143, label %if.then.145, label %if.end.167

if.then.145:                                      ; preds = %lor.lhs.false.142, %for.end.139
  %125 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %125, 0
  br i1 %tobool, label %land.lhs.true.148, label %if.end.151

land.lhs.true.148:                                ; preds = %if.then.145
  %126 = load i32, i32* @commonAlloc2, align 4
  %tobool149 = icmp ne i32 %126, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.148
  %127 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %127)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true.148, %if.then.145
  %128 = load i32, i32* @H__align.orlgth1, align 4
  %129 = load i32, i32* @commonAlloc1, align 4
  %cmp152 = icmp sgt i32 %128, %129
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.end.151
  %130 = load i32, i32* @H__align.orlgth1, align 4
  br label %cond.end.156

cond.false.155:                                   ; preds = %if.end.151
  %131 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ %130, %cond.true.154 ], [ %131, %cond.false.155 ]
  store i32 %cond157, i32* %ll1146, align 4
  %132 = load i32, i32* @H__align.orlgth2, align 4
  %133 = load i32, i32* @commonAlloc2, align 4
  %cmp158 = icmp sgt i32 %132, %133
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %cond.end.156
  %134 = load i32, i32* @H__align.orlgth2, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %cond.end.156
  %135 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.160
  %cond163 = phi i32 [ %134, %cond.true.160 ], [ %135, %cond.false.161 ]
  store i32 %cond163, i32* %ll2147, align 4
  %136 = load i32, i32* %ll1146, align 4
  %add164 = add nsw i32 %136, 10
  %137 = load i32, i32* %ll2147, align 4
  %add165 = add nsw i32 %137, 10
  %call166 = call i32** @AllocateIntMtx(i32 %add164, i32 %add165)
  store i32** %call166, i32*** @commonIP, align 8
  %138 = load i32, i32* %ll1146, align 4
  store i32 %138, i32* @commonAlloc1, align 4
  %139 = load i32, i32* %ll2147, align 4
  store i32 %139, i32* @commonAlloc2, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.162, %lor.lhs.false.142
  %140 = load i32**, i32*** @commonIP, align 8
  store i32** %140, i32*** @H__align.ijp, align 8
  %141 = load i8**, i8*** %seq1.addr, align 8
  %142 = load float**, float*** @H__align.cpmx1, align 8
  %143 = load double*, double** %eff1.addr, align 8
  %144 = load i32, i32* %lgth1, align 4
  %145 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %141, float** %142, double* %143, i32 %144, i32 %145)
  %146 = load i8**, i8*** %seq2.addr, align 8
  %147 = load float**, float*** @H__align.cpmx2, align 8
  %148 = load double*, double** %eff2.addr, align 8
  %149 = load i32, i32* %lgth2, align 4
  %150 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %146, float** %147, double* %148, i32 %149, i32 %150)
  %151 = load i8*, i8** %sgap1.addr, align 8
  %tobool168 = icmp ne i8* %151, null
  br i1 %tobool168, label %if.then.169, label %if.else

if.then.169:                                      ; preds = %if.end.167
  %152 = load float*, float** @H__align.ogcp1g, align 8
  %153 = load i32, i32* %icyc.addr, align 4
  %154 = load i8**, i8*** %seq1.addr, align 8
  %155 = load double*, double** %eff1.addr, align 8
  %156 = load i32, i32* %lgth1, align 4
  %157 = load i8*, i8** %sgap1.addr, align 8
  %158 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %152, i32 %153, i8** %154, double* %155, i32 %156, i8* %157, i8* %158)
  %159 = load float*, float** @H__align.ogcp2g, align 8
  %160 = load i32, i32* %jcyc.addr, align 4
  %161 = load i8**, i8*** %seq2.addr, align 8
  %162 = load double*, double** %eff2.addr, align 8
  %163 = load i32, i32* %lgth2, align 4
  %164 = load i8*, i8** %sgap2.addr, align 8
  %165 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %159, i32 %160, i8** %161, double* %162, i32 %163, i8* %164, i8* %165)
  %166 = load float*, float** @H__align.fgcp1g, align 8
  %167 = load i32, i32* %icyc.addr, align 4
  %168 = load i8**, i8*** %seq1.addr, align 8
  %169 = load double*, double** %eff1.addr, align 8
  %170 = load i32, i32* %lgth1, align 4
  %171 = load i8*, i8** %sgap1.addr, align 8
  %172 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount_zure(float* %166, i32 %167, i8** %168, double* %169, i32 %170, i8* %171, i8* %172)
  %173 = load float*, float** @H__align.fgcp2g, align 8
  %174 = load i32, i32* %jcyc.addr, align 4
  %175 = load i8**, i8*** %seq2.addr, align 8
  %176 = load double*, double** %eff2.addr, align 8
  %177 = load i32, i32* %lgth2, align 4
  %178 = load i8*, i8** %sgap1.addr, align 8
  %179 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount_zure(float* %173, i32 %174, i8** %175, double* %176, i32 %177, i8* %178, i8* %179)
  %180 = load float*, float** @H__align.digf1, align 8
  %181 = load i32, i32* %icyc.addr, align 4
  %182 = load i8**, i8*** %seq1.addr, align 8
  %183 = load double*, double** %eff1.addr, align 8
  %184 = load i32, i32* %lgth1, align 4
  %185 = load i8*, i8** %sgap1.addr, align 8
  %186 = load i8*, i8** %egap1.addr, align 8
  call void @getdigapfreq_part(float* %180, i32 %181, i8** %182, double* %183, i32 %184, i8* %185, i8* %186)
  %187 = load float*, float** @H__align.digf2, align 8
  %188 = load i32, i32* %jcyc.addr, align 4
  %189 = load i8**, i8*** %seq2.addr, align 8
  %190 = load double*, double** %eff2.addr, align 8
  %191 = load i32, i32* %lgth2, align 4
  %192 = load i8*, i8** %sgap2.addr, align 8
  %193 = load i8*, i8** %egap2.addr, align 8
  call void @getdigapfreq_part(float* %187, i32 %188, i8** %189, double* %190, i32 %191, i8* %192, i8* %193)
  %194 = load float*, float** @H__align.diaf1, align 8
  %195 = load i32, i32* %icyc.addr, align 4
  %196 = load i8**, i8*** %seq1.addr, align 8
  %197 = load double*, double** %eff1.addr, align 8
  %198 = load i32, i32* %lgth1, align 4
  %199 = load i8*, i8** %sgap1.addr, align 8
  %200 = load i8*, i8** %egap1.addr, align 8
  call void @getdiaminofreq_part(float* %194, i32 %195, i8** %196, double* %197, i32 %198, i8* %199, i8* %200)
  %201 = load float*, float** @H__align.diaf2, align 8
  %202 = load i32, i32* %jcyc.addr, align 4
  %203 = load i8**, i8*** %seq2.addr, align 8
  %204 = load double*, double** %eff2.addr, align 8
  %205 = load i32, i32* %lgth2, align 4
  %206 = load i8*, i8** %sgap1.addr, align 8
  %207 = load i8*, i8** %egap2.addr, align 8
  call void @getdiaminofreq_part(float* %201, i32 %202, i8** %203, double* %204, i32 %205, i8* %206, i8* %207)
  %208 = load float*, float** @H__align.gapf1, align 8
  %209 = load i32, i32* %icyc.addr, align 4
  %210 = load i8**, i8*** %seq1.addr, align 8
  %211 = load double*, double** %eff1.addr, align 8
  %212 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %208, i32 %209, i8** %210, double* %211, i32 %212)
  %213 = load float*, float** @H__align.gapf2, align 8
  %214 = load i32, i32* %jcyc.addr, align 4
  %215 = load i8**, i8*** %seq2.addr, align 8
  %216 = load double*, double** %eff2.addr, align 8
  %217 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %213, i32 %214, i8** %215, double* %216, i32 %217)
  %218 = load float*, float** @H__align.gapz1, align 8
  %219 = load i32, i32* %icyc.addr, align 4
  %220 = load i8**, i8*** %seq1.addr, align 8
  %221 = load double*, double** %eff1.addr, align 8
  %222 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %218, i32 %219, i8** %220, double* %221, i32 %222)
  %223 = load float*, float** @H__align.gapz2, align 8
  %224 = load i32, i32* %jcyc.addr, align 4
  %225 = load i8**, i8*** %seq2.addr, align 8
  %226 = load double*, double** %eff2.addr, align 8
  %227 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %223, i32 %224, i8** %225, double* %226, i32 %227)
  br label %if.end.170

if.else:                                          ; preds = %if.end.167
  %228 = load float*, float** @H__align.ogcp1g, align 8
  %229 = load i32, i32* %icyc.addr, align 4
  %230 = load i8**, i8*** %seq1.addr, align 8
  %231 = load double*, double** %eff1.addr, align 8
  %232 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %228, i32 %229, i8** %230, double* %231, i32 %232)
  %233 = load float*, float** @H__align.ogcp2g, align 8
  %234 = load i32, i32* %jcyc.addr, align 4
  %235 = load i8**, i8*** %seq2.addr, align 8
  %236 = load double*, double** %eff2.addr, align 8
  %237 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %233, i32 %234, i8** %235, double* %236, i32 %237)
  %238 = load float*, float** @H__align.fgcp1g, align 8
  %239 = load i32, i32* %icyc.addr, align 4
  %240 = load i8**, i8*** %seq1.addr, align 8
  %241 = load double*, double** %eff1.addr, align 8
  %242 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount_zure(float* %238, i32 %239, i8** %240, double* %241, i32 %242)
  %243 = load float*, float** @H__align.fgcp2g, align 8
  %244 = load i32, i32* %jcyc.addr, align 4
  %245 = load i8**, i8*** %seq2.addr, align 8
  %246 = load double*, double** %eff2.addr, align 8
  %247 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount_zure(float* %243, i32 %244, i8** %245, double* %246, i32 %247)
  %248 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %249 = load i32, i32* %icyc.addr, align 4
  %250 = load i8**, i8*** %seq1.addr, align 8
  %251 = load double*, double** %eff1.addr, align 8
  %252 = load i32, i32* %lgth1, align 4
  call void @st_getGapPattern(%struct._Gappattern** %248, i32 %249, i8** %250, double* %251, i32 %252)
  %253 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %254 = load i32, i32* %jcyc.addr, align 4
  %255 = load i8**, i8*** %seq2.addr, align 8
  %256 = load double*, double** %eff2.addr, align 8
  %257 = load i32, i32* %lgth2, align 4
  call void @st_getGapPattern(%struct._Gappattern** %253, i32 %254, i8** %255, double* %256, i32 %257)
  %258 = load float*, float** @H__align.digf1, align 8
  %259 = load i32, i32* %icyc.addr, align 4
  %260 = load i8**, i8*** %seq1.addr, align 8
  %261 = load double*, double** %eff1.addr, align 8
  %262 = load i32, i32* %lgth1, align 4
  call void @getdigapfreq_st(float* %258, i32 %259, i8** %260, double* %261, i32 %262)
  %263 = load float*, float** @H__align.digf2, align 8
  %264 = load i32, i32* %jcyc.addr, align 4
  %265 = load i8**, i8*** %seq2.addr, align 8
  %266 = load double*, double** %eff2.addr, align 8
  %267 = load i32, i32* %lgth2, align 4
  call void @getdigapfreq_st(float* %263, i32 %264, i8** %265, double* %266, i32 %267)
  %268 = load float*, float** @H__align.diaf1, align 8
  %269 = load i32, i32* %icyc.addr, align 4
  %270 = load i8**, i8*** %seq1.addr, align 8
  %271 = load double*, double** %eff1.addr, align 8
  %272 = load i32, i32* %lgth1, align 4
  call void @getdiaminofreq_x(float* %268, i32 %269, i8** %270, double* %271, i32 %272)
  %273 = load float*, float** @H__align.diaf2, align 8
  %274 = load i32, i32* %jcyc.addr, align 4
  %275 = load i8**, i8*** %seq2.addr, align 8
  %276 = load double*, double** %eff2.addr, align 8
  %277 = load i32, i32* %lgth2, align 4
  call void @getdiaminofreq_x(float* %273, i32 %274, i8** %275, double* %276, i32 %277)
  %278 = load float*, float** @H__align.gapf1, align 8
  %279 = load i32, i32* %icyc.addr, align 4
  %280 = load i8**, i8*** %seq1.addr, align 8
  %281 = load double*, double** %eff1.addr, align 8
  %282 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %278, i32 %279, i8** %280, double* %281, i32 %282)
  %283 = load float*, float** @H__align.gapf2, align 8
  %284 = load i32, i32* %jcyc.addr, align 4
  %285 = load i8**, i8*** %seq2.addr, align 8
  %286 = load double*, double** %eff2.addr, align 8
  %287 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %283, i32 %284, i8** %285, double* %286, i32 %287)
  %288 = load float*, float** @H__align.gapz1, align 8
  %289 = load i32, i32* %icyc.addr, align 4
  %290 = load i8**, i8*** %seq1.addr, align 8
  %291 = load double*, double** %eff1.addr, align 8
  %292 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %288, i32 %289, i8** %290, double* %291, i32 %292)
  %293 = load float*, float** @H__align.gapz2, align 8
  %294 = load i32, i32* %jcyc.addr, align 4
  %295 = load i8**, i8*** %seq2.addr, align 8
  %296 = load double*, double** %eff2.addr, align 8
  %297 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %293, i32 %294, i8** %295, double* %296, i32 %297)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else, %if.then.169
  %298 = load float*, float** @H__align.w1, align 8
  store float* %298, float** %currentw, align 8
  %299 = load float*, float** @H__align.w2, align 8
  store float* %299, float** %previousw, align 8
  %300 = load float*, float** @H__align.initverticalw, align 8
  %301 = load float**, float*** @H__align.cpmx2, align 8
  %302 = load float**, float*** @H__align.cpmx1, align 8
  %303 = load i32, i32* %lgth1, align 4
  %304 = load float**, float*** @H__align.floatwork, align 8
  %305 = load i32**, i32*** @H__align.intwork, align 8
  call void @match_calc(float* %300, float** %301, float** %302, i32 0, i32 %303, float** %304, i32** %305, i32 1)
  %306 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool171 = icmp ne %struct._LocalHom*** %306, null
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.170
  %307 = load float*, float** @H__align.initverticalw, align 8
  %308 = load i32, i32* %lgth1, align 4
  call void @imp_match_out_vead_tateH(float* %307, i32 0, i32 %308)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.end.170
  %309 = load float*, float** %currentw, align 8
  %310 = load float**, float*** @H__align.cpmx1, align 8
  %311 = load float**, float*** @H__align.cpmx2, align 8
  %312 = load i32, i32* %lgth2, align 4
  %313 = load float**, float*** @H__align.floatwork, align 8
  %314 = load i32**, i32*** @H__align.intwork, align 8
  call void @match_calc(float* %309, float** %310, float** %311, i32 0, i32 %312, float** %313, i32** %314, i32 1)
  %315 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool174 = icmp ne %struct._LocalHom*** %315, null
  br i1 %tobool174, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.173
  %316 = load float*, float** %currentw, align 8
  %317 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadH(float* %316, i32 0, i32 %317)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.end.173
  %318 = load i32, i32* @outgap, align 4
  %cmp177 = icmp eq i32 %318, 1
  br i1 %cmp177, label %if.then.179, label %if.else.283

if.then.179:                                      ; preds = %if.end.176
  store i32 1, i32* %i, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.228, %if.then.179
  %319 = load i32, i32* %i, align 4
  %320 = load i32, i32* %lgth1, align 4
  %add181 = add nsw i32 %320, 1
  %cmp182 = icmp slt i32 %319, %add181
  br i1 %cmp182, label %for.body.184, label %for.end.230

for.body.184:                                     ; preds = %for.cond.180
  store float 0.000000e+00, float* %tmppenal, align 4
  %321 = load float, float* %tmppenal, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %322 to i64
  %323 = load float*, float** @H__align.initverticalw, align 8
  %arrayidx186 = getelementptr inbounds float, float* %323, i64 %idxprom185
  %324 = load float, float* %arrayidx186, align 4
  %add187 = fadd float %324, %321
  store float %add187, float* %arrayidx186, align 4
  %325 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %325 to i64
  %326 = load float*, float** @H__align.diaf1, align 8
  %arrayidx189 = getelementptr inbounds float, float* %326, i64 %idxprom188
  %327 = load float, float* %arrayidx189, align 4
  %conv190 = fpext float %327 to double
  %328 = load float*, float** @H__align.gapf2, align 8
  %arrayidx191 = getelementptr inbounds float, float* %328, i64 0
  %329 = load float, float* %arrayidx191, align 4
  %conv192 = fpext float %329 to double
  %sub193 = fsub double 1.000000e+00, %conv192
  %mul194 = fmul double %conv190, %sub193
  %330 = load float, float* %fpenalty, align 4
  %conv195 = fpext float %330 to double
  %mul196 = fmul double %mul194, %conv195
  %conv197 = fptrunc double %mul196 to float
  store float %conv197, float* %tmppenal, align 4
  %331 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %331 to i64
  %332 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx199 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %332, i64 %idxprom198
  %333 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %333, i64 0
  %freq = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx200, i32 0, i32 1
  %334 = load float, float* %freq, align 4
  %tobool201 = fcmp une float %334, 0.000000e+00
  br i1 %tobool201, label %if.then.202, label %if.end.224

if.then.202:                                      ; preds = %for.body.184
  %335 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %335 to i64
  %336 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx204 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %336, i64 %idxprom203
  %337 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %337, i64 0
  %freq206 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx205, i32 0, i32 1
  %338 = load float, float* %freq206, align 4
  %conv207 = fpext float %338 to double
  %339 = load float*, float** @H__align.gapf2, align 8
  %arrayidx208 = getelementptr inbounds float, float* %339, i64 0
  %340 = load float, float* %arrayidx208, align 4
  %conv209 = fpext float %340 to double
  %sub210 = fsub double 1.000000e+00, %conv209
  %mul211 = fmul double %conv207, %sub210
  %341 = load float, float* %fpenalty, align 4
  %conv212 = fpext float %341 to double
  %mul213 = fmul double %mul211, %conv212
  %342 = load float, float* %tmppenal, align 4
  %conv214 = fpext float %342 to double
  %add215 = fadd double %conv214, %mul213
  %conv216 = fptrunc double %add215 to float
  store float %conv216, float* %tmppenal, align 4
  %343 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx217 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %343, i64 0
  %344 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx217, align 8
  %345 = load float*, float** @H__align.diaf2, align 8
  %arrayidx218 = getelementptr inbounds float, float* %345, i64 0
  %346 = load float, float* %arrayidx218, align 4
  %347 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %347 to i64
  %348 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx220 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %348, i64 %idxprom219
  %349 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx220, align 8
  %350 = load i32, i32* %i, align 4
  %call221 = call float @countnocountx(%struct._Gappattern* %344, float %346, %struct._Gappattern* %349, i32 %350, i32 1)
  %351 = load float, float* %fpenalty, align 4
  %mul222 = fmul float %call221, %351
  %352 = load float, float* %tmppenal, align 4
  %sub223 = fsub float %352, %mul222
  store float %sub223, float* %tmppenal, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.202, %for.body.184
  %353 = load float, float* %tmppenal, align 4
  %354 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %354 to i64
  %355 = load float*, float** @H__align.initverticalw, align 8
  %arrayidx226 = getelementptr inbounds float, float* %355, i64 %idxprom225
  %356 = load float, float* %arrayidx226, align 4
  %add227 = fadd float %356, %353
  store float %add227, float* %arrayidx226, align 4
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.224
  %357 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %357, 1
  store i32 %inc229, i32* %i, align 4
  br label %for.cond.180

for.end.230:                                      ; preds = %for.cond.180
  store float 0.000000e+00, float* %cumpenal, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.280, %for.end.230
  %358 = load i32, i32* %j, align 4
  %359 = load i32, i32* %lgth2, align 4
  %add232 = add nsw i32 %359, 1
  %cmp233 = icmp slt i32 %358, %add232
  br i1 %cmp233, label %for.body.235, label %for.end.282

for.body.235:                                     ; preds = %for.cond.231
  store float 0.000000e+00, float* %tmppenal, align 4
  %360 = load float, float* %tmppenal, align 4
  %361 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %361 to i64
  %362 = load float*, float** %currentw, align 8
  %arrayidx237 = getelementptr inbounds float, float* %362, i64 %idxprom236
  %363 = load float, float* %arrayidx237, align 4
  %add238 = fadd float %363, %360
  store float %add238, float* %arrayidx237, align 4
  %364 = load i32, i32* %j, align 4
  %idxprom239 = sext i32 %364 to i64
  %365 = load float*, float** @H__align.diaf2, align 8
  %arrayidx240 = getelementptr inbounds float, float* %365, i64 %idxprom239
  %366 = load float, float* %arrayidx240, align 4
  %conv241 = fpext float %366 to double
  %367 = load float*, float** @H__align.gapf1, align 8
  %arrayidx242 = getelementptr inbounds float, float* %367, i64 0
  %368 = load float, float* %arrayidx242, align 4
  %conv243 = fpext float %368 to double
  %sub244 = fsub double 1.000000e+00, %conv243
  %mul245 = fmul double %conv241, %sub244
  %369 = load float, float* %fpenalty, align 4
  %conv246 = fpext float %369 to double
  %mul247 = fmul double %mul245, %conv246
  %conv248 = fptrunc double %mul247 to float
  store float %conv248, float* %tmppenal, align 4
  %370 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %370 to i64
  %371 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx250 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %371, i64 %idxprom249
  %372 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %372, i64 0
  %freq252 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx251, i32 0, i32 1
  %373 = load float, float* %freq252, align 4
  %tobool253 = fcmp une float %373, 0.000000e+00
  br i1 %tobool253, label %if.then.254, label %if.end.276

if.then.254:                                      ; preds = %for.body.235
  %374 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %374 to i64
  %375 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx256 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %375, i64 %idxprom255
  %376 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %376, i64 0
  %freq258 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx257, i32 0, i32 1
  %377 = load float, float* %freq258, align 4
  %conv259 = fpext float %377 to double
  %378 = load float*, float** @H__align.gapf1, align 8
  %arrayidx260 = getelementptr inbounds float, float* %378, i64 0
  %379 = load float, float* %arrayidx260, align 4
  %conv261 = fpext float %379 to double
  %sub262 = fsub double 1.000000e+00, %conv261
  %mul263 = fmul double %conv259, %sub262
  %380 = load float, float* %fpenalty, align 4
  %conv264 = fpext float %380 to double
  %mul265 = fmul double %mul263, %conv264
  %381 = load float, float* %tmppenal, align 4
  %conv266 = fpext float %381 to double
  %add267 = fadd double %conv266, %mul265
  %conv268 = fptrunc double %add267 to float
  store float %conv268, float* %tmppenal, align 4
  %382 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx269 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %382, i64 0
  %383 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx269, align 8
  %384 = load float*, float** @H__align.diaf1, align 8
  %arrayidx270 = getelementptr inbounds float, float* %384, i64 0
  %385 = load float, float* %arrayidx270, align 4
  %386 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %386 to i64
  %387 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx272 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %387, i64 %idxprom271
  %388 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx272, align 8
  %389 = load i32, i32* %j, align 4
  %call273 = call float @countnocountx(%struct._Gappattern* %383, float %385, %struct._Gappattern* %388, i32 %389, i32 1)
  %390 = load float, float* %fpenalty, align 4
  %mul274 = fmul float %call273, %390
  %391 = load float, float* %tmppenal, align 4
  %sub275 = fsub float %391, %mul274
  store float %sub275, float* %tmppenal, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.254, %for.body.235
  %392 = load float, float* %tmppenal, align 4
  %393 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %393 to i64
  %394 = load float*, float** %currentw, align 8
  %arrayidx278 = getelementptr inbounds float, float* %394, i64 %idxprom277
  %395 = load float, float* %arrayidx278, align 4
  %add279 = fadd float %395, %392
  store float %add279, float* %arrayidx278, align 4
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.276
  %396 = load i32, i32* %j, align 4
  %inc281 = add nsw i32 %396, 1
  store i32 %inc281, i32* %j, align 4
  br label %for.cond.231

for.end.282:                                      ; preds = %for.cond.231
  br label %if.end.315

if.else.283:                                      ; preds = %if.end.176
  store i32 1, i32* %j, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.296, %if.else.283
  %397 = load i32, i32* %j, align 4
  %398 = load i32, i32* %lgth2, align 4
  %add285 = add nsw i32 %398, 1
  %cmp286 = icmp slt i32 %397, %add285
  br i1 %cmp286, label %for.body.288, label %for.end.298

for.body.288:                                     ; preds = %for.cond.284
  %399 = load i32, i32* @offset, align 4
  %400 = load i32, i32* %j, align 4
  %mul289 = mul nsw i32 %399, %400
  %conv290 = sitofp i32 %mul289 to double
  %div = fdiv double %conv290, 2.000000e+00
  %401 = load i32, i32* %j, align 4
  %idxprom291 = sext i32 %401 to i64
  %402 = load float*, float** %currentw, align 8
  %arrayidx292 = getelementptr inbounds float, float* %402, i64 %idxprom291
  %403 = load float, float* %arrayidx292, align 4
  %conv293 = fpext float %403 to double
  %sub294 = fsub double %conv293, %div
  %conv295 = fptrunc double %sub294 to float
  store float %conv295, float* %arrayidx292, align 4
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.288
  %404 = load i32, i32* %j, align 4
  %inc297 = add nsw i32 %404, 1
  store i32 %inc297, i32* %j, align 4
  br label %for.cond.284

for.end.298:                                      ; preds = %for.cond.284
  store i32 1, i32* %i, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.312, %for.end.298
  %405 = load i32, i32* %i, align 4
  %406 = load i32, i32* %lgth1, align 4
  %add300 = add nsw i32 %406, 1
  %cmp301 = icmp slt i32 %405, %add300
  br i1 %cmp301, label %for.body.303, label %for.end.314

for.body.303:                                     ; preds = %for.cond.299
  %407 = load i32, i32* @offset, align 4
  %408 = load i32, i32* %i, align 4
  %mul304 = mul nsw i32 %407, %408
  %conv305 = sitofp i32 %mul304 to double
  %div306 = fdiv double %conv305, 2.000000e+00
  %409 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %409 to i64
  %410 = load float*, float** @H__align.initverticalw, align 8
  %arrayidx308 = getelementptr inbounds float, float* %410, i64 %idxprom307
  %411 = load float, float* %arrayidx308, align 4
  %conv309 = fpext float %411 to double
  %sub310 = fsub double %conv309, %div306
  %conv311 = fptrunc double %sub310 to float
  store float %conv311, float* %arrayidx308, align 4
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.body.303
  %412 = load i32, i32* %i, align 4
  %inc313 = add nsw i32 %412, 1
  store i32 %inc313, i32* %i, align 4
  br label %for.cond.299

for.end.314:                                      ; preds = %for.cond.299
  br label %if.end.315

if.end.315:                                       ; preds = %for.end.314, %for.end.282
  %413 = load float*, float** @H__align.m, align 8
  %arrayidx316 = getelementptr inbounds float, float* %413, i64 0
  store float 0.000000e+00, float* %arrayidx316, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.332, %if.end.315
  %414 = load i32, i32* %j, align 4
  %415 = load i32, i32* %lgth2, align 4
  %add318 = add nsw i32 %415, 1
  %cmp319 = icmp slt i32 %414, %add318
  br i1 %cmp319, label %for.body.321, label %for.end.334

for.body.321:                                     ; preds = %for.cond.317
  %416 = load i32, i32* %j, align 4
  %idxprom322 = sext i32 %416 to i64
  %417 = load i32*, i32** @H__align.mp, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %417, i64 %idxprom322
  store i32 0, i32* %arrayidx323, align 4
  store float 0.000000e+00, float* %tmppenal, align 4
  %418 = load i32, i32* %j, align 4
  %sub324 = sub nsw i32 %418, 1
  %idxprom325 = sext i32 %sub324 to i64
  %419 = load float*, float** %currentw, align 8
  %arrayidx326 = getelementptr inbounds float, float* %419, i64 %idxprom325
  %420 = load float, float* %arrayidx326, align 4
  %421 = load float, float* %tmppenal, align 4
  %add327 = fadd float %420, %421
  %422 = load float, float* %fpenalty, align 4
  %mul328 = fmul float %422, 1.000000e+04
  %add329 = fadd float %add327, %mul328
  %423 = load i32, i32* %j, align 4
  %idxprom330 = sext i32 %423 to i64
  %424 = load float*, float** @H__align.m, align 8
  %arrayidx331 = getelementptr inbounds float, float* %424, i64 %idxprom330
  store float %add329, float* %arrayidx331, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body.321
  %425 = load i32, i32* %j, align 4
  %inc333 = add nsw i32 %425, 1
  store i32 %inc333, i32* %j, align 4
  br label %for.cond.317

for.end.334:                                      ; preds = %for.cond.317
  %426 = load i32, i32* %lgth2, align 4
  %cmp335 = icmp eq i32 %426, 0
  br i1 %cmp335, label %if.then.337, label %if.else.339

if.then.337:                                      ; preds = %for.end.334
  %427 = load float*, float** @H__align.lastverticalw, align 8
  %arrayidx338 = getelementptr inbounds float, float* %427, i64 0
  store float 0.000000e+00, float* %arrayidx338, align 4
  br label %if.end.344

if.else.339:                                      ; preds = %for.end.334
  %428 = load i32, i32* %lgth2, align 4
  %sub340 = sub nsw i32 %428, 1
  %idxprom341 = sext i32 %sub340 to i64
  %429 = load float*, float** %currentw, align 8
  %arrayidx342 = getelementptr inbounds float, float* %429, i64 %idxprom341
  %430 = load float, float* %arrayidx342, align 4
  %431 = load float*, float** @H__align.lastverticalw, align 8
  %arrayidx343 = getelementptr inbounds float, float* %431, i64 0
  store float %430, float* %arrayidx343, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.339, %if.then.337
  %432 = load i32, i32* @outgap, align 4
  %tobool345 = icmp ne i32 %432, 0
  br i1 %tobool345, label %if.then.346, label %if.else.348

if.then.346:                                      ; preds = %if.end.344
  %433 = load i32, i32* %lgth1, align 4
  %add347 = add nsw i32 %433, 1
  store i32 %add347, i32* %lasti, align 4
  br label %if.end.349

if.else.348:                                      ; preds = %if.end.344
  %434 = load i32, i32* %lgth1, align 4
  store i32 %434, i32* %lasti, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.348, %if.then.346
  store i32 1, i32* %i, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.581, %if.end.349
  %435 = load i32, i32* %i, align 4
  %436 = load i32, i32* %lasti, align 4
  %cmp351 = icmp slt i32 %435, %436
  br i1 %cmp351, label %for.body.353, label %for.end.583

for.body.353:                                     ; preds = %for.cond.350
  %437 = load float*, float** %previousw, align 8
  store float* %437, float** %wtmp, align 8
  %438 = load float*, float** %currentw, align 8
  store float* %438, float** %previousw, align 8
  %439 = load float*, float** %wtmp, align 8
  store float* %439, float** %currentw, align 8
  %440 = load i32, i32* %i, align 4
  %sub354 = sub nsw i32 %440, 1
  %idxprom355 = sext i32 %sub354 to i64
  %441 = load float*, float** @H__align.initverticalw, align 8
  %arrayidx356 = getelementptr inbounds float, float* %441, i64 %idxprom355
  %442 = load float, float* %arrayidx356, align 4
  %443 = load float*, float** %previousw, align 8
  %arrayidx357 = getelementptr inbounds float, float* %443, i64 0
  store float %442, float* %arrayidx357, align 4
  %444 = load float*, float** %currentw, align 8
  %445 = load float**, float*** @H__align.cpmx1, align 8
  %446 = load float**, float*** @H__align.cpmx2, align 8
  %447 = load i32, i32* %i, align 4
  %448 = load i32, i32* %lgth2, align 4
  %449 = load float**, float*** @H__align.floatwork, align 8
  %450 = load i32**, i32*** @H__align.intwork, align 8
  call void @match_calc(float* %444, float** %445, float** %446, i32 %447, i32 %448, float** %449, i32** %450, i32 0)
  %451 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool358 = icmp ne %struct._LocalHom*** %451, null
  br i1 %tobool358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %for.body.353
  %452 = load float*, float** %currentw, align 8
  %453 = load i32, i32* %i, align 4
  %454 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadH(float* %452, i32 %453, i32 %454)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %for.body.353
  %455 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %455 to i64
  %456 = load float*, float** @H__align.initverticalw, align 8
  %arrayidx362 = getelementptr inbounds float, float* %456, i64 %idxprom361
  %457 = load float, float* %arrayidx362, align 4
  %458 = load float*, float** %currentw, align 8
  %arrayidx363 = getelementptr inbounds float, float* %458, i64 0
  store float %457, float* %arrayidx363, align 4
  store float 0.000000e+00, float* %tmppenal, align 4
  %459 = load float*, float** %previousw, align 8
  %arrayidx364 = getelementptr inbounds float, float* %459, i64 0
  %460 = load float, float* %arrayidx364, align 4
  %461 = load float, float* %tmppenal, align 4
  %add365 = fadd float %460, %461
  %462 = load float, float* %fpenalty, align 4
  %mul366 = fmul float %462, 1.000000e+04
  %add367 = fadd float %add365, %mul366
  store float %add367, float* @H__align.mi, align 4
  store i32 0, i32* @H__align.mpi, align 4
  %463 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %463 to i64
  %464 = load i32**, i32*** @H__align.ijp, align 8
  %arrayidx369 = getelementptr inbounds i32*, i32** %464, i64 %idxprom368
  %465 = load i32*, i32** %arrayidx369, align 8
  %add.ptr = getelementptr inbounds i32, i32* %465, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %466 = load float*, float** @H__align.m, align 8
  %add.ptr370 = getelementptr inbounds float, float* %466, i64 1
  store float* %add.ptr370, float** %mjpt, align 8
  %467 = load float*, float** %previousw, align 8
  store float* %467, float** %prept, align 8
  %468 = load float*, float** %currentw, align 8
  %add.ptr371 = getelementptr inbounds float, float* %468, i64 1
  store float* %add.ptr371, float** %curpt, align 8
  %469 = load i32*, i32** @H__align.mp, align 8
  %add.ptr372 = getelementptr inbounds i32, i32* %469, i64 1
  store i32* %add.ptr372, i32** %mpjpt, align 8
  %470 = load float*, float** @H__align.fgcp2, align 8
  store float* %470, float** %fgcp2pt, align 8
  %471 = load float*, float** @H__align.ogcp2, align 8
  %add.ptr373 = getelementptr inbounds float, float* %471, i64 1
  store float* %add.ptr373, float** %ogcp2pt, align 8
  %472 = load i32, i32* %i, align 4
  %sub374 = sub nsw i32 %472, 1
  %idxprom375 = sext i32 %sub374 to i64
  %473 = load float*, float** @H__align.fgcp1, align 8
  %arrayidx376 = getelementptr inbounds float, float* %473, i64 %idxprom375
  %474 = load float, float* %arrayidx376, align 4
  store float %474, float* %fgcp1va, align 4
  %475 = load i32, i32* %i, align 4
  %idxprom377 = sext i32 %475 to i64
  %476 = load float*, float** @H__align.ogcp1, align 8
  %arrayidx378 = getelementptr inbounds float, float* %476, i64 %idxprom377
  %477 = load float, float* %arrayidx378, align 4
  store float %477, float* %ogcp1va, align 4
  %478 = load i32, i32* %lgth2, align 4
  %add379 = add nsw i32 %478, 1
  store i32 %add379, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.573, %if.end.360
  %479 = load i32, i32* %j, align 4
  %480 = load i32, i32* %lastj, align 4
  %cmp381 = icmp slt i32 %479, %480
  br i1 %cmp381, label %for.body.383, label %for.end.575

for.body.383:                                     ; preds = %for.cond.380
  %481 = load float*, float** %prept, align 8
  %482 = load float, float* %481, align 4
  store float %482, float* %wm, align 4
  %483 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %483 to i64
  %484 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx385 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %484, i64 %idxprom384
  %485 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx385, align 8
  %arrayidx386 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %485, i64 0
  %freq387 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx386, i32 0, i32 1
  %486 = load float, float* %freq387, align 4
  %tobool388 = fcmp une float %486, 0.000000e+00
  br i1 %tobool388, label %if.then.389, label %if.end.399

if.then.389:                                      ; preds = %for.body.383
  %487 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %487 to i64
  %488 = load float*, float** @H__align.diaf1, align 8
  %arrayidx391 = getelementptr inbounds float, float* %488, i64 %idxprom390
  %489 = load float, float* %arrayidx391, align 4
  %490 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %490 to i64
  %491 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx393 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %491, i64 %idxprom392
  %492 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx393, align 8
  %arrayidx394 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %492, i64 0
  %freq395 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx394, i32 0, i32 1
  %493 = load float, float* %freq395, align 4
  %mul396 = fmul float %489, %493
  %494 = load float, float* %fpenalty, align 4
  %mul397 = fmul float %mul396, %494
  store float %mul397, float* %g, align 4
  %495 = load float, float* %g, align 4
  %496 = load float, float* %wm, align 4
  %add398 = fadd float %496, %495
  store float %add398, float* %wm, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.389, %for.body.383
  %497 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %497 to i64
  %498 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx401 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %498, i64 %idxprom400
  %499 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %499, i64 0
  %freq403 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx402, i32 0, i32 1
  %500 = load float, float* %freq403, align 4
  %tobool404 = fcmp une float %500, 0.000000e+00
  br i1 %tobool404, label %if.then.405, label %if.end.415

if.then.405:                                      ; preds = %if.end.399
  %501 = load i32, i32* %j, align 4
  %idxprom406 = sext i32 %501 to i64
  %502 = load float*, float** @H__align.diaf2, align 8
  %arrayidx407 = getelementptr inbounds float, float* %502, i64 %idxprom406
  %503 = load float, float* %arrayidx407, align 4
  %504 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %504 to i64
  %505 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx409 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %505, i64 %idxprom408
  %506 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx409, align 8
  %arrayidx410 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %506, i64 0
  %freq411 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx410, i32 0, i32 1
  %507 = load float, float* %freq411, align 4
  %mul412 = fmul float %503, %507
  %508 = load float, float* %fpenalty, align 4
  %mul413 = fmul float %mul412, %508
  store float %mul413, float* %g, align 4
  %509 = load float, float* %g, align 4
  %510 = load float, float* %wm, align 4
  %add414 = fadd float %510, %509
  store float %add414, float* %wm, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.405, %if.end.399
  %511 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %511 to i64
  %512 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx417 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %512, i64 %idxprom416
  %513 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %513, i64 0
  %freq419 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx418, i32 0, i32 1
  %514 = load float, float* %freq419, align 4
  %515 = load i32, i32* %j, align 4
  %idxprom420 = sext i32 %515 to i64
  %516 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx421 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %516, i64 %idxprom420
  %517 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %517, i64 0
  %freq423 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx422, i32 0, i32 1
  %518 = load float, float* %freq423, align 4
  %mul424 = fmul float %514, %518
  %519 = load float, float* %fpenalty, align 4
  %mul425 = fmul float %mul424, %519
  store float %mul425, float* %g, align 4
  %520 = load float, float* %g, align 4
  %521 = load float, float* %wm, align 4
  %add426 = fadd float %521, %520
  store float %add426, float* %wm, align 4
  %522 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %522, align 4
  %523 = load i32, i32* %j, align 4
  %idxprom427 = sext i32 %523 to i64
  %524 = load float*, float** @H__align.diaf2, align 8
  %arrayidx428 = getelementptr inbounds float, float* %524, i64 %idxprom427
  %525 = load float, float* %arrayidx428, align 4
  %conv429 = fpext float %525 to double
  %526 = load i32, i32* %i, align 4
  %idxprom430 = sext i32 %526 to i64
  %527 = load float*, float** @H__align.gapf1, align 8
  %arrayidx431 = getelementptr inbounds float, float* %527, i64 %idxprom430
  %528 = load float, float* %arrayidx431, align 4
  %conv432 = fpext float %528 to double
  %sub433 = fsub double 1.000000e+00, %conv432
  %mul434 = fmul double %conv429, %sub433
  %529 = load float, float* %fpenalty, align 4
  %conv435 = fpext float %529 to double
  %mul436 = fmul double %mul434, %conv435
  %conv437 = fptrunc double %mul436 to float
  store float %conv437, float* %tmppenal, align 4
  %530 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %530 to i64
  %531 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx439 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %531, i64 %idxprom438
  %532 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %532, i64 0
  %freq441 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx440, i32 0, i32 1
  %533 = load float, float* %freq441, align 4
  %tobool442 = fcmp une float %533, 0.000000e+00
  br i1 %tobool442, label %if.then.443, label %if.end.479

if.then.443:                                      ; preds = %if.end.415
  %534 = load i32, i32* %j, align 4
  %idxprom444 = sext i32 %534 to i64
  %535 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx445 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %535, i64 %idxprom444
  %536 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %536, i64 0
  %freq447 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx446, i32 0, i32 1
  %537 = load float, float* %freq447, align 4
  %conv448 = fpext float %537 to double
  %538 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %538 to i64
  %539 = load float*, float** @H__align.gapf1, align 8
  %arrayidx450 = getelementptr inbounds float, float* %539, i64 %idxprom449
  %540 = load float, float* %arrayidx450, align 4
  %conv451 = fpext float %540 to double
  %sub452 = fsub double 1.000000e+00, %conv451
  %mul453 = fmul double %conv448, %sub452
  %541 = load float, float* %fpenalty, align 4
  %conv454 = fpext float %541 to double
  %mul455 = fmul double %mul453, %conv454
  %542 = load float, float* %tmppenal, align 4
  %conv456 = fpext float %542 to double
  %add457 = fadd double %conv456, %mul455
  %conv458 = fptrunc double %add457 to float
  store float %conv458, float* %tmppenal, align 4
  %543 = load i32, i32* @H__align.mpi, align 4
  %idxprom459 = sext i32 %543 to i64
  %544 = load i32, i32* %i, align 4
  %sub460 = sub nsw i32 %544, 1
  %idxprom461 = sext i32 %sub460 to i64
  %545 = load i32**, i32*** @H__align.ijp, align 8
  %arrayidx462 = getelementptr inbounds i32*, i32** %545, i64 %idxprom461
  %546 = load i32*, i32** %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds i32, i32* %546, i64 %idxprom459
  %547 = load i32, i32* %arrayidx463, align 4
  store i32 %547, i32* %maegap, align 4
  store i32 0, i32* %maegap, align 4
  %548 = load i32, i32* %maegap, align 4
  %cmp464 = icmp eq i32 %548, 0
  br i1 %cmp464, label %if.then.466, label %if.end.478

if.then.466:                                      ; preds = %if.then.443
  %549 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %549 to i64
  %550 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx468 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %550, i64 %idxprom467
  %551 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx468, align 8
  %552 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %552 to i64
  %553 = load float*, float** @H__align.diaf1, align 8
  %arrayidx470 = getelementptr inbounds float, float* %553, i64 %idxprom469
  %554 = load float, float* %arrayidx470, align 4
  %555 = load i32, i32* %j, align 4
  %idxprom471 = sext i32 %555 to i64
  %556 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx472 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %556, i64 %idxprom471
  %557 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx472, align 8
  %558 = load i32, i32* %j, align 4
  %559 = load i32, i32* @H__align.mpi, align 4
  %sub473 = sub nsw i32 %558, %559
  %sub474 = sub nsw i32 %sub473, 1
  %call475 = call float @countnocountx(%struct._Gappattern* %551, float %554, %struct._Gappattern* %557, i32 %sub474, i32 0)
  %560 = load float, float* %fpenalty, align 4
  %mul476 = fmul float %call475, %560
  %561 = load float, float* %tmppenal, align 4
  %sub477 = fsub float %561, %mul476
  store float %sub477, float* %tmppenal, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.466, %if.then.443
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.end.415
  %562 = load float, float* @H__align.mi, align 4
  %563 = load float, float* %tmppenal, align 4
  %add480 = fadd float %562, %563
  store float %add480, float* %g, align 4
  %564 = load float, float* %wm, align 4
  %cmp481 = fcmp ogt float %add480, %564
  br i1 %cmp481, label %if.then.483, label %if.end.486

if.then.483:                                      ; preds = %if.end.479
  %565 = load float, float* %g, align 4
  store float %565, float* %wm, align 4
  %566 = load i32, i32* %j, align 4
  %567 = load i32, i32* @H__align.mpi, align 4
  %sub484 = sub nsw i32 %566, %567
  %sub485 = sub nsw i32 0, %sub484
  %568 = load i32*, i32** %ijppt, align 8
  store i32 %sub485, i32* %568, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.483, %if.end.479
  %569 = load float*, float** %prept, align 8
  %570 = load float, float* %569, align 4
  store float %570, float* %g, align 4
  %571 = load float, float* @H__align.mi, align 4
  %cmp487 = fcmp oge float %570, %571
  br i1 %cmp487, label %if.then.489, label %if.else.491

if.then.489:                                      ; preds = %if.end.486
  %572 = load float, float* %g, align 4
  store float %572, float* @H__align.mi, align 4
  %573 = load i32, i32* %j, align 4
  %sub490 = sub nsw i32 %573, 1
  store i32 %sub490, i32* @H__align.mpi, align 4
  br label %if.end.496

if.else.491:                                      ; preds = %if.end.486
  %574 = load i32, i32* %j, align 4
  %cmp492 = icmp ne i32 %574, 1
  br i1 %cmp492, label %if.then.494, label %if.end.495

if.then.494:                                      ; preds = %if.else.491
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.494, %if.else.491
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.then.489
  %575 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %575 to i64
  %576 = load float*, float** @H__align.diaf1, align 8
  %arrayidx498 = getelementptr inbounds float, float* %576, i64 %idxprom497
  %577 = load float, float* %arrayidx498, align 4
  %conv499 = fpext float %577 to double
  %578 = load i32, i32* %j, align 4
  %idxprom500 = sext i32 %578 to i64
  %579 = load float*, float** @H__align.gapf2, align 8
  %arrayidx501 = getelementptr inbounds float, float* %579, i64 %idxprom500
  %580 = load float, float* %arrayidx501, align 4
  %conv502 = fpext float %580 to double
  %sub503 = fsub double 1.000000e+00, %conv502
  %mul504 = fmul double %conv499, %sub503
  %581 = load float, float* %fpenalty, align 4
  %conv505 = fpext float %581 to double
  %mul506 = fmul double %mul504, %conv505
  %conv507 = fptrunc double %mul506 to float
  store float %conv507, float* %tmppenal, align 4
  %582 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %582 to i64
  %583 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx509 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %583, i64 %idxprom508
  %584 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %584, i64 0
  %freq511 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx510, i32 0, i32 1
  %585 = load float, float* %freq511, align 4
  %tobool512 = fcmp une float %585, 0.000000e+00
  br i1 %tobool512, label %if.then.513, label %if.end.549

if.then.513:                                      ; preds = %if.end.496
  %586 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %586 to i64
  %587 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx515 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %587, i64 %idxprom514
  %588 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %588, i64 0
  %freq517 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %arrayidx516, i32 0, i32 1
  %589 = load float, float* %freq517, align 4
  %conv518 = fpext float %589 to double
  %590 = load i32, i32* %j, align 4
  %idxprom519 = sext i32 %590 to i64
  %591 = load float*, float** @H__align.gapf2, align 8
  %arrayidx520 = getelementptr inbounds float, float* %591, i64 %idxprom519
  %592 = load float, float* %arrayidx520, align 4
  %conv521 = fpext float %592 to double
  %sub522 = fsub double 1.000000e+00, %conv521
  %mul523 = fmul double %conv518, %sub522
  %593 = load float, float* %fpenalty, align 4
  %conv524 = fpext float %593 to double
  %mul525 = fmul double %mul523, %conv524
  %594 = load float, float* %tmppenal, align 4
  %conv526 = fpext float %594 to double
  %add527 = fadd double %conv526, %mul525
  %conv528 = fptrunc double %add527 to float
  store float %conv528, float* %tmppenal, align 4
  %595 = load i32, i32* %j, align 4
  %sub529 = sub nsw i32 %595, 1
  %idxprom530 = sext i32 %sub529 to i64
  %596 = load i32*, i32** %mpjpt, align 8
  %597 = load i32, i32* %596, align 4
  %idxprom531 = sext i32 %597 to i64
  %598 = load i32**, i32*** @H__align.ijp, align 8
  %arrayidx532 = getelementptr inbounds i32*, i32** %598, i64 %idxprom531
  %599 = load i32*, i32** %arrayidx532, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %599, i64 %idxprom530
  %600 = load i32, i32* %arrayidx533, align 4
  store i32 %600, i32* %maegap, align 4
  %601 = load i32, i32* %maegap, align 4
  %cmp534 = icmp eq i32 %601, 0
  br i1 %cmp534, label %if.then.536, label %if.end.548

if.then.536:                                      ; preds = %if.then.513
  %602 = load i32, i32* %j, align 4
  %idxprom537 = sext i32 %602 to i64
  %603 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx538 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %603, i64 %idxprom537
  %604 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx538, align 8
  %605 = load i32, i32* %j, align 4
  %idxprom539 = sext i32 %605 to i64
  %606 = load float*, float** @H__align.diaf2, align 8
  %arrayidx540 = getelementptr inbounds float, float* %606, i64 %idxprom539
  %607 = load float, float* %arrayidx540, align 4
  %608 = load i32, i32* %i, align 4
  %idxprom541 = sext i32 %608 to i64
  %609 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx542 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %609, i64 %idxprom541
  %610 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx542, align 8
  %611 = load i32, i32* %i, align 4
  %612 = load i32*, i32** %mpjpt, align 8
  %613 = load i32, i32* %612, align 4
  %sub543 = sub nsw i32 %611, %613
  %sub544 = sub nsw i32 %sub543, 1
  %call545 = call float @countnocountx(%struct._Gappattern* %604, float %607, %struct._Gappattern* %610, i32 %sub544, i32 1)
  %614 = load float, float* %fpenalty, align 4
  %mul546 = fmul float %call545, %614
  %615 = load float, float* %tmppenal, align 4
  %sub547 = fsub float %615, %mul546
  store float %sub547, float* %tmppenal, align 4
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.536, %if.then.513
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %if.end.496
  %616 = load float*, float** %mjpt, align 8
  %617 = load float, float* %616, align 4
  %618 = load float, float* %tmppenal, align 4
  %add550 = fadd float %617, %618
  store float %add550, float* %g, align 4
  %619 = load float, float* %wm, align 4
  %cmp551 = fcmp ogt float %add550, %619
  br i1 %cmp551, label %if.then.553, label %if.end.555

if.then.553:                                      ; preds = %if.end.549
  %620 = load float, float* %g, align 4
  store float %620, float* %wm, align 4
  %621 = load i32, i32* %i, align 4
  %622 = load i32*, i32** %mpjpt, align 8
  %623 = load i32, i32* %622, align 4
  %sub554 = sub nsw i32 %621, %623
  %624 = load i32*, i32** %ijppt, align 8
  store i32 %sub554, i32* %624, align 4
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.553, %if.end.549
  %625 = load float*, float** %prept, align 8
  %626 = load float, float* %625, align 4
  store float %626, float* %g, align 4
  %627 = load float*, float** %mjpt, align 8
  %628 = load float, float* %627, align 4
  %cmp556 = fcmp oge float %626, %628
  br i1 %cmp556, label %if.then.558, label %if.else.560

if.then.558:                                      ; preds = %if.end.555
  %629 = load float, float* %g, align 4
  %630 = load float*, float** %mjpt, align 8
  store float %629, float* %630, align 4
  %631 = load i32, i32* %i, align 4
  %sub559 = sub nsw i32 %631, 1
  %632 = load i32*, i32** %mpjpt, align 8
  store i32 %sub559, i32* %632, align 4
  br label %if.end.565

if.else.560:                                      ; preds = %if.end.555
  %633 = load i32, i32* %i, align 4
  %cmp561 = icmp ne i32 %633, 1
  br i1 %cmp561, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %if.else.560
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.563, %if.else.560
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %if.then.558
  %634 = load float, float* %wm, align 4
  %635 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %635, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %636 = load float, float* %635, align 4
  %add566 = fadd float %636, %634
  store float %add566, float* %635, align 4
  %637 = load i32*, i32** %ijppt, align 8
  %incdec.ptr567 = getelementptr inbounds i32, i32* %637, i32 1
  store i32* %incdec.ptr567, i32** %ijppt, align 8
  %638 = load float*, float** %mjpt, align 8
  %incdec.ptr568 = getelementptr inbounds float, float* %638, i32 1
  store float* %incdec.ptr568, float** %mjpt, align 8
  %639 = load float*, float** %prept, align 8
  %incdec.ptr569 = getelementptr inbounds float, float* %639, i32 1
  store float* %incdec.ptr569, float** %prept, align 8
  %640 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr570 = getelementptr inbounds i32, i32* %640, i32 1
  store i32* %incdec.ptr570, i32** %mpjpt, align 8
  %641 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr571 = getelementptr inbounds float, float* %641, i32 1
  store float* %incdec.ptr571, float** %fgcp2pt, align 8
  %642 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr572 = getelementptr inbounds float, float* %642, i32 1
  store float* %incdec.ptr572, float** %ogcp2pt, align 8
  br label %for.inc.573

for.inc.573:                                      ; preds = %if.end.565
  %643 = load i32, i32* %j, align 4
  %inc574 = add nsw i32 %643, 1
  store i32 %inc574, i32* %j, align 4
  br label %for.cond.380

for.end.575:                                      ; preds = %for.cond.380
  %644 = load i32, i32* %lgth2, align 4
  %sub576 = sub nsw i32 %644, 1
  %idxprom577 = sext i32 %sub576 to i64
  %645 = load float*, float** %currentw, align 8
  %arrayidx578 = getelementptr inbounds float, float* %645, i64 %idxprom577
  %646 = load float, float* %arrayidx578, align 4
  %647 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %647 to i64
  %648 = load float*, float** @H__align.lastverticalw, align 8
  %arrayidx580 = getelementptr inbounds float, float* %648, i64 %idxprom579
  store float %646, float* %arrayidx580, align 4
  br label %for.inc.581

for.inc.581:                                      ; preds = %for.end.575
  %649 = load i32, i32* %i, align 4
  %inc582 = add nsw i32 %649, 1
  store i32 %inc582, i32* %i, align 4
  br label %for.cond.350

for.end.583:                                      ; preds = %for.cond.350
  %650 = load i32, i32* @outgap, align 4
  %tobool584 = icmp ne i32 %650, 0
  br i1 %tobool584, label %if.end.622, label %if.then.585

if.then.585:                                      ; preds = %for.end.583
  store i32 1, i32* %j, align 4
  br label %for.cond.586

for.cond.586:                                     ; preds = %for.inc.600, %if.then.585
  %651 = load i32, i32* %j, align 4
  %652 = load i32, i32* %lgth2, align 4
  %add587 = add nsw i32 %652, 1
  %cmp588 = icmp slt i32 %651, %add587
  br i1 %cmp588, label %for.body.590, label %for.end.602

for.body.590:                                     ; preds = %for.cond.586
  %653 = load i32, i32* @offset, align 4
  %654 = load i32, i32* %lgth2, align 4
  %655 = load i32, i32* %j, align 4
  %sub591 = sub nsw i32 %654, %655
  %mul592 = mul nsw i32 %653, %sub591
  %conv593 = sitofp i32 %mul592 to double
  %div594 = fdiv double %conv593, 2.000000e+00
  %656 = load i32, i32* %j, align 4
  %idxprom595 = sext i32 %656 to i64
  %657 = load float*, float** %currentw, align 8
  %arrayidx596 = getelementptr inbounds float, float* %657, i64 %idxprom595
  %658 = load float, float* %arrayidx596, align 4
  %conv597 = fpext float %658 to double
  %sub598 = fsub double %conv597, %div594
  %conv599 = fptrunc double %sub598 to float
  store float %conv599, float* %arrayidx596, align 4
  br label %for.inc.600

for.inc.600:                                      ; preds = %for.body.590
  %659 = load i32, i32* %j, align 4
  %inc601 = add nsw i32 %659, 1
  store i32 %inc601, i32* %j, align 4
  br label %for.cond.586

for.end.602:                                      ; preds = %for.cond.586
  store i32 1, i32* %i, align 4
  br label %for.cond.603

for.cond.603:                                     ; preds = %for.inc.619, %for.end.602
  %660 = load i32, i32* %i, align 4
  %661 = load i32, i32* %lgth1, align 4
  %add604 = add nsw i32 %661, 1
  %cmp605 = icmp slt i32 %660, %add604
  br i1 %cmp605, label %for.body.607, label %for.end.621

for.body.607:                                     ; preds = %for.cond.603
  %662 = load i32, i32* @offset, align 4
  %conv608 = sitofp i32 %662 to double
  %663 = load i32, i32* %lgth1, align 4
  %conv609 = sitofp i32 %663 to double
  %664 = load i32, i32* %i, align 4
  %conv610 = sitofp i32 %664 to double
  %div611 = fdiv double %conv610, 2.000000e+00
  %sub612 = fsub double %conv609, %div611
  %mul613 = fmul double %conv608, %sub612
  %665 = load i32, i32* %i, align 4
  %idxprom614 = sext i32 %665 to i64
  %666 = load float*, float** @H__align.lastverticalw, align 8
  %arrayidx615 = getelementptr inbounds float, float* %666, i64 %idxprom614
  %667 = load float, float* %arrayidx615, align 4
  %conv616 = fpext float %667 to double
  %sub617 = fsub double %conv616, %mul613
  %conv618 = fptrunc double %sub617 to float
  store float %conv618, float* %arrayidx615, align 4
  br label %for.inc.619

for.inc.619:                                      ; preds = %for.body.607
  %668 = load i32, i32* %i, align 4
  %inc620 = add nsw i32 %668, 1
  store i32 %inc620, i32* %i, align 4
  br label %for.cond.603

for.end.621:                                      ; preds = %for.cond.603
  br label %if.end.622

if.end.622:                                       ; preds = %for.end.621, %for.end.583
  %669 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool623 = icmp ne %struct._LocalHom*** %669, null
  br i1 %tobool623, label %if.then.624, label %if.else.625

if.then.624:                                      ; preds = %if.end.622
  %670 = load float*, float** %impmatch.addr, align 8
  %671 = load float*, float** %currentw, align 8
  %672 = load float*, float** @H__align.lastverticalw, align 8
  %673 = load i8**, i8*** %seq1.addr, align 8
  %674 = load i8**, i8*** %seq2.addr, align 8
  %675 = load i8**, i8*** @H__align.mseq1, align 8
  %676 = load i8**, i8*** @H__align.mseq2, align 8
  %677 = load float**, float*** @H__align.cpmx1, align 8
  %678 = load float**, float*** @H__align.cpmx2, align 8
  %679 = load i32**, i32*** @H__align.ijp, align 8
  %680 = load i32, i32* %icyc.addr, align 4
  %681 = load i32, i32* %jcyc.addr, align 4
  call void @Atracking_localhom(float* %670, float* %671, float* %672, i8** %673, i8** %674, i8** %675, i8** %676, float** %677, float** %678, i32** %679, i32 %680, i32 %681)
  br label %if.end.627

if.else.625:                                      ; preds = %if.end.622
  %682 = load float*, float** %currentw, align 8
  %683 = load float*, float** @H__align.lastverticalw, align 8
  %684 = load i8**, i8*** %seq1.addr, align 8
  %685 = load i8**, i8*** %seq2.addr, align 8
  %686 = load i8**, i8*** @H__align.mseq1, align 8
  %687 = load i8**, i8*** @H__align.mseq2, align 8
  %688 = load float**, float*** @H__align.cpmx1, align 8
  %689 = load float**, float*** @H__align.cpmx2, align 8
  %690 = load i32**, i32*** @H__align.ijp, align 8
  %691 = load i32, i32* %icyc.addr, align 4
  %692 = load i32, i32* %jcyc.addr, align 4
  %call626 = call float @Atracking(float* %682, float* %683, i8** %684, i8** %685, i8** %686, i8** %687, float** %688, float** %689, i32** %690, i32 %691, i32 %692)
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.625, %if.then.624
  %693 = load i8**, i8*** @H__align.mseq1, align 8
  %arrayidx628 = getelementptr inbounds i8*, i8** %693, i64 0
  %694 = load i8*, i8** %arrayidx628, align 8
  %call629 = call i64 @strlen(i8* %694) #5
  %conv630 = trunc i64 %call629 to i32
  store i32 %conv630, i32* %resultlen, align 4
  %695 = load i32, i32* %alloclen.addr, align 4
  %696 = load i32, i32* %resultlen, align 4
  %cmp631 = icmp slt i32 %695, %696
  br i1 %cmp631, label %if.then.636, label %lor.lhs.false.633

lor.lhs.false.633:                                ; preds = %if.end.627
  %697 = load i32, i32* %resultlen, align 4
  %cmp634 = icmp sgt i32 %697, 5000000
  br i1 %cmp634, label %if.then.636, label %if.end.638

if.then.636:                                      ; preds = %lor.lhs.false.633, %if.end.627
  %698 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %699 = load i32, i32* %alloclen.addr, align 4
  %700 = load i32, i32* %resultlen, align 4
  %call637 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %698, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %699, i32 %700, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.638

if.end.638:                                       ; preds = %if.then.636, %lor.lhs.false.633
  store i32 0, i32* %i, align 4
  br label %for.cond.639

for.cond.639:                                     ; preds = %for.inc.648, %if.end.638
  %701 = load i32, i32* %i, align 4
  %702 = load i32, i32* %icyc.addr, align 4
  %cmp640 = icmp slt i32 %701, %702
  br i1 %cmp640, label %for.body.642, label %for.end.650

for.body.642:                                     ; preds = %for.cond.639
  %703 = load i32, i32* %i, align 4
  %idxprom643 = sext i32 %703 to i64
  %704 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx644 = getelementptr inbounds i8*, i8** %704, i64 %idxprom643
  %705 = load i8*, i8** %arrayidx644, align 8
  %706 = load i32, i32* %i, align 4
  %idxprom645 = sext i32 %706 to i64
  %707 = load i8**, i8*** @H__align.mseq1, align 8
  %arrayidx646 = getelementptr inbounds i8*, i8** %707, i64 %idxprom645
  %708 = load i8*, i8** %arrayidx646, align 8
  %call647 = call i8* @strcpy(i8* %705, i8* %708) #4
  br label %for.inc.648

for.inc.648:                                      ; preds = %for.body.642
  %709 = load i32, i32* %i, align 4
  %inc649 = add nsw i32 %709, 1
  store i32 %inc649, i32* %i, align 4
  br label %for.cond.639

for.end.650:                                      ; preds = %for.cond.639
  store i32 0, i32* %j, align 4
  br label %for.cond.651

for.cond.651:                                     ; preds = %for.inc.660, %for.end.650
  %710 = load i32, i32* %j, align 4
  %711 = load i32, i32* %jcyc.addr, align 4
  %cmp652 = icmp slt i32 %710, %711
  br i1 %cmp652, label %for.body.654, label %for.end.662

for.body.654:                                     ; preds = %for.cond.651
  %712 = load i32, i32* %j, align 4
  %idxprom655 = sext i32 %712 to i64
  %713 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx656 = getelementptr inbounds i8*, i8** %713, i64 %idxprom655
  %714 = load i8*, i8** %arrayidx656, align 8
  %715 = load i32, i32* %j, align 4
  %idxprom657 = sext i32 %715 to i64
  %716 = load i8**, i8*** @H__align.mseq2, align 8
  %arrayidx658 = getelementptr inbounds i8*, i8** %716, i64 %idxprom657
  %717 = load i8*, i8** %arrayidx658, align 8
  %call659 = call i8* @strcpy(i8* %714, i8* %717) #4
  br label %for.inc.660

for.inc.660:                                      ; preds = %for.body.654
  %718 = load i32, i32* %j, align 4
  %inc661 = add nsw i32 %718, 1
  store i32 %inc661, i32* %j, align 4
  br label %for.cond.651

for.end.662:                                      ; preds = %for.cond.651
  %719 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %720 = load float, float* %wm, align 4
  %conv663 = fpext float %720 to double
  %call664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %719, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), double %conv663)
  store i32 0, i32* %i, align 4
  br label %for.cond.665

for.cond.665:                                     ; preds = %for.inc.674, %for.end.662
  %721 = load i32, i32* %i, align 4
  %722 = load i32, i32* %lgth1, align 4
  %add666 = add nsw i32 %722, 1
  %cmp667 = icmp slt i32 %721, %add666
  br i1 %cmp667, label %for.body.669, label %for.end.676

for.body.669:                                     ; preds = %for.cond.665
  %723 = load i32, i32* %i, align 4
  %idxprom670 = sext i32 %723 to i64
  %724 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx671 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %724, i64 %idxprom670
  %725 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx671, align 8
  %726 = bitcast %struct._Gappattern* %725 to i8*
  call void @free(i8* %726) #4
  %727 = load i32, i32* %i, align 4
  %idxprom672 = sext i32 %727 to i64
  %728 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat1, align 8
  %arrayidx673 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %728, i64 %idxprom672
  store %struct._Gappattern* null, %struct._Gappattern** %arrayidx673, align 8
  br label %for.inc.674

for.inc.674:                                      ; preds = %for.body.669
  %729 = load i32, i32* %i, align 4
  %inc675 = add nsw i32 %729, 1
  store i32 %inc675, i32* %i, align 4
  br label %for.cond.665

for.end.676:                                      ; preds = %for.cond.665
  store i32 0, i32* %i, align 4
  br label %for.cond.677

for.cond.677:                                     ; preds = %for.inc.686, %for.end.676
  %730 = load i32, i32* %i, align 4
  %731 = load i32, i32* %lgth2, align 4
  %add678 = add nsw i32 %731, 1
  %cmp679 = icmp slt i32 %730, %add678
  br i1 %cmp679, label %for.body.681, label %for.end.688

for.body.681:                                     ; preds = %for.cond.677
  %732 = load i32, i32* %i, align 4
  %idxprom682 = sext i32 %732 to i64
  %733 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx683 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %733, i64 %idxprom682
  %734 = load %struct._Gappattern*, %struct._Gappattern** %arrayidx683, align 8
  %735 = bitcast %struct._Gappattern* %734 to i8*
  call void @free(i8* %735) #4
  %736 = load i32, i32* %i, align 4
  %idxprom684 = sext i32 %736 to i64
  %737 = load %struct._Gappattern**, %struct._Gappattern*** @H__align.gappat2, align 8
  %arrayidx685 = getelementptr inbounds %struct._Gappattern*, %struct._Gappattern** %737, i64 %idxprom684
  store %struct._Gappattern* null, %struct._Gappattern** %arrayidx685, align 8
  br label %for.inc.686

for.inc.686:                                      ; preds = %for.body.681
  %738 = load i32, i32* %i, align 4
  %inc687 = add nsw i32 %738, 1
  store i32 %inc687, i32* %i, align 4
  br label %for.cond.677

for.end.688:                                      ; preds = %for.cond.677
  %739 = load float, float* %wm, align 4
  ret float %739
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

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32** @AllocateIntMtx(i32, i32) #1

declare void @cpmx_calc_new(i8**, float**, double*, i32, i32) #1

declare void @new_OpeningGapCount_zure(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @new_FinalGapCount_zure(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getdigapfreq_part(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getdiaminofreq_part(float*, i32, i8**, double*, i32, i8*, i8*) #1

declare void @getgapfreq(float*, i32, i8**, double*, i32) #1

declare void @getgapfreq_zure(float*, i32, i8**, double*, i32) #1

declare void @st_OpeningGapCount(float*, i32, i8**, double*, i32) #1

declare void @st_FinalGapCount_zure(float*, i32, i8**, double*, i32) #1

declare void @st_getGapPattern(%struct._Gappattern**, i32, i8**, double*, i32) #1

declare void @getdigapfreq_st(float*, i32, i8**, double*, i32) #1

declare void @getdiaminofreq_x(float*, i32, i8**, double*, i32) #1

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
  %arrayidx39 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx39, i32 0, i64 %idxprom37
  %37 = load i32, i32* %arrayidx40, align 4
  %conv = sitofp i32 %37 to float
  %38 = load i32, i32* %i1.addr, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
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
  br i1 %tobool53, label %while.body, label %while.end.66

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

while.cond.55:                                    ; preds = %while.body.58, %while.body
  %56 = load i32*, i32** %cpmxpdnpt, align 8
  %57 = load i32, i32* %56, align 4
  %cmp56 = icmp sgt i32 %57, -1
  br i1 %cmp56, label %while.body.58, label %while.end

while.body.58:                                    ; preds = %while.cond.55
  %58 = load i32*, i32** %cpmxpdnpt, align 8
  %incdec.ptr59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %incdec.ptr59, i32** %cpmxpdnpt, align 8
  %59 = load i32, i32* %58, align 4
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom60
  %60 = load float, float* %arrayidx61, align 4
  %61 = load float*, float** %cpmxpdpt, align 8
  %incdec.ptr62 = getelementptr inbounds float, float* %61, i32 1
  store float* %incdec.ptr62, float** %cpmxpdpt, align 8
  %62 = load float, float* %61, align 4
  %mul63 = fmul float %60, %62
  %63 = load float*, float** %matchpt, align 8
  %64 = load float, float* %63, align 4
  %add64 = fadd float %64, %mul63
  store float %add64, float* %63, align 4
  br label %while.cond.55

while.end:                                        ; preds = %while.cond.55
  %65 = load float*, float** %matchpt, align 8
  %incdec.ptr65 = getelementptr inbounds float, float* %65, i32 1
  store float* %incdec.ptr65, float** %matchpt, align 8
  br label %while.cond

while.end.66:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imp_match_out_vead_tateH(float* %imp, i32 %j1, i32 %lgth1) #0 {
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
define internal void @imp_match_out_veadH(float* %imp, i32 %i1, i32 %lgth2) #0 {
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
define internal float @countnocountx(%struct._Gappattern* %pat1, float %diaf1, %struct._Gappattern* %pat2, i32 %offset1, i32 %r) #0 {
entry:
  %pat1.addr = alloca %struct._Gappattern*, align 8
  %diaf1.addr = alloca float, align 4
  %pat2.addr = alloca %struct._Gappattern*, align 8
  %offset1.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %gmatch = alloca float, align 4
  %pat1bk = alloca %struct._Gappattern*, align 8
  %pat2bk = alloca %struct._Gappattern*, align 8
  store %struct._Gappattern* %pat1, %struct._Gappattern** %pat1.addr, align 8
  store float %diaf1, float* %diaf1.addr, align 4
  store %struct._Gappattern* %pat2, %struct._Gappattern** %pat2.addr, align 8
  store i32 %offset1, i32* %offset1.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load %struct._Gappattern*, %struct._Gappattern** %pat1.addr, align 8
  store %struct._Gappattern* %0, %struct._Gappattern** %pat1bk, align 8
  %1 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  store %struct._Gappattern* %1, %struct._Gappattern** %pat2bk, align 8
  store float 0.000000e+00, float* %gmatch, align 4
  %2 = load %struct._Gappattern*, %struct._Gappattern** %pat2bk, align 8
  %add.ptr = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %2, i64 1
  store %struct._Gappattern* %add.ptr, %struct._Gappattern** %pat2.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %len = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %len1 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %5, i32 0, i32 0
  %6 = load i32, i32* %len1, align 4
  %7 = load i32, i32* %offset1.addr, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load float, float* %diaf1.addr, align 4
  %9 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %freq = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %9, i32 0, i32 1
  %10 = load float, float* %freq, align 4
  %mul = fmul float %8, %10
  store float %mul, float* %gmatch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %11, i32 1
  store %struct._Gappattern* %incdec.ptr, %struct._Gappattern** %pat2.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._Gappattern*, %struct._Gappattern** %pat1bk, align 8
  %add.ptr3 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %12, i64 1
  store %struct._Gappattern* %add.ptr3, %struct._Gappattern** %pat1.addr, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.25, %for.end
  %13 = load %struct._Gappattern*, %struct._Gappattern** %pat1.addr, align 8
  %len5 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %13, i32 0, i32 0
  %14 = load i32, i32* %len5, align 4
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %for.body.7, label %for.end.27

for.body.7:                                       ; preds = %for.cond.4
  %15 = load %struct._Gappattern*, %struct._Gappattern** %pat2bk, align 8
  %add.ptr8 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %15, i64 1
  store %struct._Gappattern* %add.ptr8, %struct._Gappattern** %pat2.addr, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.22, %for.body.7
  %16 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %len10 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %16, i32 0, i32 0
  %17 = load i32, i32* %len10, align 4
  %cmp11 = icmp ne i32 %17, 0
  br i1 %cmp11, label %for.body.12, label %for.end.24

for.body.12:                                      ; preds = %for.cond.9
  %18 = load %struct._Gappattern*, %struct._Gappattern** %pat1.addr, align 8
  %len13 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %18, i32 0, i32 0
  %19 = load i32, i32* %len13, align 4
  %20 = load i32, i32* %offset1.addr, align 4
  %add = add nsw i32 %19, %20
  %21 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %len14 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %21, i32 0, i32 0
  %22 = load i32, i32* %len14, align 4
  %cmp15 = icmp eq i32 %add, %22
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %for.body.12
  %23 = load %struct._Gappattern*, %struct._Gappattern** %pat1.addr, align 8
  %freq17 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %23, i32 0, i32 1
  %24 = load float, float* %freq17, align 4
  %25 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %freq18 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %25, i32 0, i32 1
  %26 = load float, float* %freq18, align 4
  %mul19 = fmul float %24, %26
  %27 = load float, float* %gmatch, align 4
  %add20 = fadd float %27, %mul19
  store float %add20, float* %gmatch, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %for.body.12
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %28 = load %struct._Gappattern*, %struct._Gappattern** %pat2.addr, align 8
  %incdec.ptr23 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %28, i32 1
  store %struct._Gappattern* %incdec.ptr23, %struct._Gappattern** %pat2.addr, align 8
  br label %for.cond.9

for.end.24:                                       ; preds = %for.cond.9
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %29 = load %struct._Gappattern*, %struct._Gappattern** %pat1.addr, align 8
  %incdec.ptr26 = getelementptr inbounds %struct._Gappattern, %struct._Gappattern* %29, i32 1
  store %struct._Gappattern* %incdec.ptr26, %struct._Gappattern** %pat1.addr, align 8
  br label %for.cond.4

for.end.27:                                       ; preds = %for.cond.4
  %30 = load float, float* %gmatch, align 4
  ret float %30
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
  %call133 = call float @imp_match_out_scH(i32 %117, i32 %118)
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

declare void @gapireru(i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
