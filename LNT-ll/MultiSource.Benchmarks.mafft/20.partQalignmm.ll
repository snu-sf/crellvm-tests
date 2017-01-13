; ModuleID = './MultiSource.Benchmarks.mafft/20.partQalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }
%struct._RNApair = type { i32, float, i32, float, i32, float }

@impmtx = internal global float** null, align 8
@impalloclen = internal global i32 0, align 4
@fastathreshold = external global double, align 8
@part_imp_match_initQ.impalloclen = internal global i32 0, align 4
@part_imp_match_initQ.nocount1 = internal global i8* null, align 8
@part_imp_match_initQ.nocount2 = internal global i8* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"i = %d, seq1 = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"start1 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"end1   = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"j = %d, seq2 = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"step 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dif = %d\0A\00", align 1
@partQ__align.mi = internal global float 0.000000e+00, align 4
@partQ__align.m = internal global float* null, align 8
@partQ__align.ijp = internal global i32** null, align 8
@partQ__align.mpi = internal global i32 0, align 4
@partQ__align.mp = internal global i32* null, align 8
@partQ__align.w1 = internal global float* null, align 8
@partQ__align.w2 = internal global float* null, align 8
@partQ__align.match = internal global float* null, align 8
@partQ__align.initverticalw = internal global float* null, align 8
@partQ__align.lastverticalw = internal global float* null, align 8
@partQ__align.mseq1 = internal global i8** null, align 8
@partQ__align.mseq2 = internal global i8** null, align 8
@partQ__align.mseq = internal global i8** null, align 8
@partQ__align.digf1 = internal global float* null, align 8
@partQ__align.digf2 = internal global float* null, align 8
@partQ__align.diaf1 = internal global float* null, align 8
@partQ__align.diaf2 = internal global float* null, align 8
@partQ__align.gapz1 = internal global float* null, align 8
@partQ__align.gapz2 = internal global float* null, align 8
@partQ__align.gapf1 = internal global float* null, align 8
@partQ__align.gapf2 = internal global float* null, align 8
@partQ__align.ogcp1g = internal global float* null, align 8
@partQ__align.ogcp2g = internal global float* null, align 8
@partQ__align.fgcp1g = internal global float* null, align 8
@partQ__align.fgcp2g = internal global float* null, align 8
@partQ__align.og_h_dg_n1_p = internal global float* null, align 8
@partQ__align.og_h_dg_n2_p = internal global float* null, align 8
@partQ__align.fg_h_dg_n1_p = internal global float* null, align 8
@partQ__align.fg_h_dg_n2_p = internal global float* null, align 8
@partQ__align.og_t_fg_h_dg_n1_p = internal global float* null, align 8
@partQ__align.og_t_fg_h_dg_n2_p = internal global float* null, align 8
@partQ__align.fg_t_og_h_dg_n1_p = internal global float* null, align 8
@partQ__align.fg_t_og_h_dg_n2_p = internal global float* null, align 8
@partQ__align.gapz_n1 = internal global float* null, align 8
@partQ__align.gapz_n2 = internal global float* null, align 8
@partQ__align.cpmx1 = internal global float** null, align 8
@partQ__align.cpmx2 = internal global float** null, align 8
@partQ__align.intwork = internal global i32** null, align 8
@partQ__align.floatwork = internal global float** null, align 8
@partQ__align.orlgth1 = internal global i32 0, align 4
@partQ__align.orlgth2 = internal global i32 0, align 4
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
define float @part_imp_match_out_scQ(i32 %i1, i32 %j1) #0 {
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
define void @part_imp_match_init_strictQ(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom, i32 %forscore) #0 {
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
define void @part_imp_rnaQ(i32 %nseq1, i32 %nseq2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._RNApair*** %grouprna1, %struct._RNApair*** %grouprna2, i32* %gapmap1, i32* %gapmap2, %struct._RNApair* %additionalpair) #0 {
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
define void @part_imp_match_initQ(float* %imp, i32 %clus1, i32 %clus2, i32 %lgth1, i32 %lgth2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._LocalHom*** %localhom) #0 {
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
  %0 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %1 = load i32, i32* %lgth1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
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
  %6 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  call void @free(i8* %7) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
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
  store i32 %add, i32* @part_imp_match_initQ.impalloclen, align 4
  %14 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %15 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %call = call float** @AllocateFloatMtx(i32 %14, i32 %15)
  store float** %call, float*** @impmtx, align 8
  %16 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %call10 = call i8* @AllocateCharVec(i32 %16)
  store i8* %call10, i8** @part_imp_match_initQ.nocount1, align 8
  %17 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %call11 = call i8* @AllocateCharVec(i32 %17)
  store i8* %call11, i8** @part_imp_match_initQ.nocount2, align 8
  %18 = load i32, i32* @part_imp_match_initQ.impalloclen, align 4
  %sub = sub nsw i32 %18, 2
  store i32 %sub, i32* @part_imp_match_initQ.impalloclen, align 4
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
  %32 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom26
  store i8 1, i8* %arrayidx27, align 1
  br label %if.end.30

if.else:                                          ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
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
  %49 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %49, i64 %idxprom57
  store i8 1, i8* %arrayidx58, align 1
  br label %if.end.62

if.else.59:                                       ; preds = %for.end.53
  %50 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
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
  %170 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %170, i64 %idxprom230
  %171 = load i8, i8* %arrayidx231, align 1
  %tobool232 = icmp ne i8 %171, 0
  br i1 %tobool232, label %if.end.253, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.229
  %172 = load i32, i32* %k2, align 4
  %idxprom233 = sext i32 %172 to i64
  %173 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
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
  %215 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %215, i64 %idxprom280
  %216 = load i8, i8* %arrayidx281, align 1
  %tobool282 = icmp ne i8 %216, 0
  br i1 %tobool282, label %if.end.304, label %land.lhs.true.283

land.lhs.true.283:                                ; preds = %land.lhs.true.279
  %217 = load i32, i32* %k2, align 4
  %idxprom284 = sext i32 %217 to i64
  %218 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
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
  %248 = load i8*, i8** @part_imp_match_initQ.nocount1, align 8
  %arrayidx323 = getelementptr inbounds i8, i8* %248, i64 %idxprom322
  %249 = load i8, i8* %arrayidx323, align 1
  %tobool324 = icmp ne i8 %249, 0
  br i1 %tobool324, label %if.end.346, label %land.lhs.true.325

land.lhs.true.325:                                ; preds = %land.lhs.true.321
  %250 = load i32, i32* %k2, align 4
  %idxprom326 = sext i32 %250 to i64
  %251 = load i8*, i8** @part_imp_match_initQ.nocount2, align 8
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
define float @partQ__align(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, %struct._LocalHom*** %localhom, float* %impmatch, i32 %start1, i32 %end1, i32 %start2, i32 %end2, i32* %gapmap1, i32* %gapmap2, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2) #0 {
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
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1144 = alloca i32, align 4
  %ll2145 = alloca i32, align 4
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
  %1 = load i32, i32* @partQ__align.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @partQ__align.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @partQ__align.mseq2, align 8
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
  %9 = load i32, i32* @partQ__align.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @partQ__align.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.120

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @partQ__align.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @partQ__align.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @partQ__align.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @partQ__align.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @partQ__align.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @partQ__align.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @partQ__align.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @partQ__align.m, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load i32*, i32** @partQ__align.mp, align 8
  call void @FreeIntVec(i32* %20)
  %21 = load i8**, i8*** @partQ__align.mseq, align 8
  call void @FreeCharMtx(i8** %21)
  %22 = load float*, float** @partQ__align.digf1, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @partQ__align.digf2, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @partQ__align.diaf1, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @partQ__align.diaf2, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float*, float** @partQ__align.gapz1, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load float*, float** @partQ__align.gapz2, align 8
  call void @FreeFloatVec(float* %27)
  %28 = load float*, float** @partQ__align.gapf1, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load float*, float** @partQ__align.gapf2, align 8
  call void @FreeFloatVec(float* %29)
  %30 = load float*, float** @partQ__align.ogcp1g, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load float*, float** @partQ__align.ogcp2g, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @partQ__align.fgcp1g, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @partQ__align.fgcp2g, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @partQ__align.og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load float*, float** @partQ__align.og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %35)
  %36 = load float*, float** @partQ__align.fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load float*, float** @partQ__align.fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %37)
  %38 = load float*, float** @partQ__align.og_t_fg_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %38)
  %39 = load float*, float** @partQ__align.og_t_fg_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %39)
  %40 = load float*, float** @partQ__align.fg_t_og_h_dg_n1_p, align 8
  call void @FreeFloatVec(float* %40)
  %41 = load float*, float** @partQ__align.fg_t_og_h_dg_n2_p, align 8
  call void @FreeFloatVec(float* %41)
  %42 = load float*, float** @partQ__align.gapz_n1, align 8
  call void @FreeFloatVec(float* %42)
  %43 = load float*, float** @partQ__align.gapz_n2, align 8
  call void @FreeFloatVec(float* %43)
  %44 = load float**, float*** @partQ__align.cpmx1, align 8
  call void @FreeFloatMtx(float** %44)
  %45 = load float**, float*** @partQ__align.cpmx2, align 8
  call void @FreeFloatMtx(float** %45)
  %46 = load float**, float*** @partQ__align.floatwork, align 8
  call void @FreeFloatMtx(float** %46)
  %47 = load i32**, i32*** @partQ__align.intwork, align 8
  call void @FreeIntMtx(i32** %47)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %48 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %48 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %49 = load i32, i32* @partQ__align.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %49
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %50 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %50 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %51 = load i32, i32* @partQ__align.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %51, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %52 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %52 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %53 = load i32, i32* @partQ__align.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %53
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %54 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %54 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %55 = load i32, i32* @partQ__align.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %55, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %56 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %56, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @partQ__align.w1, align 8
  %57 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %57, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @partQ__align.w2, align 8
  %58 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %58, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @partQ__align.match, align 8
  %59 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %59, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @partQ__align.initverticalw, align 8
  %60 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %60, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @partQ__align.lastverticalw, align 8
  %61 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %61, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @partQ__align.m, align 8
  %62 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %62, 2
  %call52 = call i32* @AllocateIntVec(i32 %add51)
  store i32* %call52, i32** @partQ__align.mp, align 8
  %63 = load i32, i32* @njob, align 4
  %64 = load i32, i32* %ll1, align 4
  %65 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %64, %65
  %call54 = call i8** @AllocateCharMtx(i32 %63, i32 %add53)
  store i8** %call54, i8*** @partQ__align.mseq, align 8
  %66 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %66, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @partQ__align.digf1, align 8
  %67 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %67, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @partQ__align.digf2, align 8
  %68 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %68, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @partQ__align.diaf1, align 8
  %69 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %69, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @partQ__align.diaf2, align 8
  %70 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %70, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @partQ__align.gapz1, align 8
  %71 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %71, 2
  %call66 = call float* @AllocateFloatVec(i32 %add65)
  store float* %call66, float** @partQ__align.gapz2, align 8
  %72 = load i32, i32* %ll1, align 4
  %add67 = add nsw i32 %72, 2
  %call68 = call float* @AllocateFloatVec(i32 %add67)
  store float* %call68, float** @partQ__align.gapf1, align 8
  %73 = load i32, i32* %ll2, align 4
  %add69 = add nsw i32 %73, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @partQ__align.gapf2, align 8
  %74 = load i32, i32* %ll1, align 4
  %add71 = add nsw i32 %74, 2
  %call72 = call float* @AllocateFloatVec(i32 %add71)
  store float* %call72, float** @partQ__align.ogcp1g, align 8
  %75 = load i32, i32* %ll2, align 4
  %add73 = add nsw i32 %75, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @partQ__align.ogcp2g, align 8
  %76 = load i32, i32* %ll1, align 4
  %add75 = add nsw i32 %76, 2
  %call76 = call float* @AllocateFloatVec(i32 %add75)
  store float* %call76, float** @partQ__align.fgcp1g, align 8
  %77 = load i32, i32* %ll2, align 4
  %add77 = add nsw i32 %77, 2
  %call78 = call float* @AllocateFloatVec(i32 %add77)
  store float* %call78, float** @partQ__align.fgcp2g, align 8
  %78 = load i32, i32* %ll1, align 4
  %add79 = add nsw i32 %78, 2
  %call80 = call float* @AllocateFloatVec(i32 %add79)
  store float* %call80, float** @partQ__align.og_h_dg_n1_p, align 8
  %79 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %79, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @partQ__align.og_h_dg_n2_p, align 8
  %80 = load i32, i32* %ll1, align 4
  %add83 = add nsw i32 %80, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** @partQ__align.fg_h_dg_n1_p, align 8
  %81 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %81, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** @partQ__align.fg_h_dg_n2_p, align 8
  %82 = load i32, i32* %ll1, align 4
  %add87 = add nsw i32 %82, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** @partQ__align.og_t_fg_h_dg_n1_p, align 8
  %83 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %83, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** @partQ__align.og_t_fg_h_dg_n2_p, align 8
  %84 = load i32, i32* %ll1, align 4
  %add91 = add nsw i32 %84, 2
  %call92 = call float* @AllocateFloatVec(i32 %add91)
  store float* %call92, float** @partQ__align.fg_t_og_h_dg_n1_p, align 8
  %85 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %85, 2
  %call94 = call float* @AllocateFloatVec(i32 %add93)
  store float* %call94, float** @partQ__align.fg_t_og_h_dg_n2_p, align 8
  %86 = load i32, i32* %ll1, align 4
  %add95 = add nsw i32 %86, 2
  %call96 = call float* @AllocateFloatVec(i32 %add95)
  store float* %call96, float** @partQ__align.gapz_n1, align 8
  %87 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %87, 2
  %call98 = call float* @AllocateFloatVec(i32 %add97)
  store float* %call98, float** @partQ__align.gapz_n2, align 8
  %88 = load i32, i32* %ll1, align 4
  %add99 = add nsw i32 %88, 2
  %call100 = call float** @AllocateFloatMtx(i32 26, i32 %add99)
  store float** %call100, float*** @partQ__align.cpmx1, align 8
  %89 = load i32, i32* %ll2, align 4
  %add101 = add nsw i32 %89, 2
  %call102 = call float** @AllocateFloatMtx(i32 26, i32 %add101)
  store float** %call102, float*** @partQ__align.cpmx2, align 8
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
  store float** %call110, float*** @partQ__align.floatwork, align 8
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
  %call118 = call i32** @AllocateIntMtx(i32 %add117, i32 26)
  store i32** %call118, i32*** @partQ__align.intwork, align 8
  %98 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %98, 100
  store i32 %sub, i32* @partQ__align.orlgth1, align 4
  %99 = load i32, i32* %ll2, align 4
  %sub119 = sub nsw i32 %99, 100
  store i32 %sub119, i32* @partQ__align.orlgth2, align 4
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
  %103 = load i8**, i8*** @partQ__align.mseq, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %103, i64 %idxprom
  %104 = load i8*, i8** %arrayidx123, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %105 to i64
  %106 = load i8**, i8*** @partQ__align.mseq1, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %106, i64 %idxprom124
  store i8* %104, i8** %arrayidx125, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.135, %for.end
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %jcyc.addr, align 4
  %cmp127 = icmp slt i32 %108, %109
  br i1 %cmp127, label %for.body.129, label %for.end.137

for.body.129:                                     ; preds = %for.cond.126
  %110 = load i32, i32* %icyc.addr, align 4
  %111 = load i32, i32* %j, align 4
  %add130 = add nsw i32 %110, %111
  %idxprom131 = sext i32 %add130 to i64
  %112 = load i8**, i8*** @partQ__align.mseq, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %112, i64 %idxprom131
  %113 = load i8*, i8** %arrayidx132, align 8
  %114 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %114 to i64
  %115 = load i8**, i8*** @partQ__align.mseq2, align 8
  %arrayidx134 = getelementptr inbounds i8*, i8** %115, i64 %idxprom133
  store i8* %113, i8** %arrayidx134, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.129
  %116 = load i32, i32* %j, align 4
  %inc136 = add nsw i32 %116, 1
  store i32 %inc136, i32* %j, align 4
  br label %for.cond.126

for.end.137:                                      ; preds = %for.cond.126
  %117 = load i32, i32* @partQ__align.orlgth1, align 4
  %118 = load i32, i32* @commonAlloc1, align 4
  %cmp138 = icmp sgt i32 %117, %118
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %for.end.137
  %119 = load i32, i32* @partQ__align.orlgth2, align 4
  %120 = load i32, i32* @commonAlloc2, align 4
  %cmp141 = icmp sgt i32 %119, %120
  br i1 %cmp141, label %if.then.143, label %if.end.165

if.then.143:                                      ; preds = %lor.lhs.false.140, %for.end.137
  %121 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %121, 0
  br i1 %tobool, label %land.lhs.true.146, label %if.end.149

land.lhs.true.146:                                ; preds = %if.then.143
  %122 = load i32, i32* @commonAlloc2, align 4
  %tobool147 = icmp ne i32 %122, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %land.lhs.true.146
  %123 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %123)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %land.lhs.true.146, %if.then.143
  %124 = load i32, i32* @partQ__align.orlgth1, align 4
  %125 = load i32, i32* @commonAlloc1, align 4
  %cmp150 = icmp sgt i32 %124, %125
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %if.end.149
  %126 = load i32, i32* @partQ__align.orlgth1, align 4
  br label %cond.end.154

cond.false.153:                                   ; preds = %if.end.149
  %127 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.152
  %cond155 = phi i32 [ %126, %cond.true.152 ], [ %127, %cond.false.153 ]
  store i32 %cond155, i32* %ll1144, align 4
  %128 = load i32, i32* @partQ__align.orlgth2, align 4
  %129 = load i32, i32* @commonAlloc2, align 4
  %cmp156 = icmp sgt i32 %128, %129
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.end.154
  %130 = load i32, i32* @partQ__align.orlgth2, align 4
  br label %cond.end.160

cond.false.159:                                   ; preds = %cond.end.154
  %131 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.158
  %cond161 = phi i32 [ %130, %cond.true.158 ], [ %131, %cond.false.159 ]
  store i32 %cond161, i32* %ll2145, align 4
  %132 = load i32, i32* %ll1144, align 4
  %add162 = add nsw i32 %132, 10
  %133 = load i32, i32* %ll2145, align 4
  %add163 = add nsw i32 %133, 10
  %call164 = call i32** @AllocateIntMtx(i32 %add162, i32 %add163)
  store i32** %call164, i32*** @commonIP, align 8
  %134 = load i32, i32* %ll1144, align 4
  store i32 %134, i32* @commonAlloc1, align 4
  %135 = load i32, i32* %ll2145, align 4
  store i32 %135, i32* @commonAlloc2, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %cond.end.160, %lor.lhs.false.140
  %136 = load i32**, i32*** @commonIP, align 8
  store i32** %136, i32*** @partQ__align.ijp, align 8
  %137 = load i8**, i8*** %seq1.addr, align 8
  %138 = load float**, float*** @partQ__align.cpmx1, align 8
  %139 = load double*, double** %eff1.addr, align 8
  %140 = load i32, i32* %lgth1, align 4
  %141 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc_new(i8** %137, float** %138, double* %139, i32 %140, i32 %141)
  %142 = load i8**, i8*** %seq2.addr, align 8
  %143 = load float**, float*** @partQ__align.cpmx2, align 8
  %144 = load double*, double** %eff2.addr, align 8
  %145 = load i32, i32* %lgth2, align 4
  %146 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc_new(i8** %142, float** %143, double* %144, i32 %145, i32 %146)
  %147 = load i8*, i8** %sgap1.addr, align 8
  %tobool166 = icmp ne i8* %147, null
  br i1 %tobool166, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %if.end.165
  %148 = load float*, float** @partQ__align.ogcp1g, align 8
  %149 = load i32, i32* %icyc.addr, align 4
  %150 = load i8**, i8*** %seq1.addr, align 8
  %151 = load double*, double** %eff1.addr, align 8
  %152 = load i32, i32* %lgth1, align 4
  %153 = load i8*, i8** %sgap1.addr, align 8
  %154 = load i8*, i8** %egap1.addr, align 8
  call void @new_OpeningGapCount_zure(float* %148, i32 %149, i8** %150, double* %151, i32 %152, i8* %153, i8* %154)
  %155 = load float*, float** @partQ__align.ogcp2g, align 8
  %156 = load i32, i32* %jcyc.addr, align 4
  %157 = load i8**, i8*** %seq2.addr, align 8
  %158 = load double*, double** %eff2.addr, align 8
  %159 = load i32, i32* %lgth2, align 4
  %160 = load i8*, i8** %sgap2.addr, align 8
  %161 = load i8*, i8** %egap2.addr, align 8
  call void @new_OpeningGapCount_zure(float* %155, i32 %156, i8** %157, double* %158, i32 %159, i8* %160, i8* %161)
  %162 = load float*, float** @partQ__align.fgcp1g, align 8
  %163 = load i32, i32* %icyc.addr, align 4
  %164 = load i8**, i8*** %seq1.addr, align 8
  %165 = load double*, double** %eff1.addr, align 8
  %166 = load i32, i32* %lgth1, align 4
  %167 = load i8*, i8** %sgap1.addr, align 8
  %168 = load i8*, i8** %egap1.addr, align 8
  call void @new_FinalGapCount_zure(float* %162, i32 %163, i8** %164, double* %165, i32 %166, i8* %167, i8* %168)
  %169 = load float*, float** @partQ__align.fgcp2g, align 8
  %170 = load i32, i32* %jcyc.addr, align 4
  %171 = load i8**, i8*** %seq2.addr, align 8
  %172 = load double*, double** %eff2.addr, align 8
  %173 = load i32, i32* %lgth2, align 4
  %174 = load i8*, i8** %sgap2.addr, align 8
  %175 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount_zure(float* %169, i32 %170, i8** %171, double* %172, i32 %173, i8* %174, i8* %175)
  %176 = load float*, float** @partQ__align.digf1, align 8
  %177 = load i32, i32* %icyc.addr, align 4
  %178 = load i8**, i8*** %seq1.addr, align 8
  %179 = load double*, double** %eff1.addr, align 8
  %180 = load i32, i32* %lgth1, align 4
  %181 = load i8*, i8** %sgap1.addr, align 8
  %182 = load i8*, i8** %egap1.addr, align 8
  call void @getdigapfreq_part(float* %176, i32 %177, i8** %178, double* %179, i32 %180, i8* %181, i8* %182)
  %183 = load float*, float** @partQ__align.digf2, align 8
  %184 = load i32, i32* %jcyc.addr, align 4
  %185 = load i8**, i8*** %seq2.addr, align 8
  %186 = load double*, double** %eff2.addr, align 8
  %187 = load i32, i32* %lgth2, align 4
  %188 = load i8*, i8** %sgap2.addr, align 8
  %189 = load i8*, i8** %egap2.addr, align 8
  call void @getdigapfreq_part(float* %183, i32 %184, i8** %185, double* %186, i32 %187, i8* %188, i8* %189)
  %190 = load float*, float** @partQ__align.diaf1, align 8
  %191 = load i32, i32* %icyc.addr, align 4
  %192 = load i8**, i8*** %seq1.addr, align 8
  %193 = load double*, double** %eff1.addr, align 8
  %194 = load i32, i32* %lgth1, align 4
  %195 = load i8*, i8** %sgap1.addr, align 8
  %196 = load i8*, i8** %egap1.addr, align 8
  call void @getdiaminofreq_part(float* %190, i32 %191, i8** %192, double* %193, i32 %194, i8* %195, i8* %196)
  %197 = load float*, float** @partQ__align.diaf2, align 8
  %198 = load i32, i32* %jcyc.addr, align 4
  %199 = load i8**, i8*** %seq2.addr, align 8
  %200 = load double*, double** %eff2.addr, align 8
  %201 = load i32, i32* %lgth2, align 4
  %202 = load i8*, i8** %sgap2.addr, align 8
  %203 = load i8*, i8** %egap2.addr, align 8
  call void @getdiaminofreq_part(float* %197, i32 %198, i8** %199, double* %200, i32 %201, i8* %202, i8* %203)
  %204 = load float*, float** @partQ__align.gapf1, align 8
  %205 = load i32, i32* %icyc.addr, align 4
  %206 = load i8**, i8*** %seq1.addr, align 8
  %207 = load double*, double** %eff1.addr, align 8
  %208 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %204, i32 %205, i8** %206, double* %207, i32 %208)
  %209 = load float*, float** @partQ__align.gapf2, align 8
  %210 = load i32, i32* %jcyc.addr, align 4
  %211 = load i8**, i8*** %seq2.addr, align 8
  %212 = load double*, double** %eff2.addr, align 8
  %213 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %209, i32 %210, i8** %211, double* %212, i32 %213)
  %214 = load float*, float** @partQ__align.gapz1, align 8
  %215 = load i32, i32* %icyc.addr, align 4
  %216 = load i8**, i8*** %seq1.addr, align 8
  %217 = load double*, double** %eff1.addr, align 8
  %218 = load i32, i32* %lgth1, align 4
  %219 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %214, i32 %215, i8** %216, double* %217, i32 %218, i8* %219)
  %220 = load float*, float** @partQ__align.gapz2, align 8
  %221 = load i32, i32* %jcyc.addr, align 4
  %222 = load i8**, i8*** %seq2.addr, align 8
  %223 = load double*, double** %eff2.addr, align 8
  %224 = load i32, i32* %lgth2, align 4
  %225 = load i8*, i8** %sgap1.addr, align 8
  call void @getgapfreq_zure_part(float* %220, i32 %221, i8** %222, double* %223, i32 %224, i8* %225)
  br label %if.end.168

if.else:                                          ; preds = %if.end.165
  %226 = load float*, float** @partQ__align.ogcp1g, align 8
  %227 = load i32, i32* %icyc.addr, align 4
  %228 = load i8**, i8*** %seq1.addr, align 8
  %229 = load double*, double** %eff1.addr, align 8
  %230 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %226, i32 %227, i8** %228, double* %229, i32 %230)
  %231 = load float*, float** @partQ__align.ogcp2g, align 8
  %232 = load i32, i32* %jcyc.addr, align 4
  %233 = load i8**, i8*** %seq2.addr, align 8
  %234 = load double*, double** %eff2.addr, align 8
  %235 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %231, i32 %232, i8** %233, double* %234, i32 %235)
  %236 = load float*, float** @partQ__align.fgcp1g, align 8
  %237 = load i32, i32* %icyc.addr, align 4
  %238 = load i8**, i8*** %seq1.addr, align 8
  %239 = load double*, double** %eff1.addr, align 8
  %240 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount_zure(float* %236, i32 %237, i8** %238, double* %239, i32 %240)
  %241 = load float*, float** @partQ__align.fgcp2g, align 8
  %242 = load i32, i32* %jcyc.addr, align 4
  %243 = load i8**, i8*** %seq2.addr, align 8
  %244 = load double*, double** %eff2.addr, align 8
  %245 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount_zure(float* %241, i32 %242, i8** %243, double* %244, i32 %245)
  %246 = load float*, float** @partQ__align.digf1, align 8
  %247 = load i32, i32* %icyc.addr, align 4
  %248 = load i8**, i8*** %seq1.addr, align 8
  %249 = load double*, double** %eff1.addr, align 8
  %250 = load i32, i32* %lgth1, align 4
  call void @getdigapfreq_st(float* %246, i32 %247, i8** %248, double* %249, i32 %250)
  %251 = load float*, float** @partQ__align.digf2, align 8
  %252 = load i32, i32* %jcyc.addr, align 4
  %253 = load i8**, i8*** %seq2.addr, align 8
  %254 = load double*, double** %eff2.addr, align 8
  %255 = load i32, i32* %lgth2, align 4
  call void @getdigapfreq_st(float* %251, i32 %252, i8** %253, double* %254, i32 %255)
  %256 = load float*, float** @partQ__align.diaf1, align 8
  %257 = load i32, i32* %icyc.addr, align 4
  %258 = load i8**, i8*** %seq1.addr, align 8
  %259 = load double*, double** %eff1.addr, align 8
  %260 = load i32, i32* %lgth1, align 4
  call void @getdiaminofreq_x(float* %256, i32 %257, i8** %258, double* %259, i32 %260)
  %261 = load float*, float** @partQ__align.diaf2, align 8
  %262 = load i32, i32* %jcyc.addr, align 4
  %263 = load i8**, i8*** %seq2.addr, align 8
  %264 = load double*, double** %eff2.addr, align 8
  %265 = load i32, i32* %lgth2, align 4
  call void @getdiaminofreq_x(float* %261, i32 %262, i8** %263, double* %264, i32 %265)
  %266 = load float*, float** @partQ__align.gapf1, align 8
  %267 = load i32, i32* %icyc.addr, align 4
  %268 = load i8**, i8*** %seq1.addr, align 8
  %269 = load double*, double** %eff1.addr, align 8
  %270 = load i32, i32* %lgth1, align 4
  call void @getgapfreq(float* %266, i32 %267, i8** %268, double* %269, i32 %270)
  %271 = load float*, float** @partQ__align.gapf2, align 8
  %272 = load i32, i32* %jcyc.addr, align 4
  %273 = load i8**, i8*** %seq2.addr, align 8
  %274 = load double*, double** %eff2.addr, align 8
  %275 = load i32, i32* %lgth2, align 4
  call void @getgapfreq(float* %271, i32 %272, i8** %273, double* %274, i32 %275)
  %276 = load float*, float** @partQ__align.gapz1, align 8
  %277 = load i32, i32* %icyc.addr, align 4
  %278 = load i8**, i8*** %seq1.addr, align 8
  %279 = load double*, double** %eff1.addr, align 8
  %280 = load i32, i32* %lgth1, align 4
  call void @getgapfreq_zure(float* %276, i32 %277, i8** %278, double* %279, i32 %280)
  %281 = load float*, float** @partQ__align.gapz2, align 8
  %282 = load i32, i32* %jcyc.addr, align 4
  %283 = load i8**, i8*** %seq2.addr, align 8
  %284 = load double*, double** %eff2.addr, align 8
  %285 = load i32, i32* %lgth2, align 4
  call void @getgapfreq_zure(float* %281, i32 %282, i8** %283, double* %284, i32 %285)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else, %if.then.167
  %286 = load i32, i32* %lgth2, align 4
  %add169 = add nsw i32 %286, 2
  store i32 %add169, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.245, %if.end.168
  %287 = load i32, i32* %i, align 4
  %288 = load i32, i32* %lastj, align 4
  %cmp171 = icmp slt i32 %287, %288
  br i1 %cmp171, label %for.body.173, label %for.end.247

for.body.173:                                     ; preds = %for.cond.170
  %289 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %289 to i64
  %290 = load float*, float** @partQ__align.ogcp2g, align 8
  %arrayidx175 = getelementptr inbounds float, float* %290, i64 %idxprom174
  %291 = load float, float* %arrayidx175, align 4
  %conv176 = fpext float %291 to double
  %sub177 = fsub double 1.000000e+00, %conv176
  %292 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %292 to i64
  %293 = load float*, float** @partQ__align.digf2, align 8
  %arrayidx179 = getelementptr inbounds float, float* %293, i64 %idxprom178
  %294 = load float, float* %arrayidx179, align 4
  %conv180 = fpext float %294 to double
  %sub181 = fsub double %sub177, %conv180
  %295 = load float, float* %fpenalty, align 4
  %conv182 = fpext float %295 to double
  %mul183 = fmul double %sub181, %conv182
  %mul184 = fmul double %mul183, 5.000000e-01
  %conv185 = fptrunc double %mul184 to float
  %296 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %296 to i64
  %297 = load float*, float** @partQ__align.og_h_dg_n2_p, align 8
  %arrayidx187 = getelementptr inbounds float, float* %297, i64 %idxprom186
  store float %conv185, float* %arrayidx187, align 4
  %298 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %298 to i64
  %299 = load float*, float** @partQ__align.fgcp2g, align 8
  %arrayidx189 = getelementptr inbounds float, float* %299, i64 %idxprom188
  %300 = load float, float* %arrayidx189, align 4
  %conv190 = fpext float %300 to double
  %sub191 = fsub double 1.000000e+00, %conv190
  %301 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %301 to i64
  %302 = load float*, float** @partQ__align.digf2, align 8
  %arrayidx193 = getelementptr inbounds float, float* %302, i64 %idxprom192
  %303 = load float, float* %arrayidx193, align 4
  %conv194 = fpext float %303 to double
  %sub195 = fsub double %sub191, %conv194
  %304 = load float, float* %fpenalty, align 4
  %conv196 = fpext float %304 to double
  %mul197 = fmul double %sub195, %conv196
  %mul198 = fmul double %mul197, 5.000000e-01
  %conv199 = fptrunc double %mul198 to float
  %305 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %305 to i64
  %306 = load float*, float** @partQ__align.fg_h_dg_n2_p, align 8
  %arrayidx201 = getelementptr inbounds float, float* %306, i64 %idxprom200
  store float %conv199, float* %arrayidx201, align 4
  %307 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %307 to i64
  %308 = load float*, float** @partQ__align.ogcp2g, align 8
  %arrayidx203 = getelementptr inbounds float, float* %308, i64 %idxprom202
  %309 = load float, float* %arrayidx203, align 4
  %conv204 = fpext float %309 to double
  %sub205 = fsub double 1.000000e+00, %conv204
  %310 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %310 to i64
  %311 = load float*, float** @partQ__align.fgcp2g, align 8
  %arrayidx207 = getelementptr inbounds float, float* %311, i64 %idxprom206
  %312 = load float, float* %arrayidx207, align 4
  %conv208 = fpext float %312 to double
  %add209 = fadd double %sub205, %conv208
  %313 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %313 to i64
  %314 = load float*, float** @partQ__align.digf2, align 8
  %arrayidx211 = getelementptr inbounds float, float* %314, i64 %idxprom210
  %315 = load float, float* %arrayidx211, align 4
  %conv212 = fpext float %315 to double
  %sub213 = fsub double %add209, %conv212
  %mul214 = fmul double %sub213, 5.000000e-01
  %316 = load float, float* %fpenalty, align 4
  %conv215 = fpext float %316 to double
  %mul216 = fmul double %mul214, %conv215
  %conv217 = fptrunc double %mul216 to float
  %317 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %317 to i64
  %318 = load float*, float** @partQ__align.og_t_fg_h_dg_n2_p, align 8
  %arrayidx219 = getelementptr inbounds float, float* %318, i64 %idxprom218
  store float %conv217, float* %arrayidx219, align 4
  %319 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %319 to i64
  %320 = load float*, float** @partQ__align.fgcp2g, align 8
  %arrayidx221 = getelementptr inbounds float, float* %320, i64 %idxprom220
  %321 = load float, float* %arrayidx221, align 4
  %conv222 = fpext float %321 to double
  %sub223 = fsub double 1.000000e+00, %conv222
  %322 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %322 to i64
  %323 = load float*, float** @partQ__align.ogcp2g, align 8
  %arrayidx225 = getelementptr inbounds float, float* %323, i64 %idxprom224
  %324 = load float, float* %arrayidx225, align 4
  %conv226 = fpext float %324 to double
  %add227 = fadd double %sub223, %conv226
  %325 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %325 to i64
  %326 = load float*, float** @partQ__align.digf2, align 8
  %arrayidx229 = getelementptr inbounds float, float* %326, i64 %idxprom228
  %327 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %327 to double
  %sub231 = fsub double %add227, %conv230
  %mul232 = fmul double %sub231, 5.000000e-01
  %328 = load float, float* %fpenalty, align 4
  %conv233 = fpext float %328 to double
  %mul234 = fmul double %mul232, %conv233
  %conv235 = fptrunc double %mul234 to float
  %329 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %329 to i64
  %330 = load float*, float** @partQ__align.fg_t_og_h_dg_n2_p, align 8
  %arrayidx237 = getelementptr inbounds float, float* %330, i64 %idxprom236
  store float %conv235, float* %arrayidx237, align 4
  %331 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %331 to i64
  %332 = load float*, float** @partQ__align.gapz2, align 8
  %arrayidx239 = getelementptr inbounds float, float* %332, i64 %idxprom238
  %333 = load float, float* %arrayidx239, align 4
  %conv240 = fpext float %333 to double
  %sub241 = fsub double 1.000000e+00, %conv240
  %conv242 = fptrunc double %sub241 to float
  %334 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %334 to i64
  %335 = load float*, float** @partQ__align.gapz_n2, align 8
  %arrayidx244 = getelementptr inbounds float, float* %335, i64 %idxprom243
  store float %conv242, float* %arrayidx244, align 4
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.173
  %336 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %336, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.170

for.end.247:                                      ; preds = %for.cond.170
  %337 = load i32, i32* %lgth1, align 4
  %add248 = add nsw i32 %337, 2
  store i32 %add248, i32* %lastj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.324, %for.end.247
  %338 = load i32, i32* %i, align 4
  %339 = load i32, i32* %lastj, align 4
  %cmp250 = icmp slt i32 %338, %339
  br i1 %cmp250, label %for.body.252, label %for.end.326

for.body.252:                                     ; preds = %for.cond.249
  %340 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %340 to i64
  %341 = load float*, float** @partQ__align.ogcp1g, align 8
  %arrayidx254 = getelementptr inbounds float, float* %341, i64 %idxprom253
  %342 = load float, float* %arrayidx254, align 4
  %conv255 = fpext float %342 to double
  %sub256 = fsub double 1.000000e+00, %conv255
  %343 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %343 to i64
  %344 = load float*, float** @partQ__align.digf1, align 8
  %arrayidx258 = getelementptr inbounds float, float* %344, i64 %idxprom257
  %345 = load float, float* %arrayidx258, align 4
  %conv259 = fpext float %345 to double
  %sub260 = fsub double %sub256, %conv259
  %346 = load float, float* %fpenalty, align 4
  %conv261 = fpext float %346 to double
  %mul262 = fmul double %sub260, %conv261
  %mul263 = fmul double %mul262, 5.000000e-01
  %conv264 = fptrunc double %mul263 to float
  %347 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %347 to i64
  %348 = load float*, float** @partQ__align.og_h_dg_n1_p, align 8
  %arrayidx266 = getelementptr inbounds float, float* %348, i64 %idxprom265
  store float %conv264, float* %arrayidx266, align 4
  %349 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %349 to i64
  %350 = load float*, float** @partQ__align.fgcp1g, align 8
  %arrayidx268 = getelementptr inbounds float, float* %350, i64 %idxprom267
  %351 = load float, float* %arrayidx268, align 4
  %conv269 = fpext float %351 to double
  %sub270 = fsub double 1.000000e+00, %conv269
  %352 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %352 to i64
  %353 = load float*, float** @partQ__align.digf1, align 8
  %arrayidx272 = getelementptr inbounds float, float* %353, i64 %idxprom271
  %354 = load float, float* %arrayidx272, align 4
  %conv273 = fpext float %354 to double
  %sub274 = fsub double %sub270, %conv273
  %355 = load float, float* %fpenalty, align 4
  %conv275 = fpext float %355 to double
  %mul276 = fmul double %sub274, %conv275
  %mul277 = fmul double %mul276, 5.000000e-01
  %conv278 = fptrunc double %mul277 to float
  %356 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %356 to i64
  %357 = load float*, float** @partQ__align.fg_h_dg_n1_p, align 8
  %arrayidx280 = getelementptr inbounds float, float* %357, i64 %idxprom279
  store float %conv278, float* %arrayidx280, align 4
  %358 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %358 to i64
  %359 = load float*, float** @partQ__align.ogcp1g, align 8
  %arrayidx282 = getelementptr inbounds float, float* %359, i64 %idxprom281
  %360 = load float, float* %arrayidx282, align 4
  %conv283 = fpext float %360 to double
  %sub284 = fsub double 1.000000e+00, %conv283
  %361 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %361 to i64
  %362 = load float*, float** @partQ__align.fgcp1g, align 8
  %arrayidx286 = getelementptr inbounds float, float* %362, i64 %idxprom285
  %363 = load float, float* %arrayidx286, align 4
  %conv287 = fpext float %363 to double
  %add288 = fadd double %sub284, %conv287
  %364 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %364 to i64
  %365 = load float*, float** @partQ__align.digf1, align 8
  %arrayidx290 = getelementptr inbounds float, float* %365, i64 %idxprom289
  %366 = load float, float* %arrayidx290, align 4
  %conv291 = fpext float %366 to double
  %sub292 = fsub double %add288, %conv291
  %mul293 = fmul double %sub292, 5.000000e-01
  %367 = load float, float* %fpenalty, align 4
  %conv294 = fpext float %367 to double
  %mul295 = fmul double %mul293, %conv294
  %conv296 = fptrunc double %mul295 to float
  %368 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %368 to i64
  %369 = load float*, float** @partQ__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx298 = getelementptr inbounds float, float* %369, i64 %idxprom297
  store float %conv296, float* %arrayidx298, align 4
  %370 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %370 to i64
  %371 = load float*, float** @partQ__align.fgcp1g, align 8
  %arrayidx300 = getelementptr inbounds float, float* %371, i64 %idxprom299
  %372 = load float, float* %arrayidx300, align 4
  %conv301 = fpext float %372 to double
  %sub302 = fsub double 1.000000e+00, %conv301
  %373 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %373 to i64
  %374 = load float*, float** @partQ__align.ogcp1g, align 8
  %arrayidx304 = getelementptr inbounds float, float* %374, i64 %idxprom303
  %375 = load float, float* %arrayidx304, align 4
  %conv305 = fpext float %375 to double
  %add306 = fadd double %sub302, %conv305
  %376 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %376 to i64
  %377 = load float*, float** @partQ__align.digf1, align 8
  %arrayidx308 = getelementptr inbounds float, float* %377, i64 %idxprom307
  %378 = load float, float* %arrayidx308, align 4
  %conv309 = fpext float %378 to double
  %sub310 = fsub double %add306, %conv309
  %mul311 = fmul double %sub310, 5.000000e-01
  %379 = load float, float* %fpenalty, align 4
  %conv312 = fpext float %379 to double
  %mul313 = fmul double %mul311, %conv312
  %conv314 = fptrunc double %mul313 to float
  %380 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %380 to i64
  %381 = load float*, float** @partQ__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx316 = getelementptr inbounds float, float* %381, i64 %idxprom315
  store float %conv314, float* %arrayidx316, align 4
  %382 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %382 to i64
  %383 = load float*, float** @partQ__align.gapz1, align 8
  %arrayidx318 = getelementptr inbounds float, float* %383, i64 %idxprom317
  %384 = load float, float* %arrayidx318, align 4
  %conv319 = fpext float %384 to double
  %sub320 = fsub double 1.000000e+00, %conv319
  %conv321 = fptrunc double %sub320 to float
  %385 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %385 to i64
  %386 = load float*, float** @partQ__align.gapz_n1, align 8
  %arrayidx323 = getelementptr inbounds float, float* %386, i64 %idxprom322
  store float %conv321, float* %arrayidx323, align 4
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.body.252
  %387 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %387, 1
  store i32 %inc325, i32* %i, align 4
  br label %for.cond.249

for.end.326:                                      ; preds = %for.cond.249
  %388 = load float*, float** @partQ__align.w1, align 8
  store float* %388, float** %currentw, align 8
  %389 = load float*, float** @partQ__align.w2, align 8
  store float* %389, float** %previousw, align 8
  %390 = load float*, float** @partQ__align.initverticalw, align 8
  %391 = load float**, float*** @partQ__align.cpmx2, align 8
  %392 = load float**, float*** @partQ__align.cpmx1, align 8
  %393 = load i32, i32* %lgth1, align 4
  %394 = load float**, float*** @partQ__align.floatwork, align 8
  %395 = load i32**, i32*** @partQ__align.intwork, align 8
  call void @match_calc(float* %390, float** %391, float** %392, i32 0, i32 %393, float** %394, i32** %395, i32 1)
  %396 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool327 = icmp ne %struct._LocalHom*** %396, null
  br i1 %tobool327, label %if.then.328, label %if.end.331

if.then.328:                                      ; preds = %for.end.326
  %397 = load float*, float** @partQ__align.initverticalw, align 8
  %398 = load i32*, i32** %gapmap2.addr, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %398, i64 0
  %399 = load i32, i32* %arrayidx329, align 4
  %400 = load i32, i32* %start2.addr, align 4
  %add330 = add nsw i32 %399, %400
  %401 = load i32, i32* %lgth1, align 4
  %402 = load i32, i32* %start1.addr, align 4
  %403 = load i32*, i32** %gapmap1.addr, align 8
  call void @part_imp_match_out_vead_tate_gapmapQ(float* %397, i32 %add330, i32 %401, i32 %402, i32* %403)
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.328, %for.end.326
  %404 = load float*, float** %currentw, align 8
  %405 = load float**, float*** @partQ__align.cpmx1, align 8
  %406 = load float**, float*** @partQ__align.cpmx2, align 8
  %407 = load i32, i32* %lgth2, align 4
  %408 = load float**, float*** @partQ__align.floatwork, align 8
  %409 = load i32**, i32*** @partQ__align.intwork, align 8
  call void @match_calc(float* %404, float** %405, float** %406, i32 0, i32 %407, float** %408, i32** %409, i32 1)
  %410 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool332 = icmp ne %struct._LocalHom*** %410, null
  br i1 %tobool332, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %if.end.331
  %411 = load float*, float** %currentw, align 8
  %412 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %412, i64 0
  %413 = load i32, i32* %arrayidx334, align 4
  %414 = load i32, i32* %start1.addr, align 4
  %add335 = add nsw i32 %413, %414
  %415 = load i32, i32* %lgth2, align 4
  %416 = load i32, i32* %start2.addr, align 4
  %417 = load i32*, i32** %gapmap2.addr, align 8
  call void @part_imp_match_out_vead_gapmapQ(float* %411, i32 %add335, i32 %415, i32 %416, i32* %417)
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.333, %if.end.331
  %418 = load i32, i32* @outgap, align 4
  %cmp337 = icmp eq i32 %418, 1
  br i1 %cmp337, label %if.then.339, label %if.else.402

if.then.339:                                      ; preds = %if.end.336
  store float 0.000000e+00, float* %g, align 4
  %419 = load float*, float** @partQ__align.ogcp1g, align 8
  %arrayidx340 = getelementptr inbounds float, float* %419, i64 0
  %420 = load float, float* %arrayidx340, align 4
  %421 = load float*, float** @partQ__align.og_h_dg_n2_p, align 8
  %arrayidx341 = getelementptr inbounds float, float* %421, i64 0
  %422 = load float, float* %arrayidx341, align 4
  %mul342 = fmul float %420, %422
  %423 = load float, float* %g, align 4
  %add343 = fadd float %423, %mul342
  store float %add343, float* %g, align 4
  %424 = load float*, float** @partQ__align.ogcp2g, align 8
  %arrayidx344 = getelementptr inbounds float, float* %424, i64 0
  %425 = load float, float* %arrayidx344, align 4
  %426 = load float*, float** @partQ__align.og_h_dg_n1_p, align 8
  %arrayidx345 = getelementptr inbounds float, float* %426, i64 0
  %427 = load float, float* %arrayidx345, align 4
  %mul346 = fmul float %425, %427
  %428 = load float, float* %g, align 4
  %add347 = fadd float %428, %mul346
  store float %add347, float* %g, align 4
  %429 = load float*, float** @partQ__align.fgcp1g, align 8
  %arrayidx348 = getelementptr inbounds float, float* %429, i64 0
  %430 = load float, float* %arrayidx348, align 4
  %431 = load float*, float** @partQ__align.fg_h_dg_n2_p, align 8
  %arrayidx349 = getelementptr inbounds float, float* %431, i64 0
  %432 = load float, float* %arrayidx349, align 4
  %mul350 = fmul float %430, %432
  %433 = load float, float* %g, align 4
  %add351 = fadd float %433, %mul350
  store float %add351, float* %g, align 4
  %434 = load float*, float** @partQ__align.fgcp2g, align 8
  %arrayidx352 = getelementptr inbounds float, float* %434, i64 0
  %435 = load float, float* %arrayidx352, align 4
  %436 = load float*, float** @partQ__align.fg_h_dg_n1_p, align 8
  %arrayidx353 = getelementptr inbounds float, float* %436, i64 0
  %437 = load float, float* %arrayidx353, align 4
  %mul354 = fmul float %435, %437
  %438 = load float, float* %g, align 4
  %add355 = fadd float %438, %mul354
  store float %add355, float* %g, align 4
  %439 = load float, float* %g, align 4
  %440 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx356 = getelementptr inbounds float, float* %440, i64 0
  %441 = load float, float* %arrayidx356, align 4
  %add357 = fadd float %441, %439
  store float %add357, float* %arrayidx356, align 4
  %442 = load float, float* %g, align 4
  %443 = load float*, float** %currentw, align 8
  %arrayidx358 = getelementptr inbounds float, float* %443, i64 0
  %444 = load float, float* %arrayidx358, align 4
  %add359 = fadd float %444, %442
  store float %add359, float* %arrayidx358, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.378, %if.then.339
  %445 = load i32, i32* %i, align 4
  %446 = load i32, i32* %lgth1, align 4
  %add361 = add nsw i32 %446, 1
  %cmp362 = icmp slt i32 %445, %add361
  br i1 %cmp362, label %for.body.364, label %for.end.380

for.body.364:                                     ; preds = %for.cond.360
  %447 = load float*, float** @partQ__align.gapz_n2, align 8
  %arrayidx365 = getelementptr inbounds float, float* %447, i64 0
  %448 = load float, float* %arrayidx365, align 4
  %449 = load float*, float** @partQ__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx366 = getelementptr inbounds float, float* %449, i64 0
  %450 = load float, float* %arrayidx366, align 4
  %mul367 = fmul float %448, %450
  store float %mul367, float* %tmppenal, align 4
  %451 = load float, float* %tmppenal, align 4
  %452 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %452 to i64
  %453 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx369 = getelementptr inbounds float, float* %453, i64 %idxprom368
  %454 = load float, float* %arrayidx369, align 4
  %add370 = fadd float %454, %451
  store float %add370, float* %arrayidx369, align 4
  %455 = load float*, float** @partQ__align.gapz_n2, align 8
  %arrayidx371 = getelementptr inbounds float, float* %455, i64 1
  %456 = load float, float* %arrayidx371, align 4
  %457 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %457 to i64
  %458 = load float*, float** @partQ__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx373 = getelementptr inbounds float, float* %458, i64 %idxprom372
  %459 = load float, float* %arrayidx373, align 4
  %mul374 = fmul float %456, %459
  store float %mul374, float* %tmppenal, align 4
  %460 = load float, float* %tmppenal, align 4
  %461 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %461 to i64
  %462 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx376 = getelementptr inbounds float, float* %462, i64 %idxprom375
  %463 = load float, float* %arrayidx376, align 4
  %add377 = fadd float %463, %460
  store float %add377, float* %arrayidx376, align 4
  br label %for.inc.378

for.inc.378:                                      ; preds = %for.body.364
  %464 = load i32, i32* %i, align 4
  %inc379 = add nsw i32 %464, 1
  store i32 %inc379, i32* %i, align 4
  br label %for.cond.360

for.end.380:                                      ; preds = %for.cond.360
  store i32 1, i32* %j, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.399, %for.end.380
  %465 = load i32, i32* %j, align 4
  %466 = load i32, i32* %lgth2, align 4
  %add382 = add nsw i32 %466, 1
  %cmp383 = icmp slt i32 %465, %add382
  br i1 %cmp383, label %for.body.385, label %for.end.401

for.body.385:                                     ; preds = %for.cond.381
  %467 = load float*, float** @partQ__align.gapz_n1, align 8
  %arrayidx386 = getelementptr inbounds float, float* %467, i64 0
  %468 = load float, float* %arrayidx386, align 4
  %469 = load float*, float** @partQ__align.og_t_fg_h_dg_n2_p, align 8
  %arrayidx387 = getelementptr inbounds float, float* %469, i64 0
  %470 = load float, float* %arrayidx387, align 4
  %mul388 = fmul float %468, %470
  store float %mul388, float* %tmppenal, align 4
  %471 = load float, float* %tmppenal, align 4
  %472 = load i32, i32* %j, align 4
  %idxprom389 = sext i32 %472 to i64
  %473 = load float*, float** %currentw, align 8
  %arrayidx390 = getelementptr inbounds float, float* %473, i64 %idxprom389
  %474 = load float, float* %arrayidx390, align 4
  %add391 = fadd float %474, %471
  store float %add391, float* %arrayidx390, align 4
  %475 = load float*, float** @partQ__align.gapz_n1, align 8
  %arrayidx392 = getelementptr inbounds float, float* %475, i64 1
  %476 = load float, float* %arrayidx392, align 4
  %477 = load i32, i32* %j, align 4
  %idxprom393 = sext i32 %477 to i64
  %478 = load float*, float** @partQ__align.fg_t_og_h_dg_n2_p, align 8
  %arrayidx394 = getelementptr inbounds float, float* %478, i64 %idxprom393
  %479 = load float, float* %arrayidx394, align 4
  %mul395 = fmul float %476, %479
  store float %mul395, float* %tmppenal, align 4
  %480 = load float, float* %tmppenal, align 4
  %481 = load i32, i32* %j, align 4
  %idxprom396 = sext i32 %481 to i64
  %482 = load float*, float** %currentw, align 8
  %arrayidx397 = getelementptr inbounds float, float* %482, i64 %idxprom396
  %483 = load float, float* %arrayidx397, align 4
  %add398 = fadd float %483, %480
  store float %add398, float* %arrayidx397, align 4
  br label %for.inc.399

for.inc.399:                                      ; preds = %for.body.385
  %484 = load i32, i32* %j, align 4
  %inc400 = add nsw i32 %484, 1
  store i32 %inc400, i32* %j, align 4
  br label %for.cond.381

for.end.401:                                      ; preds = %for.cond.381
  br label %if.end.434

if.else.402:                                      ; preds = %if.end.336
  store i32 1, i32* %j, align 4
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.415, %if.else.402
  %485 = load i32, i32* %j, align 4
  %486 = load i32, i32* %lgth2, align 4
  %add404 = add nsw i32 %486, 1
  %cmp405 = icmp slt i32 %485, %add404
  br i1 %cmp405, label %for.body.407, label %for.end.417

for.body.407:                                     ; preds = %for.cond.403
  %487 = load i32, i32* @offset, align 4
  %488 = load i32, i32* %j, align 4
  %mul408 = mul nsw i32 %487, %488
  %conv409 = sitofp i32 %mul408 to double
  %div = fdiv double %conv409, 2.000000e+00
  %489 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %489 to i64
  %490 = load float*, float** %currentw, align 8
  %arrayidx411 = getelementptr inbounds float, float* %490, i64 %idxprom410
  %491 = load float, float* %arrayidx411, align 4
  %conv412 = fpext float %491 to double
  %sub413 = fsub double %conv412, %div
  %conv414 = fptrunc double %sub413 to float
  store float %conv414, float* %arrayidx411, align 4
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.407
  %492 = load i32, i32* %j, align 4
  %inc416 = add nsw i32 %492, 1
  store i32 %inc416, i32* %j, align 4
  br label %for.cond.403

for.end.417:                                      ; preds = %for.cond.403
  store i32 1, i32* %i, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.431, %for.end.417
  %493 = load i32, i32* %i, align 4
  %494 = load i32, i32* %lgth1, align 4
  %add419 = add nsw i32 %494, 1
  %cmp420 = icmp slt i32 %493, %add419
  br i1 %cmp420, label %for.body.422, label %for.end.433

for.body.422:                                     ; preds = %for.cond.418
  %495 = load i32, i32* @offset, align 4
  %496 = load i32, i32* %i, align 4
  %mul423 = mul nsw i32 %495, %496
  %conv424 = sitofp i32 %mul423 to double
  %div425 = fdiv double %conv424, 2.000000e+00
  %497 = load i32, i32* %i, align 4
  %idxprom426 = sext i32 %497 to i64
  %498 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx427 = getelementptr inbounds float, float* %498, i64 %idxprom426
  %499 = load float, float* %arrayidx427, align 4
  %conv428 = fpext float %499 to double
  %sub429 = fsub double %conv428, %div425
  %conv430 = fptrunc double %sub429 to float
  store float %conv430, float* %arrayidx427, align 4
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.body.422
  %500 = load i32, i32* %i, align 4
  %inc432 = add nsw i32 %500, 1
  store i32 %inc432, i32* %i, align 4
  br label %for.cond.418

for.end.433:                                      ; preds = %for.cond.418
  br label %if.end.434

if.end.434:                                       ; preds = %for.end.433, %for.end.401
  %501 = load float*, float** @partQ__align.m, align 8
  %arrayidx435 = getelementptr inbounds float, float* %501, i64 0
  store float 0.000000e+00, float* %arrayidx435, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.450, %if.end.434
  %502 = load i32, i32* %j, align 4
  %503 = load i32, i32* %lgth2, align 4
  %add437 = add nsw i32 %503, 1
  %cmp438 = icmp slt i32 %502, %add437
  br i1 %cmp438, label %for.body.440, label %for.end.452

for.body.440:                                     ; preds = %for.cond.436
  %504 = load i32, i32* %j, align 4
  %idxprom441 = sext i32 %504 to i64
  %505 = load i32*, i32** @partQ__align.mp, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %505, i64 %idxprom441
  store i32 0, i32* %arrayidx442, align 4
  %506 = load i32, i32* %j, align 4
  %sub443 = sub nsw i32 %506, 1
  %idxprom444 = sext i32 %sub443 to i64
  %507 = load float*, float** %currentw, align 8
  %arrayidx445 = getelementptr inbounds float, float* %507, i64 %idxprom444
  %508 = load float, float* %arrayidx445, align 4
  %509 = load float, float* %fpenalty, align 4
  %mul446 = fmul float 1.000000e+04, %509
  %add447 = fadd float %508, %mul446
  %510 = load i32, i32* %j, align 4
  %idxprom448 = sext i32 %510 to i64
  %511 = load float*, float** @partQ__align.m, align 8
  %arrayidx449 = getelementptr inbounds float, float* %511, i64 %idxprom448
  store float %add447, float* %arrayidx449, align 4
  br label %for.inc.450

for.inc.450:                                      ; preds = %for.body.440
  %512 = load i32, i32* %j, align 4
  %inc451 = add nsw i32 %512, 1
  store i32 %inc451, i32* %j, align 4
  br label %for.cond.436

for.end.452:                                      ; preds = %for.cond.436
  %513 = load i32, i32* %lgth2, align 4
  %cmp453 = icmp eq i32 %513, 0
  br i1 %cmp453, label %if.then.455, label %if.else.457

if.then.455:                                      ; preds = %for.end.452
  %514 = load float*, float** @partQ__align.lastverticalw, align 8
  %arrayidx456 = getelementptr inbounds float, float* %514, i64 0
  store float 0.000000e+00, float* %arrayidx456, align 4
  br label %if.end.462

if.else.457:                                      ; preds = %for.end.452
  %515 = load i32, i32* %lgth2, align 4
  %sub458 = sub nsw i32 %515, 1
  %idxprom459 = sext i32 %sub458 to i64
  %516 = load float*, float** %currentw, align 8
  %arrayidx460 = getelementptr inbounds float, float* %516, i64 %idxprom459
  %517 = load float, float* %arrayidx460, align 4
  %518 = load float*, float** @partQ__align.lastverticalw, align 8
  %arrayidx461 = getelementptr inbounds float, float* %518, i64 0
  store float %517, float* %arrayidx461, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.457, %if.then.455
  %519 = load i32, i32* @outgap, align 4
  %tobool463 = icmp ne i32 %519, 0
  br i1 %tobool463, label %if.then.464, label %if.else.466

if.then.464:                                      ; preds = %if.end.462
  %520 = load i32, i32* %lgth1, align 4
  %add465 = add nsw i32 %520, 1
  store i32 %add465, i32* %lasti, align 4
  br label %if.end.467

if.else.466:                                      ; preds = %if.end.462
  %521 = load i32, i32* %lgth1, align 4
  store i32 %521, i32* %lasti, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.466, %if.then.464
  %522 = load i32, i32* %lgth2, align 4
  %add468 = add nsw i32 %522, 1
  store i32 %add468, i32* %lastj, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.469

for.cond.469:                                     ; preds = %for.inc.581, %if.end.467
  %523 = load i32, i32* %i, align 4
  %524 = load i32, i32* %lasti, align 4
  %cmp470 = icmp slt i32 %523, %524
  br i1 %cmp470, label %for.body.472, label %for.end.583

for.body.472:                                     ; preds = %for.cond.469
  %525 = load float*, float** %previousw, align 8
  store float* %525, float** %wtmp, align 8
  %526 = load float*, float** %currentw, align 8
  store float* %526, float** %previousw, align 8
  %527 = load float*, float** %wtmp, align 8
  store float* %527, float** %currentw, align 8
  %528 = load i32, i32* %i, align 4
  %sub473 = sub nsw i32 %528, 1
  %idxprom474 = sext i32 %sub473 to i64
  %529 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx475 = getelementptr inbounds float, float* %529, i64 %idxprom474
  %530 = load float, float* %arrayidx475, align 4
  %531 = load float*, float** %previousw, align 8
  %arrayidx476 = getelementptr inbounds float, float* %531, i64 0
  store float %530, float* %arrayidx476, align 4
  %532 = load float*, float** %currentw, align 8
  %533 = load float**, float*** @partQ__align.cpmx1, align 8
  %534 = load float**, float*** @partQ__align.cpmx2, align 8
  %535 = load i32, i32* %i, align 4
  %536 = load i32, i32* %lgth2, align 4
  %537 = load float**, float*** @partQ__align.floatwork, align 8
  %538 = load i32**, i32*** @partQ__align.intwork, align 8
  call void @match_calc(float* %532, float** %533, float** %534, i32 %535, i32 %536, float** %537, i32** %538, i32 0)
  %539 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool477 = icmp ne %struct._LocalHom*** %539, null
  br i1 %tobool477, label %if.then.478, label %if.end.482

if.then.478:                                      ; preds = %for.body.472
  %540 = load float*, float** %currentw, align 8
  %541 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %541 to i64
  %542 = load i32*, i32** %gapmap1.addr, align 8
  %arrayidx480 = getelementptr inbounds i32, i32* %542, i64 %idxprom479
  %543 = load i32, i32* %arrayidx480, align 4
  %544 = load i32, i32* %start1.addr, align 4
  %add481 = add nsw i32 %543, %544
  %545 = load i32, i32* %lgth2, align 4
  %546 = load i32, i32* %start2.addr, align 4
  %547 = load i32*, i32** %gapmap2.addr, align 8
  call void @part_imp_match_out_vead_gapmapQ(float* %540, i32 %add481, i32 %545, i32 %546, i32* %547)
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.478, %for.body.472
  %548 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %548 to i64
  %549 = load float*, float** @partQ__align.initverticalw, align 8
  %arrayidx484 = getelementptr inbounds float, float* %549, i64 %idxprom483
  %550 = load float, float* %arrayidx484, align 4
  %551 = load float*, float** %currentw, align 8
  %arrayidx485 = getelementptr inbounds float, float* %551, i64 0
  store float %550, float* %arrayidx485, align 4
  store i32 0, i32* @partQ__align.mpi, align 4
  %552 = load float*, float** %previousw, align 8
  %arrayidx486 = getelementptr inbounds float, float* %552, i64 0
  %553 = load float, float* %arrayidx486, align 4
  %554 = load float, float* %fpenalty, align 4
  %mul487 = fmul float 1.000000e+04, %554
  %add488 = fadd float %553, %mul487
  store float %add488, float* @partQ__align.mi, align 4
  %555 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %555 to i64
  %556 = load i32**, i32*** @partQ__align.ijp, align 8
  %arrayidx490 = getelementptr inbounds i32*, i32** %556, i64 %idxprom489
  %557 = load i32*, i32** %arrayidx490, align 8
  %add.ptr = getelementptr inbounds i32, i32* %557, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %558 = load float*, float** @partQ__align.m, align 8
  %add.ptr491 = getelementptr inbounds float, float* %558, i64 1
  store float* %add.ptr491, float** %mjpt, align 8
  %559 = load float*, float** %previousw, align 8
  store float* %559, float** %prept, align 8
  %560 = load float*, float** %currentw, align 8
  %add.ptr492 = getelementptr inbounds float, float* %560, i64 1
  store float* %add.ptr492, float** %curpt, align 8
  %561 = load i32*, i32** @partQ__align.mp, align 8
  %add.ptr493 = getelementptr inbounds i32, i32* %561, i64 1
  store i32* %add.ptr493, i32** %mpjpt, align 8
  %562 = load float*, float** @partQ__align.fg_t_og_h_dg_n2_p, align 8
  %add.ptr494 = getelementptr inbounds float, float* %562, i64 1
  store float* %add.ptr494, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %563 = load float*, float** @partQ__align.og_t_fg_h_dg_n2_p, align 8
  %add.ptr495 = getelementptr inbounds float, float* %563, i64 1
  store float* %add.ptr495, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %564 = load float*, float** @partQ__align.og_h_dg_n2_p, align 8
  %add.ptr496 = getelementptr inbounds float, float* %564, i64 1
  store float* %add.ptr496, float** %og_h_dg_n2_p_pt, align 8
  %565 = load float*, float** @partQ__align.fg_h_dg_n2_p, align 8
  %add.ptr497 = getelementptr inbounds float, float* %565, i64 1
  store float* %add.ptr497, float** %fg_h_dg_n2_p_pt, align 8
  %566 = load float*, float** @partQ__align.gapz_n2, align 8
  %add.ptr498 = getelementptr inbounds float, float* %566, i64 1
  store float* %add.ptr498, float** %gapz_n2_pt0, align 8
  %567 = load float*, float** @partQ__align.gapz_n2, align 8
  %add.ptr499 = getelementptr inbounds float, float* %567, i64 2
  store float* %add.ptr499, float** %gapz_n2_pt1, align 8
  %568 = load float*, float** @partQ__align.fgcp2g, align 8
  %add.ptr500 = getelementptr inbounds float, float* %568, i64 1
  store float* %add.ptr500, float** %fgcp2pt, align 8
  %569 = load float*, float** @partQ__align.ogcp2g, align 8
  %add.ptr501 = getelementptr inbounds float, float* %569, i64 1
  store float* %add.ptr501, float** %ogcp2pt, align 8
  %570 = load i32, i32* %i, align 4
  %idxprom502 = sext i32 %570 to i64
  %571 = load float*, float** @partQ__align.fg_t_og_h_dg_n1_p, align 8
  %arrayidx503 = getelementptr inbounds float, float* %571, i64 %idxprom502
  %572 = load float, float* %arrayidx503, align 4
  store float %572, float* %fg_t_og_h_dg_n1_p_va, align 4
  %573 = load i32, i32* %i, align 4
  %idxprom504 = sext i32 %573 to i64
  %574 = load float*, float** @partQ__align.og_t_fg_h_dg_n1_p, align 8
  %arrayidx505 = getelementptr inbounds float, float* %574, i64 %idxprom504
  %575 = load float, float* %arrayidx505, align 4
  store float %575, float* %og_t_fg_h_dg_n1_p_va, align 4
  %576 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %576 to i64
  %577 = load float*, float** @partQ__align.og_h_dg_n1_p, align 8
  %arrayidx507 = getelementptr inbounds float, float* %577, i64 %idxprom506
  %578 = load float, float* %arrayidx507, align 4
  store float %578, float* %og_h_dg_n1_p_va, align 4
  %579 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %579 to i64
  %580 = load float*, float** @partQ__align.fg_h_dg_n1_p, align 8
  %arrayidx509 = getelementptr inbounds float, float* %580, i64 %idxprom508
  %581 = load float, float* %arrayidx509, align 4
  store float %581, float* %fg_h_dg_n1_p_va, align 4
  %582 = load i32, i32* %i, align 4
  %idxprom510 = sext i32 %582 to i64
  %583 = load float*, float** @partQ__align.gapz_n1, align 8
  %arrayidx511 = getelementptr inbounds float, float* %583, i64 %idxprom510
  %584 = load float, float* %arrayidx511, align 4
  store float %584, float* %gapz_n1_va0, align 4
  %585 = load i32, i32* %i, align 4
  %add512 = add nsw i32 %585, 1
  %idxprom513 = sext i32 %add512 to i64
  %586 = load float*, float** @partQ__align.gapz_n1, align 8
  %arrayidx514 = getelementptr inbounds float, float* %586, i64 %idxprom513
  %587 = load float, float* %arrayidx514, align 4
  store float %587, float* %gapz_n1_va1, align 4
  %588 = load i32, i32* %i, align 4
  %idxprom515 = sext i32 %588 to i64
  %589 = load float*, float** @partQ__align.fgcp1g, align 8
  %arrayidx516 = getelementptr inbounds float, float* %589, i64 %idxprom515
  %590 = load float, float* %arrayidx516, align 4
  store float %590, float* %fgcp1va, align 4
  %591 = load i32, i32* %i, align 4
  %idxprom517 = sext i32 %591 to i64
  %592 = load float*, float** @partQ__align.ogcp1g, align 8
  %arrayidx518 = getelementptr inbounds float, float* %592, i64 %idxprom517
  %593 = load float, float* %arrayidx518, align 4
  store float %593, float* %ogcp1va, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.519

for.cond.519:                                     ; preds = %for.inc.573, %if.end.482
  %594 = load i32, i32* %j, align 4
  %595 = load i32, i32* %lastj, align 4
  %cmp520 = icmp slt i32 %594, %595
  br i1 %cmp520, label %for.body.522, label %for.end.575

for.body.522:                                     ; preds = %for.cond.519
  %596 = load float*, float** %prept, align 8
  %597 = load float, float* %596, align 4
  store float %597, float* %wm, align 4
  %598 = load float, float* %ogcp1va, align 4
  %599 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %600 = load float, float* %599, align 4
  %mul523 = fmul float %598, %600
  store float %mul523, float* %g, align 4
  %601 = load float, float* %g, align 4
  %602 = load float, float* %wm, align 4
  %add524 = fadd float %602, %601
  store float %add524, float* %wm, align 4
  %603 = load float*, float** %ogcp2pt, align 8
  %604 = load float, float* %603, align 4
  %605 = load float, float* %og_h_dg_n1_p_va, align 4
  %mul525 = fmul float %604, %605
  store float %mul525, float* %g, align 4
  %606 = load float, float* %g, align 4
  %607 = load float, float* %wm, align 4
  %add526 = fadd float %607, %606
  store float %add526, float* %wm, align 4
  %608 = load float, float* %fgcp1va, align 4
  %609 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %610 = load float, float* %609, align 4
  %mul527 = fmul float %608, %610
  store float %mul527, float* %g, align 4
  %611 = load float, float* %g, align 4
  %612 = load float, float* %wm, align 4
  %add528 = fadd float %612, %611
  store float %add528, float* %wm, align 4
  %613 = load float*, float** %fgcp2pt, align 8
  %614 = load float, float* %613, align 4
  %615 = load float, float* %fg_h_dg_n1_p_va, align 4
  %mul529 = fmul float %614, %615
  store float %mul529, float* %g, align 4
  %616 = load float, float* %g, align 4
  %617 = load float, float* %wm, align 4
  %add530 = fadd float %617, %616
  store float %add530, float* %wm, align 4
  %618 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %618, align 4
  %619 = load float, float* %gapz_n1_va1, align 4
  %620 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %621 = load float, float* %620, align 4
  %mul531 = fmul float %619, %621
  store float %mul531, float* %tmppenal, align 4
  %622 = load float, float* @partQ__align.mi, align 4
  %623 = load float, float* %tmppenal, align 4
  %add532 = fadd float %622, %623
  store float %add532, float* %g, align 4
  %624 = load float, float* %wm, align 4
  %cmp533 = fcmp ogt float %add532, %624
  br i1 %cmp533, label %if.then.535, label %if.end.538

if.then.535:                                      ; preds = %for.body.522
  %625 = load float, float* %g, align 4
  store float %625, float* %wm, align 4
  %626 = load i32, i32* %j, align 4
  %627 = load i32, i32* @partQ__align.mpi, align 4
  %sub536 = sub nsw i32 %626, %627
  %sub537 = sub nsw i32 0, %sub536
  %628 = load i32*, i32** %ijppt, align 8
  store i32 %sub537, i32* %628, align 4
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.535, %for.body.522
  %629 = load float, float* %gapz_n1_va0, align 4
  %630 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %631 = load float, float* %630, align 4
  %mul539 = fmul float %629, %631
  store float %mul539, float* %tmppenal, align 4
  %632 = load float*, float** %prept, align 8
  %633 = load float, float* %632, align 4
  %634 = load float, float* %tmppenal, align 4
  %add540 = fadd float %633, %634
  store float %add540, float* %g, align 4
  %635 = load float, float* @partQ__align.mi, align 4
  %cmp541 = fcmp oge float %add540, %635
  br i1 %cmp541, label %if.then.543, label %if.end.545

if.then.543:                                      ; preds = %if.end.538
  %636 = load float, float* %g, align 4
  store float %636, float* @partQ__align.mi, align 4
  %637 = load i32, i32* %j, align 4
  %sub544 = sub nsw i32 %637, 1
  store i32 %sub544, i32* @partQ__align.mpi, align 4
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.543, %if.end.538
  %638 = load float*, float** %gapz_n2_pt1, align 8
  %639 = load float, float* %638, align 4
  %640 = load float, float* %fg_t_og_h_dg_n1_p_va, align 4
  %mul546 = fmul float %639, %640
  store float %mul546, float* %tmppenal, align 4
  %641 = load float*, float** %mjpt, align 8
  %642 = load float, float* %641, align 4
  %643 = load float, float* %tmppenal, align 4
  %add547 = fadd float %642, %643
  store float %add547, float* %g, align 4
  %644 = load float, float* %wm, align 4
  %cmp548 = fcmp ogt float %add547, %644
  br i1 %cmp548, label %if.then.550, label %if.end.552

if.then.550:                                      ; preds = %if.end.545
  %645 = load float, float* %g, align 4
  store float %645, float* %wm, align 4
  %646 = load i32, i32* %i, align 4
  %647 = load i32*, i32** %mpjpt, align 8
  %648 = load i32, i32* %647, align 4
  %sub551 = sub nsw i32 %646, %648
  %649 = load i32*, i32** %ijppt, align 8
  store i32 %sub551, i32* %649, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.550, %if.end.545
  %650 = load float*, float** %gapz_n2_pt0, align 8
  %651 = load float, float* %650, align 4
  %652 = load float, float* %og_t_fg_h_dg_n1_p_va, align 4
  %mul553 = fmul float %651, %652
  store float %mul553, float* %tmppenal, align 4
  %653 = load float*, float** %prept, align 8
  %654 = load float, float* %653, align 4
  %655 = load float, float* %tmppenal, align 4
  %add554 = fadd float %654, %655
  store float %add554, float* %g, align 4
  %656 = load float*, float** %mjpt, align 8
  %657 = load float, float* %656, align 4
  %cmp555 = fcmp oge float %add554, %657
  br i1 %cmp555, label %if.then.557, label %if.end.559

if.then.557:                                      ; preds = %if.end.552
  %658 = load float, float* %g, align 4
  %659 = load float*, float** %mjpt, align 8
  store float %658, float* %659, align 4
  %660 = load i32, i32* %i, align 4
  %sub558 = sub nsw i32 %660, 1
  %661 = load i32*, i32** %mpjpt, align 8
  store i32 %sub558, i32* %661, align 4
  br label %if.end.559

if.end.559:                                       ; preds = %if.then.557, %if.end.552
  %662 = load float, float* %wm, align 4
  %663 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %663, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %664 = load float, float* %663, align 4
  %add560 = fadd float %664, %662
  store float %add560, float* %663, align 4
  %665 = load i32*, i32** %ijppt, align 8
  %incdec.ptr561 = getelementptr inbounds i32, i32* %665, i32 1
  store i32* %incdec.ptr561, i32** %ijppt, align 8
  %666 = load float*, float** %mjpt, align 8
  %incdec.ptr562 = getelementptr inbounds float, float* %666, i32 1
  store float* %incdec.ptr562, float** %mjpt, align 8
  %667 = load float*, float** %prept, align 8
  %incdec.ptr563 = getelementptr inbounds float, float* %667, i32 1
  store float* %incdec.ptr563, float** %prept, align 8
  %668 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr564 = getelementptr inbounds i32, i32* %668, i32 1
  store i32* %incdec.ptr564, i32** %mpjpt, align 8
  %669 = load float*, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %incdec.ptr565 = getelementptr inbounds float, float* %669, i32 1
  store float* %incdec.ptr565, float** %fg_t_og_h_dg_n2_p_pt, align 8
  %670 = load float*, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %incdec.ptr566 = getelementptr inbounds float, float* %670, i32 1
  store float* %incdec.ptr566, float** %og_t_fg_h_dg_n2_p_pt, align 8
  %671 = load float*, float** %og_h_dg_n2_p_pt, align 8
  %incdec.ptr567 = getelementptr inbounds float, float* %671, i32 1
  store float* %incdec.ptr567, float** %og_h_dg_n2_p_pt, align 8
  %672 = load float*, float** %fg_h_dg_n2_p_pt, align 8
  %incdec.ptr568 = getelementptr inbounds float, float* %672, i32 1
  store float* %incdec.ptr568, float** %fg_h_dg_n2_p_pt, align 8
  %673 = load float*, float** %gapz_n2_pt0, align 8
  %incdec.ptr569 = getelementptr inbounds float, float* %673, i32 1
  store float* %incdec.ptr569, float** %gapz_n2_pt0, align 8
  %674 = load float*, float** %gapz_n2_pt1, align 8
  %incdec.ptr570 = getelementptr inbounds float, float* %674, i32 1
  store float* %incdec.ptr570, float** %gapz_n2_pt1, align 8
  %675 = load float*, float** %fgcp2pt, align 8
  %incdec.ptr571 = getelementptr inbounds float, float* %675, i32 1
  store float* %incdec.ptr571, float** %fgcp2pt, align 8
  %676 = load float*, float** %ogcp2pt, align 8
  %incdec.ptr572 = getelementptr inbounds float, float* %676, i32 1
  store float* %incdec.ptr572, float** %ogcp2pt, align 8
  br label %for.inc.573

for.inc.573:                                      ; preds = %if.end.559
  %677 = load i32, i32* %j, align 4
  %inc574 = add nsw i32 %677, 1
  store i32 %inc574, i32* %j, align 4
  br label %for.cond.519

for.end.575:                                      ; preds = %for.cond.519
  %678 = load i32, i32* %lgth2, align 4
  %sub576 = sub nsw i32 %678, 1
  %idxprom577 = sext i32 %sub576 to i64
  %679 = load float*, float** %currentw, align 8
  %arrayidx578 = getelementptr inbounds float, float* %679, i64 %idxprom577
  %680 = load float, float* %arrayidx578, align 4
  %681 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %681 to i64
  %682 = load float*, float** @partQ__align.lastverticalw, align 8
  %arrayidx580 = getelementptr inbounds float, float* %682, i64 %idxprom579
  store float %680, float* %arrayidx580, align 4
  br label %for.inc.581

for.inc.581:                                      ; preds = %for.end.575
  %683 = load i32, i32* %i, align 4
  %inc582 = add nsw i32 %683, 1
  store i32 %inc582, i32* %i, align 4
  br label %for.cond.469

for.end.583:                                      ; preds = %for.cond.469
  %684 = load i32, i32* @outgap, align 4
  %tobool584 = icmp ne i32 %684, 0
  br i1 %tobool584, label %if.end.622, label %if.then.585

if.then.585:                                      ; preds = %for.end.583
  store i32 1, i32* %j, align 4
  br label %for.cond.586

for.cond.586:                                     ; preds = %for.inc.600, %if.then.585
  %685 = load i32, i32* %j, align 4
  %686 = load i32, i32* %lgth2, align 4
  %add587 = add nsw i32 %686, 1
  %cmp588 = icmp slt i32 %685, %add587
  br i1 %cmp588, label %for.body.590, label %for.end.602

for.body.590:                                     ; preds = %for.cond.586
  %687 = load i32, i32* @offset, align 4
  %688 = load i32, i32* %lgth2, align 4
  %689 = load i32, i32* %j, align 4
  %sub591 = sub nsw i32 %688, %689
  %mul592 = mul nsw i32 %687, %sub591
  %conv593 = sitofp i32 %mul592 to double
  %div594 = fdiv double %conv593, 2.000000e+00
  %690 = load i32, i32* %j, align 4
  %idxprom595 = sext i32 %690 to i64
  %691 = load float*, float** %currentw, align 8
  %arrayidx596 = getelementptr inbounds float, float* %691, i64 %idxprom595
  %692 = load float, float* %arrayidx596, align 4
  %conv597 = fpext float %692 to double
  %sub598 = fsub double %conv597, %div594
  %conv599 = fptrunc double %sub598 to float
  store float %conv599, float* %arrayidx596, align 4
  br label %for.inc.600

for.inc.600:                                      ; preds = %for.body.590
  %693 = load i32, i32* %j, align 4
  %inc601 = add nsw i32 %693, 1
  store i32 %inc601, i32* %j, align 4
  br label %for.cond.586

for.end.602:                                      ; preds = %for.cond.586
  store i32 1, i32* %i, align 4
  br label %for.cond.603

for.cond.603:                                     ; preds = %for.inc.619, %for.end.602
  %694 = load i32, i32* %i, align 4
  %695 = load i32, i32* %lgth1, align 4
  %add604 = add nsw i32 %695, 1
  %cmp605 = icmp slt i32 %694, %add604
  br i1 %cmp605, label %for.body.607, label %for.end.621

for.body.607:                                     ; preds = %for.cond.603
  %696 = load i32, i32* @offset, align 4
  %conv608 = sitofp i32 %696 to double
  %697 = load i32, i32* %lgth1, align 4
  %conv609 = sitofp i32 %697 to double
  %698 = load i32, i32* %i, align 4
  %conv610 = sitofp i32 %698 to double
  %div611 = fdiv double %conv610, 2.000000e+00
  %sub612 = fsub double %conv609, %div611
  %mul613 = fmul double %conv608, %sub612
  %699 = load i32, i32* %i, align 4
  %idxprom614 = sext i32 %699 to i64
  %700 = load float*, float** @partQ__align.lastverticalw, align 8
  %arrayidx615 = getelementptr inbounds float, float* %700, i64 %idxprom614
  %701 = load float, float* %arrayidx615, align 4
  %conv616 = fpext float %701 to double
  %sub617 = fsub double %conv616, %mul613
  %conv618 = fptrunc double %sub617 to float
  store float %conv618, float* %arrayidx615, align 4
  br label %for.inc.619

for.inc.619:                                      ; preds = %for.body.607
  %702 = load i32, i32* %i, align 4
  %inc620 = add nsw i32 %702, 1
  store i32 %inc620, i32* %i, align 4
  br label %for.cond.603

for.end.621:                                      ; preds = %for.cond.603
  br label %if.end.622

if.end.622:                                       ; preds = %for.end.621, %for.end.583
  %703 = load %struct._LocalHom***, %struct._LocalHom**** %localhom.addr, align 8
  %tobool623 = icmp ne %struct._LocalHom*** %703, null
  br i1 %tobool623, label %if.then.624, label %if.else.625

if.then.624:                                      ; preds = %if.end.622
  %704 = load float*, float** %impmatch.addr, align 8
  %705 = load float*, float** %currentw, align 8
  %706 = load float*, float** @partQ__align.lastverticalw, align 8
  %707 = load i8**, i8*** %seq1.addr, align 8
  %708 = load i8**, i8*** %seq2.addr, align 8
  %709 = load i8**, i8*** @partQ__align.mseq1, align 8
  %710 = load i8**, i8*** @partQ__align.mseq2, align 8
  %711 = load float**, float*** @partQ__align.cpmx1, align 8
  %712 = load float**, float*** @partQ__align.cpmx2, align 8
  %713 = load i32**, i32*** @partQ__align.ijp, align 8
  %714 = load i32, i32* %icyc.addr, align 4
  %715 = load i32, i32* %jcyc.addr, align 4
  %716 = load i32, i32* %start1.addr, align 4
  %717 = load i32, i32* %end1.addr, align 4
  %718 = load i32, i32* %start2.addr, align 4
  %719 = load i32, i32* %end2.addr, align 4
  %720 = load i32*, i32** %gapmap1.addr, align 8
  %721 = load i32*, i32** %gapmap2.addr, align 8
  call void @Atracking_localhom(float* %704, float* %705, float* %706, i8** %707, i8** %708, i8** %709, i8** %710, float** %711, float** %712, i32** %713, i32 %714, i32 %715, i32 %716, i32 %717, i32 %718, i32 %719, i32* %720, i32* %721)
  br label %if.end.627

if.else.625:                                      ; preds = %if.end.622
  %722 = load float*, float** %currentw, align 8
  %723 = load float*, float** @partQ__align.lastverticalw, align 8
  %724 = load i8**, i8*** %seq1.addr, align 8
  %725 = load i8**, i8*** %seq2.addr, align 8
  %726 = load i8**, i8*** @partQ__align.mseq1, align 8
  %727 = load i8**, i8*** @partQ__align.mseq2, align 8
  %728 = load float**, float*** @partQ__align.cpmx1, align 8
  %729 = load float**, float*** @partQ__align.cpmx2, align 8
  %730 = load i32**, i32*** @partQ__align.ijp, align 8
  %731 = load i32, i32* %icyc.addr, align 4
  %732 = load i32, i32* %jcyc.addr, align 4
  %call626 = call float @Atracking(float* %722, float* %723, i8** %724, i8** %725, i8** %726, i8** %727, float** %728, float** %729, i32** %730, i32 %731, i32 %732)
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.625, %if.then.624
  %733 = load i8**, i8*** @partQ__align.mseq1, align 8
  %arrayidx628 = getelementptr inbounds i8*, i8** %733, i64 0
  %734 = load i8*, i8** %arrayidx628, align 8
  %call629 = call i64 @strlen(i8* %734) #5
  %conv630 = trunc i64 %call629 to i32
  store i32 %conv630, i32* %resultlen, align 4
  %735 = load i32, i32* %alloclen.addr, align 4
  %736 = load i32, i32* %resultlen, align 4
  %cmp631 = icmp slt i32 %735, %736
  br i1 %cmp631, label %if.then.636, label %lor.lhs.false.633

lor.lhs.false.633:                                ; preds = %if.end.627
  %737 = load i32, i32* %resultlen, align 4
  %cmp634 = icmp sgt i32 %737, 5000000
  br i1 %cmp634, label %if.then.636, label %if.end.638

if.then.636:                                      ; preds = %lor.lhs.false.633, %if.end.627
  %738 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %739 = load i32, i32* %alloclen.addr, align 4
  %740 = load i32, i32* %resultlen, align 4
  %call637 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %738, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32 %739, i32 %740, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.638

if.end.638:                                       ; preds = %if.then.636, %lor.lhs.false.633
  store i32 0, i32* %i, align 4
  br label %for.cond.639

for.cond.639:                                     ; preds = %for.inc.648, %if.end.638
  %741 = load i32, i32* %i, align 4
  %742 = load i32, i32* %icyc.addr, align 4
  %cmp640 = icmp slt i32 %741, %742
  br i1 %cmp640, label %for.body.642, label %for.end.650

for.body.642:                                     ; preds = %for.cond.639
  %743 = load i32, i32* %i, align 4
  %idxprom643 = sext i32 %743 to i64
  %744 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx644 = getelementptr inbounds i8*, i8** %744, i64 %idxprom643
  %745 = load i8*, i8** %arrayidx644, align 8
  %746 = load i32, i32* %i, align 4
  %idxprom645 = sext i32 %746 to i64
  %747 = load i8**, i8*** @partQ__align.mseq1, align 8
  %arrayidx646 = getelementptr inbounds i8*, i8** %747, i64 %idxprom645
  %748 = load i8*, i8** %arrayidx646, align 8
  %call647 = call i8* @strcpy(i8* %745, i8* %748) #4
  br label %for.inc.648

for.inc.648:                                      ; preds = %for.body.642
  %749 = load i32, i32* %i, align 4
  %inc649 = add nsw i32 %749, 1
  store i32 %inc649, i32* %i, align 4
  br label %for.cond.639

for.end.650:                                      ; preds = %for.cond.639
  store i32 0, i32* %j, align 4
  br label %for.cond.651

for.cond.651:                                     ; preds = %for.inc.660, %for.end.650
  %750 = load i32, i32* %j, align 4
  %751 = load i32, i32* %jcyc.addr, align 4
  %cmp652 = icmp slt i32 %750, %751
  br i1 %cmp652, label %for.body.654, label %for.end.662

for.body.654:                                     ; preds = %for.cond.651
  %752 = load i32, i32* %j, align 4
  %idxprom655 = sext i32 %752 to i64
  %753 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx656 = getelementptr inbounds i8*, i8** %753, i64 %idxprom655
  %754 = load i8*, i8** %arrayidx656, align 8
  %755 = load i32, i32* %j, align 4
  %idxprom657 = sext i32 %755 to i64
  %756 = load i8**, i8*** @partQ__align.mseq2, align 8
  %arrayidx658 = getelementptr inbounds i8*, i8** %756, i64 %idxprom657
  %757 = load i8*, i8** %arrayidx658, align 8
  %call659 = call i8* @strcpy(i8* %754, i8* %757) #4
  br label %for.inc.660

for.inc.660:                                      ; preds = %for.body.654
  %758 = load i32, i32* %j, align 4
  %inc661 = add nsw i32 %758, 1
  store i32 %inc661, i32* %j, align 4
  br label %for.cond.651

for.end.662:                                      ; preds = %for.cond.651
  %759 = load float, float* %wm, align 4
  ret float %759
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
define internal void @part_imp_match_out_vead_tate_gapmapQ(float* %imp, i32 %j1, i32 %lgth1, i32 %start1, i32* %gapmap1) #0 {
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
define internal void @part_imp_match_out_vead_gapmapQ(float* %imp, i32 %i1, i32 %lgth2, i32 %start2, i32* %gapmap2) #0 {
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
  %call199 = call float @part_imp_match_out_scQ(i32 %add195, i32 %add198)
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
