; ModuleID = './MultiSource.Benchmarks.mafft/26.Ralignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@impmtx = internal global float** null, align 8
@imp_match_init_strictR.impalloclen = internal global i32 0, align 4
@imp_match_init_strictR.nocount1 = internal global i8* null, align 8
@imp_match_init_strictR.nocount2 = internal global i8* null, align 8
@fastathreshold = external global double, align 8
@R__align.mi = internal global float 0.000000e+00, align 4
@R__align.m = internal global float* null, align 8
@R__align.ijp = internal global i32** null, align 8
@R__align.mpi = internal global i32 0, align 4
@R__align.mp = internal global i32* null, align 8
@R__align.w1 = internal global float* null, align 8
@R__align.w2 = internal global float* null, align 8
@R__align.match = internal global float* null, align 8
@R__align.initverticalw = internal global float* null, align 8
@R__align.lastverticalw = internal global float* null, align 8
@R__align.mseq1 = internal global i8** null, align 8
@R__align.mseq2 = internal global i8** null, align 8
@R__align.mseq = internal global i8** null, align 8
@R__align.digf1 = internal global float* null, align 8
@R__align.digf2 = internal global float* null, align 8
@R__align.diaf1 = internal global float* null, align 8
@R__align.diaf2 = internal global float* null, align 8
@R__align.gapz1 = internal global float* null, align 8
@R__align.gapz2 = internal global float* null, align 8
@R__align.gapf1 = internal global float* null, align 8
@R__align.gapf2 = internal global float* null, align 8
@R__align.ogcp1g = internal global float* null, align 8
@R__align.ogcp2g = internal global float* null, align 8
@R__align.fgcp1g = internal global float* null, align 8
@R__align.fgcp2g = internal global float* null, align 8
@R__align.ogcp1 = internal global float* null, align 8
@R__align.ogcp2 = internal global float* null, align 8
@R__align.fgcp1 = internal global float* null, align 8
@R__align.fgcp2 = internal global float* null, align 8
@R__align.cpmx1 = internal global float** null, align 8
@R__align.cpmx2 = internal global float** null, align 8
@R__align.intwork = internal global i32** null, align 8
@R__align.floatwork = internal global float** null, align 8
@R__align.orlgth1 = internal global i32 0, align 4
@R__align.orlgth2 = internal global i32 0, align 4
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
define float @imp_match_out_scR(i32 %i1, i32 %j1) #0 {
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
define void @imp_match_init_strictR(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
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
  %0 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
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
  %6 = load i8*, i8** @imp_match_init_strictR.nocount1, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** @imp_match_init_strictR.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i8*, i8** @imp_match_init_strictR.nocount2, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8*, i8** @imp_match_init_strictR.nocount2, align 8
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
  store i32 %add11, i32* @imp_match_init_strictR.impalloclen, align 4
  %14 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
  %15 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
  %call = call float** @AllocateFloatMtx(i32 %14, i32 %15)
  store float** %call, float*** @impmtx, align 8
  %16 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
  %call12 = call i8* @AllocateCharVec(i32 %16)
  store i8* %call12, i8** @imp_match_init_strictR.nocount1, align 8
  %17 = load i32, i32* @imp_match_init_strictR.impalloclen, align 4
  %call13 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call13, i8** @imp_match_init_strictR.nocount2, align 8
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
  %31 = load i8*, i8** @imp_match_init_strictR.nocount1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  br label %if.end.32

if.else:                                          ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8*, i8** @imp_match_init_strictR.nocount1, align 8
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
  %48 = load i8*, i8** @imp_match_init_strictR.nocount2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  store i8 1, i8* %arrayidx60, align 1
  br label %if.end.64

if.else.61:                                       ; preds = %for.end.55
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %50 = load i8*, i8** @imp_match_init_strictR.nocount2, align 8
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
define float @R__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %kyokaipenal = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1140 = alloca i32, align 4
  %ll2141 = alloca i32, align 4
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
  %1 = load i32, i32* @R__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @R__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @R__align.mseq2, align 8
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
  %9 = load i32, i32* @R__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @R__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.108

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @R__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @R__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @R__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @R__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @R__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @R__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @R__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @R__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @R__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @R__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @R__align.digf1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @R__align.digf2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @R__align.diaf1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @R__align.diaf2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float*, float** @R__align.gapz1, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load float*, float** @R__align.gapz2, align 8
  call void @FreeFloatVec(float* %27)
  %28 = load float*, float** @R__align.gapf1, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load float*, float** @R__align.gapf2, align 8
  call void @FreeFloatVec(float* %29)
  %30 = load float*, float** @R__align.ogcp1, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load float*, float** @R__align.ogcp2, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @R__align.fgcp1, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @R__align.fgcp2, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @R__align.ogcp1g, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load float*, float** @R__align.ogcp2g, align 8
  call void @FreeFloatVec(float* %35)
  %36 = load float*, float** @R__align.fgcp1g, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load float*, float** @R__align.fgcp2g, align 8
  call void @FreeFloatVec(float* %37)
  %38 = load float**, float*** @R__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %38)
  %39 = load float**, float*** @R__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %39)
  %40 = load float**, float*** @R__align.floatwork, align 8
  call void @FreeFloatMtx(float** %40)
  %41 = load i32**, i32*** @R__align.intwork, align 8
  call void @FreeIntMtx(i32** %41)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %42 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %42 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %43 = load i32, i32* @R__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %43
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %44 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %44 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %45 = load i32, i32* @R__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %45, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %46 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %46 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %47 = load i32, i32* @R__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %47
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %48 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %48 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %49 = load i32, i32* @R__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %49, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %50 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %50, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @R__align.w1, align 8
  %51 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %51, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @R__align.w2, align 8
  %52 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %52, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @R__align.match, align 8
  %53 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %53, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @R__align.initverticalw, align 8
  %54 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %54, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @R__align.lastverticalw, align 8
  %55 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %55, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @R__align.m, align 8
  %56 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %56, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @R__align.mp, align 8
  %57 = load i32, i32* @njob, align 4
  %58 = load i32, i32* %ll1, align 4
  %59 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %58, %59
  %call54 = call i8** @AllocateCharMtx(i32 %57, i32 %add53)
  store i8** %call54, i8*** @R__align.mseq, align 8
  %60 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %60, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @R__align.digf1, align 8
  %61 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %61, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @R__align.digf2, align 8
  %62 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %62, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @R__align.diaf1, align 8
  %63 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %63, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @R__align.diaf2, align 8
  %64 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %64, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @R__align.gapz1, align 8
  %65 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %65, 2
  %call66 = call float* @AllocateFloatVec(i32 %add65)
  store float* %call66, float** @R__align.gapz2, align 8
  %66 = load i32, i32* %ll1, align 4
  %add67 = add nsw i32 %66, 2
  %call68 = call float* @AllocateFloatVec(i32 %add67)
  store float* %call68, float** @R__align.gapf1, align 8
  %67 = load i32, i32* %ll2, align 4
  %add69 = add nsw i32 %67, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @R__align.gapf2, align 8
  %68 = load i32, i32* %ll1, align 4
  %add71 = add nsw i32 %68, 2
  %call72 = call float* @AllocateFloatVec(i32 %add71)
  store float* %call72, float** @R__align.ogcp1, align 8
  %69 = load i32, i32* %ll2, align 4
  %add73 = add nsw i32 %69, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @R__align.ogcp2, align 8
  %70 = load i32, i32* %ll1, align 4
  %add75 = add nsw i32 %70, 2
  %call76 = call float* @AllocateFloatVec(i32 %add75)
  store float* %call76, float** @R__align.fgcp1, align 8
  %71 = load i32, i32* %ll2, align 4
  %add77 = add nsw i32 %71, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** @R__align.fgcp2, align 8
  %72 = load i32, i32* %ll1, align 4
  %add79 = add nsw i32 %72, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** @R__align.ogcp1g, align 8
  %73 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %73, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @R__align.ogcp2g, align 8
  %74 = load i32, i32* %ll1, align 4
  %add83 = add nsw i32 %74, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** @R__align.fgcp1g, align 8
  %75 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %75, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** @R__align.fgcp2g, align 8
  %76 = load i32, i32* %ll1, align 4
  %add87 = add nsw i32 %76, 2
  %call88 = call float** @AllocateFloatMtx(i32 26, i32 %add87)
  store float** %call88, float*** @R__align.cpmx1, align 8
  %77 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %77, 2
  %call90 = call float** @AllocateFloatMtx(i32 26, i32 %add89)
  store float** %call90, float*** @R__align.cpmx2, align 8
  %78 = load i32, i32* %ll1, align 4
  %79 = load i32, i32* %ll2, align 4
  %cmp91 = icmp sgt i32 %78, %79
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end.36
  %80 = load i32, i32* %ll1, align 4
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end.36
  %81 = load i32, i32* %ll2, align 4
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi i32 [ %80, %cond.true.93 ], [ %81, %cond.false.94 ]
  %add97 = add nsw i32 %cond96, 2
  %call98 = call float** @AllocateFloatMtx(i32 %add97, i32 26)
  store float** %call98, float*** @R__align.floatwork, align 8
  %82 = load i32, i32* %ll1, align 4
  %83 = load i32, i32* %ll2, align 4
  %cmp99 = icmp sgt i32 %82, %83
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end.95
  %84 = load i32, i32* %ll1, align 4
  br label %cond.end.103

cond.false.102:                                   ; preds = %cond.end.95
  %85 = load i32, i32* %ll2, align 4
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.101
  %cond104 = phi i32 [ %84, %cond.true.101 ], [ %85, %cond.false.102 ]
  %add105 = add nsw i32 %cond104, 2
  %call106 = call i32** @AllocateIntMtx(i32 %add105, i32 27)
  store i32** %call106, i32*** @R__align.intwork, align 8
  %86 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %86, 100
  store i32 %sub, i32* @R__align.orlgth1, align 4
  %87 = load i32, i32* %ll2, align 4
  %sub107 = sub nsw i32 %87, 100
  store i32 %sub107, i32* @R__align.orlgth2, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.103, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.108
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %icyc.addr, align 4
  %cmp109 = icmp slt i32 %88, %89
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %i, align 4
  %idxprom = sext i32 %90 to i64
  %91 = load i8**, i8*** @R__align.mseq, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %91, i64 %idxprom
  %92 = load i8*, i8** %arrayidx111, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %93 to i64
  %94 = load i8**, i8*** @R__align.mseq1, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %94, i64 %idxprom112
  store i8* %92, i8** %arrayidx113, align 8
  %95 = load i32, i32* %lgth1, align 4
  %idxprom114 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %96 to i64
  %97 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %97, i64 %idxprom115
  %98 = load i8*, i8** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %98, i64 %idxprom114
  store i8 0, i8* %arrayidx117, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.131, %for.end
  %100 = load i32, i32* %j, align 4
  %101 = load i32, i32* %jcyc.addr, align 4
  %cmp119 = icmp slt i32 %100, %101
  br i1 %cmp119, label %for.body.121, label %for.end.133

for.body.121:                                     ; preds = %for.cond.118
  %102 = load i32, i32* %icyc.addr, align 4
  %103 = load i32, i32* %j, align 4
  %add122 = add nsw i32 %102, %103
  %idxprom123 = sext i32 %add122 to i64
  %104 = load i8**, i8*** @R__align.mseq, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %104, i64 %idxprom123
  %105 = load i8*, i8** %arrayidx124, align 8
  %106 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %106 to i64
  %107 = load i8**, i8*** @R__align.mseq2, align 8
  %arrayidx126 = getelementptr inbounds i8*, i8** %107, i64 %idxprom125
  store i8* %105, i8** %arrayidx126, align 8
  %108 = load i32, i32* %lgth2, align 4
  %idxprom127 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %109 to i64
  %110 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %110, i64 %idxprom128
  %111 = load i8*, i8** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %111, i64 %idxprom127
  store i8 0, i8* %arrayidx130, align 1
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.121
  %112 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %112, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.118

for.end.133:                                      ; preds = %for.cond.118
  %113 = load i32, i32* @R__align.orlgth1, align 4
  %114 = load i32, i32* @commonAlloc1, align 4
  %cmp134 = icmp sgt i32 %113, %114
  br i1 %cmp134, label %if.then.139, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %for.end.133
  %115 = load i32, i32* @R__align.orlgth2, align 4
  %116 = load i32, i32* @commonAlloc2, align 4
  %cmp137 = icmp sgt i32 %115, %116
  br i1 %cmp137, label %if.then.139, label %if.end.161

if.then.139:                                      ; preds = %lor.lhs.false.136, %for.end.133
  %117 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %117, 0
  br i1 %tobool, label %land.lhs.true.142, label %if.end.145

land.lhs.true.142:                                ; preds = %if.then.139
  %118 = load i32, i32* @commonAlloc2, align 4
  %tobool143 = icmp ne i32 %118, 0
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %land.lhs.true.142
  %119 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %119)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %land.lhs.true.142, %if.then.139
  %120 = load i32, i32* @R__align.orlgth1, align 4
  %121 = load i32, i32* @commonAlloc1, align 4
  %cmp146 = icmp sgt i32 %120, %121
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %if.end.145
  %122 = load i32, i32* @R__align.orlgth1, align 4
  br label %cond.end.150

cond.false.149:                                   ; preds = %if.end.145
  %123 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.148
  %cond151 = phi i32 [ %122, %cond.true.148 ], [ %123, %cond.false.149 ]
  store i32 %cond151, i32* %ll1140, align 4
  %124 = load i32, i32* @R__align.orlgth2, align 4
  %125 = load i32, i32* @commonAlloc2, align 4
  %cmp152 = icmp sgt i32 %124, %125
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.end.150
  %126 = load i32, i32* @R__align.orlgth2, align 4
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.end.150
  %127 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ %126, %cond.true.154 ], [ %127, %cond.false.155 ]
  store i32 %cond157, i32* %ll2141, align 4
  %128 = load i32, i32* %ll1140, align 4
  %add158 = add nsw i32 %128, 10
  %129 = load i32, i32* %ll2141, align 4
  %add159 = add nsw i32 %129, 10
  %call160 = call i32** @AllocateIntMtx(i32 %add158, i32 %add159)
  store i32** %call160, i32*** @commonIP, align 8
  %130 = load i32, i32* %ll1140, align 4
  store i32 %130, i32* @commonAlloc1, align 4
  %131 = load i32, i32* %ll2141, align 4
  store i32 %131, i32* @commonAlloc2, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.156, %lor.lhs.false.136
  %132 = load i32**, i32*** @commonIP, align 8
  store i32** %132, i32*** @R__align.ijp, align 8
  %133 = load i8**, i8*** %seq1.addr, align 8
  %134 = load float**, float*** @R__align.cpmx1, align 8
  %135 = load double*, double** %eff1.addr, align 8
  %136 = load i32, i32* %lgth1, align 4
  %137 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %133, float** %134, double* %135, i32 %136, i32 %137)
  %138 = load i8**, i8*** %seq2.addr, align 8
  %139 = load float**, float*** @R__align.cpmx2, align 8
  %140 = load double*, double** %eff2.addr, align 8
  %141 = load i32, i32* %lgth2, align 4
  %142 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %138, float** %139, double* %140, i32 %141, i32 %142)
  %143 = load i8*, i8** %sgap1.addr, align 8
  %tobool162 = icmp ne i8* %143, null
  br i1 %tobool162, label %if.then.163, label %if.else

if.then.163:                                      ; preds = %if.end.161
  %144 = load float*, float** @R__align.ogcp1g, align 8
  %145 = load i32, i32* %icyc.addr, align 4
  %146 = load i8**, i8*** %seq1.addr, align 8
  %147 = load double*, double** %eff1.addr, align 8
  %148 = load i32, i32* %lgth1, align 4
  %149 = load i8*, i8** %sgap1.addr, align 8
  %150 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %144, i32 %145, i8** %146, double* %147, i32 %148, i8* %149, i8* %150)
  %151 = load float*, float** @R__align.ogcp2g, align 8
  %152 = load i32, i32* %jcyc.addr, align 4
  %153 = load i8**, i8*** %seq2.addr, align 8
  %154 = load double*, double** %eff2.addr, align 8
  %155 = load i32, i32* %lgth2, align 4
  %156 = load i8*, i8** %sgap2.addr, align 8
  %157 = load i8*, i8** %egap2.addr, align 8
  call void @new_OpeningGapCount_zure(float* %151, i32 %152, i8** %153, double* %154, i32 %155, i8* %156, i8* %157)
  %158 = load float*, float** @R__align.fgcp1g, align 8
  %159 = load i32, i32* %icyc.addr, align 4
  %160 = load i8**, i8*** %seq1.addr, align 8
  %161 = load double*, double** %eff1.addr, align 8
  %162 = load i32, i32* %lgth1, align 4
  %163 = load i8*, i8** %sgap1.addr, align 8
  %164 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount_zure(float* %158, i32 %159, i8** %160, double* %161, i32 %162, i8* %163, i8* %164)
  %165 = load float*, float** @R__align.fgcp2g, align 8
  %166 = load i32, i32* %jcyc.addr, align 4
  %167 = load i8**, i8*** %seq2.addr, align 8
  %168 = load double*, double** %eff2.addr, align 8
  %169 = load i32, i32* %lgth2, align 4
  %170 = load i8*, i8** %sgap2.addr, align 8
  %171 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount_zure(float* %165, i32 %166, i8** %167, double* %168, i32 %169, i8* %170, i8* %171)
  %172 = load float*, float** @R__align.digf1, align 8
  %173 = load i32, i32* %icyc.addr, align 4
  %174 = load i8**, i8*** %seq1.addr, align 8
  %175 = load double*, double** %eff1.addr, align 8
  %176 = load i32, i32* %lgth1, align 4
  %177 = load i8*, i8** %sgap1.addr, align 8
  %178 = load i8*, i8** %egap1.addr, align 8
  call void @getdigapfreq_part(float* %172, i32 %173, i8** %174, double* %175, i32 %176, i8* %177, i8* %178)
  %179 = load float*, float** @R__align.digf2, align 8
  %180 = load i32, i32* %jcyc.addr, align 4
  %181 = load i8**, i8*** %seq2.addr, align 8
  %182 = load double*, double** %eff2.addr, align 8
  %183 = load i32, i32* %lgth2, align 4
  %184 = load i8*, i8** %sgap2.addr, align 8
  %185 = load i8*, i8** %egap2.addr, align 8
  call void @getdigapfreq_part(float* %179, i32 %180, i8** %181, double* %182, i32 %183, i8* %184, i8* %185)
  %186 = load float*, float** @R__align.diaf1, align 8
  %187 = load i32, i32* %icyc.addr, align 4
  %188 = load i8**, i8*** %seq1.addr, align 8
  %189 = load double*, double** %eff1.addr, align 8
  %190 = load i32, i32* %lgth1, align 4
  %191 = load i8*, i8** %sgap1.addr, align 8
  %192 = load i8*, i8** %egap1.addr, align 8
  call void @getdiaminofreq_part(float* %186, i32 %187, i8** %188, double* %189, i32 %190, i8* %191, i8* %192)
  %193 = load float*, float** @R__align.diaf2, align 8
  %194 = load i32, i32* %jcyc.addr, align 4
  %195 = load i8**, i8*** %seq2.addr, align 8
  %196 = load double*, double** %eff2.addr, align 8
  %197 = load i32, i32* %lgth2, align 4
  %198 = load i8*, i8** %sgap2.addr, align 8
  %199 = load i8*, i8** %egap2.addr, align 8
  call void @getdiaminofreq_part(float* %193, i32 %194, i8** %195, double* %196, i32 %197, i8* %198, i8* %199)
  %200 = load float*, float** @R__align.gapf1, align 8
  %201 = load i32, i32* %icyc.addr, align 4
  %202 = load i8**, i8*** %seq1.addr, align 8
  %203 = load double*, double** %eff1.addr, align 8
  %204 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %200, i32 %201, i8** %202, double* %203, i32 %204)
  %205 = load float*, float** @R__align.gapf2, align 8
  %206 = load i32, i32* %jcyc.addr, align 4
  %207 = load i8**, i8*** %seq2.addr, align 8
  %208 = load double*, double** %eff2.addr, align 8
  %209 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %205, i32 %206, i8** %207, double* %208, i32 %209)
  %210 = load float*, float** @R__align.gapz1, align 8
  %211 = load i32, i32* %icyc.addr, align 4
  %212 = load i8**, i8*** %seq1.addr, align 8
  %213 = load double*, double** %eff1.addr, align 8
  %214 = load i32, i32* %lgth1, align 4
  %215 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %210, i32 %211, i8** %212, double* %213, i32 %214, i8* %215)
  %216 = load float*, float** @R__align.gapz2, align 8
  %217 = load i32, i32* %jcyc.addr, align 4
  %218 = load i8**, i8*** %seq2.addr, align 8
  %219 = load double*, double** %eff2.addr, align 8
  %220 = load i32, i32* %lgth2, align 4
  %221 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %216, i32 %217, i8** %218, double* %219, i32 %220, i8* %221)
  br label %if.end.164

if.else:                                          ; preds = %if.end.161
  %222 = load float*, float** @R__align.ogcp1g, align 8
  %223 = load i32, i32* %icyc.addr, align 4
  %224 = load i8**, i8*** %seq1.addr, align 8
  %225 = load double*, double** %eff1.addr, align 8
  %226 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %222, i32 %223, i8** %224, double* %225, i32 %226)
  %227 = load float*, float** @R__align.ogcp2g, align 8
  %228 = load i32, i32* %jcyc.addr, align 4
  %229 = load i8**, i8*** %seq2.addr, align 8
  %230 = load double*, double** %eff2.addr, align 8
  %231 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %227, i32 %228, i8** %229, double* %230, i32 %231)
  %232 = load float*, float** @R__align.fgcp1g, align 8
  %233 = load i32, i32* %icyc.addr, align 4
  %234 = load i8**, i8*** %seq1.addr, align 8
  %235 = load double*, double** %eff1.addr, align 8
  %236 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount_zure(float* %232, i32 %233, i8** %234, double* %235, i32 %236)
  %237 = load float*, float** @R__align.fgcp2g, align 8
  %238 = load i32, i32* %jcyc.addr, align 4
  %239 = load i8**, i8*** %seq2.addr, align 8
  %240 = load double*, double** %eff2.addr, align 8
  %241 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount_zure(float* %237, i32 %238, i8** %239, double* %240, i32 %241)
  %242 = load float*, float** @R__align.digf1, align 8
  %243 = load i32, i32* %icyc.addr, align 4
  %244 = load i8**, i8*** %seq1.addr, align 8
  %245 = load double*, double** %eff1.addr, align 8
  %246 = load i32, i32* %lgth1, align 4
  call void @getdigapfreq_st(float* %242, i32 %243, i8** %244, double* %245, i32 %246)
  %247 = load float*, float** @R__align.digf2, align 8
  %248 = load i32, i32* %jcyc.addr, align 4
  %249 = load i8**, i8*** %seq2.addr, align 8
  %250 = load double*, double** %eff2.addr, align 8
  %251 = load i32, i32* %lgth2, align 4
  call void @getdigapfreq_st(float* %247, i32 %248, i8** %249, double* %250, i32 %251)
  %252 = load float*, float** @R__align.diaf1, align 8
  %253 = load i32, i32* %icyc.addr, align 4
  %254 = load i8**, i8*** %seq1.addr, align 8
  %255 = load double*, double** %eff1.addr, align 8
  %256 = load i32, i32* %lgth1, align 4
  call void @getdiaminofreq_x(float* %252, i32 %253, i8** %254, double* %255, i32 %256)
  %257 = load float*, float** @R__align.diaf2, align 8
  %258 = load i32, i32* %jcyc.addr, align 4
  %259 = load i8**, i8*** %seq2.addr, align 8
  %260 = load double*, double** %eff2.addr, align 8
  %261 = load i32, i32* %lgth2, align 4
  call void @getdiaminofreq_x(float* %257, i32 %258, i8** %259, double* %260, i32 %261)
  %262 = load float*, float** @R__align.gapf1, align 8
  %263 = load i32, i32* %icyc.addr, align 4
  %264 = load i8**, i8*** %seq1.addr, align 8
  %265 = load double*, double** %eff1.addr, align 8
  %266 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %262, i32 %263, i8** %264, double* %265, i32 %266)
  %267 = load float*, float** @R__align.gapf2, align 8
  %268 = load i32, i32* %jcyc.addr, align 4
  %269 = load i8**, i8*** %seq2.addr, align 8
  %270 = load double*, double** %eff2.addr, align 8
  %271 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %267, i32 %268, i8** %269, double* %270, i32 %271)
  %272 = load float*, float** @R__align.gapz1, align 8
  %273 = load i32, i32* %icyc.addr, align 4
  %274 = load i8**, i8*** %seq1.addr, align 8
  %275 = load double*, double** %eff1.addr, align 8
  %276 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %272, i32 %273, i8** %274, double* %275, i32 %276)
  %277 = load float*, float** @R__align.gapz2, align 8
  %278 = load i32, i32* %jcyc.addr, align 4
  %279 = load i8**, i8*** %seq2.addr, align 8
  %280 = load double*, double** %eff2.addr, align 8
  %281 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %277, i32 %278, i8** %279, double* %280, i32 %281)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else, %if.then.163
  %282 = load float*, float** @R__align.w1, align 8
  store float* %282, float** %currentw, align 8
  %283 = load float*, float** @R__align.w2, align 8
  store float* %283, float** %previousw, align 8
  %284 = load float*, float** @R__align.initverticalw, align 8
  %285 = load float**, float*** @R__align.cpmx2, align 8
  %286 = load float**, float*** @R__align.cpmx1, align 8
  %287 = load i32, i32* %lgth1, align 4
  %288 = load float**, float*** @R__align.floatwork, align 8
  %289 = load i32**, i32*** @R__align.intwork, align 8
  call void @match_calc(float* %284, float** %285, float** %286, i32 0, i32 %287, float** %288, i32** %289, i32 1)
  %290 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool165 = icmp ne %struct._LocalHom*** %290, null
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.164
  %291 = load float*, float** @R__align.initverticalw, align 8
  %292 = load i32, i32* %lgth1, align 4
  call void @imp_match_out_vead_tateR(float* %291, i32 0, i32 %292)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.164
  %293 = load float*, float** %currentw, align 8
  %294 = load float**, float*** @R__align.cpmx1, align 8
  %295 = load float**, float*** @R__align.cpmx2, align 8
  %296 = load i32, i32* %lgth2, align 4
  %297 = load float**, float*** @R__align.floatwork, align 8
  %298 = load i32**, i32*** @R__align.intwork, align 8
  call void @match_calc(float* %293, float** %294, float** %295, i32 0, i32 %296, float** %297, i32** %298, i32 1)
  %299 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool168 = icmp ne %struct._LocalHom*** %299, null
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.167
  %300 = load float*, float** %currentw, align 8
  %301 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadR(float* %300, i32 0, i32 %301)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.end.167
  store float 0.000000e+00, float* %kyokaipenal, align 4
  %302 = load i32, i32* @outgap, align 4
  %cmp171 = icmp eq i32 %302, 1
  br i1 %cmp171, label %if.then.173, label %if.else.404

if.then.173:                                      ; preds = %if.end.170
  store float 0.000000e+00, float* %g, align 4
  %303 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx174 = getelementptr inbounds float, float* %303, i64 0
  %304 = load float, float* %arrayidx174, align 4
  %conv175 = fpext float %304 to double
  %305 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx176 = getelementptr inbounds float, float* %305, i64 0
  %306 = load float, float* %arrayidx176, align 4
  %conv177 = fpext float %306 to double
  %sub178 = fsub double 1.000000e+00, %conv177
  %mul179 = fmul double %conv175, %sub178
  %307 = load float, float* %fpenalty, align 4
  %conv180 = fpext float %307 to double
  %mul181 = fmul double %mul179, %conv180
  %mul182 = fmul double %mul181, 5.000000e-01
  %308 = load float, float* %g, align 4
  %conv183 = fpext float %308 to double
  %add184 = fadd double %conv183, %mul182
  %conv185 = fptrunc double %add184 to float
  store float %conv185, float* %g, align 4
  %309 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx186 = getelementptr inbounds float, float* %309, i64 0
  %310 = load float, float* %arrayidx186, align 4
  %conv187 = fpext float %310 to double
  %311 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx188 = getelementptr inbounds float, float* %311, i64 0
  %312 = load float, float* %arrayidx188, align 4
  %conv189 = fpext float %312 to double
  %sub190 = fsub double 1.000000e+00, %conv189
  %mul191 = fmul double %conv187, %sub190
  %313 = load float, float* %fpenalty, align 4
  %conv192 = fpext float %313 to double
  %mul193 = fmul double %mul191, %conv192
  %mul194 = fmul double %mul193, 5.000000e-01
  %314 = load float, float* %g, align 4
  %conv195 = fpext float %314 to double
  %add196 = fadd double %conv195, %mul194
  %conv197 = fptrunc double %add196 to float
  store float %conv197, float* %g, align 4
  %315 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx198 = getelementptr inbounds float, float* %315, i64 0
  %316 = load float, float* %arrayidx198, align 4
  %conv199 = fpext float %316 to double
  %317 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx200 = getelementptr inbounds float, float* %317, i64 0
  %318 = load float, float* %arrayidx200, align 4
  %conv201 = fpext float %318 to double
  %sub202 = fsub double 1.000000e+00, %conv201
  %mul203 = fmul double %conv199, %sub202
  %319 = load float, float* %fpenalty, align 4
  %conv204 = fpext float %319 to double
  %mul205 = fmul double %mul203, %conv204
  %mul206 = fmul double %mul205, 5.000000e-01
  %320 = load float, float* %g, align 4
  %conv207 = fpext float %320 to double
  %add208 = fadd double %conv207, %mul206
  %conv209 = fptrunc double %add208 to float
  store float %conv209, float* %g, align 4
  %321 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx210 = getelementptr inbounds float, float* %321, i64 0
  %322 = load float, float* %arrayidx210, align 4
  %conv211 = fpext float %322 to double
  %323 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx212 = getelementptr inbounds float, float* %323, i64 0
  %324 = load float, float* %arrayidx212, align 4
  %conv213 = fpext float %324 to double
  %sub214 = fsub double 1.000000e+00, %conv213
  %mul215 = fmul double %conv211, %sub214
  %325 = load float, float* %fpenalty, align 4
  %conv216 = fpext float %325 to double
  %mul217 = fmul double %mul215, %conv216
  %mul218 = fmul double %mul217, 5.000000e-01
  %326 = load float, float* %g, align 4
  %conv219 = fpext float %326 to double
  %add220 = fadd double %conv219, %mul218
  %conv221 = fptrunc double %add220 to float
  store float %conv221, float* %g, align 4
  %327 = load float, float* %g, align 4
  store float %327, float* %kyokaipenal, align 4
  %328 = load float, float* %g, align 4
  %329 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx222 = getelementptr inbounds float, float* %329, i64 0
  %330 = load float, float* %arrayidx222, align 4
  %add223 = fadd float %330, %328
  store float %add223, float* %arrayidx222, align 4
  %331 = load float, float* %g, align 4
  %332 = load float*, float** %currentw, align 8
  %arrayidx224 = getelementptr inbounds float, float* %332, i64 0
  %333 = load float, float* %arrayidx224, align 4
  %add225 = fadd float %333, %331
  store float %add225, float* %arrayidx224, align 4
  store float 0.000000e+00, float* %cumpenal, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.311, %if.then.173
  %334 = load i32, i32* %i, align 4
  %335 = load i32, i32* %lgth1, align 4
  %add227 = add nsw i32 %335, 1
  %cmp228 = icmp slt i32 %334, %add227
  br i1 %cmp228, label %for.body.230, label %for.end.313

for.body.230:                                     ; preds = %for.cond.226
  %336 = load float*, float** @R__align.gapz2, align 8
  %arrayidx231 = getelementptr inbounds float, float* %336, i64 0
  %337 = load float, float* %arrayidx231, align 4
  %conv232 = fpext float %337 to double
  %sub233 = fsub double 1.000000e+00, %conv232
  %338 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx234 = getelementptr inbounds float, float* %338, i64 0
  %339 = load float, float* %arrayidx234, align 4
  %conv235 = fpext float %339 to double
  %sub236 = fsub double 1.000000e+00, %conv235
  %add237 = fadd double %sub236, 0.000000e+00
  %mul238 = fmul double %sub233, %add237
  %340 = load float*, float** @R__align.gapz2, align 8
  %arrayidx239 = getelementptr inbounds float, float* %340, i64 0
  %341 = load float, float* %arrayidx239, align 4
  %conv240 = fpext float %341 to double
  %342 = load float*, float** @R__align.digf1, align 8
  %arrayidx241 = getelementptr inbounds float, float* %342, i64 0
  %343 = load float, float* %arrayidx241, align 4
  %conv242 = fpext float %343 to double
  %sub243 = fsub double 1.000000e+00, %conv242
  %344 = load float*, float** @R__align.diaf1, align 8
  %arrayidx244 = getelementptr inbounds float, float* %344, i64 0
  %345 = load float, float* %arrayidx244, align 4
  %conv245 = fpext float %345 to double
  %sub246 = fsub double %sub243, %conv245
  %mul247 = fmul double %conv240, %sub246
  %add248 = fadd double %mul238, %mul247
  %mul249 = fmul double %add248, 5.000000e-01
  %346 = load float, float* %fpenalty, align 4
  %conv250 = fpext float %346 to double
  %mul251 = fmul double %mul249, %conv250
  %conv252 = fptrunc double %mul251 to float
  store float %conv252, float* %tmppenal, align 4
  %347 = load float, float* %tmppenal, align 4
  %348 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %348 to i64
  %349 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx254 = getelementptr inbounds float, float* %349, i64 %idxprom253
  %350 = load float, float* %arrayidx254, align 4
  %add255 = fadd float %350, %347
  store float %add255, float* %arrayidx254, align 4
  %351 = load float*, float** @R__align.gapz2, align 8
  %arrayidx256 = getelementptr inbounds float, float* %351, i64 1
  %352 = load float, float* %arrayidx256, align 4
  %conv257 = fpext float %352 to double
  %sub258 = fsub double 1.000000e+00, %conv257
  %353 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %353 to i64
  %354 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx260 = getelementptr inbounds float, float* %354, i64 %idxprom259
  %355 = load float, float* %arrayidx260, align 4
  %conv261 = fpext float %355 to double
  %sub262 = fsub double 1.000000e+00, %conv261
  %356 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %356 to i64
  %357 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx264 = getelementptr inbounds float, float* %357, i64 %idxprom263
  %358 = load float, float* %arrayidx264, align 4
  %conv265 = fpext float %358 to double
  %add266 = fadd double %sub262, %conv265
  %mul267 = fmul double %sub258, %add266
  %359 = load float*, float** @R__align.gapz2, align 8
  %arrayidx268 = getelementptr inbounds float, float* %359, i64 1
  %360 = load float, float* %arrayidx268, align 4
  %conv269 = fpext float %360 to double
  %361 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %361 to i64
  %362 = load float*, float** @R__align.digf1, align 8
  %arrayidx271 = getelementptr inbounds float, float* %362, i64 %idxprom270
  %363 = load float, float* %arrayidx271, align 4
  %conv272 = fpext float %363 to double
  %sub273 = fsub double 1.000000e+00, %conv272
  %364 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %364 to i64
  %365 = load float*, float** @R__align.diaf1, align 8
  %arrayidx275 = getelementptr inbounds float, float* %365, i64 %idxprom274
  %366 = load float, float* %arrayidx275, align 4
  %conv276 = fpext float %366 to double
  %sub277 = fsub double %sub273, %conv276
  %mul278 = fmul double %conv269, %sub277
  %add279 = fadd double %mul267, %mul278
  %mul280 = fmul double %add279, 5.000000e-01
  %367 = load float, float* %fpenalty, align 4
  %conv281 = fpext float %367 to double
  %mul282 = fmul double %mul280, %conv281
  %conv283 = fptrunc double %mul282 to float
  store float %conv283, float* %tmppenal, align 4
  %368 = load float, float* %tmppenal, align 4
  %369 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %369 to i64
  %370 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx285 = getelementptr inbounds float, float* %370, i64 %idxprom284
  %371 = load float, float* %arrayidx285, align 4
  %add286 = fadd float %371, %368
  store float %add286, float* %arrayidx285, align 4
  %372 = load i32, i32* %i, align 4
  %sub287 = sub nsw i32 %372, 0
  %idxprom288 = sext i32 %sub287 to i64
  %373 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx289 = getelementptr inbounds float, float* %373, i64 %idxprom288
  %374 = load float, float* %arrayidx289, align 4
  %375 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %375 to i64
  %376 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx291 = getelementptr inbounds float, float* %376, i64 %idxprom290
  %377 = load float, float* %arrayidx291, align 4
  %add292 = fadd float %374, %377
  %378 = load float, float* %fpenalty, align 4
  %mul293 = fmul float %add292, %378
  %conv294 = fpext float %mul293 to double
  %mul295 = fmul double %conv294, 5.000000e-01
  %379 = load float, float* %cumpenal, align 4
  %conv296 = fpext float %379 to double
  %add297 = fadd double %conv296, %mul295
  %conv298 = fptrunc double %add297 to float
  store float %conv298, float* %cumpenal, align 4
  %380 = load float, float* %cumpenal, align 4
  %conv299 = fpext float %380 to double
  %381 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %381 to i64
  %382 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx301 = getelementptr inbounds float, float* %382, i64 %idxprom300
  %383 = load float, float* %arrayidx301, align 4
  %384 = load float, float* %fpenalty, align 4
  %mul302 = fmul float %383, %384
  %conv303 = fpext float %mul302 to double
  %mul304 = fmul double %conv303, 5.000000e-01
  %sub305 = fsub double %conv299, %mul304
  %385 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %385 to i64
  %386 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx307 = getelementptr inbounds float, float* %386, i64 %idxprom306
  %387 = load float, float* %arrayidx307, align 4
  %conv308 = fpext float %387 to double
  %add309 = fadd double %conv308, %sub305
  %conv310 = fptrunc double %add309 to float
  store float %conv310, float* %arrayidx307, align 4
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.body.230
  %388 = load i32, i32* %i, align 4
  %inc312 = add nsw i32 %388, 1
  store i32 %inc312, i32* %i, align 4
  br label %for.cond.226

for.end.313:                                      ; preds = %for.cond.226
  store float 0.000000e+00, float* %cumpenal, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.401, %for.end.313
  %389 = load i32, i32* %j, align 4
  %390 = load i32, i32* %lgth2, align 4
  %add315 = add nsw i32 %390, 1
  %cmp316 = icmp slt i32 %389, %add315
  br i1 %cmp316, label %for.body.318, label %for.end.403

for.body.318:                                     ; preds = %for.cond.314
  %391 = load float*, float** @R__align.gapz1, align 8
  %arrayidx319 = getelementptr inbounds float, float* %391, i64 0
  %392 = load float, float* %arrayidx319, align 4
  %conv320 = fpext float %392 to double
  %sub321 = fsub double 1.000000e+00, %conv320
  %393 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx322 = getelementptr inbounds float, float* %393, i64 0
  %394 = load float, float* %arrayidx322, align 4
  %conv323 = fpext float %394 to double
  %sub324 = fsub double 1.000000e+00, %conv323
  %add325 = fadd double %sub324, 0.000000e+00
  %mul326 = fmul double %sub321, %add325
  %395 = load float*, float** @R__align.gapz1, align 8
  %arrayidx327 = getelementptr inbounds float, float* %395, i64 0
  %396 = load float, float* %arrayidx327, align 4
  %conv328 = fpext float %396 to double
  %397 = load i32, i32* %j, align 4
  %idxprom329 = sext i32 %397 to i64
  %398 = load float*, float** @R__align.digf2, align 8
  %arrayidx330 = getelementptr inbounds float, float* %398, i64 %idxprom329
  %399 = load float, float* %arrayidx330, align 4
  %conv331 = fpext float %399 to double
  %sub332 = fsub double 1.000000e+00, %conv331
  %400 = load i32, i32* %j, align 4
  %idxprom333 = sext i32 %400 to i64
  %401 = load float*, float** @R__align.diaf2, align 8
  %arrayidx334 = getelementptr inbounds float, float* %401, i64 %idxprom333
  %402 = load float, float* %arrayidx334, align 4
  %conv335 = fpext float %402 to double
  %sub336 = fsub double %sub332, %conv335
  %mul337 = fmul double %conv328, %sub336
  %add338 = fadd double %mul326, %mul337
  %mul339 = fmul double %add338, 5.000000e-01
  %403 = load float, float* %fpenalty, align 4
  %conv340 = fpext float %403 to double
  %mul341 = fmul double %mul339, %conv340
  %conv342 = fptrunc double %mul341 to float
  store float %conv342, float* %tmppenal, align 4
  %404 = load float, float* %tmppenal, align 4
  %405 = load i32, i32* %j, align 4
  %idxprom343 = sext i32 %405 to i64
  %406 = load float*, float** %currentw, align 8
  %arrayidx344 = getelementptr inbounds float, float* %406, i64 %idxprom343
  %407 = load float, float* %arrayidx344, align 4
  %add345 = fadd float %407, %404
  store float %add345, float* %arrayidx344, align 4
  %408 = load float*, float** @R__align.gapz1, align 8
  %arrayidx346 = getelementptr inbounds float, float* %408, i64 1
  %409 = load float, float* %arrayidx346, align 4
  %conv347 = fpext float %409 to double
  %sub348 = fsub double 1.000000e+00, %conv347
  %410 = load i32, i32* %j, align 4
  %idxprom349 = sext i32 %410 to i64
  %411 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx350 = getelementptr inbounds float, float* %411, i64 %idxprom349
  %412 = load float, float* %arrayidx350, align 4
  %conv351 = fpext float %412 to double
  %sub352 = fsub double 1.000000e+00, %conv351
  %413 = load i32, i32* %j, align 4
  %idxprom353 = sext i32 %413 to i64
  %414 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx354 = getelementptr inbounds float, float* %414, i64 %idxprom353
  %415 = load float, float* %arrayidx354, align 4
  %conv355 = fpext float %415 to double
  %add356 = fadd double %sub352, %conv355
  %mul357 = fmul double %sub348, %add356
  %416 = load float*, float** @R__align.gapz1, align 8
  %arrayidx358 = getelementptr inbounds float, float* %416, i64 1
  %417 = load float, float* %arrayidx358, align 4
  %conv359 = fpext float %417 to double
  %418 = load i32, i32* %j, align 4
  %idxprom360 = sext i32 %418 to i64
  %419 = load float*, float** @R__align.digf2, align 8
  %arrayidx361 = getelementptr inbounds float, float* %419, i64 %idxprom360
  %420 = load float, float* %arrayidx361, align 4
  %conv362 = fpext float %420 to double
  %sub363 = fsub double 1.000000e+00, %conv362
  %421 = load i32, i32* %j, align 4
  %idxprom364 = sext i32 %421 to i64
  %422 = load float*, float** @R__align.diaf2, align 8
  %arrayidx365 = getelementptr inbounds float, float* %422, i64 %idxprom364
  %423 = load float, float* %arrayidx365, align 4
  %conv366 = fpext float %423 to double
  %sub367 = fsub double %sub363, %conv366
  %mul368 = fmul double %conv359, %sub367
  %add369 = fadd double %mul357, %mul368
  %mul370 = fmul double %add369, 5.000000e-01
  %424 = load float, float* %fpenalty, align 4
  %conv371 = fpext float %424 to double
  %mul372 = fmul double %mul370, %conv371
  %conv373 = fptrunc double %mul372 to float
  store float %conv373, float* %tmppenal, align 4
  %425 = load float, float* %tmppenal, align 4
  %426 = load i32, i32* %j, align 4
  %idxprom374 = sext i32 %426 to i64
  %427 = load float*, float** %currentw, align 8
  %arrayidx375 = getelementptr inbounds float, float* %427, i64 %idxprom374
  %428 = load float, float* %arrayidx375, align 4
  %add376 = fadd float %428, %425
  store float %add376, float* %arrayidx375, align 4
  %429 = load i32, i32* %j, align 4
  %sub377 = sub nsw i32 %429, 0
  %idxprom378 = sext i32 %sub377 to i64
  %430 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx379 = getelementptr inbounds float, float* %430, i64 %idxprom378
  %431 = load float, float* %arrayidx379, align 4
  %432 = load i32, i32* %j, align 4
  %idxprom380 = sext i32 %432 to i64
  %433 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx381 = getelementptr inbounds float, float* %433, i64 %idxprom380
  %434 = load float, float* %arrayidx381, align 4
  %add382 = fadd float %431, %434
  %435 = load float, float* %fpenalty, align 4
  %mul383 = fmul float %add382, %435
  %conv384 = fpext float %mul383 to double
  %mul385 = fmul double %conv384, 5.000000e-01
  %436 = load float, float* %cumpenal, align 4
  %conv386 = fpext float %436 to double
  %add387 = fadd double %conv386, %mul385
  %conv388 = fptrunc double %add387 to float
  store float %conv388, float* %cumpenal, align 4
  %437 = load float, float* %cumpenal, align 4
  %conv389 = fpext float %437 to double
  %438 = load i32, i32* %j, align 4
  %idxprom390 = sext i32 %438 to i64
  %439 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx391 = getelementptr inbounds float, float* %439, i64 %idxprom390
  %440 = load float, float* %arrayidx391, align 4
  %441 = load float, float* %fpenalty, align 4
  %mul392 = fmul float %440, %441
  %conv393 = fpext float %mul392 to double
  %mul394 = fmul double %conv393, 5.000000e-01
  %sub395 = fsub double %conv389, %mul394
  %442 = load i32, i32* %j, align 4
  %idxprom396 = sext i32 %442 to i64
  %443 = load float*, float** %currentw, align 8
  %arrayidx397 = getelementptr inbounds float, float* %443, i64 %idxprom396
  %444 = load float, float* %arrayidx397, align 4
  %conv398 = fpext float %444 to double
  %add399 = fadd double %conv398, %sub395
  %conv400 = fptrunc double %add399 to float
  store float %conv400, float* %arrayidx397, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.318
  %445 = load i32, i32* %j, align 4
  %inc402 = add nsw i32 %445, 1
  store i32 %inc402, i32* %j, align 4
  br label %for.cond.314

for.end.403:                                      ; preds = %for.cond.314
  br label %if.end.436

if.else.404:                                      ; preds = %if.end.170
  store i32 1, i32* %j, align 4
  br label %for.cond.405

for.cond.405:                                     ; preds = %for.inc.417, %if.else.404
  %446 = load i32, i32* %j, align 4
  %447 = load i32, i32* %lgth2, align 4
  %add406 = add nsw i32 %447, 1
  %cmp407 = icmp slt i32 %446, %add406
  br i1 %cmp407, label %for.body.409, label %for.end.419

for.body.409:                                     ; preds = %for.cond.405
  %448 = load i32, i32* @offset, align 4
  %449 = load i32, i32* %j, align 4
  %mul410 = mul nsw i32 %448, %449
  %conv411 = sitofp i32 %mul410 to double
  %div = fdiv double %conv411, 2.000000e+00
  %450 = load i32, i32* %j, align 4
  %idxprom412 = sext i32 %450 to i64
  %451 = load float*, float** %currentw, align 8
  %arrayidx413 = getelementptr inbounds float, float* %451, i64 %idxprom412
  %452 = load float, float* %arrayidx413, align 4
  %conv414 = fpext float %452 to double
  %sub415 = fsub double %conv414, %div
  %conv416 = fptrunc double %sub415 to float
  store float %conv416, float* %arrayidx413, align 4
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.body.409
  %453 = load i32, i32* %j, align 4
  %inc418 = add nsw i32 %453, 1
  store i32 %inc418, i32* %j, align 4
  br label %for.cond.405

for.end.419:                                      ; preds = %for.cond.405
  store i32 1, i32* %i, align 4
  br label %for.cond.420

for.cond.420:                                     ; preds = %for.inc.433, %for.end.419
  %454 = load i32, i32* %i, align 4
  %455 = load i32, i32* %lgth1, align 4
  %add421 = add nsw i32 %455, 1
  %cmp422 = icmp slt i32 %454, %add421
  br i1 %cmp422, label %for.body.424, label %for.end.435

for.body.424:                                     ; preds = %for.cond.420
  %456 = load i32, i32* @offset, align 4
  %457 = load i32, i32* %i, align 4
  %mul425 = mul nsw i32 %456, %457
  %conv426 = sitofp i32 %mul425 to double
  %div427 = fdiv double %conv426, 2.000000e+00
  %458 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %458 to i64
  %459 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx429 = getelementptr inbounds float, float* %459, i64 %idxprom428
  %460 = load float, float* %arrayidx429, align 4
  %conv430 = fpext float %460 to double
  %sub431 = fsub double %conv430, %div427
  %conv432 = fptrunc double %sub431 to float
  store float %conv432, float* %arrayidx429, align 4
  br label %for.inc.433

for.inc.433:                                      ; preds = %for.body.424
  %461 = load i32, i32* %i, align 4
  %inc434 = add nsw i32 %461, 1
  store i32 %inc434, i32* %i, align 4
  br label %for.cond.420

for.end.435:                                      ; preds = %for.cond.420
  br label %if.end.436

if.end.436:                                       ; preds = %for.end.435, %for.end.403
  %462 = load float*, float** @R__align.m, align 8
  %arrayidx437 = getelementptr inbounds float, float* %462, i64 0
  store float 0.000000e+00, float* %arrayidx437, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.438

for.cond.438:                                     ; preds = %for.inc.452, %if.end.436
  %463 = load i32, i32* %j, align 4
  %464 = load i32, i32* %lgth2, align 4
  %add439 = add nsw i32 %464, 1
  %cmp440 = icmp slt i32 %463, %add439
  br i1 %cmp440, label %for.body.442, label %for.end.454

for.body.442:                                     ; preds = %for.cond.438
  %465 = load i32, i32* %j, align 4
  %idxprom443 = sext i32 %465 to i64
  %466 = load i32*, i32** @R__align.mp, align 8
  %arrayidx444 = getelementptr inbounds i32, i32* %466, i64 %idxprom443
  store i32 0, i32* %arrayidx444, align 4
  %467 = load i32, i32* %j, align 4
  %sub445 = sub nsw i32 %467, 1
  %idxprom446 = sext i32 %sub445 to i64
  %468 = load float*, float** %currentw, align 8
  %arrayidx447 = getelementptr inbounds float, float* %468, i64 %idxprom446
  %469 = load float, float* %arrayidx447, align 4
  %470 = load float, float* %fpenalty, align 4
  %mul448 = fmul float 1.000000e+04, %470
  %add449 = fadd float %469, %mul448
  %471 = load i32, i32* %j, align 4
  %idxprom450 = sext i32 %471 to i64
  %472 = load float*, float** @R__align.m, align 8
  %arrayidx451 = getelementptr inbounds float, float* %472, i64 %idxprom450
  store float %add449, float* %arrayidx451, align 4
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.body.442
  %473 = load i32, i32* %j, align 4
  %inc453 = add nsw i32 %473, 1
  store i32 %inc453, i32* %j, align 4
  br label %for.cond.438

for.end.454:                                      ; preds = %for.cond.438
  %474 = load i32, i32* %lgth2, align 4
  %cmp455 = icmp eq i32 %474, 0
  br i1 %cmp455, label %if.then.457, label %if.else.459

if.then.457:                                      ; preds = %for.end.454
  %475 = load float*, float** @R__align.lastverticalw, align 8
  %arrayidx458 = getelementptr inbounds float, float* %475, i64 0
  store float 0.000000e+00, float* %arrayidx458, align 4
  br label %if.end.464

if.else.459:                                      ; preds = %for.end.454
  %476 = load i32, i32* %lgth2, align 4
  %sub460 = sub nsw i32 %476, 1
  %idxprom461 = sext i32 %sub460 to i64
  %477 = load float*, float** %currentw, align 8
  %arrayidx462 = getelementptr inbounds float, float* %477, i64 %idxprom461
  %478 = load float, float* %arrayidx462, align 4
  %479 = load float*, float** @R__align.lastverticalw, align 8
  %arrayidx463 = getelementptr inbounds float, float* %479, i64 0
  store float %478, float* %arrayidx463, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.459, %if.then.457
  %480 = load i32, i32* @outgap, align 4
  %tobool465 = icmp ne i32 %480, 0
  br i1 %tobool465, label %if.then.466, label %if.else.468

if.then.466:                                      ; preds = %if.end.464
  %481 = load i32, i32* %lgth1, align 4
  %add467 = add nsw i32 %481, 1
  store i32 %add467, i32* %lasti, align 4
  br label %if.end.469

if.else.468:                                      ; preds = %if.end.464
  %482 = load i32, i32* %lgth1, align 4
  store i32 %482, i32* %lasti, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.else.468, %if.then.466
  store i32 1, i32* %i, align 4
  br label %for.cond.470

for.cond.470:                                     ; preds = %for.inc.755, %if.end.469
  %483 = load i32, i32* %i, align 4
  %484 = load i32, i32* %lasti, align 4
  %cmp471 = icmp slt i32 %483, %484
  br i1 %cmp471, label %for.body.473, label %for.end.757

for.body.473:                                     ; preds = %for.cond.470
  %485 = load float*, float** %previousw, align 8
  store float* %485, float** %wtmp, align 8
  %486 = load float*, float** %currentw, align 8
  store float* %486, float** %previousw, align 8
  %487 = load float*, float** %wtmp, align 8
  store float* %487, float** %currentw, align 8
  %488 = load i32, i32* %i, align 4
  %sub474 = sub nsw i32 %488, 1
  %idxprom475 = sext i32 %sub474 to i64
  %489 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx476 = getelementptr inbounds float, float* %489, i64 %idxprom475
  %490 = load float, float* %arrayidx476, align 4
  %491 = load float*, float** %previousw, align 8
  %arrayidx477 = getelementptr inbounds float, float* %491, i64 0
  store float %490, float* %arrayidx477, align 4
  %492 = load float*, float** %currentw, align 8
  %493 = load float**, float*** @R__align.cpmx1, align 8
  %494 = load float**, float*** @R__align.cpmx2, align 8
  %495 = load i32, i32* %i, align 4
  %496 = load i32, i32* %lgth2, align 4
  %497 = load float**, float*** @R__align.floatwork, align 8
  %498 = load i32**, i32*** @R__align.intwork, align 8
  call void @match_calc(float* %492, float** %493, float** %494, i32 %495, i32 %496, float** %497, i32** %498, i32 0)
  %499 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool478 = icmp ne %struct._LocalHom*** %499, null
  br i1 %tobool478, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %for.body.473
  %500 = load float*, float** %currentw, align 8
  %501 = load i32, i32* %i, align 4
  %502 = load i32, i32* %lgth2, align 4
  call void @imp_match_out_veadR(float* %500, i32 %501, i32 %502)
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.479, %for.body.473
  %503 = load i32, i32* %i, align 4
  %idxprom481 = sext i32 %503 to i64
  %504 = load float*, float** @R__align.initverticalw, align 8
  %arrayidx482 = getelementptr inbounds float, float* %504, i64 %idxprom481
  %505 = load float, float* %arrayidx482, align 4
  %506 = load float*, float** %currentw, align 8
  %arrayidx483 = getelementptr inbounds float, float* %506, i64 0
  store float %505, float* %arrayidx483, align 4
  store i32 0, i32* @R__align.mpi, align 4
  %507 = load float*, float** %previousw, align 8
  %arrayidx484 = getelementptr inbounds float, float* %507, i64 0
  %508 = load float, float* %arrayidx484, align 4
  %509 = load float, float* %fpenalty, align 4
  %mul485 = fmul float 1.000000e+04, %509
  %add486 = fadd float %508, %mul485
  store float %add486, float* @R__align.mi, align 4
  %510 = load i32, i32* %i, align 4
  %idxprom487 = sext i32 %510 to i64
  %511 = load i32**, i32*** @R__align.ijp, align 8
  %arrayidx488 = getelementptr inbounds i32*, i32** %511, i64 %idxprom487
  %512 = load i32*, i32** %arrayidx488, align 8
  %add.ptr = getelementptr inbounds i32, i32* %512, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %513 = load float*, float** @R__align.m, align 8
  %add.ptr489 = getelementptr inbounds float, float* %513, i64 1
  store float* %add.ptr489, float** %mjpt, align 8
  %514 = load float*, float** %previousw, align 8
  store float* %514, float** %prept, align 8
  %515 = load float*, float** %currentw, align 8
  %add.ptr490 = getelementptr inbounds float, float* %515, i64 1
  store float* %add.ptr490, float** %curpt, align 8
  %516 = load i32*, i32** @R__align.mp, align 8
  %add.ptr491 = getelementptr inbounds i32, i32* %516, i64 1
  store i32* %add.ptr491, i32** %mpjpt, align 8
  %517 = load float*, float** @R__align.fgcp2, align 8
  store float* %517, float** %fgcp2pt, align 8
  %518 = load float*, float** @R__align.ogcp2, align 8
  %add.ptr492 = getelementptr inbounds float, float* %518, i64 1
  store float* %add.ptr492, float** %ogcp2pt, align 8
  %519 = load i32, i32* %i, align 4
  %sub493 = sub nsw i32 %519, 1
  %idxprom494 = sext i32 %sub493 to i64
  %520 = load float*, float** @R__align.fgcp1, align 8
  %arrayidx495 = getelementptr inbounds float, float* %520, i64 %idxprom494
  %521 = load float, float* %arrayidx495, align 4
  store float %521, float* %fgcp1va, align 4
  %522 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %522 to i64
  %523 = load float*, float** @R__align.ogcp1, align 8
  %arrayidx497 = getelementptr inbounds float, float* %523, i64 %idxprom496
  %524 = load float, float* %arrayidx497, align 4
  store float %524, float* %ogcp1va, align 4
  %525 = load i32, i32* %lgth2, align 4
  %add498 = add nsw i32 %525, 1
  store i32 %add498, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.747, %if.end.480
  %526 = load i32, i32* %j, align 4
  %527 = load i32, i32* %lastj, align 4
  %cmp500 = icmp slt i32 %526, %527
  br i1 %cmp500, label %for.body.502, label %for.end.749

for.body.502:                                     ; preds = %for.cond.499
  %528 = load float*, float** %prept, align 8
  %529 = load float, float* %528, align 4
  store float %529, float* %wm, align 4
  %530 = load i32, i32* %i, align 4
  %idxprom503 = sext i32 %530 to i64
  %531 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx504 = getelementptr inbounds float, float* %531, i64 %idxprom503
  %532 = load float, float* %arrayidx504, align 4
  %conv505 = fpext float %532 to double
  %533 = load i32, i32* %j, align 4
  %idxprom506 = sext i32 %533 to i64
  %534 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx507 = getelementptr inbounds float, float* %534, i64 %idxprom506
  %535 = load float, float* %arrayidx507, align 4
  %conv508 = fpext float %535 to double
  %sub509 = fsub double 1.000000e+00, %conv508
  %mul510 = fmul double %conv505, %sub509
  %536 = load float, float* %fpenalty, align 4
  %conv511 = fpext float %536 to double
  %mul512 = fmul double %mul510, %conv511
  %mul513 = fmul double %mul512, 5.000000e-01
  %conv514 = fptrunc double %mul513 to float
  store float %conv514, float* %g, align 4
  %537 = load float, float* %g, align 4
  %538 = load float, float* %wm, align 4
  %add515 = fadd float %538, %537
  store float %add515, float* %wm, align 4
  %539 = load i32, i32* %j, align 4
  %idxprom516 = sext i32 %539 to i64
  %540 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx517 = getelementptr inbounds float, float* %540, i64 %idxprom516
  %541 = load float, float* %arrayidx517, align 4
  %conv518 = fpext float %541 to double
  %542 = load i32, i32* %i, align 4
  %idxprom519 = sext i32 %542 to i64
  %543 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx520 = getelementptr inbounds float, float* %543, i64 %idxprom519
  %544 = load float, float* %arrayidx520, align 4
  %conv521 = fpext float %544 to double
  %sub522 = fsub double 1.000000e+00, %conv521
  %mul523 = fmul double %conv518, %sub522
  %545 = load float, float* %fpenalty, align 4
  %conv524 = fpext float %545 to double
  %mul525 = fmul double %mul523, %conv524
  %mul526 = fmul double %mul525, 5.000000e-01
  %conv527 = fptrunc double %mul526 to float
  store float %conv527, float* %g, align 4
  %546 = load float, float* %g, align 4
  %547 = load float, float* %wm, align 4
  %add528 = fadd float %547, %546
  store float %add528, float* %wm, align 4
  %548 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %548 to i64
  %549 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx530 = getelementptr inbounds float, float* %549, i64 %idxprom529
  %550 = load float, float* %arrayidx530, align 4
  %conv531 = fpext float %550 to double
  %551 = load i32, i32* %j, align 4
  %idxprom532 = sext i32 %551 to i64
  %552 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx533 = getelementptr inbounds float, float* %552, i64 %idxprom532
  %553 = load float, float* %arrayidx533, align 4
  %conv534 = fpext float %553 to double
  %sub535 = fsub double 1.000000e+00, %conv534
  %mul536 = fmul double %conv531, %sub535
  %554 = load float, float* %fpenalty, align 4
  %conv537 = fpext float %554 to double
  %mul538 = fmul double %mul536, %conv537
  %mul539 = fmul double %mul538, 5.000000e-01
  %conv540 = fptrunc double %mul539 to float
  store float %conv540, float* %g, align 4
  %555 = load float, float* %g, align 4
  %556 = load float, float* %wm, align 4
  %add541 = fadd float %556, %555
  store float %add541, float* %wm, align 4
  %557 = load i32, i32* %j, align 4
  %idxprom542 = sext i32 %557 to i64
  %558 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx543 = getelementptr inbounds float, float* %558, i64 %idxprom542
  %559 = load float, float* %arrayidx543, align 4
  %conv544 = fpext float %559 to double
  %560 = load i32, i32* %i, align 4
  %idxprom545 = sext i32 %560 to i64
  %561 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx546 = getelementptr inbounds float, float* %561, i64 %idxprom545
  %562 = load float, float* %arrayidx546, align 4
  %conv547 = fpext float %562 to double
  %sub548 = fsub double 1.000000e+00, %conv547
  %mul549 = fmul double %conv544, %sub548
  %563 = load float, float* %fpenalty, align 4
  %conv550 = fpext float %563 to double
  %mul551 = fmul double %mul549, %conv550
  %mul552 = fmul double %mul551, 5.000000e-01
  %conv553 = fptrunc double %mul552 to float
  store float %conv553, float* %g, align 4
  %564 = load float, float* %g, align 4
  %565 = load float, float* %wm, align 4
  %add554 = fadd float %565, %564
  store float %add554, float* %wm, align 4
  %566 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %566, align 4
  %567 = load i32, i32* %i, align 4
  %add555 = add nsw i32 %567, 1
  %idxprom556 = sext i32 %add555 to i64
  %568 = load float*, float** @R__align.gapz1, align 8
  %arrayidx557 = getelementptr inbounds float, float* %568, i64 %idxprom556
  %569 = load float, float* %arrayidx557, align 4
  %conv558 = fpext float %569 to double
  %sub559 = fsub double 1.000000e+00, %conv558
  %570 = load i32, i32* %j, align 4
  %idxprom560 = sext i32 %570 to i64
  %571 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx561 = getelementptr inbounds float, float* %571, i64 %idxprom560
  %572 = load float, float* %arrayidx561, align 4
  %conv562 = fpext float %572 to double
  %sub563 = fsub double 1.000000e+00, %conv562
  %573 = load i32, i32* %j, align 4
  %idxprom564 = sext i32 %573 to i64
  %574 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx565 = getelementptr inbounds float, float* %574, i64 %idxprom564
  %575 = load float, float* %arrayidx565, align 4
  %conv566 = fpext float %575 to double
  %add567 = fadd double %sub563, %conv566
  %mul568 = fmul double %sub559, %add567
  %576 = load i32, i32* %i, align 4
  %add569 = add nsw i32 %576, 1
  %idxprom570 = sext i32 %add569 to i64
  %577 = load float*, float** @R__align.gapz1, align 8
  %arrayidx571 = getelementptr inbounds float, float* %577, i64 %idxprom570
  %578 = load float, float* %arrayidx571, align 4
  %conv572 = fpext float %578 to double
  %579 = load i32, i32* %j, align 4
  %idxprom573 = sext i32 %579 to i64
  %580 = load float*, float** @R__align.digf2, align 8
  %arrayidx574 = getelementptr inbounds float, float* %580, i64 %idxprom573
  %581 = load float, float* %arrayidx574, align 4
  %conv575 = fpext float %581 to double
  %sub576 = fsub double 1.000000e+00, %conv575
  %582 = load i32, i32* %j, align 4
  %idxprom577 = sext i32 %582 to i64
  %583 = load float*, float** @R__align.diaf2, align 8
  %arrayidx578 = getelementptr inbounds float, float* %583, i64 %idxprom577
  %584 = load float, float* %arrayidx578, align 4
  %conv579 = fpext float %584 to double
  %sub580 = fsub double %sub576, %conv579
  %mul581 = fmul double %conv572, %sub580
  %add582 = fadd double %mul568, %mul581
  %mul583 = fmul double %add582, 5.000000e-01
  %585 = load float, float* %fpenalty, align 4
  %conv584 = fpext float %585 to double
  %mul585 = fmul double %mul583, %conv584
  %conv586 = fptrunc double %mul585 to float
  store float %conv586, float* %tmppenal, align 4
  %586 = load float, float* @R__align.mi, align 4
  %587 = load float, float* %tmppenal, align 4
  %add587 = fadd float %586, %587
  store float %add587, float* %g, align 4
  %588 = load float, float* %wm, align 4
  %cmp588 = fcmp ogt float %add587, %588
  br i1 %cmp588, label %if.then.590, label %if.end.593

if.then.590:                                      ; preds = %for.body.502
  %589 = load float, float* %g, align 4
  store float %589, float* %wm, align 4
  %590 = load i32, i32* %j, align 4
  %591 = load i32, i32* @R__align.mpi, align 4
  %sub591 = sub nsw i32 %590, %591
  %sub592 = sub nsw i32 0, %sub591
  %592 = load i32*, i32** %ijppt, align 8
  store i32 %sub592, i32* %592, align 4
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.590, %for.body.502
  %593 = load i32, i32* %i, align 4
  %idxprom594 = sext i32 %593 to i64
  %594 = load float*, float** @R__align.gapz1, align 8
  %arrayidx595 = getelementptr inbounds float, float* %594, i64 %idxprom594
  %595 = load float, float* %arrayidx595, align 4
  %conv596 = fpext float %595 to double
  %sub597 = fsub double 1.000000e+00, %conv596
  %596 = load i32, i32* %j, align 4
  %idxprom598 = sext i32 %596 to i64
  %597 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx599 = getelementptr inbounds float, float* %597, i64 %idxprom598
  %598 = load float, float* %arrayidx599, align 4
  %conv600 = fpext float %598 to double
  %sub601 = fsub double 1.000000e+00, %conv600
  %599 = load i32, i32* %j, align 4
  %idxprom602 = sext i32 %599 to i64
  %600 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx603 = getelementptr inbounds float, float* %600, i64 %idxprom602
  %601 = load float, float* %arrayidx603, align 4
  %conv604 = fpext float %601 to double
  %add605 = fadd double %sub601, %conv604
  %mul606 = fmul double %sub597, %add605
  %602 = load i32, i32* %i, align 4
  %idxprom607 = sext i32 %602 to i64
  %603 = load float*, float** @R__align.gapz1, align 8
  %arrayidx608 = getelementptr inbounds float, float* %603, i64 %idxprom607
  %604 = load float, float* %arrayidx608, align 4
  %conv609 = fpext float %604 to double
  %605 = load i32, i32* %j, align 4
  %idxprom610 = sext i32 %605 to i64
  %606 = load float*, float** @R__align.digf2, align 8
  %arrayidx611 = getelementptr inbounds float, float* %606, i64 %idxprom610
  %607 = load float, float* %arrayidx611, align 4
  %conv612 = fpext float %607 to double
  %sub613 = fsub double 1.000000e+00, %conv612
  %608 = load i32, i32* %j, align 4
  %idxprom614 = sext i32 %608 to i64
  %609 = load float*, float** @R__align.diaf2, align 8
  %arrayidx615 = getelementptr inbounds float, float* %609, i64 %idxprom614
  %610 = load float, float* %arrayidx615, align 4
  %conv616 = fpext float %610 to double
  %sub617 = fsub double %sub613, %conv616
  %mul618 = fmul double %conv609, %sub617
  %add619 = fadd double %mul606, %mul618
  %mul620 = fmul double %add619, 5.000000e-01
  %611 = load float, float* %fpenalty, align 4
  %conv621 = fpext float %611 to double
  %mul622 = fmul double %mul620, %conv621
  %conv623 = fptrunc double %mul622 to float
  store float %conv623, float* %tmppenal, align 4
  %612 = load float*, float** %prept, align 8
  %613 = load float, float* %612, align 4
  %614 = load float, float* %tmppenal, align 4
  %add624 = fadd float %613, %614
  store float %add624, float* %g, align 4
  %615 = load float, float* @R__align.mi, align 4
  %cmp625 = fcmp oge float %add624, %615
  br i1 %cmp625, label %if.then.627, label %if.else.629

if.then.627:                                      ; preds = %if.end.593
  %616 = load float, float* %g, align 4
  store float %616, float* @R__align.mi, align 4
  %617 = load i32, i32* %j, align 4
  %sub628 = sub nsw i32 %617, 1
  store i32 %sub628, i32* @R__align.mpi, align 4
  br label %if.end.646

if.else.629:                                      ; preds = %if.end.593
  %618 = load i32, i32* %j, align 4
  %cmp630 = icmp ne i32 %618, 1
  br i1 %cmp630, label %if.then.632, label %if.end.645

if.then.632:                                      ; preds = %if.else.629
  %619 = load i32, i32* %j, align 4
  %sub633 = sub nsw i32 %619, 0
  %idxprom634 = sext i32 %sub633 to i64
  %620 = load float*, float** @R__align.ogcp2g, align 8
  %arrayidx635 = getelementptr inbounds float, float* %620, i64 %idxprom634
  %621 = load float, float* %arrayidx635, align 4
  %622 = load i32, i32* %j, align 4
  %idxprom636 = sext i32 %622 to i64
  %623 = load float*, float** @R__align.fgcp2g, align 8
  %arrayidx637 = getelementptr inbounds float, float* %623, i64 %idxprom636
  %624 = load float, float* %arrayidx637, align 4
  %add638 = fadd float %621, %624
  %625 = load float, float* %fpenalty, align 4
  %mul639 = fmul float %add638, %625
  %conv640 = fpext float %mul639 to double
  %mul641 = fmul double %conv640, 5.000000e-01
  %626 = load float, float* @R__align.mi, align 4
  %conv642 = fpext float %626 to double
  %add643 = fadd double %conv642, %mul641
  %conv644 = fptrunc double %add643 to float
  store float %conv644, float* @R__align.mi, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.632, %if.else.629
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.then.627
  %627 = load i32, i32* %j, align 4
  %add647 = add nsw i32 %627, 1
  %idxprom648 = sext i32 %add647 to i64
  %628 = load float*, float** @R__align.gapz2, align 8
  %arrayidx649 = getelementptr inbounds float, float* %628, i64 %idxprom648
  %629 = load float, float* %arrayidx649, align 4
  %conv650 = fpext float %629 to double
  %sub651 = fsub double 1.000000e+00, %conv650
  %630 = load i32, i32* %i, align 4
  %idxprom652 = sext i32 %630 to i64
  %631 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx653 = getelementptr inbounds float, float* %631, i64 %idxprom652
  %632 = load float, float* %arrayidx653, align 4
  %conv654 = fpext float %632 to double
  %sub655 = fsub double 1.000000e+00, %conv654
  %633 = load i32, i32* %i, align 4
  %idxprom656 = sext i32 %633 to i64
  %634 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx657 = getelementptr inbounds float, float* %634, i64 %idxprom656
  %635 = load float, float* %arrayidx657, align 4
  %conv658 = fpext float %635 to double
  %add659 = fadd double %sub655, %conv658
  %mul660 = fmul double %sub651, %add659
  %636 = load i32, i32* %j, align 4
  %add661 = add nsw i32 %636, 1
  %idxprom662 = sext i32 %add661 to i64
  %637 = load float*, float** @R__align.gapz2, align 8
  %arrayidx663 = getelementptr inbounds float, float* %637, i64 %idxprom662
  %638 = load float, float* %arrayidx663, align 4
  %conv664 = fpext float %638 to double
  %639 = load i32, i32* %i, align 4
  %idxprom665 = sext i32 %639 to i64
  %640 = load float*, float** @R__align.digf1, align 8
  %arrayidx666 = getelementptr inbounds float, float* %640, i64 %idxprom665
  %641 = load float, float* %arrayidx666, align 4
  %conv667 = fpext float %641 to double
  %sub668 = fsub double 1.000000e+00, %conv667
  %642 = load i32, i32* %i, align 4
  %idxprom669 = sext i32 %642 to i64
  %643 = load float*, float** @R__align.diaf1, align 8
  %arrayidx670 = getelementptr inbounds float, float* %643, i64 %idxprom669
  %644 = load float, float* %arrayidx670, align 4
  %conv671 = fpext float %644 to double
  %sub672 = fsub double %sub668, %conv671
  %mul673 = fmul double %conv664, %sub672
  %add674 = fadd double %mul660, %mul673
  %mul675 = fmul double %add674, 5.000000e-01
  %645 = load float, float* %fpenalty, align 4
  %conv676 = fpext float %645 to double
  %mul677 = fmul double %mul675, %conv676
  %conv678 = fptrunc double %mul677 to float
  store float %conv678, float* %tmppenal, align 4
  %646 = load float*, float** %mjpt, align 8
  %647 = load float, float* %646, align 4
  %648 = load float, float* %tmppenal, align 4
  %add679 = fadd float %647, %648
  store float %add679, float* %g, align 4
  %649 = load float, float* %wm, align 4
  %cmp680 = fcmp ogt float %add679, %649
  br i1 %cmp680, label %if.then.682, label %if.end.684

if.then.682:                                      ; preds = %if.end.646
  %650 = load float, float* %g, align 4
  store float %650, float* %wm, align 4
  %651 = load i32, i32* %i, align 4
  %652 = load i32*, i32** %mpjpt, align 8
  %653 = load i32, i32* %652, align 4
  %sub683 = sub nsw i32 %651, %653
  %654 = load i32*, i32** %ijppt, align 8
  store i32 %sub683, i32* %654, align 4
  br label %if.end.684

if.end.684:                                       ; preds = %if.then.682, %if.end.646
  %655 = load i32, i32* %j, align 4
  %idxprom685 = sext i32 %655 to i64
  %656 = load float*, float** @R__align.gapz2, align 8
  %arrayidx686 = getelementptr inbounds float, float* %656, i64 %idxprom685
  %657 = load float, float* %arrayidx686, align 4
  %conv687 = fpext float %657 to double
  %sub688 = fsub double 1.000000e+00, %conv687
  %658 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %658 to i64
  %659 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx690 = getelementptr inbounds float, float* %659, i64 %idxprom689
  %660 = load float, float* %arrayidx690, align 4
  %conv691 = fpext float %660 to double
  %sub692 = fsub double 1.000000e+00, %conv691
  %661 = load i32, i32* %i, align 4
  %idxprom693 = sext i32 %661 to i64
  %662 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx694 = getelementptr inbounds float, float* %662, i64 %idxprom693
  %663 = load float, float* %arrayidx694, align 4
  %conv695 = fpext float %663 to double
  %add696 = fadd double %sub692, %conv695
  %mul697 = fmul double %sub688, %add696
  %664 = load i32, i32* %j, align 4
  %idxprom698 = sext i32 %664 to i64
  %665 = load float*, float** @R__align.gapz2, align 8
  %arrayidx699 = getelementptr inbounds float, float* %665, i64 %idxprom698
  %666 = load float, float* %arrayidx699, align 4
  %conv700 = fpext float %666 to double
  %667 = load i32, i32* %i, align 4
  %idxprom701 = sext i32 %667 to i64
  %668 = load float*, float** @R__align.digf1, align 8
  %arrayidx702 = getelementptr inbounds float, float* %668, i64 %idxprom701
  %669 = load float, float* %arrayidx702, align 4
  %conv703 = fpext float %669 to double
  %sub704 = fsub double 1.000000e+00, %conv703
  %670 = load i32, i32* %i, align 4
  %idxprom705 = sext i32 %670 to i64
  %671 = load float*, float** @R__align.diaf1, align 8
  %arrayidx706 = getelementptr inbounds float, float* %671, i64 %idxprom705
  %672 = load float, float* %arrayidx706, align 4
  %conv707 = fpext float %672 to double
  %sub708 = fsub double %sub704, %conv707
  %mul709 = fmul double %conv700, %sub708
  %add710 = fadd double %mul697, %mul709
  %mul711 = fmul double %add710, 5.000000e-01
  %673 = load float, float* %fpenalty, align 4
  %conv712 = fpext float %673 to double
  %mul713 = fmul double %mul711, %conv712
  %conv714 = fptrunc double %mul713 to float
  store float %conv714, float* %tmppenal, align 4
  %674 = load float*, float** %prept, align 8
  %675 = load float, float* %674, align 4
  %676 = load float, float* %tmppenal, align 4
  %add715 = fadd float %675, %676
  store float %add715, float* %g, align 4
  %677 = load float*, float** %mjpt, align 8
  %678 = load float, float* %677, align 4
  %cmp716 = fcmp oge float %add715, %678
  br i1 %cmp716, label %if.then.718, label %if.else.720

if.then.718:                                      ; preds = %if.end.684
  %679 = load float, float* %g, align 4
  %680 = load float*, float** %mjpt, align 8
  store float %679, float* %680, align 4
  %681 = load i32, i32* %i, align 4
  %sub719 = sub nsw i32 %681, 1
  %682 = load i32*, i32** %mpjpt, align 8
  store i32 %sub719, i32* %682, align 4
  br label %if.end.739

if.else.720:                                      ; preds = %if.end.684
  %683 = load i32, i32* %i, align 4
  %cmp721 = icmp ne i32 %683, 1
  br i1 %cmp721, label %if.then.723, label %if.end.738

if.then.723:                                      ; preds = %if.else.720
  %684 = load i32, i32* %i, align 4
  %sub724 = sub nsw i32 %684, 0
  %idxprom725 = sext i32 %sub724 to i64
  %685 = load float*, float** @R__align.ogcp1g, align 8
  %arrayidx726 = getelementptr inbounds float, float* %685, i64 %idxprom725
  %686 = load float, float* %arrayidx726, align 4
  %687 = load i32, i32* %i, align 4
  %idxprom727 = sext i32 %687 to i64
  %688 = load float*, float** @R__align.fgcp1g, align 8
  %arrayidx728 = getelementptr inbounds float, float* %688, i64 %idxprom727
  %689 = load float, float* %arrayidx728, align 4
  %add729 = fadd float %686, %689
  %690 = load float, float* %fpenalty, align 4
  %mul730 = fmul float %add729, %690
  %conv731 = fpext float %mul730 to double
  %mul732 = fmul double %conv731, 5.000000e-01
  %691 = load i32, i32* %j, align 4
  %idxprom733 = sext i32 %691 to i64
  %692 = load float*, float** @R__align.m, align 8
  %arrayidx734 = getelementptr inbounds float, float* %692, i64 %idxprom733
  %693 = load float, float* %arrayidx734, align 4
  %conv735 = fpext float %693 to double
  %add736 = fadd double %conv735, %mul732
  %conv737 = fptrunc double %add736 to float
  store float %conv737, float* %arrayidx734, align 4
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.723, %if.else.720
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %if.then.718
  %694 = load float, float* %wm, align 4
  %695 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %695, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %696 = load float, float* %695, align 4
  %add740 = fadd float %696, %694
  store float %add740, float* %695, align 4
  %697 = load i32*, i32** %ijppt, align 8
  %incdec.ptr741 = getelementptr inbounds i32, i32* %697, i32 1
  store i32* %incdec.ptr741, i32** %ijppt, align 8
  %698 = load float*, float** %mjpt, align 8
  %incdec.ptr742 = getelementptr inbounds float, float* %698, i32 1
  store float* %incdec.ptr742, float** %mjpt, align 8
  %699 = load float*, float** %prept, align 8
  %incdec.ptr743 = getelementptr inbounds float, float* %699, i32 1
  store float* %incdec.ptr743, float** %prept, align 8
  %700 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr744 = getelementptr inbounds i32, i32* %700, i32 1
  store i32* %incdec.ptr744, i32** %mpjpt, align 8
  %701 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr745 = getelementptr inbounds float, float* %701, i32 1
  store float* %incdec.ptr745, float** %fgcp2pt, align 8
  %702 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr746 = getelementptr inbounds float, float* %702, i32 1
  store float* %incdec.ptr746, float** %ogcp2pt, align 8
  br label %for.inc.747

for.inc.747:                                      ; preds = %if.end.739
  %703 = load i32, i32* %j, align 4
  %inc748 = add nsw i32 %703, 1
  store i32 %inc748, i32* %j, align 4
  br label %for.cond.499

for.end.749:                                      ; preds = %for.cond.499
  %704 = load i32, i32* %lgth2, align 4
  %sub750 = sub nsw i32 %704, 1
  %idxprom751 = sext i32 %sub750 to i64
  %705 = load float*, float** %currentw, align 8
  %arrayidx752 = getelementptr inbounds float, float* %705, i64 %idxprom751
  %706 = load float, float* %arrayidx752, align 4
  %707 = load i32, i32* %i, align 4
  %idxprom753 = sext i32 %707 to i64
  %708 = load float*, float** @R__align.lastverticalw, align 8
  %arrayidx754 = getelementptr inbounds float, float* %708, i64 %idxprom753
  store float %706, float* %arrayidx754, align 4
  br label %for.inc.755

for.inc.755:                                      ; preds = %for.end.749
  %709 = load i32, i32* %i, align 4
  %inc756 = add nsw i32 %709, 1
  store i32 %inc756, i32* %i, align 4
  br label %for.cond.470

for.end.757:                                      ; preds = %for.cond.470
  %710 = load i32, i32* @outgap, align 4
  %tobool758 = icmp ne i32 %710, 0
  br i1 %tobool758, label %if.end.796, label %if.then.759

if.then.759:                                      ; preds = %for.end.757
  store i32 1, i32* %j, align 4
  br label %for.cond.760

for.cond.760:                                     ; preds = %for.inc.774, %if.then.759
  %711 = load i32, i32* %j, align 4
  %712 = load i32, i32* %lgth2, align 4
  %add761 = add nsw i32 %712, 1
  %cmp762 = icmp slt i32 %711, %add761
  br i1 %cmp762, label %for.body.764, label %for.end.776

for.body.764:                                     ; preds = %for.cond.760
  %713 = load i32, i32* @offset, align 4
  %714 = load i32, i32* %lgth2, align 4
  %715 = load i32, i32* %j, align 4
  %sub765 = sub nsw i32 %714, %715
  %mul766 = mul nsw i32 %713, %sub765
  %conv767 = sitofp i32 %mul766 to double
  %div768 = fdiv double %conv767, 2.000000e+00
  %716 = load i32, i32* %j, align 4
  %idxprom769 = sext i32 %716 to i64
  %717 = load float*, float** %currentw, align 8
  %arrayidx770 = getelementptr inbounds float, float* %717, i64 %idxprom769
  %718 = load float, float* %arrayidx770, align 4
  %conv771 = fpext float %718 to double
  %sub772 = fsub double %conv771, %div768
  %conv773 = fptrunc double %sub772 to float
  store float %conv773, float* %arrayidx770, align 4
  br label %for.inc.774

for.inc.774:                                      ; preds = %for.body.764
  %719 = load i32, i32* %j, align 4
  %inc775 = add nsw i32 %719, 1
  store i32 %inc775, i32* %j, align 4
  br label %for.cond.760

for.end.776:                                      ; preds = %for.cond.760
  store i32 1, i32* %i, align 4
  br label %for.cond.777

for.cond.777:                                     ; preds = %for.inc.793, %for.end.776
  %720 = load i32, i32* %i, align 4
  %721 = load i32, i32* %lgth1, align 4
  %add778 = add nsw i32 %721, 1
  %cmp779 = icmp slt i32 %720, %add778
  br i1 %cmp779, label %for.body.781, label %for.end.795

for.body.781:                                     ; preds = %for.cond.777
  %722 = load i32, i32* @offset, align 4
  %conv782 = sitofp i32 %722 to double
  %723 = load i32, i32* %lgth1, align 4
  %conv783 = sitofp i32 %723 to double
  %724 = load i32, i32* %i, align 4
  %conv784 = sitofp i32 %724 to double
  %div785 = fdiv double %conv784, 2.000000e+00
  %sub786 = fsub double %conv783, %div785
  %mul787 = fmul double %conv782, %sub786
  %725 = load i32, i32* %i, align 4
  %idxprom788 = sext i32 %725 to i64
  %726 = load float*, float** @R__align.lastverticalw, align 8
  %arrayidx789 = getelementptr inbounds float, float* %726, i64 %idxprom788
  %727 = load float, float* %arrayidx789, align 4
  %conv790 = fpext float %727 to double
  %sub791 = fsub double %conv790, %mul787
  %conv792 = fptrunc double %sub791 to float
  store float %conv792, float* %arrayidx789, align 4
  br label %for.inc.793

for.inc.793:                                      ; preds = %for.body.781
  %728 = load i32, i32* %i, align 4
  %inc794 = add nsw i32 %728, 1
  store i32 %inc794, i32* %i, align 4
  br label %for.cond.777

for.end.795:                                      ; preds = %for.cond.777
  br label %if.end.796

if.end.796:                                       ; preds = %for.end.795, %for.end.757
  %729 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool797 = icmp ne %struct._LocalHom*** %729, null
  br i1 %tobool797, label %if.then.798, label %if.else.799

if.then.798:                                      ; preds = %if.end.796
  %730 = load float*, float** %impmatch.addr, align 8
  %731 = load float*, float** %currentw, align 8
  %732 = load float*, float** @R__align.lastverticalw, align 8
  %733 = load i8**, i8*** %seq1.addr, align 8
  %734 = load i8**, i8*** %seq2.addr, align 8
  %735 = load i8**, i8*** @R__align.mseq1, align 8
  %736 = load i8**, i8*** @R__align.mseq2, align 8
  %737 = load float**, float*** @R__align.cpmx1, align 8
  %738 = load float**, float*** @R__align.cpmx2, align 8
  %739 = load i32**, i32*** @R__align.ijp, align 8
  %740 = load i32, i32* %icyc.addr, align 4
  %741 = load i32, i32* %jcyc.addr, align 4
  call void @Atracking_localhom(float* %730, float* %731, float* %732, i8** %733, i8** %734, i8** %735, i8** %736, float** %737, float** %738, i32** %739, i32 %740, i32 %741)
  br label %if.end.801

if.else.799:                                      ; preds = %if.end.796
  %742 = load float*, float** %currentw, align 8
  %743 = load float*, float** @R__align.lastverticalw, align 8
  %744 = load i8**, i8*** %seq1.addr, align 8
  %745 = load i8**, i8*** %seq2.addr, align 8
  %746 = load i8**, i8*** @R__align.mseq1, align 8
  %747 = load i8**, i8*** @R__align.mseq2, align 8
  %748 = load float**, float*** @R__align.cpmx1, align 8
  %749 = load float**, float*** @R__align.cpmx2, align 8
  %750 = load i32**, i32*** @R__align.ijp, align 8
  %751 = load i32, i32* %icyc.addr, align 4
  %752 = load i32, i32* %jcyc.addr, align 4
  %call800 = call float @Atracking(float* %742, float* %743, i8** %744, i8** %745, i8** %746, i8** %747, float** %748, float** %749, i32** %750, i32 %751, i32 %752)
  br label %if.end.801

if.end.801:                                       ; preds = %if.else.799, %if.then.798
  %753 = load i8**, i8*** @R__align.mseq1, align 8
  %arrayidx802 = getelementptr inbounds i8*, i8** %753, i64 0
  %754 = load i8*, i8** %arrayidx802, align 8
  %call803 = call i64 @strlen(i8* %754) #5
  %conv804 = trunc i64 %call803 to i32
  store i32 %conv804, i32* %resultlen, align 4
  %755 = load i32, i32* %alloclen.addr, align 4
  %756 = load i32, i32* %resultlen, align 4
  %cmp805 = icmp slt i32 %755, %756
  br i1 %cmp805, label %if.then.810, label %lor.lhs.false.807

lor.lhs.false.807:                                ; preds = %if.end.801
  %757 = load i32, i32* %resultlen, align 4
  %cmp808 = icmp sgt i32 %757, 5000000
  br i1 %cmp808, label %if.then.810, label %if.end.812

if.then.810:                                      ; preds = %lor.lhs.false.807, %if.end.801
  %758 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %759 = load i32, i32* %alloclen.addr, align 4
  %760 = load i32, i32* %resultlen, align 4
  %call811 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %758, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %759, i32 %760, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.812

if.end.812:                                       ; preds = %if.then.810, %lor.lhs.false.807
  store i32 0, i32* %i, align 4
  br label %for.cond.813

for.cond.813:                                     ; preds = %for.inc.822, %if.end.812
  %761 = load i32, i32* %i, align 4
  %762 = load i32, i32* %icyc.addr, align 4
  %cmp814 = icmp slt i32 %761, %762
  br i1 %cmp814, label %for.body.816, label %for.end.824

for.body.816:                                     ; preds = %for.cond.813
  %763 = load i32, i32* %i, align 4
  %idxprom817 = sext i32 %763 to i64
  %764 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx818 = getelementptr inbounds i8*, i8** %764, i64 %idxprom817
  %765 = load i8*, i8** %arrayidx818, align 8
  %766 = load i32, i32* %i, align 4
  %idxprom819 = sext i32 %766 to i64
  %767 = load i8**, i8*** @R__align.mseq1, align 8
  %arrayidx820 = getelementptr inbounds i8*, i8** %767, i64 %idxprom819
  %768 = load i8*, i8** %arrayidx820, align 8
  %call821 = call i8* @strcpy(i8* %765, i8* %768) #4
  br label %for.inc.822

for.inc.822:                                      ; preds = %for.body.816
  %769 = load i32, i32* %i, align 4
  %inc823 = add nsw i32 %769, 1
  store i32 %inc823, i32* %i, align 4
  br label %for.cond.813

for.end.824:                                      ; preds = %for.cond.813
  store i32 0, i32* %j, align 4
  br label %for.cond.825

for.cond.825:                                     ; preds = %for.inc.834, %for.end.824
  %770 = load i32, i32* %j, align 4
  %771 = load i32, i32* %jcyc.addr, align 4
  %cmp826 = icmp slt i32 %770, %771
  br i1 %cmp826, label %for.body.828, label %for.end.836

for.body.828:                                     ; preds = %for.cond.825
  %772 = load i32, i32* %j, align 4
  %idxprom829 = sext i32 %772 to i64
  %773 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx830 = getelementptr inbounds i8*, i8** %773, i64 %idxprom829
  %774 = load i8*, i8** %arrayidx830, align 8
  %775 = load i32, i32* %j, align 4
  %idxprom831 = sext i32 %775 to i64
  %776 = load i8**, i8*** @R__align.mseq2, align 8
  %arrayidx832 = getelementptr inbounds i8*, i8** %776, i64 %idxprom831
  %777 = load i8*, i8** %arrayidx832, align 8
  %call833 = call i8* @strcpy(i8* %774, i8* %777) #4
  br label %for.inc.834

for.inc.834:                                      ; preds = %for.body.828
  %778 = load i32, i32* %j, align 4
  %inc835 = add nsw i32 %778, 1
  store i32 %inc835, i32* %j, align 4
  br label %for.cond.825

for.end.836:                                      ; preds = %for.cond.825
  %779 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %780 = load float, float* %wm, align 4
  %conv837 = fpext float %780 to double
  %call838 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %779, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), double %conv837)
  %781 = load float, float* %wm, align 4
  ret float %781
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
define internal void @imp_match_out_vead_tateR(float* %imp, i32 %j1, i32 %lgth1) #0 {
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
define internal void @imp_match_out_veadR(float* %imp, i32 %i1, i32 %lgth2) #0 {
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
  %call133 = call float @imp_match_out_scR(i32 %117, i32 %118)
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
