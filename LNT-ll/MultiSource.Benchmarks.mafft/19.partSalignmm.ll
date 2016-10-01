; ModuleID = './MultiSource.Benchmarks.mafft/19.partSalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }
%struct._RNApair = type { i32, float, i32, float, i32, float }

@impmtx = internal global float** null, align 8
@impalloclen = internal global i32 0, align 4
@fastathreshold = external global double, align 8
@part_imp_match_init.impalloclen = internal global i32 0, align 4
@part_imp_match_init.nocount1 = internal global i8* null, align 8
@part_imp_match_init.nocount2 = internal global i8* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"i = %d, seq1 = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"start1 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"end1   = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"j = %d, seq2 = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"step 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dif = %d\0A\00", align 1
@partA__align.mi = internal global float 0.000000e+00, align 4
@partA__align.m = internal global float* null, align 8
@partA__align.ijp = internal global i32** null, align 8
@partA__align.mpi = internal global i32 0, align 4
@partA__align.mp = internal global i32* null, align 8
@partA__align.w1 = internal global float* null, align 8
@partA__align.w2 = internal global float* null, align 8
@partA__align.match = internal global float* null, align 8
@partA__align.initverticalw = internal global float* null, align 8
@partA__align.lastverticalw = internal global float* null, align 8
@partA__align.mseq1 = internal global i8** null, align 8
@partA__align.mseq2 = internal global i8** null, align 8
@partA__align.mseq = internal global i8** null, align 8
@partA__align.ogcp1 = internal global float* null, align 8
@partA__align.ogcp2 = internal global float* null, align 8
@partA__align.fgcp1 = internal global float* null, align 8
@partA__align.fgcp2 = internal global float* null, align 8
@partA__align.cpmx1 = internal global float** null, align 8
@partA__align.cpmx2 = internal global float** null, align 8
@partA__align.intwork = internal global i32** null, align 8
@partA__align.floatwork = internal global float** null, align 8
@partA__align.orlgth1 = internal global i32 0, align 4
@partA__align.orlgth2 = internal global i32 0, align 4
@penalty = external global i32, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@outgap = external global i32, align 4
@offset = external global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@n_dis_consweight_multi = external global [26 x [26 x float]], align 16
@Atracking_localhom.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1
@Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @part_imp_match_out_sc(i32 %i1, i32 %j1) #0 {
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
define void @part_imp_match_init_strict(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
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
  %effij = alloca double, align 8
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
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @impalloclen, align 4
  %3 = load i32, i32* %lgth2.addr, align 4
  %add1 = add nsw i32 %3, 2
  %cmp2 = icmp sle i32 %2, %add1
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load float**, float*** @impmtx, align 8
  %tobool = icmp ne float** %4, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load float**, float*** @impmtx, align 8
  call void @FreeFloatMtx(float** %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load i32, i32* %lgth1.addr, align 4
  %7 = load i32, i32* %lgth2.addr, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i32, i32* %lgth1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i32, i32* %lgth2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  %add5 = add nsw i32 %cond, 2
  store i32 %add5, i32* @impalloclen, align 4
  %10 = load i32, i32* @impalloclen, align 4
  %add6 = add nsw i32 %10, 100
  %11 = load i32, i32* @impalloclen, align 4
  %add7 = add nsw i32 %11, 100
  %call = call float** @AllocateFloatMtx(i32 %add6, i32 %add7)
  store float** %call, float*** @impmtx, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %cond.end, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.end.8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %lgth1.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %lgth2.addr, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %j, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load float**, float*** @impmtx, align 8
  %arrayidx = getelementptr inbounds float*, float** %18, i64 %idxprom13
  %19 = load float*, float** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds float, float* %19, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %22 = load double, double* @fastathreshold, align 8
  %mul = fmul double 1.000000e+00, %22
  store double %mul, double* %effijx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.234, %for.end.17
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %clus1.addr, align 4
  %cmp19 = icmp slt i32 %23, %24
  br i1 %cmp19, label %for.body.20, label %for.end.236

for.body.20:                                      ; preds = %for.cond.18
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.231, %for.body.20
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %clus2.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body.23, label %for.end.233

for.body.23:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load double*, double** %eff1.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %28, i64 %idxprom24
  %29 = load double, double* %arrayidx25, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load double*, double** %eff2.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %31, i64 %idxprom26
  %32 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %29, %32
  %33 = load double, double* %effijx, align 8
  %mul29 = fmul double %mul28, %33
  store double %mul29, double* %effij, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %36, i64 %idxprom31
  %37 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %37, i64 %idxprom30
  %38 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx33, align 8
  store %struct._LocalHom* %38, %struct._LocalHom** %tmpptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.229, %for.body.23
  %39 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %tobool34 = icmp ne %struct._LocalHom* %39, null
  br i1 %tobool34, label %while.body, label %while.end.230

while.body:                                       ; preds = %while.cond
  %40 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %41, i64 %idxprom35
  %42 = load i8*, i8** %arrayidx36, align 8
  store i8* %42, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %if.end.51, %while.body
  %43 = load i8*, i8** %pt, align 8
  %44 = load i8, i8* %43, align 1
  %conv = sext i8 %44 to i32
  %cmp38 = icmp ne i32 %conv, 0
  br i1 %cmp38, label %while.body.40, label %while.end

while.body.40:                                    ; preds = %while.cond.37
  %45 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %46 = load i8, i8* %45, align 1
  %conv41 = sext i8 %46 to i32
  %cmp42 = icmp ne i32 %conv41, 45
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %while.body.40
  %47 = load i32, i32* %tmpint, align 4
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %tmpint, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %while.body.40
  %48 = load i32, i32* %tmpint, align 4
  %49 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start147 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %49, i32 0, i32 3
  %50 = load i32, i32* %start147, align 4
  %cmp48 = icmp eq i32 %48, %50
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  br label %while.end

if.end.51:                                        ; preds = %if.end.46
  br label %while.cond.37

while.end:                                        ; preds = %if.then.50, %while.cond.37
  %51 = load i8*, i8** %pt, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %53, i64 %idxprom52
  %54 = load i8*, i8** %arrayidx53, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv54 = trunc i64 %sub.ptr.sub to i32
  %sub = sub nsw i32 %conv54, 1
  store i32 %sub, i32* %start1, align 4
  %55 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start155 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %55, i32 0, i32 3
  %56 = load i32, i32* %start155, align 4
  %57 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end156 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %57, i32 0, i32 4
  %58 = load i32, i32* %end156, align 4
  %cmp57 = icmp eq i32 %56, %58
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %while.end
  %59 = load i32, i32* %start1, align 4
  store i32 %59, i32* %end1, align 4
  br label %if.end.85

if.else:                                          ; preds = %while.end
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.76, %if.else
  %60 = load i8*, i8** %pt, align 8
  %61 = load i8, i8* %60, align 1
  %conv61 = sext i8 %61 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %while.body.64, label %while.end.77

while.body.64:                                    ; preds = %while.cond.60
  %62 = load i8*, i8** %pt, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr65, i8** %pt, align 8
  %63 = load i8, i8* %62, align 1
  %conv66 = sext i8 %63 to i32
  %cmp67 = icmp ne i32 %conv66, 45
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %while.body.64
  %64 = load i32, i32* %tmpint, align 4
  %inc70 = add nsw i32 %64, 1
  store i32 %inc70, i32* %tmpint, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %while.body.64
  %65 = load i32, i32* %tmpint, align 4
  %66 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end172 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %66, i32 0, i32 4
  %67 = load i32, i32* %end172, align 4
  %cmp73 = icmp eq i32 %65, %67
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  br label %while.end.77

if.end.76:                                        ; preds = %if.end.71
  br label %while.cond.60

while.end.77:                                     ; preds = %if.then.75, %while.cond.60
  %68 = load i8*, i8** %pt, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %69 to i64
  %70 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %70, i64 %idxprom78
  %71 = load i8*, i8** %arrayidx79, align 8
  %sub.ptr.lhs.cast80 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %71 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %conv83 = trunc i64 %sub.ptr.sub82 to i32
  %sub84 = sub nsw i32 %conv83, 1
  store i32 %sub84, i32* %end1, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %while.end.77, %if.then.59
  %72 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %72 to i64
  %73 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %73, i64 %idxprom86
  %74 = load i8*, i8** %arrayidx87, align 8
  store i8* %74, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond.88

while.cond.88:                                    ; preds = %if.end.104, %if.end.85
  %75 = load i8*, i8** %pt, align 8
  %76 = load i8, i8* %75, align 1
  %conv89 = sext i8 %76 to i32
  %cmp90 = icmp ne i32 %conv89, 0
  br i1 %cmp90, label %while.body.92, label %while.end.105

while.body.92:                                    ; preds = %while.cond.88
  %77 = load i8*, i8** %pt, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr93, i8** %pt, align 8
  %78 = load i8, i8* %77, align 1
  %conv94 = sext i8 %78 to i32
  %cmp95 = icmp ne i32 %conv94, 45
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %while.body.92
  %79 = load i32, i32* %tmpint, align 4
  %inc98 = add nsw i32 %79, 1
  store i32 %inc98, i32* %tmpint, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %while.body.92
  %80 = load i32, i32* %tmpint, align 4
  %81 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2100 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %81, i32 0, i32 5
  %82 = load i32, i32* %start2100, align 4
  %cmp101 = icmp eq i32 %80, %82
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.99
  br label %while.end.105

if.end.104:                                       ; preds = %if.end.99
  br label %while.cond.88

while.end.105:                                    ; preds = %if.then.103, %while.cond.88
  %83 = load i8*, i8** %pt, align 8
  %84 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %84 to i64
  %85 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx107 = getelementptr inbounds i8*, i8** %85, i64 %idxprom106
  %86 = load i8*, i8** %arrayidx107, align 8
  %sub.ptr.lhs.cast108 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast109 = ptrtoint i8* %86 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %conv111 = trunc i64 %sub.ptr.sub110 to i32
  %sub112 = sub nsw i32 %conv111, 1
  store i32 %sub112, i32* %start2, align 4
  %87 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %start2113 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %87, i32 0, i32 5
  %88 = load i32, i32* %start2113, align 4
  %89 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2114 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %89, i32 0, i32 6
  %90 = load i32, i32* %end2114, align 4
  %cmp115 = icmp eq i32 %88, %90
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %while.end.105
  %91 = load i32, i32* %start2, align 4
  store i32 %91, i32* %end2, align 4
  br label %if.end.144

if.else.118:                                      ; preds = %while.end.105
  br label %while.cond.119

while.cond.119:                                   ; preds = %if.end.135, %if.else.118
  %92 = load i8*, i8** %pt, align 8
  %93 = load i8, i8* %92, align 1
  %conv120 = sext i8 %93 to i32
  %cmp121 = icmp ne i32 %conv120, 0
  br i1 %cmp121, label %while.body.123, label %while.end.136

while.body.123:                                   ; preds = %while.cond.119
  %94 = load i8*, i8** %pt, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr124, i8** %pt, align 8
  %95 = load i8, i8* %94, align 1
  %conv125 = sext i8 %95 to i32
  %cmp126 = icmp ne i32 %conv125, 45
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %while.body.123
  %96 = load i32, i32* %tmpint, align 4
  %inc129 = add nsw i32 %96, 1
  store i32 %inc129, i32* %tmpint, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %while.body.123
  %97 = load i32, i32* %tmpint, align 4
  %98 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %end2131 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %98, i32 0, i32 6
  %99 = load i32, i32* %end2131, align 4
  %cmp132 = icmp eq i32 %97, %99
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.130
  br label %while.end.136

if.end.135:                                       ; preds = %if.end.130
  br label %while.cond.119

while.end.136:                                    ; preds = %if.then.134, %while.cond.119
  %100 = load i8*, i8** %pt, align 8
  %101 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %101 to i64
  %102 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %102, i64 %idxprom137
  %103 = load i8*, i8** %arrayidx138, align 8
  %sub.ptr.lhs.cast139 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast140 = ptrtoint i8* %103 to i64
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  %conv142 = trunc i64 %sub.ptr.sub141 to i32
  %sub143 = sub nsw i32 %conv142, 1
  store i32 %sub143, i32* %end2, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %while.end.136, %if.then.117
  %104 = load i32, i32* %end1, align 4
  %105 = load i32, i32* %start1, align 4
  %sub145 = sub nsw i32 %104, %105
  %106 = load i32, i32* %end2, align 4
  %107 = load i32, i32* %start2, align 4
  %sub146 = sub nsw i32 %106, %107
  %cmp147 = icmp ne i32 %sub145, %sub146
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.144
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.144
  %108 = load i32, i32* %start1, align 4
  store i32 %108, i32* %k1, align 4
  %109 = load i32, i32* %start2, align 4
  store i32 %109, i32* %k2, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %110 to i64
  %111 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %111, i64 %idxprom151
  %112 = load i8*, i8** %arrayidx152, align 8
  %113 = load i32, i32* %k1, align 4
  %idx.ext = sext i32 %113 to i64
  %add.ptr = getelementptr inbounds i8, i8* %112, i64 %idx.ext
  store i8* %add.ptr, i8** %pt1, align 8
  %114 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %114 to i64
  %115 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %115, i64 %idxprom153
  %116 = load i8*, i8** %arrayidx154, align 8
  %117 = load i32, i32* %k2, align 4
  %idx.ext155 = sext i32 %117 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %116, i64 %idx.ext155
  store i8* %add.ptr156, i8** %pt2, align 8
  br label %while.cond.157

while.cond.157:                                   ; preds = %if.end.228, %if.end.150
  %118 = load i8*, i8** %pt1, align 8
  %119 = load i8, i8* %118, align 1
  %conv158 = sext i8 %119 to i32
  %tobool159 = icmp ne i32 %conv158, 0
  br i1 %tobool159, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.157
  %120 = load i8*, i8** %pt2, align 8
  %121 = load i8, i8* %120, align 1
  %conv160 = sext i8 %121 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.157
  %122 = phi i1 [ false, %while.cond.157 ], [ %tobool161, %land.rhs ]
  br i1 %122, label %while.body.162, label %while.end.229

while.body.162:                                   ; preds = %land.end
  %123 = load i8*, i8** %pt1, align 8
  %124 = load i8, i8* %123, align 1
  %conv163 = sext i8 %124 to i32
  %cmp164 = icmp ne i32 %conv163, 45
  br i1 %cmp164, label %land.lhs.true, label %if.else.183

land.lhs.true:                                    ; preds = %while.body.162
  %125 = load i8*, i8** %pt2, align 8
  %126 = load i8, i8* %125, align 1
  %conv166 = sext i8 %126 to i32
  %cmp167 = icmp ne i32 %conv166, 45
  br i1 %cmp167, label %if.then.169, label %if.else.183

if.then.169:                                      ; preds = %land.lhs.true
  %127 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %fimportance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %127, i32 0, i32 11
  %128 = load float, float* %fimportance, align 4
  %conv170 = fpext float %128 to double
  %129 = load double, double* %effij, align 8
  %mul171 = fmul double %conv170, %129
  %130 = load i32, i32* %k2, align 4
  %idxprom172 = sext i32 %130 to i64
  %131 = load i32, i32* %k1, align 4
  %idxprom173 = sext i32 %131 to i64
  %132 = load float**, float*** @impmtx, align 8
  %arrayidx174 = getelementptr inbounds float*, float** %132, i64 %idxprom173
  %133 = load float*, float** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds float, float* %133, i64 %idxprom172
  %134 = load float, float* %arrayidx175, align 4
  %conv176 = fpext float %134 to double
  %add177 = fadd double %conv176, %mul171
  %conv178 = fptrunc double %add177 to float
  store float %conv178, float* %arrayidx175, align 4
  %135 = load i32, i32* %k1, align 4
  %inc179 = add nsw i32 %135, 1
  store i32 %inc179, i32* %k1, align 4
  %136 = load i32, i32* %k2, align 4
  %inc180 = add nsw i32 %136, 1
  store i32 %inc180, i32* %k2, align 4
  %137 = load i8*, i8** %pt1, align 8
  %incdec.ptr181 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr181, i8** %pt1, align 8
  %138 = load i8*, i8** %pt2, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr182, i8** %pt2, align 8
  br label %if.end.221

if.else.183:                                      ; preds = %land.lhs.true, %while.body.162
  %139 = load i8*, i8** %pt1, align 8
  %140 = load i8, i8* %139, align 1
  %conv184 = sext i8 %140 to i32
  %cmp185 = icmp ne i32 %conv184, 45
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.194

land.lhs.true.187:                                ; preds = %if.else.183
  %141 = load i8*, i8** %pt2, align 8
  %142 = load i8, i8* %141, align 1
  %conv188 = sext i8 %142 to i32
  %cmp189 = icmp eq i32 %conv188, 45
  br i1 %cmp189, label %if.then.191, label %if.else.194

if.then.191:                                      ; preds = %land.lhs.true.187
  %143 = load i32, i32* %k2, align 4
  %inc192 = add nsw i32 %143, 1
  store i32 %inc192, i32* %k2, align 4
  %144 = load i8*, i8** %pt2, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr193, i8** %pt2, align 8
  br label %if.end.220

if.else.194:                                      ; preds = %land.lhs.true.187, %if.else.183
  %145 = load i8*, i8** %pt1, align 8
  %146 = load i8, i8* %145, align 1
  %conv195 = sext i8 %146 to i32
  %cmp196 = icmp eq i32 %conv195, 45
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.205

land.lhs.true.198:                                ; preds = %if.else.194
  %147 = load i8*, i8** %pt2, align 8
  %148 = load i8, i8* %147, align 1
  %conv199 = sext i8 %148 to i32
  %cmp200 = icmp ne i32 %conv199, 45
  br i1 %cmp200, label %if.then.202, label %if.else.205

if.then.202:                                      ; preds = %land.lhs.true.198
  %149 = load i32, i32* %k1, align 4
  %inc203 = add nsw i32 %149, 1
  store i32 %inc203, i32* %k1, align 4
  %150 = load i8*, i8** %pt1, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr204, i8** %pt1, align 8
  br label %if.end.219

if.else.205:                                      ; preds = %land.lhs.true.198, %if.else.194
  %151 = load i8*, i8** %pt1, align 8
  %152 = load i8, i8* %151, align 1
  %conv206 = sext i8 %152 to i32
  %cmp207 = icmp eq i32 %conv206, 45
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.218

land.lhs.true.209:                                ; preds = %if.else.205
  %153 = load i8*, i8** %pt2, align 8
  %154 = load i8, i8* %153, align 1
  %conv210 = sext i8 %154 to i32
  %cmp211 = icmp eq i32 %conv210, 45
  br i1 %cmp211, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %land.lhs.true.209
  %155 = load i32, i32* %k1, align 4
  %inc214 = add nsw i32 %155, 1
  store i32 %inc214, i32* %k1, align 4
  %156 = load i8*, i8** %pt1, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr215, i8** %pt1, align 8
  %157 = load i32, i32* %k2, align 4
  %inc216 = add nsw i32 %157, 1
  store i32 %inc216, i32* %k2, align 4
  %158 = load i8*, i8** %pt2, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr217, i8** %pt2, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %land.lhs.true.209, %if.else.205
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.202
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.191
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.169
  %159 = load i32, i32* %k1, align 4
  %160 = load i32, i32* %end1, align 4
  %cmp222 = icmp sgt i32 %159, %160
  br i1 %cmp222, label %if.then.227, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %if.end.221
  %161 = load i32, i32* %k2, align 4
  %162 = load i32, i32* %end2, align 4
  %cmp225 = icmp sgt i32 %161, %162
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %lor.lhs.false.224, %if.end.221
  br label %while.end.229

if.end.228:                                       ; preds = %lor.lhs.false.224
  br label %while.cond.157

while.end.229:                                    ; preds = %if.then.227, %land.end
  %163 = load %struct._LocalHom*, %struct._LocalHom** %tmpptr, align 8
  %next = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %163, i32 0, i32 1
  %164 = load %struct._LocalHom*, %struct._LocalHom** %next, align 8
  store %struct._LocalHom* %164, %struct._LocalHom** %tmpptr, align 8
  br label %while.cond

while.end.230:                                    ; preds = %while.cond
  br label %for.inc.231

for.inc.231:                                      ; preds = %while.end.230
  %165 = load i32, i32* %j, align 4
  %inc232 = add nsw i32 %165, 1
  store i32 %inc232, i32* %j, align 4
  br label %for.cond.21

for.end.233:                                      ; preds = %for.cond.21
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.end.233
  %166 = load i32, i32* %i, align 4
  %inc235 = add nsw i32 %166, 1
  store i32 %inc235, i32* %i, align 4
  br label %for.cond.18

for.end.236:                                      ; preds = %for.cond.18
  ret void
}

declare void @FreeFloatMtx(float**) #1

declare float** @AllocateFloatMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @part_imp_rna(i32 %nseq1, i32 %nseq2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._RNApair*** %grouprna1, %struct._RNApair*** %grouprna2, i32* %gapmap1, i32* %gapmap2, %struct._RNApair* %additionalpair) #0 {
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
define void @part_imp_match_init(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom) #0 {
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
  %dif = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %tmpint = alloca i32, align 4
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  %end1 = alloca i32, align 4
  %end2 = alloca i32, align 4
  %pt = alloca i8*, align 8
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
  %0 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %3 = load i32, i32* %lgth2.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load float**, float*** @impmtx, align 8
  %tobool = icmp ne float** %4, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load float**, float*** @impmtx, align 8
  call void @FreeFloatMtx(float** %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  call void @free(i8* %9) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i32, i32* %lgth1.addr, align 4
  %11 = load i32, i32* %lgth2.addr, align 4
  %cmp9 = icmp sgt i32 %10, %11
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %12 = load i32, i32* %lgth1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %13 = load i32, i32* %lgth2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  %add = add nsw i32 %cond, 2
  store i32 %add, i32* @part_imp_match_init.impalloclen, align 4
  %14 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %15 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %call = call float** @AllocateFloatMtx(i32 %14, i32 %15)
  store float** %call, float*** @impmtx, align 8
  %16 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %call10 = call i8* @AllocateCharVec(i32 %16)
  store i8* %call10, i8** @part_imp_match_init.nocount1, align 8
  %17 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %call11 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call11, i8** @part_imp_match_init.nocount2, align 8
  %18 = load i32, i32* @part_imp_match_init.impalloclen, align 4
  %sub = sub nsw i32 %18, 2
  store i32 %sub, i32* @part_imp_match_init.impalloclen, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.end.12
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %lgth1.addr, align 4
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %clus1.addr, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom17
  %26 = load i8*, i8** %arrayidx, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx18, align 1
  %conv = sext i8 %27 to i32
  %cmp19 = icmp eq i32 %conv, 45
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.16
  br label %for.end

if.end.22:                                        ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.21, %for.cond.14
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %clus1.addr, align 4
  %cmp23 = icmp ne i32 %29, %30
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom26
  store i8 1, i8* %arrayidx27, align 1
  br label %if.end.30

if.else:                                          ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %34, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.25
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %35 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.63, %for.end.33
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %lgth2.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body.37, label %for.end.65

for.body.37:                                      ; preds = %for.cond.34
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.51, %for.body.37
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %clus2.addr, align 4
  %cmp39 = icmp slt i32 %38, %39
  br i1 %cmp39, label %for.body.41, label %for.end.53

for.body.41:                                      ; preds = %for.cond.38
  %40 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %42, i64 %idxprom43
  %43 = load i8*, i8** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %43, i64 %idxprom42
  %44 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %44 to i32
  %cmp47 = icmp eq i32 %conv46, 45
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.41
  br label %for.end.53

if.end.50:                                        ; preds = %for.body.41
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %45 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %45, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.38

for.end.53:                                       ; preds = %if.then.49, %for.cond.38
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %clus2.addr, align 4
  %cmp54 = icmp ne i32 %46, %47
  br i1 %cmp54, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %for.end.53
  %48 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %48 to i64
  %49 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %49, i64 %idxprom57
  store i8 1, i8* %arrayidx58, align 1
  br label %if.end.62

if.else.59:                                       ; preds = %for.end.53
  %50 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %51, i64 %idxprom60
  store i8 0, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.56
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %52 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %52, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.34

for.end.65:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.81, %for.end.65
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %lgth1.addr, align 4
  %cmp67 = icmp slt i32 %53, %54
  br i1 %cmp67, label %for.body.69, label %for.end.83

for.body.69:                                      ; preds = %for.cond.66
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.78, %for.body.69
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %lgth2.addr, align 4
  %cmp71 = icmp slt i32 %55, %56
  br i1 %cmp71, label %for.body.73, label %for.end.80

for.body.73:                                      ; preds = %for.cond.70
  %57 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %58 to i64
  %59 = load float**, float*** @impmtx, align 8
  %arrayidx76 = getelementptr inbounds float*, float** %59, i64 %idxprom75
  %60 = load float*, float** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds float, float* %60, i64 %idxprom74
  store float 0.000000e+00, float* %arrayidx77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.73
  %61 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %61, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond.70

for.end.80:                                       ; preds = %for.cond.70
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %62 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %62, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.66

for.end.83:                                       ; preds = %for.cond.66
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.358, %for.end.83
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %clus1.addr, align 4
  %cmp85 = icmp slt i32 %63, %64
  br i1 %cmp85, label %for.body.87, label %for.end.360

for.body.87:                                      ; preds = %for.cond.84
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %67 to i64
  %68 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %68, i64 %idxprom88
  %69 = load i8*, i8** %arrayidx89, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %66, i8* %69)
  store i32 0, i32* %j, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.355, %for.body.87
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %clus2.addr, align 4
  %cmp92 = icmp slt i32 %70, %71
  br i1 %cmp92, label %for.body.94, label %for.end.357

for.body.94:                                      ; preds = %for.cond.91
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %74 to i64
  %75 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %75, i64 %idxprom96
  %76 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %76, i64 %idxprom95
  %77 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx98, align 8
  %start199 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %77, i32 0, i32 3
  %78 = load i32, i32* %start199, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %80 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %81 to i64
  %82 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %82, i64 %idxprom102
  %83 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %83, i64 %idxprom101
  %84 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx104, align 8
  %end1105 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %84, i32 0, i32 4
  %85 = load i32, i32* %end1105, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %88 to i64
  %89 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %89, i64 %idxprom107
  %90 = load i8*, i8** %arrayidx108, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %87, i8* %90)
  %91 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %91 to i64
  %92 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %92, i64 %idxprom110
  %93 = load i8*, i8** %arrayidx111, align 8
  store i8* %93, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.129, %for.body.94
  %94 = load i8*, i8** %pt, align 8
  %95 = load i8, i8* %94, align 1
  %conv112 = sext i8 %95 to i32
  %cmp113 = icmp ne i32 %conv112, 0
  br i1 %cmp113, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %96 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %97 = load i8, i8* %96, align 1
  %conv115 = sext i8 %97 to i32
  %cmp116 = icmp ne i32 %conv115, 45
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %while.body
  %98 = load i32, i32* %tmpint, align 4
  %inc119 = add nsw i32 %98, 1
  store i32 %inc119, i32* %tmpint, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %while.body
  %99 = load i32, i32* %tmpint, align 4
  %100 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %101 to i64
  %102 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %102, i64 %idxprom122
  %103 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %103, i64 %idxprom121
  %104 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx124, align 8
  %start1125 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %104, i32 0, i32 3
  %105 = load i32, i32* %start1125, align 4
  %cmp126 = icmp eq i32 %99, %105
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.120
  br label %while.end

if.end.129:                                       ; preds = %if.end.120
  br label %while.cond

while.end:                                        ; preds = %if.then.128, %while.cond
  %106 = load i8*, i8** %pt, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %107 to i64
  %108 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %108, i64 %idxprom130
  %109 = load i8*, i8** %arrayidx131, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub132 = sub nsw i64 %sub.ptr.sub, 1
  %conv133 = trunc i64 %sub132 to i32
  store i32 %conv133, i32* %start1, align 4
  br label %while.cond.134

while.cond.134:                                   ; preds = %if.end.154, %while.end
  %110 = load i8*, i8** %pt, align 8
  %111 = load i8, i8* %110, align 1
  %conv135 = sext i8 %111 to i32
  %cmp136 = icmp ne i32 %conv135, 0
  br i1 %cmp136, label %while.body.138, label %while.end.155

while.body.138:                                   ; preds = %while.cond.134
  %112 = load i8*, i8** %pt, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr139, i8** %pt, align 8
  %113 = load i8, i8* %112, align 1
  %conv140 = sext i8 %113 to i32
  %cmp141 = icmp ne i32 %conv140, 45
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %while.body.138
  %114 = load i32, i32* %tmpint, align 4
  %inc144 = add nsw i32 %114, 1
  store i32 %inc144, i32* %tmpint, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %while.body.138
  %115 = load i32, i32* %tmpint, align 4
  %116 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %117 to i64
  %118 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx148 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %118, i64 %idxprom147
  %119 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %119, i64 %idxprom146
  %120 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx149, align 8
  %end1150 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %120, i32 0, i32 4
  %121 = load i32, i32* %end1150, align 4
  %cmp151 = icmp eq i32 %115, %121
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.145
  br label %while.end.155

if.end.154:                                       ; preds = %if.end.145
  br label %while.cond.134

while.end.155:                                    ; preds = %if.then.153, %while.cond.134
  %122 = load i8*, i8** %pt, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %123 to i64
  %124 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8*, i8** %124, i64 %idxprom156
  %125 = load i8*, i8** %arrayidx157, align 8
  %sub.ptr.lhs.cast158 = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %125 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %sub161 = sub nsw i64 %sub.ptr.sub160, 1
  %conv162 = trunc i64 %sub161 to i32
  store i32 %conv162, i32* %end1, align 4
  %126 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %126 to i64
  %127 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %127, i64 %idxprom163
  %128 = load i8*, i8** %arrayidx164, align 8
  store i8* %128, i8** %pt, align 8
  store i32 -1, i32* %tmpint, align 4
  br label %while.cond.165

while.cond.165:                                   ; preds = %if.end.185, %while.end.155
  %129 = load i8*, i8** %pt, align 8
  %130 = load i8, i8* %129, align 1
  %conv166 = sext i8 %130 to i32
  %cmp167 = icmp ne i32 %conv166, 0
  br i1 %cmp167, label %while.body.169, label %while.end.186

while.body.169:                                   ; preds = %while.cond.165
  %131 = load i8*, i8** %pt, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr170, i8** %pt, align 8
  %132 = load i8, i8* %131, align 1
  %conv171 = sext i8 %132 to i32
  %cmp172 = icmp ne i32 %conv171, 45
  br i1 %cmp172, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %while.body.169
  %133 = load i32, i32* %tmpint, align 4
  %inc175 = add nsw i32 %133, 1
  store i32 %inc175, i32* %tmpint, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %while.body.169
  %134 = load i32, i32* %tmpint, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %136 to i64
  %137 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx179 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %137, i64 %idxprom178
  %138 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %138, i64 %idxprom177
  %139 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx180, align 8
  %start2181 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %139, i32 0, i32 5
  %140 = load i32, i32* %start2181, align 4
  %cmp182 = icmp eq i32 %134, %140
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.176
  br label %while.end.186

if.end.185:                                       ; preds = %if.end.176
  br label %while.cond.165

while.end.186:                                    ; preds = %if.then.184, %while.cond.165
  %141 = load i8*, i8** %pt, align 8
  %142 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %142 to i64
  %143 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %143, i64 %idxprom187
  %144 = load i8*, i8** %arrayidx188, align 8
  %sub.ptr.lhs.cast189 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast190 = ptrtoint i8* %144 to i64
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %sub192 = sub nsw i64 %sub.ptr.sub191, 1
  %conv193 = trunc i64 %sub192 to i32
  store i32 %conv193, i32* %start2, align 4
  br label %while.cond.194

while.cond.194:                                   ; preds = %if.end.214, %while.end.186
  %145 = load i8*, i8** %pt, align 8
  %146 = load i8, i8* %145, align 1
  %conv195 = sext i8 %146 to i32
  %cmp196 = icmp ne i32 %conv195, 0
  br i1 %cmp196, label %while.body.198, label %while.end.215

while.body.198:                                   ; preds = %while.cond.194
  %147 = load i8*, i8** %pt, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr199, i8** %pt, align 8
  %148 = load i8, i8* %147, align 1
  %conv200 = sext i8 %148 to i32
  %cmp201 = icmp ne i32 %conv200, 45
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %while.body.198
  %149 = load i32, i32* %tmpint, align 4
  %inc204 = add nsw i32 %149, 1
  store i32 %inc204, i32* %tmpint, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %while.body.198
  %150 = load i32, i32* %tmpint, align 4
  %151 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %152 to i64
  %153 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %153, i64 %idxprom207
  %154 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %154, i64 %idxprom206
  %155 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx209, align 8
  %end2210 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %155, i32 0, i32 6
  %156 = load i32, i32* %end2210, align 4
  %cmp211 = icmp eq i32 %150, %156
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.205
  br label %while.end.215

if.end.214:                                       ; preds = %if.end.205
  br label %while.cond.194

while.end.215:                                    ; preds = %if.then.213, %while.cond.194
  %157 = load i8*, i8** %pt, align 8
  %158 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %158 to i64
  %159 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %159, i64 %idxprom216
  %160 = load i8*, i8** %arrayidx217, align 8
  %sub.ptr.lhs.cast218 = ptrtoint i8* %157 to i64
  %sub.ptr.rhs.cast219 = ptrtoint i8* %160 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %sub221 = sub nsw i64 %sub.ptr.sub220, 1
  %conv222 = trunc i64 %sub221 to i32
  store i32 %conv222, i32* %end2, align 4
  %161 = load i32, i32* %start1, align 4
  store i32 %161, i32* %k1, align 4
  %162 = load i32, i32* %start2, align 4
  store i32 %162, i32* %k2, align 4
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  br label %while.cond.224

while.cond.224:                                   ; preds = %if.end.253, %while.end.215
  %164 = load i32, i32* %k1, align 4
  %165 = load i32, i32* %end1, align 4
  %cmp225 = icmp sle i32 %164, %165
  br i1 %cmp225, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.224
  %166 = load i32, i32* %k2, align 4
  %167 = load i32, i32* %end2, align 4
  %cmp227 = icmp sle i32 %166, %167
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.224
  %168 = phi i1 [ false, %while.cond.224 ], [ %cmp227, %land.rhs ]
  br i1 %168, label %while.body.229, label %while.end.256

while.body.229:                                   ; preds = %land.end
  %169 = load i32, i32* %k1, align 4
  %idxprom230 = sext i32 %169 to i64
  %170 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %170, i64 %idxprom230
  %171 = load i8, i8* %arrayidx231, align 1
  %tobool232 = icmp ne i8 %171, 0
  br i1 %tobool232, label %if.end.253, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.229
  %172 = load i32, i32* %k2, align 4
  %idxprom233 = sext i32 %172 to i64
  %173 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %173, i64 %idxprom233
  %174 = load i8, i8* %arrayidx234, align 1
  %tobool235 = icmp ne i8 %174, 0
  br i1 %tobool235, label %if.end.253, label %if.then.236

if.then.236:                                      ; preds = %land.lhs.true
  %175 = load i32, i32* %j, align 4
  %idxprom237 = sext i32 %175 to i64
  %176 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %176 to i64
  %177 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx239 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %177, i64 %idxprom238
  %178 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %178, i64 %idxprom237
  %179 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx240, align 8
  %wimportance = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %179, i32 0, i32 12
  %180 = load double, double* %wimportance, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %181 to i64
  %182 = load double*, double** %eff1.addr, align 8
  %arrayidx242 = getelementptr inbounds double, double* %182, i64 %idxprom241
  %183 = load double, double* %arrayidx242, align 8
  %mul = fmul double %180, %183
  %184 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %184 to i64
  %185 = load double*, double** %eff2.addr, align 8
  %arrayidx244 = getelementptr inbounds double, double* %185, i64 %idxprom243
  %186 = load double, double* %arrayidx244, align 8
  %mul245 = fmul double %mul, %186
  %187 = load i32, i32* %k2, align 4
  %idxprom246 = sext i32 %187 to i64
  %188 = load i32, i32* %k1, align 4
  %idxprom247 = sext i32 %188 to i64
  %189 = load float**, float*** @impmtx, align 8
  %arrayidx248 = getelementptr inbounds float*, float** %189, i64 %idxprom247
  %190 = load float*, float** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds float, float* %190, i64 %idxprom246
  %191 = load float, float* %arrayidx249, align 4
  %conv250 = fpext float %191 to double
  %add251 = fadd double %conv250, %mul245
  %conv252 = fptrunc double %add251 to float
  store float %conv252, float* %arrayidx249, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.236, %land.lhs.true, %while.body.229
  %192 = load i32, i32* %k1, align 4
  %inc254 = add nsw i32 %192, 1
  store i32 %inc254, i32* %k1, align 4
  %193 = load i32, i32* %k2, align 4
  %inc255 = add nsw i32 %193, 1
  store i32 %inc255, i32* %k2, align 4
  br label %while.cond.224

while.end.256:                                    ; preds = %land.end
  %194 = load i32, i32* %end1, align 4
  %195 = load i32, i32* %start1, align 4
  %sub257 = sub nsw i32 %194, %195
  %196 = load i32, i32* %end2, align 4
  %197 = load i32, i32* %start2, align 4
  %sub258 = sub nsw i32 %196, %197
  %sub259 = sub nsw i32 %sub257, %sub258
  store i32 %sub259, i32* %dif, align 4
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %199 = load i32, i32* %dif, align 4
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %199)
  %200 = load i32, i32* %dif, align 4
  %cmp261 = icmp sgt i32 %200, 0
  br i1 %cmp261, label %if.then.263, label %if.else.309

if.then.263:                                      ; preds = %while.end.256
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.263
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %202 = load i32, i32* %dif, align 4
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* %start1, align 4
  store i32 %203, i32* %k1, align 4
  %204 = load i32, i32* %start2, align 4
  %205 = load i32, i32* %dif, align 4
  %sub265 = sub nsw i32 %204, %205
  store i32 %sub265, i32* %k2, align 4
  br label %while.cond.266

while.cond.266:                                   ; preds = %if.end.304, %do.body
  %206 = load i32, i32* %k1, align 4
  %207 = load i32, i32* %end1, align 4
  %cmp267 = icmp sle i32 %206, %207
  br i1 %cmp267, label %land.rhs.269, label %land.end.272

land.rhs.269:                                     ; preds = %while.cond.266
  %208 = load i32, i32* %k2, align 4
  %209 = load i32, i32* %end2, align 4
  %cmp270 = icmp sle i32 %208, %209
  br label %land.end.272

land.end.272:                                     ; preds = %land.rhs.269, %while.cond.266
  %210 = phi i1 [ false, %while.cond.266 ], [ %cmp270, %land.rhs.269 ]
  br i1 %210, label %while.body.273, label %while.end.307

while.body.273:                                   ; preds = %land.end.272
  %211 = load i32, i32* %k2, align 4
  %cmp274 = icmp sle i32 0, %211
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.304

land.lhs.true.276:                                ; preds = %while.body.273
  %212 = load i32, i32* %start2, align 4
  %213 = load i32, i32* %k2, align 4
  %cmp277 = icmp sle i32 %212, %213
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.304

land.lhs.true.279:                                ; preds = %land.lhs.true.276
  %214 = load i32, i32* %k1, align 4
  %idxprom280 = sext i32 %214 to i64
  %215 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %215, i64 %idxprom280
  %216 = load i8, i8* %arrayidx281, align 1
  %tobool282 = icmp ne i8 %216, 0
  br i1 %tobool282, label %if.end.304, label %land.lhs.true.283

land.lhs.true.283:                                ; preds = %land.lhs.true.279
  %217 = load i32, i32* %k2, align 4
  %idxprom284 = sext i32 %217 to i64
  %218 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %218, i64 %idxprom284
  %219 = load i8, i8* %arrayidx285, align 1
  %tobool286 = icmp ne i8 %219, 0
  br i1 %tobool286, label %if.end.304, label %if.then.287

if.then.287:                                      ; preds = %land.lhs.true.283
  %220 = load i32, i32* %j, align 4
  %idxprom288 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %221 to i64
  %222 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx290 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %222, i64 %idxprom289
  %223 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %223, i64 %idxprom288
  %224 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx291, align 8
  %wimportance292 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %224, i32 0, i32 12
  %225 = load double, double* %wimportance292, align 8
  %226 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %226 to i64
  %227 = load double*, double** %eff1.addr, align 8
  %arrayidx294 = getelementptr inbounds double, double* %227, i64 %idxprom293
  %228 = load double, double* %arrayidx294, align 8
  %mul295 = fmul double %225, %228
  %229 = load i32, i32* %j, align 4
  %idxprom296 = sext i32 %229 to i64
  %230 = load double*, double** %eff2.addr, align 8
  %arrayidx297 = getelementptr inbounds double, double* %230, i64 %idxprom296
  %231 = load double, double* %arrayidx297, align 8
  %mul298 = fmul double %mul295, %231
  %conv299 = fptrunc double %mul298 to float
  %232 = load i32, i32* %k2, align 4
  %idxprom300 = sext i32 %232 to i64
  %233 = load i32, i32* %k1, align 4
  %idxprom301 = sext i32 %233 to i64
  %234 = load float**, float*** @impmtx, align 8
  %arrayidx302 = getelementptr inbounds float*, float** %234, i64 %idxprom301
  %235 = load float*, float** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds float, float* %235, i64 %idxprom300
  store float %conv299, float* %arrayidx303, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.287, %land.lhs.true.283, %land.lhs.true.279, %land.lhs.true.276, %while.body.273
  %236 = load i32, i32* %k1, align 4
  %inc305 = add nsw i32 %236, 1
  store i32 %inc305, i32* %k1, align 4
  %237 = load i32, i32* %k2, align 4
  %inc306 = add nsw i32 %237, 1
  store i32 %inc306, i32* %k2, align 4
  br label %while.cond.266

while.end.307:                                    ; preds = %land.end.272
  br label %do.cond

do.cond:                                          ; preds = %while.end.307
  %238 = load i32, i32* %dif, align 4
  %dec = add nsw i32 %238, -1
  store i32 %dec, i32* %dif, align 4
  %tobool308 = icmp ne i32 %238, 0
  br i1 %tobool308, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.354

if.else.309:                                      ; preds = %while.end.256
  br label %do.body.310

do.body.310:                                      ; preds = %do.cond.350, %if.else.309
  %239 = load i32, i32* %start1, align 4
  %240 = load i32, i32* %dif, align 4
  %add311 = add nsw i32 %239, %240
  store i32 %add311, i32* %k1, align 4
  %241 = load i32, i32* %start2, align 4
  store i32 %241, i32* %k2, align 4
  br label %while.cond.312

while.cond.312:                                   ; preds = %if.end.346, %do.body.310
  %242 = load i32, i32* %k1, align 4
  %243 = load i32, i32* %end1, align 4
  %cmp313 = icmp sle i32 %242, %243
  br i1 %cmp313, label %while.body.315, label %while.end.349

while.body.315:                                   ; preds = %while.cond.312
  %244 = load i32, i32* %k1, align 4
  %cmp316 = icmp sge i32 %244, 0
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.346

land.lhs.true.318:                                ; preds = %while.body.315
  %245 = load i32, i32* %k1, align 4
  %246 = load i32, i32* %start1, align 4
  %cmp319 = icmp sge i32 %245, %246
  br i1 %cmp319, label %land.lhs.true.321, label %if.end.346

land.lhs.true.321:                                ; preds = %land.lhs.true.318
  %247 = load i32, i32* %k1, align 4
  %idxprom322 = sext i32 %247 to i64
  %248 = load i8*, i8** @part_imp_match_init.nocount1, align 8
  %arrayidx323 = getelementptr inbounds i8, i8* %248, i64 %idxprom322
  %249 = load i8, i8* %arrayidx323, align 1
  %tobool324 = icmp ne i8 %249, 0
  br i1 %tobool324, label %if.end.346, label %land.lhs.true.325

land.lhs.true.325:                                ; preds = %land.lhs.true.321
  %250 = load i32, i32* %k2, align 4
  %idxprom326 = sext i32 %250 to i64
  %251 = load i8*, i8** @part_imp_match_init.nocount2, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %251, i64 %idxprom326
  %252 = load i8, i8* %arrayidx327, align 1
  %tobool328 = icmp ne i8 %252, 0
  br i1 %tobool328, label %if.end.346, label %if.then.329

if.then.329:                                      ; preds = %land.lhs.true.325
  %253 = load i32, i32* %j, align 4
  %idxprom330 = sext i32 %253 to i64
  %254 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %254 to i64
  %255 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %arrayidx332 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %255, i64 %idxprom331
  %256 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %256, i64 %idxprom330
  %257 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx333, align 8
  %wimportance334 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %257, i32 0, i32 12
  %258 = load double, double* %wimportance334, align 8
  %259 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %259 to i64
  %260 = load double*, double** %eff1.addr, align 8
  %arrayidx336 = getelementptr inbounds double, double* %260, i64 %idxprom335
  %261 = load double, double* %arrayidx336, align 8
  %mul337 = fmul double %258, %261
  %262 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %262 to i64
  %263 = load double*, double** %eff2.addr, align 8
  %arrayidx339 = getelementptr inbounds double, double* %263, i64 %idxprom338
  %264 = load double, double* %arrayidx339, align 8
  %mul340 = fmul double %mul337, %264
  %conv341 = fptrunc double %mul340 to float
  %265 = load i32, i32* %k2, align 4
  %idxprom342 = sext i32 %265 to i64
  %266 = load i32, i32* %k1, align 4
  %idxprom343 = sext i32 %266 to i64
  %267 = load float**, float*** @impmtx, align 8
  %arrayidx344 = getelementptr inbounds float*, float** %267, i64 %idxprom343
  %268 = load float*, float** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds float, float* %268, i64 %idxprom342
  store float %conv341, float* %arrayidx345, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.329, %land.lhs.true.325, %land.lhs.true.321, %land.lhs.true.318, %while.body.315
  %269 = load i32, i32* %k1, align 4
  %inc347 = add nsw i32 %269, 1
  store i32 %inc347, i32* %k1, align 4
  %270 = load i32, i32* %k2, align 4
  %inc348 = add nsw i32 %270, 1
  store i32 %inc348, i32* %k2, align 4
  br label %while.cond.312

while.end.349:                                    ; preds = %while.cond.312
  br label %do.cond.350

do.cond.350:                                      ; preds = %while.end.349
  %271 = load i32, i32* %dif, align 4
  %inc351 = add nsw i32 %271, 1
  store i32 %inc351, i32* %dif, align 4
  %tobool352 = icmp ne i32 %271, 0
  br i1 %tobool352, label %do.body.310, label %do.end.353

do.end.353:                                       ; preds = %do.cond.350
  br label %if.end.354

if.end.354:                                       ; preds = %do.end.353, %do.end
  br label %for.inc.355

for.inc.355:                                      ; preds = %if.end.354
  %272 = load i32, i32* %j, align 4
  %inc356 = add nsw i32 %272, 1
  store i32 %inc356, i32* %j, align 4
  br label %for.cond.91

for.end.357:                                      ; preds = %for.cond.91
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.end.357
  %273 = load i32, i32* %i, align 4
  %inc359 = add nsw i32 %273, 1
  store i32 %inc359, i32* %i, align 4
  br label %for.cond.84

for.end.360:                                      ; preds = %for.cond.84
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @AllocateCharVec(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define float @partA__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i32 %start1, i32 %end1, i32 %start2, i32 %end2, i32* %gapmap1, i32* %gapmap2, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %start1.addr = alloca i32, align 4
  %end1.addr = alloca i32, align 4
  %start2.addr = alloca i32, align 4
  %end2.addr = alloca i32, align 4
  %gapmap1.addr = alloca i32*, align 8
  %gapmap2.addr = alloca i32*, align 8
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
  %ll1108 = alloca i32, align 4
  %ll2109 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store %struct._LocalHom*** %localhom, %struct._LocalHom**** %localhom.addr, align 8
  store float* %impmatch, float** %impmatch.addr, align 8
  store i32 %start1, i32* %start1.addr, align 4
  store i32 %end1, i32* %end1.addr, align 4
  store i32 %start2, i32* %start2.addr, align 4
  store i32 %end2, i32* %end2.addr, align 4
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store i8* %sgap1, i8** %sgap1.addr, align 8
  store i8* %sgap2, i8** %sgap2.addr, align 8
  store i8* %egap1, i8** %egap1.addr, align 8
  store i8* %egap2, i8** %egap2.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @partA__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @partA__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @partA__align.mseq2, align 8
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
  %9 = load i32, i32* @partA__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @partA__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.84

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @partA__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @partA__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @partA__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @partA__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @partA__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @partA__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @partA__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @partA__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @partA__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @partA__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @partA__align.ogcp1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @partA__align.ogcp2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @partA__align.fgcp1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @partA__align.fgcp2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float**, float*** @partA__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %26)
  %27 = load float**, float*** @partA__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %27)
  %28 = load float**, float*** @partA__align.floatwork, align 8
  call void @FreeFloatMtx(float** %28)
  %29 = load i32**, i32*** @partA__align.intwork, align 8
  call void @FreeIntMtx(i32** %29)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %30 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %30 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %31 = load i32, i32* @partA__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %31
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %32 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %32 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %33 = load i32, i32* @partA__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %33, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %34 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %35 = load i32, i32* @partA__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %35
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %36 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %36 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %37 = load i32, i32* @partA__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %37, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %38 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %38, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @partA__align.w1, align 8
  %39 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %39, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @partA__align.w2, align 8
  %40 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %40, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @partA__align.match, align 8
  %41 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %41, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @partA__align.initverticalw, align 8
  %42 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %42, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @partA__align.lastverticalw, align 8
  %43 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %43, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @partA__align.m, align 8
  %44 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %44, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @partA__align.mp, align 8
  %45 = load i32, i32* @njob, align 4
  %46 = load i32, i32* %ll1, align 4
  %47 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %46, %47
  %call54 = call i8** @AllocateCharMtx(i32 %45, i32 %add53)
  store i8** %call54, i8*** @partA__align.mseq, align 8
  %48 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %48, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @partA__align.ogcp1, align 8
  %49 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %49, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @partA__align.ogcp2, align 8
  %50 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %50, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @partA__align.fgcp1, align 8
  %51 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %51, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @partA__align.fgcp2, align 8
  %52 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %52, 2
  %call64 = call float** @AllocateFloatMtx(i32 26, i32 %add63)
  store float** %call64, float*** @partA__align.cpmx1, align 8
  %53 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %53, 2
  %call66 = call float** @AllocateFloatMtx(i32 26, i32 %add65)
  store float** %call66, float*** @partA__align.cpmx2, align 8
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
  store float** %call74, float*** @partA__align.floatwork, align 8
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
  %call82 = call i32** @AllocateIntMtx(i32 %add81, i32 26)
  store i32** %call82, i32*** @partA__align.intwork, align 8
  %62 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %62, 100
  store i32 %sub, i32* @partA__align.orlgth1, align 4
  %63 = load i32, i32* %ll2, align 4
  %sub83 = sub nsw i32 %63, 100
  store i32 %sub83, i32* @partA__align.orlgth2, align 4
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
  %67 = load i8**, i8*** @partA__align.mseq, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %67, i64 %idxprom
  %68 = load i8*, i8** %arrayidx87, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i8**, i8*** @partA__align.mseq1, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %70, i64 %idxprom88
  store i8* %68, i8** %arrayidx89, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %i, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.99, %for.end
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %jcyc.addr, align 4
  %cmp91 = icmp slt i32 %72, %73
  br i1 %cmp91, label %for.body.93, label %for.end.101

for.body.93:                                      ; preds = %for.cond.90
  %74 = load i32, i32* %icyc.addr, align 4
  %75 = load i32, i32* %j, align 4
  %add94 = add nsw i32 %74, %75
  %idxprom95 = sext i32 %add94 to i64
  %76 = load i8**, i8*** @partA__align.mseq, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %76, i64 %idxprom95
  %77 = load i8*, i8** %arrayidx96, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %78 to i64
  %79 = load i8**, i8*** @partA__align.mseq2, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %79, i64 %idxprom97
  store i8* %77, i8** %arrayidx98, align 8
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.93
  %80 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %80, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.90

for.end.101:                                      ; preds = %for.cond.90
  %81 = load i32, i32* @partA__align.orlgth1, align 4
  %82 = load i32, i32* @commonAlloc1, align 4
  %cmp102 = icmp sgt i32 %81, %82
  br i1 %cmp102, label %if.then.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %for.end.101
  %83 = load i32, i32* @partA__align.orlgth2, align 4
  %84 = load i32, i32* @commonAlloc2, align 4
  %cmp105 = icmp sgt i32 %83, %84
  br i1 %cmp105, label %if.then.107, label %if.end.129

if.then.107:                                      ; preds = %lor.lhs.false.104, %for.end.101
  %85 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %land.lhs.true.110, label %if.end.113

land.lhs.true.110:                                ; preds = %if.then.107
  %86 = load i32, i32* @commonAlloc2, align 4
  %tobool111 = icmp ne i32 %86, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.110
  %87 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %87)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %land.lhs.true.110, %if.then.107
  %88 = load i32, i32* @partA__align.orlgth1, align 4
  %89 = load i32, i32* @commonAlloc1, align 4
  %cmp114 = icmp sgt i32 %88, %89
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %if.end.113
  %90 = load i32, i32* @partA__align.orlgth1, align 4
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.end.113
  %91 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi i32 [ %90, %cond.true.116 ], [ %91, %cond.false.117 ]
  store i32 %cond119, i32* %ll1108, align 4
  %92 = load i32, i32* @partA__align.orlgth2, align 4
  %93 = load i32, i32* @commonAlloc2, align 4
  %cmp120 = icmp sgt i32 %92, %93
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.118
  %94 = load i32, i32* @partA__align.orlgth2, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.end.118
  %95 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %94, %cond.true.122 ], [ %95, %cond.false.123 ]
  store i32 %cond125, i32* %ll2109, align 4
  %96 = load i32, i32* %ll1108, align 4
  %add126 = add nsw i32 %96, 10
  %97 = load i32, i32* %ll2109, align 4
  %add127 = add nsw i32 %97, 10
  %call128 = call i32** @AllocateIntMtx(i32 %add126, i32 %add127)
  store i32** %call128, i32*** @commonIP, align 8
  %98 = load i32, i32* %ll1108, align 4
  store i32 %98, i32* @commonAlloc1, align 4
  %99 = load i32, i32* %ll2109, align 4
  store i32 %99, i32* @commonAlloc2, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %cond.end.124, %lor.lhs.false.104
  %100 = load i32**, i32*** @commonIP, align 8
  store i32** %100, i32*** @partA__align.ijp, align 8
  %101 = load i8**, i8*** %seq1.addr, align 8
  %102 = load float**, float*** @partA__align.cpmx1, align 8
  %103 = load double*, double** %eff1.addr, align 8
  %104 = load i32, i32* %lgth1, align 4
  %105 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %101, float** %102, double* %103, i32 %104, i32 %105)
  %106 = load i8**, i8*** %seq2.addr, align 8
  %107 = load float**, float*** @partA__align.cpmx2, align 8
  %108 = load double*, double** %eff2.addr, align 8
  %109 = load i32, i32* %lgth2, align 4
  %110 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %106, float** %107, double* %108, i32 %109, i32 %110)
  %111 = load i8*, i8** %sgap1.addr, align 8
  %tobool130 = icmp ne i8* %111, null
  br i1 %tobool130, label %if.then.131, label %if.else

if.then.131:                                      ; preds = %if.end.129
  %112 = load float*, float** @partA__align.ogcp1, align 8
  %113 = load i32, i32* %icyc.addr, align 4
  %114 = load i8**, i8*** %seq1.addr, align 8
  %115 = load double*, double** %eff1.addr, align 8
  %116 = load i32, i32* %lgth1, align 4
  %117 = load i8*, i8** %sgap1.addr, align 8
  call void @new_OpeningGapCount(float* %112, i32 %113, i8** %114, double* %115, i32 %116, i8* %117)
  %118 = load float*, float** @partA__align.ogcp2, align 8
  %119 = load i32, i32* %jcyc.addr, align 4
  %120 = load i8**, i8*** %seq2.addr, align 8
  %121 = load double*, double** %eff2.addr, align 8
  %122 = load i32, i32* %lgth2, align 4
  %123 = load i8*, i8** %sgap2.addr, align 8
  call void @new_OpeningGapCount(float* %118, i32 %119, i8** %120, double* %121, i32 %122, i8* %123)
  %124 = load float*, float** @partA__align.fgcp1, align 8
  %125 = load i32, i32* %icyc.addr, align 4
  %126 = load i8**, i8*** %seq1.addr, align 8
  %127 = load double*, double** %eff1.addr, align 8
  %128 = load i32, i32* %lgth1, align 4
  %129 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount(float* %124, i32 %125, i8** %126, double* %127, i32 %128, i8* %129)
  %130 = load float*, float** @partA__align.fgcp2, align 8
  %131 = load i32, i32* %jcyc.addr, align 4
  %132 = load i8**, i8*** %seq2.addr, align 8
  %133 = load double*, double** %eff2.addr, align 8
  %134 = load i32, i32* %lgth2, align 4
  %135 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %130, i32 %131, i8** %132, double* %133, i32 %134, i8* %135)
  br label %if.end.132

if.else:                                          ; preds = %if.end.129
  %136 = load float*, float** @partA__align.ogcp1, align 8
  %137 = load i32, i32* %icyc.addr, align 4
  %138 = load i8**, i8*** %seq1.addr, align 8
  %139 = load double*, double** %eff1.addr, align 8
  %140 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %136, i32 %137, i8** %138, double* %139, i32 %140)
  %141 = load float*, float** @partA__align.ogcp2, align 8
  %142 = load i32, i32* %jcyc.addr, align 4
  %143 = load i8**, i8*** %seq2.addr, align 8
  %144 = load double*, double** %eff2.addr, align 8
  %145 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %141, i32 %142, i8** %143, double* %144, i32 %145)
  %146 = load float*, float** @partA__align.fgcp1, align 8
  %147 = load i32, i32* %icyc.addr, align 4
  %148 = load i8**, i8*** %seq1.addr, align 8
  %149 = load double*, double** %eff1.addr, align 8
  %150 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount(float* %146, i32 %147, i8** %148, double* %149, i32 %150)
  %151 = load float*, float** @partA__align.fgcp2, align 8
  %152 = load i32, i32* %jcyc.addr, align 4
  %153 = load i8**, i8*** %seq2.addr, align 8
  %154 = load double*, double** %eff2.addr, align 8
  %155 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount(float* %151, i32 %152, i8** %153, double* %154, i32 %155)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else, %if.then.131
  store i32 0, i32* %i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.157, %if.end.132
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %lgth1, align 4
  %cmp134 = icmp slt i32 %156, %157
  br i1 %cmp134, label %for.body.136, label %for.end.159

for.body.136:                                     ; preds = %for.cond.133
  %158 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %158 to i64
  %159 = load float*, float** @partA__align.ogcp1, align 8
  %arrayidx138 = getelementptr inbounds float, float* %159, i64 %idxprom137
  %160 = load float, float* %arrayidx138, align 4
  %conv139 = fpext float %160 to double
  %sub140 = fsub double 1.000000e+00, %conv139
  %mul141 = fmul double 5.000000e-01, %sub140
  %161 = load float, float* %fpenalty, align 4
  %conv142 = fpext float %161 to double
  %mul143 = fmul double %mul141, %conv142
  %conv144 = fptrunc double %mul143 to float
  %162 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %162 to i64
  %163 = load float*, float** @partA__align.ogcp1, align 8
  %arrayidx146 = getelementptr inbounds float, float* %163, i64 %idxprom145
  store float %conv144, float* %arrayidx146, align 4
  %164 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %164 to i64
  %165 = load float*, float** @partA__align.fgcp1, align 8
  %arrayidx148 = getelementptr inbounds float, float* %165, i64 %idxprom147
  %166 = load float, float* %arrayidx148, align 4
  %conv149 = fpext float %166 to double
  %sub150 = fsub double 1.000000e+00, %conv149
  %mul151 = fmul double 5.000000e-01, %sub150
  %167 = load float, float* %fpenalty, align 4
  %conv152 = fpext float %167 to double
  %mul153 = fmul double %mul151, %conv152
  %conv154 = fptrunc double %mul153 to float
  %168 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %168 to i64
  %169 = load float*, float** @partA__align.fgcp1, align 8
  %arrayidx156 = getelementptr inbounds float, float* %169, i64 %idxprom155
  store float %conv154, float* %arrayidx156, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.136
  %170 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %170, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.133

for.end.159:                                      ; preds = %for.cond.133
  store i32 0, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.184, %for.end.159
  %171 = load i32, i32* %i, align 4
  %172 = load i32, i32* %lgth2, align 4
  %cmp161 = icmp slt i32 %171, %172
  br i1 %cmp161, label %for.body.163, label %for.end.186

for.body.163:                                     ; preds = %for.cond.160
  %173 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %173 to i64
  %174 = load float*, float** @partA__align.ogcp2, align 8
  %arrayidx165 = getelementptr inbounds float, float* %174, i64 %idxprom164
  %175 = load float, float* %arrayidx165, align 4
  %conv166 = fpext float %175 to double
  %sub167 = fsub double 1.000000e+00, %conv166
  %mul168 = fmul double 5.000000e-01, %sub167
  %176 = load float, float* %fpenalty, align 4
  %conv169 = fpext float %176 to double
  %mul170 = fmul double %mul168, %conv169
  %conv171 = fptrunc double %mul170 to float
  %177 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %177 to i64
  %178 = load float*, float** @partA__align.ogcp2, align 8
  %arrayidx173 = getelementptr inbounds float, float* %178, i64 %idxprom172
  store float %conv171, float* %arrayidx173, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %179 to i64
  %180 = load float*, float** @partA__align.fgcp2, align 8
  %arrayidx175 = getelementptr inbounds float, float* %180, i64 %idxprom174
  %181 = load float, float* %arrayidx175, align 4
  %conv176 = fpext float %181 to double
  %sub177 = fsub double 1.000000e+00, %conv176
  %mul178 = fmul double 5.000000e-01, %sub177
  %182 = load float, float* %fpenalty, align 4
  %conv179 = fpext float %182 to double
  %mul180 = fmul double %mul178, %conv179
  %conv181 = fptrunc double %mul180 to float
  %183 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %183 to i64
  %184 = load float*, float** @partA__align.fgcp2, align 8
  %arrayidx183 = getelementptr inbounds float, float* %184, i64 %idxprom182
  store float %conv181, float* %arrayidx183, align 4
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.body.163
  %185 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %185, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.160

for.end.186:                                      ; preds = %for.cond.160
  %186 = load float*, float** @partA__align.w1, align 8
  store float* %186, float** %currentw, align 8
  %187 = load float*, float** @partA__align.w2, align 8
  store float* %187, float** %previousw, align 8
  %188 = load float*, float** @partA__align.initverticalw, align 8
  %189 = load float**, float*** @partA__align.cpmx2, align 8
  %190 = load float**, float*** @partA__align.cpmx1, align 8
  %191 = load i32, i32* %lgth1, align 4
  %192 = load float**, float*** @partA__align.floatwork, align 8
  %193 = load i32**, i32*** @partA__align.intwork, align 8
  call void @match_calc(float* %188, float** %189, float** %190, i32 0, i32 %191, float** %192, i32** %193, i32 1)
  %194 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool187 = icmp ne %struct._LocalHom*** %194, null
  br i1 %tobool187, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %for.end.186
  %195 = load float*, float** @partA__align.initverticalw, align 8
  %196 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %196, i64 0
  %197 = load i32, i32* %arrayidx189, align 4
  %198 = load i32, i32* %start2.addr, align 4
  %add190 = add nsw i32 %197, %198
  %199 = load i32, i32* %lgth1, align 4
  %200 = load i32, i32* %start1.addr, align 4
  %201 = load i32*, i32** %gapmap1.addr, align 8
  call void @part_imp_match_out_vead_tate_gapmap(float* %195, i32 %add190, i32 %199, i32 %200, i32* %201)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %for.end.186
  %202 = load float*, float** %currentw, align 8
  %203 = load float**, float*** @partA__align.cpmx1, align 8
  %204 = load float**, float*** @partA__align.cpmx2, align 8
  %205 = load i32, i32* %lgth2, align 4
  %206 = load float**, float*** @partA__align.floatwork, align 8
  %207 = load i32**, i32*** @partA__align.intwork, align 8
  call void @match_calc(float* %202, float** %203, float** %204, i32 0, i32 %205, float** %206, i32** %207, i32 1)
  %208 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool192 = icmp ne %struct._LocalHom*** %208, null
  br i1 %tobool192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.191
  %209 = load float*, float** %currentw, align 8
  %210 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %210, i64 0
  %211 = load i32, i32* %arrayidx194, align 4
  %212 = load i32, i32* %start1.addr, align 4
  %add195 = add nsw i32 %211, %212
  %213 = load i32, i32* %lgth2, align 4
  %214 = load i32, i32* %start2.addr, align 4
  %215 = load i32*, i32** %gapmap2.addr, align 8
  call void @part_imp_match_out_vead_gapmap(float* %209, i32 %add195, i32 %213, i32 %214, i32* %215)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.end.191
  %216 = load i32, i32* @outgap, align 4
  %cmp197 = icmp eq i32 %216, 1
  br i1 %cmp197, label %if.then.199, label %if.else.232

if.then.199:                                      ; preds = %if.end.196
  store i32 1, i32* %i, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.213, %if.then.199
  %217 = load i32, i32* %i, align 4
  %218 = load i32, i32* %lgth1, align 4
  %add201 = add nsw i32 %218, 1
  %cmp202 = icmp slt i32 %217, %add201
  br i1 %cmp202, label %for.body.204, label %for.end.215

for.body.204:                                     ; preds = %for.cond.200
  %219 = load float*, float** @partA__align.ogcp1, align 8
  %arrayidx205 = getelementptr inbounds float, float* %219, i64 0
  %220 = load float, float* %arrayidx205, align 4
  %221 = load i32, i32* %i, align 4
  %sub206 = sub nsw i32 %221, 1
  %idxprom207 = sext i32 %sub206 to i64
  %222 = load float*, float** @partA__align.fgcp1, align 8
  %arrayidx208 = getelementptr inbounds float, float* %222, i64 %idxprom207
  %223 = load float, float* %arrayidx208, align 4
  %add209 = fadd float %220, %223
  %224 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %224 to i64
  %225 = load float*, float** @partA__align.initverticalw, align 8
  %arrayidx211 = getelementptr inbounds float, float* %225, i64 %idxprom210
  %226 = load float, float* %arrayidx211, align 4
  %add212 = fadd float %226, %add209
  store float %add212, float* %arrayidx211, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.204
  %227 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %227, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.200

for.end.215:                                      ; preds = %for.cond.200
  store i32 1, i32* %j, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.229, %for.end.215
  %228 = load i32, i32* %j, align 4
  %229 = load i32, i32* %lgth2, align 4
  %add217 = add nsw i32 %229, 1
  %cmp218 = icmp slt i32 %228, %add217
  br i1 %cmp218, label %for.body.220, label %for.end.231

for.body.220:                                     ; preds = %for.cond.216
  %230 = load float*, float** @partA__align.ogcp2, align 8
  %arrayidx221 = getelementptr inbounds float, float* %230, i64 0
  %231 = load float, float* %arrayidx221, align 4
  %232 = load i32, i32* %j, align 4
  %sub222 = sub nsw i32 %232, 1
  %idxprom223 = sext i32 %sub222 to i64
  %233 = load float*, float** @partA__align.fgcp2, align 8
  %arrayidx224 = getelementptr inbounds float, float* %233, i64 %idxprom223
  %234 = load float, float* %arrayidx224, align 4
  %add225 = fadd float %231, %234
  %235 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %235 to i64
  %236 = load float*, float** %currentw, align 8
  %arrayidx227 = getelementptr inbounds float, float* %236, i64 %idxprom226
  %237 = load float, float* %arrayidx227, align 4
  %add228 = fadd float %237, %add225
  store float %add228, float* %arrayidx227, align 4
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.220
  %238 = load i32, i32* %j, align 4
  %inc230 = add nsw i32 %238, 1
  store i32 %inc230, i32* %j, align 4
  br label %for.cond.216

for.end.231:                                      ; preds = %for.cond.216
  br label %if.end.264

if.else.232:                                      ; preds = %if.end.196
  store i32 1, i32* %j, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.245, %if.else.232
  %239 = load i32, i32* %j, align 4
  %240 = load i32, i32* %lgth2, align 4
  %add234 = add nsw i32 %240, 1
  %cmp235 = icmp slt i32 %239, %add234
  br i1 %cmp235, label %for.body.237, label %for.end.247

for.body.237:                                     ; preds = %for.cond.233
  %241 = load i32, i32* @offset, align 4
  %242 = load i32, i32* %j, align 4
  %mul238 = mul nsw i32 %241, %242
  %conv239 = sitofp i32 %mul238 to double
  %div = fdiv double %conv239, 2.000000e+00
  %243 = load i32, i32* %j, align 4
  %idxprom240 = sext i32 %243 to i64
  %244 = load float*, float** %currentw, align 8
  %arrayidx241 = getelementptr inbounds float, float* %244, i64 %idxprom240
  %245 = load float, float* %arrayidx241, align 4
  %conv242 = fpext float %245 to double
  %sub243 = fsub double %conv242, %div
  %conv244 = fptrunc double %sub243 to float
  store float %conv244, float* %arrayidx241, align 4
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.237
  %246 = load i32, i32* %j, align 4
  %inc246 = add nsw i32 %246, 1
  store i32 %inc246, i32* %j, align 4
  br label %for.cond.233

for.end.247:                                      ; preds = %for.cond.233
  store i32 1, i32* %i, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.261, %for.end.247
  %247 = load i32, i32* %i, align 4
  %248 = load i32, i32* %lgth1, align 4
  %add249 = add nsw i32 %248, 1
  %cmp250 = icmp slt i32 %247, %add249
  br i1 %cmp250, label %for.body.252, label %for.end.263

for.body.252:                                     ; preds = %for.cond.248
  %249 = load i32, i32* @offset, align 4
  %250 = load i32, i32* %i, align 4
  %mul253 = mul nsw i32 %249, %250
  %conv254 = sitofp i32 %mul253 to double
  %div255 = fdiv double %conv254, 2.000000e+00
  %251 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %251 to i64
  %252 = load float*, float** @partA__align.initverticalw, align 8
  %arrayidx257 = getelementptr inbounds float, float* %252, i64 %idxprom256
  %253 = load float, float* %arrayidx257, align 4
  %conv258 = fpext float %253 to double
  %sub259 = fsub double %conv258, %div255
  %conv260 = fptrunc double %sub259 to float
  store float %conv260, float* %arrayidx257, align 4
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.252
  %254 = load i32, i32* %i, align 4
  %inc262 = add nsw i32 %254, 1
  store i32 %inc262, i32* %i, align 4
  br label %for.cond.248

for.end.263:                                      ; preds = %for.cond.248
  br label %if.end.264

if.end.264:                                       ; preds = %for.end.263, %for.end.231
  store i32 1, i32* %j, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.279, %if.end.264
  %255 = load i32, i32* %j, align 4
  %256 = load i32, i32* %lgth2, align 4
  %add266 = add nsw i32 %256, 1
  %cmp267 = icmp slt i32 %255, %add266
  br i1 %cmp267, label %for.body.269, label %for.end.281

for.body.269:                                     ; preds = %for.cond.265
  %257 = load i32, i32* %j, align 4
  %sub270 = sub nsw i32 %257, 1
  %idxprom271 = sext i32 %sub270 to i64
  %258 = load float*, float** %currentw, align 8
  %arrayidx272 = getelementptr inbounds float, float* %258, i64 %idxprom271
  %259 = load float, float* %arrayidx272, align 4
  %260 = load float*, float** @partA__align.ogcp1, align 8
  %arrayidx273 = getelementptr inbounds float, float* %260, i64 1
  %261 = load float, float* %arrayidx273, align 4
  %add274 = fadd float %259, %261
  %262 = load i32, i32* %j, align 4
  %idxprom275 = sext i32 %262 to i64
  %263 = load float*, float** @partA__align.m, align 8
  %arrayidx276 = getelementptr inbounds float, float* %263, i64 %idxprom275
  store float %add274, float* %arrayidx276, align 4
  %264 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %264 to i64
  %265 = load i32*, i32** @partA__align.mp, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %265, i64 %idxprom277
  store i32 0, i32* %arrayidx278, align 4
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.269
  %266 = load i32, i32* %j, align 4
  %inc280 = add nsw i32 %266, 1
  store i32 %inc280, i32* %j, align 4
  br label %for.cond.265

for.end.281:                                      ; preds = %for.cond.265
  %267 = load i32, i32* %lgth2, align 4
  %sub282 = sub nsw i32 %267, 1
  %idxprom283 = sext i32 %sub282 to i64
  %268 = load float*, float** %currentw, align 8
  %arrayidx284 = getelementptr inbounds float, float* %268, i64 %idxprom283
  %269 = load float, float* %arrayidx284, align 4
  %270 = load float*, float** @partA__align.lastverticalw, align 8
  %arrayidx285 = getelementptr inbounds float, float* %270, i64 0
  store float %269, float* %arrayidx285, align 4
  %271 = load i32, i32* @outgap, align 4
  %tobool286 = icmp ne i32 %271, 0
  br i1 %tobool286, label %if.then.287, label %if.else.289

if.then.287:                                      ; preds = %for.end.281
  %272 = load i32, i32* %lgth1, align 4
  %add288 = add nsw i32 %272, 1
  store i32 %add288, i32* %lasti, align 4
  br label %if.end.290

if.else.289:                                      ; preds = %for.end.281
  %273 = load i32, i32* %lgth1, align 4
  store i32 %273, i32* %lasti, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.289, %if.then.287
  %274 = load i32, i32* %lgth2, align 4
  %add291 = add nsw i32 %274, 1
  store i32 %add291, i32* %lastj, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.367, %if.end.290
  %275 = load i32, i32* %i, align 4
  %276 = load i32, i32* %lasti, align 4
  %cmp293 = icmp slt i32 %275, %276
  br i1 %cmp293, label %for.body.295, label %for.end.369

for.body.295:                                     ; preds = %for.cond.292
  %277 = load float*, float** %previousw, align 8
  store float* %277, float** %wtmp, align 8
  %278 = load float*, float** %currentw, align 8
  store float* %278, float** %previousw, align 8
  %279 = load float*, float** %wtmp, align 8
  store float* %279, float** %currentw, align 8
  %280 = load i32, i32* %i, align 4
  %sub296 = sub nsw i32 %280, 1
  %idxprom297 = sext i32 %sub296 to i64
  %281 = load float*, float** @partA__align.initverticalw, align 8
  %arrayidx298 = getelementptr inbounds float, float* %281, i64 %idxprom297
  %282 = load float, float* %arrayidx298, align 4
  %283 = load float*, float** %previousw, align 8
  %arrayidx299 = getelementptr inbounds float, float* %283, i64 0
  store float %282, float* %arrayidx299, align 4
  %284 = load float*, float** %currentw, align 8
  %285 = load float**, float*** @partA__align.cpmx1, align 8
  %286 = load float**, float*** @partA__align.cpmx2, align 8
  %287 = load i32, i32* %i, align 4
  %288 = load i32, i32* %lgth2, align 4
  %289 = load float**, float*** @partA__align.floatwork, align 8
  %290 = load i32**, i32*** @partA__align.intwork, align 8
  call void @match_calc(float* %284, float** %285, float** %286, i32 %287, i32 %288, float** %289, i32** %290, i32 0)
  %291 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool300 = icmp ne %struct._LocalHom*** %291, null
  br i1 %tobool300, label %if.then.301, label %if.end.305

if.then.301:                                      ; preds = %for.body.295
  %292 = load float*, float** %currentw, align 8
  %293 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %293 to i64
  %294 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %294, i64 %idxprom302
  %295 = load i32, i32* %arrayidx303, align 4
  %296 = load i32, i32* %start1.addr, align 4
  %add304 = add nsw i32 %295, %296
  %297 = load i32, i32* %lgth2, align 4
  %298 = load i32, i32* %start2.addr, align 4
  %299 = load i32*, i32** %gapmap2.addr, align 8
  call void @part_imp_match_out_vead_gapmap(float* %292, i32 %add304, i32 %297, i32 %298, i32* %299)
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.301, %for.body.295
  %300 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %300 to i64
  %301 = load float*, float** @partA__align.initverticalw, align 8
  %arrayidx307 = getelementptr inbounds float, float* %301, i64 %idxprom306
  %302 = load float, float* %arrayidx307, align 4
  %303 = load float*, float** %currentw, align 8
  %arrayidx308 = getelementptr inbounds float, float* %303, i64 0
  store float %302, float* %arrayidx308, align 4
  %304 = load float*, float** %previousw, align 8
  %arrayidx309 = getelementptr inbounds float, float* %304, i64 0
  %305 = load float, float* %arrayidx309, align 4
  %306 = load float*, float** @partA__align.ogcp2, align 8
  %arrayidx310 = getelementptr inbounds float, float* %306, i64 1
  %307 = load float, float* %arrayidx310, align 4
  %add311 = fadd float %305, %307
  store float %add311, float* @partA__align.mi, align 4
  store i32 0, i32* @partA__align.mpi, align 4
  %308 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %308 to i64
  %309 = load i32**, i32*** @partA__align.ijp, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %309, i64 %idxprom312
  %310 = load i32*, i32** %arrayidx313, align 8
  %add.ptr = getelementptr inbounds i32, i32* %310, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %311 = load float*, float** @partA__align.m, align 8
  %add.ptr314 = getelementptr inbounds float, float* %311, i64 1
  store float* %add.ptr314, float** %mjpt, align 8
  %312 = load float*, float** %previousw, align 8
  store float* %312, float** %prept, align 8
  %313 = load float*, float** %currentw, align 8
  %add.ptr315 = getelementptr inbounds float, float* %313, i64 1
  store float* %add.ptr315, float** %curpt, align 8
  %314 = load i32*, i32** @partA__align.mp, align 8
  %add.ptr316 = getelementptr inbounds i32, i32* %314, i64 1
  store i32* %add.ptr316, i32** %mpjpt, align 8
  %315 = load float*, float** @partA__align.fgcp2, align 8
  store float* %315, float** %fgcp2pt, align 8
  %316 = load float*, float** @partA__align.ogcp2, align 8
  %add.ptr317 = getelementptr inbounds float, float* %316, i64 1
  store float* %add.ptr317, float** %ogcp2pt, align 8
  %317 = load i32, i32* %i, align 4
  %sub318 = sub nsw i32 %317, 1
  %idxprom319 = sext i32 %sub318 to i64
  %318 = load float*, float** @partA__align.fgcp1, align 8
  %arrayidx320 = getelementptr inbounds float, float* %318, i64 %idxprom319
  %319 = load float, float* %arrayidx320, align 4
  store float %319, float* %fgcp1va, align 4
  %320 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %320 to i64
  %321 = load float*, float** @partA__align.ogcp1, align 8
  %arrayidx322 = getelementptr inbounds float, float* %321, i64 %idxprom321
  %322 = load float, float* %arrayidx322, align 4
  store float %322, float* %ogcp1va, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.359, %if.end.305
  %323 = load i32, i32* %j, align 4
  %324 = load i32, i32* %lastj, align 4
  %cmp324 = icmp slt i32 %323, %324
  br i1 %cmp324, label %for.body.326, label %for.end.361

for.body.326:                                     ; preds = %for.cond.323
  %325 = load float*, float** %prept, align 8
  %326 = load float, float* %325, align 4
  store float %326, float* %wm, align 4
  %327 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %327, align 4
  %328 = load float, float* @partA__align.mi, align 4
  %329 = load float*, float** %fgcp2pt, align 8
  %330 = load float, float* %329, align 4
  %add327 = fadd float %328, %330
  store float %add327, float* %g, align 4
  %331 = load float, float* %g, align 4
  %332 = load float, float* %wm, align 4
  %cmp328 = fcmp ogt float %331, %332
  br i1 %cmp328, label %if.then.330, label %if.end.333

if.then.330:                                      ; preds = %for.body.326
  %333 = load float, float* %g, align 4
  store float %333, float* %wm, align 4
  %334 = load i32, i32* %j, align 4
  %335 = load i32, i32* @partA__align.mpi, align 4
  %sub331 = sub nsw i32 %334, %335
  %sub332 = sub nsw i32 0, %sub331
  %336 = load i32*, i32** %ijppt, align 8
  store i32 %sub332, i32* %336, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.330, %for.body.326
  %337 = load float*, float** %prept, align 8
  %338 = load float, float* %337, align 4
  %339 = load float*, float** %ogcp2pt, align 8
  %340 = load float, float* %339, align 4
  %add334 = fadd float %338, %340
  store float %add334, float* %g, align 4
  %341 = load float, float* %g, align 4
  %342 = load float, float* @partA__align.mi, align 4
  %cmp335 = fcmp oge float %341, %342
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.end.333
  %343 = load float, float* %g, align 4
  store float %343, float* @partA__align.mi, align 4
  %344 = load i32, i32* %j, align 4
  %sub338 = sub nsw i32 %344, 1
  store i32 %sub338, i32* @partA__align.mpi, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.end.333
  %345 = load float*, float** %mjpt, align 8
  %346 = load float, float* %345, align 4
  %347 = load float, float* %fgcp1va, align 4
  %add340 = fadd float %346, %347
  store float %add340, float* %g, align 4
  %348 = load float, float* %g, align 4
  %349 = load float, float* %wm, align 4
  %cmp341 = fcmp ogt float %348, %349
  br i1 %cmp341, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %if.end.339
  %350 = load float, float* %g, align 4
  store float %350, float* %wm, align 4
  %351 = load i32, i32* %i, align 4
  %352 = load i32*, i32** %mpjpt, align 8
  %353 = load i32, i32* %352, align 4
  %sub344 = sub nsw i32 %351, %353
  %354 = load i32*, i32** %ijppt, align 8
  store i32 %sub344, i32* %354, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %if.end.339
  %355 = load float*, float** %prept, align 8
  %356 = load float, float* %355, align 4
  %357 = load float, float* %ogcp1va, align 4
  %add346 = fadd float %356, %357
  store float %add346, float* %g, align 4
  %358 = load float, float* %g, align 4
  %359 = load float*, float** %mjpt, align 8
  %360 = load float, float* %359, align 4
  %cmp347 = fcmp oge float %358, %360
  br i1 %cmp347, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.end.345
  %361 = load float, float* %g, align 4
  %362 = load float*, float** %mjpt, align 8
  store float %361, float* %362, align 4
  %363 = load i32, i32* %i, align 4
  %sub350 = sub nsw i32 %363, 1
  %364 = load i32*, i32** %mpjpt, align 8
  store i32 %sub350, i32* %364, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.end.345
  %365 = load float, float* %wm, align 4
  %366 = load float*, float** %curpt, align 8
  %367 = load float, float* %366, align 4
  %add352 = fadd float %367, %365
  store float %add352, float* %366, align 4
  %368 = load i32*, i32** %ijppt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %368, i32 1
  store i32* %incdec.ptr, i32** %ijppt, align 8
  %369 = load float*, float** %mjpt, align 8
  %incdec.ptr353 = getelementptr inbounds float, float* %369, i32 1
  store float* %incdec.ptr353, float** %mjpt, align 8
  %370 = load float*, float** %prept, align 8
  %incdec.ptr354 = getelementptr inbounds float, float* %370, i32 1
  store float* %incdec.ptr354, float** %prept, align 8
  %371 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr355 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %incdec.ptr355, i32** %mpjpt, align 8
  %372 = load float*, float** %curpt, align 8
  %incdec.ptr356 = getelementptr inbounds float, float* %372, i32 1
  store float* %incdec.ptr356, float** %curpt, align 8
  %373 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr357 = getelementptr inbounds float, float* %373, i32 1
  store float* %incdec.ptr357, float** %fgcp2pt, align 8
  %374 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr358 = getelementptr inbounds float, float* %374, i32 1
  store float* %incdec.ptr358, float** %ogcp2pt, align 8
  br label %for.inc.359

for.inc.359:                                      ; preds = %if.end.351
  %375 = load i32, i32* %j, align 4
  %inc360 = add nsw i32 %375, 1
  store i32 %inc360, i32* %j, align 4
  br label %for.cond.323

for.end.361:                                      ; preds = %for.cond.323
  %376 = load i32, i32* %lgth2, align 4
  %sub362 = sub nsw i32 %376, 1
  %idxprom363 = sext i32 %sub362 to i64
  %377 = load float*, float** %currentw, align 8
  %arrayidx364 = getelementptr inbounds float, float* %377, i64 %idxprom363
  %378 = load float, float* %arrayidx364, align 4
  %379 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %379 to i64
  %380 = load float*, float** @partA__align.lastverticalw, align 8
  %arrayidx366 = getelementptr inbounds float, float* %380, i64 %idxprom365
  store float %378, float* %arrayidx366, align 4
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.end.361
  %381 = load i32, i32* %i, align 4
  %inc368 = add nsw i32 %381, 1
  store i32 %inc368, i32* %i, align 4
  br label %for.cond.292

for.end.369:                                      ; preds = %for.cond.292
  %382 = load i32, i32* @outgap, align 4
  %tobool370 = icmp ne i32 %382, 0
  br i1 %tobool370, label %if.end.408, label %if.then.371

if.then.371:                                      ; preds = %for.end.369
  store i32 1, i32* %j, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.386, %if.then.371
  %383 = load i32, i32* %j, align 4
  %384 = load i32, i32* %lgth2, align 4
  %add373 = add nsw i32 %384, 1
  %cmp374 = icmp slt i32 %383, %add373
  br i1 %cmp374, label %for.body.376, label %for.end.388

for.body.376:                                     ; preds = %for.cond.372
  %385 = load i32, i32* @offset, align 4
  %386 = load i32, i32* %lgth2, align 4
  %387 = load i32, i32* %j, align 4
  %sub377 = sub nsw i32 %386, %387
  %mul378 = mul nsw i32 %385, %sub377
  %conv379 = sitofp i32 %mul378 to double
  %div380 = fdiv double %conv379, 2.000000e+00
  %388 = load i32, i32* %j, align 4
  %idxprom381 = sext i32 %388 to i64
  %389 = load float*, float** %currentw, align 8
  %arrayidx382 = getelementptr inbounds float, float* %389, i64 %idxprom381
  %390 = load float, float* %arrayidx382, align 4
  %conv383 = fpext float %390 to double
  %sub384 = fsub double %conv383, %div380
  %conv385 = fptrunc double %sub384 to float
  store float %conv385, float* %arrayidx382, align 4
  br label %for.inc.386

for.inc.386:                                      ; preds = %for.body.376
  %391 = load i32, i32* %j, align 4
  %inc387 = add nsw i32 %391, 1
  store i32 %inc387, i32* %j, align 4
  br label %for.cond.372

for.end.388:                                      ; preds = %for.cond.372
  store i32 1, i32* %i, align 4
  br label %for.cond.389

for.cond.389:                                     ; preds = %for.inc.405, %for.end.388
  %392 = load i32, i32* %i, align 4
  %393 = load i32, i32* %lgth1, align 4
  %add390 = add nsw i32 %393, 1
  %cmp391 = icmp slt i32 %392, %add390
  br i1 %cmp391, label %for.body.393, label %for.end.407

for.body.393:                                     ; preds = %for.cond.389
  %394 = load i32, i32* @offset, align 4
  %conv394 = sitofp i32 %394 to double
  %395 = load i32, i32* %lgth1, align 4
  %conv395 = sitofp i32 %395 to double
  %396 = load i32, i32* %i, align 4
  %conv396 = sitofp i32 %396 to double
  %div397 = fdiv double %conv396, 2.000000e+00
  %sub398 = fsub double %conv395, %div397
  %mul399 = fmul double %conv394, %sub398
  %397 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %397 to i64
  %398 = load float*, float** @partA__align.lastverticalw, align 8
  %arrayidx401 = getelementptr inbounds float, float* %398, i64 %idxprom400
  %399 = load float, float* %arrayidx401, align 4
  %conv402 = fpext float %399 to double
  %sub403 = fsub double %conv402, %mul399
  %conv404 = fptrunc double %sub403 to float
  store float %conv404, float* %arrayidx401, align 4
  br label %for.inc.405

for.inc.405:                                      ; preds = %for.body.393
  %400 = load i32, i32* %i, align 4
  %inc406 = add nsw i32 %400, 1
  store i32 %inc406, i32* %i, align 4
  br label %for.cond.389

for.end.407:                                      ; preds = %for.cond.389
  br label %if.end.408

if.end.408:                                       ; preds = %for.end.407, %for.end.369
  %401 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool409 = icmp ne %struct._LocalHom*** %401, null
  br i1 %tobool409, label %if.then.410, label %if.else.411

if.then.410:                                      ; preds = %if.end.408
  %402 = load float*, float** %impmatch.addr, align 8
  %403 = load float*, float** %currentw, align 8
  %404 = load float*, float** @partA__align.lastverticalw, align 8
  %405 = load i8**, i8*** %seq1.addr, align 8
  %406 = load i8**, i8*** %seq2.addr, align 8
  %407 = load i8**, i8*** @partA__align.mseq1, align 8
  %408 = load i8**, i8*** @partA__align.mseq2, align 8
  %409 = load float**, float*** @partA__align.cpmx1, align 8
  %410 = load float**, float*** @partA__align.cpmx2, align 8
  %411 = load i32**, i32*** @partA__align.ijp, align 8
  %412 = load i32, i32* %icyc.addr, align 4
  %413 = load i32, i32* %jcyc.addr, align 4
  %414 = load i32, i32* %start1.addr, align 4
  %415 = load i32, i32* %end1.addr, align 4
  %416 = load i32, i32* %start2.addr, align 4
  %417 = load i32, i32* %end2.addr, align 4
  %418 = load i32*, i32** %gapmap1.addr, align 8
  %419 = load i32*, i32** %gapmap2.addr, align 8
  call void @Atracking_localhom(float* %402, float* %403, float* %404, i8** %405, i8** %406, i8** %407, i8** %408, float** %409, float** %410, i32** %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 %417, i32* %418, i32* %419)
  br label %if.end.413

if.else.411:                                      ; preds = %if.end.408
  %420 = load float*, float** %currentw, align 8
  %421 = load float*, float** @partA__align.lastverticalw, align 8
  %422 = load i8**, i8*** %seq1.addr, align 8
  %423 = load i8**, i8*** %seq2.addr, align 8
  %424 = load i8**, i8*** @partA__align.mseq1, align 8
  %425 = load i8**, i8*** @partA__align.mseq2, align 8
  %426 = load float**, float*** @partA__align.cpmx1, align 8
  %427 = load float**, float*** @partA__align.cpmx2, align 8
  %428 = load i32**, i32*** @partA__align.ijp, align 8
  %429 = load i32, i32* %icyc.addr, align 4
  %430 = load i32, i32* %jcyc.addr, align 4
  %call412 = call float @Atracking(float* %420, float* %421, i8** %422, i8** %423, i8** %424, i8** %425, float** %426, float** %427, i32** %428, i32 %429, i32 %430)
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.411, %if.then.410
  %431 = load i8**, i8*** @partA__align.mseq1, align 8
  %arrayidx414 = getelementptr inbounds i8*, i8** %431, i64 0
  %432 = load i8*, i8** %arrayidx414, align 8
  %call415 = call i64 @strlen(i8* %432) #5
  %conv416 = trunc i64 %call415 to i32
  store i32 %conv416, i32* %resultlen, align 4
  %433 = load i32, i32* %alloclen.addr, align 4
  %434 = load i32, i32* %resultlen, align 4
  %cmp417 = icmp slt i32 %433, %434
  br i1 %cmp417, label %if.then.422, label %lor.lhs.false.419

lor.lhs.false.419:                                ; preds = %if.end.413
  %435 = load i32, i32* %resultlen, align 4
  %cmp420 = icmp sgt i32 %435, 5000000
  br i1 %cmp420, label %if.then.422, label %if.end.424

if.then.422:                                      ; preds = %lor.lhs.false.419, %if.end.413
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %437 = load i32, i32* %alloclen.addr, align 4
  %438 = load i32, i32* %resultlen, align 4
  %call423 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32 %437, i32 %438, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.422, %lor.lhs.false.419
  store i32 0, i32* %i, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.434, %if.end.424
  %439 = load i32, i32* %i, align 4
  %440 = load i32, i32* %icyc.addr, align 4
  %cmp426 = icmp slt i32 %439, %440
  br i1 %cmp426, label %for.body.428, label %for.end.436

for.body.428:                                     ; preds = %for.cond.425
  %441 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %441 to i64
  %442 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx430 = getelementptr inbounds i8*, i8** %442, i64 %idxprom429
  %443 = load i8*, i8** %arrayidx430, align 8
  %444 = load i32, i32* %i, align 4
  %idxprom431 = sext i32 %444 to i64
  %445 = load i8**, i8*** @partA__align.mseq1, align 8
  %arrayidx432 = getelementptr inbounds i8*, i8** %445, i64 %idxprom431
  %446 = load i8*, i8** %arrayidx432, align 8
  %call433 = call i8* @strcpy(i8* %443, i8* %446) #4
  br label %for.inc.434

for.inc.434:                                      ; preds = %for.body.428
  %447 = load i32, i32* %i, align 4
  %inc435 = add nsw i32 %447, 1
  store i32 %inc435, i32* %i, align 4
  br label %for.cond.425

for.end.436:                                      ; preds = %for.cond.425
  store i32 0, i32* %j, align 4
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.446, %for.end.436
  %448 = load i32, i32* %j, align 4
  %449 = load i32, i32* %jcyc.addr, align 4
  %cmp438 = icmp slt i32 %448, %449
  br i1 %cmp438, label %for.body.440, label %for.end.448

for.body.440:                                     ; preds = %for.cond.437
  %450 = load i32, i32* %j, align 4
  %idxprom441 = sext i32 %450 to i64
  %451 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx442 = getelementptr inbounds i8*, i8** %451, i64 %idxprom441
  %452 = load i8*, i8** %arrayidx442, align 8
  %453 = load i32, i32* %j, align 4
  %idxprom443 = sext i32 %453 to i64
  %454 = load i8**, i8*** @partA__align.mseq2, align 8
  %arrayidx444 = getelementptr inbounds i8*, i8** %454, i64 %idxprom443
  %455 = load i8*, i8** %arrayidx444, align 8
  %call445 = call i8* @strcpy(i8* %452, i8* %455) #4
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.body.440
  %456 = load i32, i32* %j, align 4
  %inc447 = add nsw i32 %456, 1
  store i32 %inc447, i32* %j, align 4
  br label %for.cond.437

for.end.448:                                      ; preds = %for.cond.437
  %457 = load float, float* %wm, align 4
  ret float %457
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
define internal void @part_imp_match_out_vead_tate_gapmap(float* %imp, i32 %j1, i32 %lgth1, i32 %start1, i32* %gapmap1) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %j1.addr = alloca i32, align 4
  %lgth1.addr = alloca i32, align 4
  %start1.addr = alloca i32, align 4
  %gapmap1.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store float* %imp, float** %imp.addr, align 8
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %lgth1, i32* %lgth1.addr, align 4
  store i32 %start1, i32* %start1.addr, align 4
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
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
  %3 = load i32, i32* %start1.addr, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, %6
  %idxprom2 = sext i32 %add to i64
  %7 = load float**, float*** @impmtx, align 8
  %arrayidx3 = getelementptr inbounds float*, float** %7, i64 %idxprom2
  %8 = load float*, float** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load float*, float** %imp.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 %idxprom5
  %12 = load float, float* %arrayidx6, align 4
  %add7 = fadd float %12, %9
  store float %add7, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @part_imp_match_out_vead_gapmap(float* %imp, i32 %i1, i32 %lgth2, i32 %start2, i32* %gapmap2) #0 {
entry:
  %imp.addr = alloca float*, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %start2.addr = alloca i32, align 4
  %gapmap2.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  store float* %imp, float** %imp.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store i32 %start2, i32* %start2.addr, align 4
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %lgth2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %start2.addr, align 4
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, %5
  %idxprom1 = sext i32 %add to i64
  %6 = load i32, i32* %i1.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load float**, float*** @impmtx, align 8
  %arrayidx3 = getelementptr inbounds float*, float** %7, i64 %idxprom2
  %8 = load float*, float** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 %idxprom1
  %9 = load float, float* %arrayidx4, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load float*, float** %imp.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 %idxprom5
  %12 = load float, float* %arrayidx6, align 4
  %add7 = fadd float %12, %9
  store float %add7, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Atracking_localhom(float* %impwmpt, float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijp, i32 %icyc, i32 %jcyc, i32 %start1, i32 %end1, i32 %start2, i32 %end2, i32* %gapmap1, i32* %gapmap2) #0 {
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
  %start1.addr = alloca i32, align 4
  %end1.addr = alloca i32, align 4
  %start2.addr = alloca i32, align 4
  %end2.addr = alloca i32, align 4
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
  store i32 %start1, i32* %start1.addr, align 4
  store i32 %end1, i32* %end1.addr, align 4
  store i32 %start2, i32* %start2.addr, align 4
  store i32 %end2, i32* %end2.addr, align 4
  store i32* %gapmap1, i32** %gapmap1.addr, align 8
  store i32* %gapmap2, i32** %gapmap2.addr, align 8
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Atracking_localhom.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
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

for.cond.92:                                      ; preds = %for.inc.237, %for.end.91
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %lgth1, align 4
  %85 = load i32, i32* %lgth2, align 4
  %add93 = add nsw i32 %84, %85
  %cmp94 = icmp sle i32 %83, %add93
  br i1 %cmp94, label %for.body.96, label %for.end.239

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
  br i1 %cmp188, label %land.lhs.true, label %if.end.201

land.lhs.true:                                    ; preds = %while.end.187
  %160 = load i32, i32* %jin, align 4
  %161 = load i32, i32* %lgth2, align 4
  %cmp190 = icmp ne i32 %160, %161
  br i1 %cmp190, label %if.then.192, label %if.end.201

if.then.192:                                      ; preds = %land.lhs.true
  %162 = load i32, i32* %iin, align 4
  %idxprom193 = sext i32 %162 to i64
  %163 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %163, i64 %idxprom193
  %164 = load i32, i32* %arrayidx194, align 4
  %165 = load i32, i32* %start1.addr, align 4
  %add195 = add nsw i32 %164, %165
  %166 = load i32, i32* %jin, align 4
  %idxprom196 = sext i32 %166 to i64
  %167 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %167, i64 %idxprom196
  %168 = load i32, i32* %arrayidx197, align 4
  %169 = load i32, i32* %start2.addr, align 4
  %add198 = add nsw i32 %168, %169
  %call199 = call float @part_imp_match_out_sc(i32 %add195, i32 %add198)
  %170 = load float*, float** %impwmpt.addr, align 8
  %171 = load float, float* %170, align 4
  %add200 = fadd float %171, %call199
  store float %add200, float* %170, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.192, %land.lhs.true, %while.end.187
  %172 = load i32, i32* %iin, align 4
  %cmp202 = icmp sle i32 %172, 0
  br i1 %cmp202, label %if.then.206, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.201
  %173 = load i32, i32* %jin, align 4
  %cmp204 = icmp sle i32 %173, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %lor.lhs.false, %if.end.201
  br label %for.end.239

if.end.207:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.219, %if.end.207
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %icyc.addr, align 4
  %cmp209 = icmp slt i32 %174, %175
  br i1 %cmp209, label %for.body.211, label %for.end.221

for.body.211:                                     ; preds = %for.cond.208
  %176 = load i32, i32* %ifi, align 4
  %idxprom212 = sext i32 %176 to i64
  %177 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %177 to i64
  %178 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx214 = getelementptr inbounds i8*, i8** %178, i64 %idxprom213
  %179 = load i8*, i8** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %179, i64 %idxprom212
  %180 = load i8, i8* %arrayidx215, align 1
  %181 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %181 to i64
  %182 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %182, i64 %idxprom216
  %183 = load i8*, i8** %arrayidx217, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %183, i32 -1
  store i8* %incdec.ptr218, i8** %arrayidx217, align 8
  store i8 %180, i8* %incdec.ptr218, align 1
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.211
  %184 = load i32, i32* %i, align 4
  %inc220 = add nsw i32 %184, 1
  store i32 %inc220, i32* %i, align 4
  br label %for.cond.208

for.end.221:                                      ; preds = %for.cond.208
  store i32 0, i32* %j, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.233, %for.end.221
  %185 = load i32, i32* %j, align 4
  %186 = load i32, i32* %jcyc.addr, align 4
  %cmp223 = icmp slt i32 %185, %186
  br i1 %cmp223, label %for.body.225, label %for.end.235

for.body.225:                                     ; preds = %for.cond.222
  %187 = load i32, i32* %jfi, align 4
  %idxprom226 = sext i32 %187 to i64
  %188 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %188 to i64
  %189 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx228 = getelementptr inbounds i8*, i8** %189, i64 %idxprom227
  %190 = load i8*, i8** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %190, i64 %idxprom226
  %191 = load i8, i8* %arrayidx229, align 1
  %192 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %192 to i64
  %193 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx231 = getelementptr inbounds i8*, i8** %193, i64 %idxprom230
  %194 = load i8*, i8** %arrayidx231, align 8
  %incdec.ptr232 = getelementptr inbounds i8, i8* %194, i32 -1
  store i8* %incdec.ptr232, i8** %arrayidx231, align 8
  store i8 %191, i8* %incdec.ptr232, align 1
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.225
  %195 = load i32, i32* %j, align 4
  %inc234 = add nsw i32 %195, 1
  store i32 %inc234, i32* %j, align 4
  br label %for.cond.222

for.end.235:                                      ; preds = %for.cond.222
  %196 = load i32, i32* %k, align 4
  %inc236 = add nsw i32 %196, 1
  store i32 %inc236, i32* %k, align 4
  %197 = load i32, i32* %ifi, align 4
  store i32 %197, i32* %iin, align 4
  %198 = load i32, i32* %jfi, align 4
  store i32 %198, i32* %jin, align 4
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.end.235
  %199 = load i32, i32* %k, align 4
  %inc238 = add nsw i32 %199, 1
  store i32 %inc238, i32* %k, align 4
  br label %for.cond.92

for.end.239:                                      ; preds = %if.then.206, %for.cond.92
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
  %lastk = alloca i32, align 4
  %gap = alloca [2 x i8], align 1
  %wm = alloca float, align 4
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
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Atracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
  store float 0.000000e+00, float* %wm, align 4
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
  %82 = load i32, i32* %lgth1, align 4
  %83 = load i32, i32* %lgth2, align 4
  %add92 = add nsw i32 %82, %83
  store i32 %add92, i32* %lastk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.223, %for.end.91
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* %lastk, align 4
  %cmp94 = icmp sle i32 %84, %85
  br i1 %cmp94, label %for.body.96, label %for.end.225

for.body.96:                                      ; preds = %for.cond.93
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
  %cmp188 = icmp sle i32 %158, 0
  br i1 %cmp188, label %if.then.192, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.187
  %159 = load i32, i32* %jin, align 4
  %cmp190 = icmp sle i32 %159, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %lor.lhs.false, %while.end.187
  br label %for.end.225

if.end.193:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.205, %if.end.193
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %icyc.addr, align 4
  %cmp195 = icmp slt i32 %160, %161
  br i1 %cmp195, label %for.body.197, label %for.end.207

for.body.197:                                     ; preds = %for.cond.194
  %162 = load i32, i32* %ifi, align 4
  %idxprom198 = sext i32 %162 to i64
  %163 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %163 to i64
  %164 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %164, i64 %idxprom199
  %165 = load i8*, i8** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %165, i64 %idxprom198
  %166 = load i8, i8* %arrayidx201, align 1
  %167 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %167 to i64
  %168 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx203 = getelementptr inbounds i8*, i8** %168, i64 %idxprom202
  %169 = load i8*, i8** %arrayidx203, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr204, i8** %arrayidx203, align 8
  store i8 %166, i8* %incdec.ptr204, align 1
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.197
  %170 = load i32, i32* %i, align 4
  %inc206 = add nsw i32 %170, 1
  store i32 %inc206, i32* %i, align 4
  br label %for.cond.194

for.end.207:                                      ; preds = %for.cond.194
  store i32 0, i32* %j, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.219, %for.end.207
  %171 = load i32, i32* %j, align 4
  %172 = load i32, i32* %jcyc.addr, align 4
  %cmp209 = icmp slt i32 %171, %172
  br i1 %cmp209, label %for.body.211, label %for.end.221

for.body.211:                                     ; preds = %for.cond.208
  %173 = load i32, i32* %jfi, align 4
  %idxprom212 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %174 to i64
  %175 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx214 = getelementptr inbounds i8*, i8** %175, i64 %idxprom213
  %176 = load i8*, i8** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %176, i64 %idxprom212
  %177 = load i8, i8* %arrayidx215, align 1
  %178 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %178 to i64
  %179 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %179, i64 %idxprom216
  %180 = load i8*, i8** %arrayidx217, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %incdec.ptr218, i8** %arrayidx217, align 8
  store i8 %177, i8* %incdec.ptr218, align 1
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.211
  %181 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %181, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.208

for.end.221:                                      ; preds = %for.cond.208
  %182 = load i32, i32* %k, align 4
  %inc222 = add nsw i32 %182, 1
  store i32 %inc222, i32* %k, align 4
  %183 = load i32, i32* %ifi, align 4
  store i32 %183, i32* %iin, align 4
  %184 = load i32, i32* %jfi, align 4
  store i32 %184, i32* %jin, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.221
  %185 = load i32, i32* %k, align 4
  %inc224 = add nsw i32 %185, 1
  store i32 %inc224, i32* %k, align 4
  br label %for.cond.93

for.end.225:                                      ; preds = %if.then.192, %for.cond.93
  ret float 0.000000e+00
}

declare void @ErrorExit(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

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
