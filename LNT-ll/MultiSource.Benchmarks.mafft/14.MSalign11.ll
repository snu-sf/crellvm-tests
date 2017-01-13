; ModuleID = './MultiSource.Benchmarks.mafft/14.MSalign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@penalty = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"prevhiti = %d, lgth1 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"prevhitj = %d, lgth2 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hit!\0A\00", align 1
@MSalign11.mi = internal global float 0.000000e+00, align 4
@MSalign11.m = internal global float* null, align 8
@MSalign11.ijp = internal global i32** null, align 8
@MSalign11.mpi = internal global i32 0, align 4
@MSalign11.mp = internal global i32* null, align 8
@MSalign11.w1 = internal global float* null, align 8
@MSalign11.w2 = internal global float* null, align 8
@MSalign11.match = internal global float* null, align 8
@MSalign11.initverticalw = internal global float* null, align 8
@MSalign11.lastverticalw = internal global float* null, align 8
@MSalign11.mseq1 = internal global i8** null, align 8
@MSalign11.mseq2 = internal global i8** null, align 8
@MSalign11.mseq = internal global i8** null, align 8
@MSalign11.cpmx1 = internal global float** null, align 8
@MSalign11.cpmx2 = internal global float** null, align 8
@MSalign11.intwork = internal global i32** null, align 8
@MSalign11.WMMTX = internal global float** null, align 8
@MSalign11.floatwork = internal global float** null, align 8
@MSalign11.orlgth1 = internal global i32 0, align 4
@MSalign11.orlgth2 = internal global i32 0, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"currentw[0]  = %f, *maxinwpt = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"maxinw[%d] = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"maxinh[%d] = %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"wmmax = %f (%d,%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wmmax = %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c">MSres\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c">\0A%s\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@extendmseq.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"i=%d, prevhiti=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"j=%d, prevhitj=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"l=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"added %c to mseq1, mseq1 = %s \0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"added %c to mseq2, mseq2 = %s \0A\00", align 1
@Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define void @backdp(float** %WMMTX, float %wmmax, float* %maxinw, float* %maxinh, i32 %lgth1, i32 %lgth2, i32 %alloclen, float* %w1, float* %w2, float* %initverticalw, float* %m, i32* %mp, i32 %iin, i32 %jin, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2) #0 {
entry:
  %WMMTX.addr = alloca float**, align 8
  %wmmax.addr = alloca float, align 4
  %maxinw.addr = alloca float*, align 8
  %maxinh.addr = alloca float*, align 8
  %lgth1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %w1.addr = alloca float*, align 8
  %w2.addr = alloca float*, align 8
  %initverticalw.addr = alloca float*, align 8
  %m.addr = alloca float*, align 8
  %mp.addr = alloca i32*, align 8
  %iin.addr = alloca i32, align 4
  %jin.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prevhiti = alloca i32, align 4
  %prevhitj = alloca i32, align 4
  %g = alloca float, align 4
  %fpenalty = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %wtmp = alloca float*, align 8
  %mi = alloca float, align 4
  %mpi = alloca i32, align 4
  %mpjpt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %wm = alloca float, align 4
  %forwwm = alloca float, align 4
  store float** %WMMTX, float*** %WMMTX.addr, align 8
  store float %wmmax, float* %wmmax.addr, align 4
  store float* %maxinw, float** %maxinw.addr, align 8
  store float* %maxinh, float** %maxinh.addr, align 8
  store i32 %lgth1, i32* %lgth1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store float* %w1, float** %w1.addr, align 8
  store float* %w2, float** %w2.addr, align 8
  store float* %initverticalw, float** %initverticalw.addr, align 8
  store float* %m, float** %m.addr, align 8
  store i32* %mp, i32** %mp.addr, align 8
  store i32 %iin, i32* %iin.addr, align 4
  store i32 %jin, i32* %jin.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  store float 0.000000e+00, float* %wm, align 4
  %1 = load float*, float** %w1.addr, align 8
  store float* %1, float** %currentw, align 8
  %2 = load float*, float** %w2.addr, align 8
  store float* %2, float** %previousw, align 8
  %3 = load float*, float** %initverticalw.addr, align 8
  %4 = load i8**, i8*** %seq2.addr, align 8
  %5 = load i8**, i8*** %seq1.addr, align 8
  %6 = load i32, i32* %lgth2.addr, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load i32, i32* %lgth1.addr, align 4
  call void @match_calc(float* %3, i8** %4, i8** %5, i32 %sub, i32 %7)
  %8 = load float*, float** %currentw, align 8
  %9 = load i8**, i8*** %seq1.addr, align 8
  %10 = load i8**, i8*** %seq2.addr, align 8
  %11 = load i32, i32* %lgth1.addr, align 4
  %sub1 = sub nsw i32 %11, 1
  %12 = load i32, i32* %lgth2.addr, align 4
  call void @match_calc(float* %8, i8** %9, i8** %10, i32 %sub1, i32 %12)
  %13 = load i32, i32* %iin.addr, align 4
  store i32 %13, i32* %prevhiti, align 4
  %14 = load i32, i32* %jin.addr, align 4
  store i32 %14, i32* %prevhitj, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %prevhiti, align 4
  %17 = load i32, i32* %lgth1.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %16, i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %prevhitj, align 4
  %20 = load i32, i32* %lgth2.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %19, i32 %20)
  %21 = load i8**, i8*** %mseq1.addr, align 8
  %22 = load i8**, i8*** %mseq2.addr, align 8
  %23 = load i8**, i8*** %seq1.addr, align 8
  %24 = load i8**, i8*** %seq2.addr, align 8
  %25 = load i32, i32* %prevhiti, align 4
  %26 = load i32, i32* %prevhitj, align 4
  %27 = load i32, i32* %lgth1.addr, align 4
  %28 = load i32, i32* %lgth2.addr, align 4
  call void @extendmseq(i8** %21, i8** %22, i8** %23, i8** %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %lgth1.addr, align 4
  %sub3 = sub nsw i32 %30, 1
  %cmp = icmp slt i32 %29, %sub3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load float, float* %fpenalty, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load float*, float** %initverticalw.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %33, i64 %idxprom
  %34 = load float, float* %arrayidx, align 4
  %add = fadd float %34, %31
  store float %add, float* %arrayidx, align 4
  %35 = load float, float* %fpenalty, align 4
  %36 = load i32, i32* %lgth2.addr, align 4
  %sub5 = sub nsw i32 %36, 1
  %idxprom6 = sext i32 %sub5 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %37 to i64
  %38 = load float**, float*** %WMMTX.addr, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %38, i64 %idxprom7
  %39 = load float*, float** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds float, float* %39, i64 %idxprom6
  %40 = load float, float* %arrayidx9, align 4
  %add10 = fadd float %40, %35
  store float %add10, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.25, %for.end
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %lgth2.addr, align 4
  %sub12 = sub nsw i32 %43, 1
  %cmp13 = icmp slt i32 %42, %sub12
  br i1 %cmp13, label %for.body.15, label %for.end.27

for.body.15:                                      ; preds = %for.cond.11
  %44 = load float, float* %fpenalty, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %45 to i64
  %46 = load float*, float** %currentw, align 8
  %arrayidx17 = getelementptr inbounds float, float* %46, i64 %idxprom16
  %47 = load float, float* %arrayidx17, align 4
  %add18 = fadd float %47, %44
  store float %add18, float* %arrayidx17, align 4
  %48 = load float, float* %fpenalty, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %49 to i64
  %50 = load i32, i32* %lgth1.addr, align 4
  %sub20 = sub nsw i32 %50, 1
  %idxprom21 = sext i32 %sub20 to i64
  %51 = load float**, float*** %WMMTX.addr, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %51, i64 %idxprom21
  %52 = load float*, float** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds float, float* %52, i64 %idxprom19
  %53 = load float, float* %arrayidx23, align 4
  %add24 = fadd float %53, %48
  store float %add24, float* %arrayidx23, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.15
  %54 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %54, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond.11

for.end.27:                                       ; preds = %for.cond.11
  %55 = load i32, i32* %lgth2.addr, align 4
  %sub28 = sub nsw i32 %55, 1
  store i32 %sub28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.40, %for.end.27
  %56 = load i32, i32* %j, align 4
  %cmp30 = icmp sgt i32 %56, 0
  br i1 %cmp30, label %for.body.32, label %for.end.41

for.body.32:                                      ; preds = %for.cond.29
  %57 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %57 to i64
  %58 = load float*, float** %currentw, align 8
  %arrayidx34 = getelementptr inbounds float, float* %58, i64 %idxprom33
  %59 = load float, float* %arrayidx34, align 4
  %60 = load i32, i32* %j, align 4
  %sub35 = sub nsw i32 %60, 1
  %idxprom36 = sext i32 %sub35 to i64
  %61 = load float*, float** %m.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %61, i64 %idxprom36
  store float %59, float* %arrayidx37, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %62 to i64
  %63 = load i32*, i32** %mp.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %63, i64 %idxprom38
  store i32 0, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.32
  %64 = load i32, i32* %j, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.29

for.end.41:                                       ; preds = %for.cond.29
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %for.end.41
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %lgth2.addr, align 4
  %cmp43 = icmp slt i32 %65, %66
  br i1 %cmp43, label %for.body.45, label %for.end.50

for.body.45:                                      ; preds = %for.cond.42
  %67 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %67 to i64
  %68 = load float*, float** %m.addr, align 8
  %arrayidx47 = getelementptr inbounds float, float* %68, i64 %idxprom46
  store float 0.000000e+00, float* %arrayidx47, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.45
  %69 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %69, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.42

for.end.50:                                       ; preds = %for.cond.42
  %70 = load i32, i32* %lgth1.addr, align 4
  %sub51 = sub nsw i32 %70, 2
  store i32 %sub51, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.144, %for.end.50
  %71 = load i32, i32* %i, align 4
  %cmp53 = icmp sgt i32 %71, -1
  br i1 %cmp53, label %for.body.55, label %for.end.146

for.body.55:                                      ; preds = %for.cond.52
  %72 = load float*, float** %previousw, align 8
  store float* %72, float** %wtmp, align 8
  %73 = load float*, float** %currentw, align 8
  store float* %73, float** %previousw, align 8
  %74 = load float*, float** %wtmp, align 8
  store float* %74, float** %currentw, align 8
  %75 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %75, 1
  %idxprom57 = sext i32 %add56 to i64
  %76 = load float*, float** %initverticalw.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %76, i64 %idxprom57
  %77 = load float, float* %arrayidx58, align 4
  %78 = load i32, i32* %lgth2.addr, align 4
  %sub59 = sub nsw i32 %78, 1
  %idxprom60 = sext i32 %sub59 to i64
  %79 = load float*, float** %previousw, align 8
  %arrayidx61 = getelementptr inbounds float, float* %79, i64 %idxprom60
  store float %77, float* %arrayidx61, align 4
  %80 = load float*, float** %currentw, align 8
  %81 = load i8**, i8*** %seq1.addr, align 8
  %82 = load i8**, i8*** %seq2.addr, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %lgth2.addr, align 4
  call void @match_calc(float* %80, i8** %81, i8** %82, i32 %83, i32 %84)
  %85 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %85 to i64
  %86 = load float*, float** %initverticalw.addr, align 8
  %arrayidx63 = getelementptr inbounds float, float* %86, i64 %idxprom62
  %87 = load float, float* %arrayidx63, align 4
  %88 = load i32, i32* %lgth2.addr, align 4
  %sub64 = sub nsw i32 %88, 1
  %idxprom65 = sext i32 %sub64 to i64
  %89 = load float*, float** %currentw, align 8
  %arrayidx66 = getelementptr inbounds float, float* %89, i64 %idxprom65
  store float %87, float* %arrayidx66, align 4
  %90 = load i32, i32* %lgth2.addr, align 4
  %sub67 = sub nsw i32 %90, 1
  %idxprom68 = sext i32 %sub67 to i64
  %91 = load float*, float** %previousw, align 8
  %arrayidx69 = getelementptr inbounds float, float* %91, i64 %idxprom68
  %92 = load float, float* %arrayidx69, align 4
  store float %92, float* %mi, align 4
  %93 = load i32, i32* %lgth2.addr, align 4
  %sub70 = sub nsw i32 %93, 1
  store i32 %sub70, i32* %mpi, align 4
  %94 = load float*, float** %m.addr, align 8
  %95 = load i32, i32* %lgth2.addr, align 4
  %idx.ext = sext i32 %95 to i64
  %add.ptr = getelementptr inbounds float, float* %94, i64 %idx.ext
  %add.ptr71 = getelementptr inbounds float, float* %add.ptr, i64 -2
  store float* %add.ptr71, float** %mjpt, align 8
  %96 = load float*, float** %previousw, align 8
  %97 = load i32, i32* %lgth2.addr, align 4
  %idx.ext72 = sext i32 %97 to i64
  %add.ptr73 = getelementptr inbounds float, float* %96, i64 %idx.ext72
  %add.ptr74 = getelementptr inbounds float, float* %add.ptr73, i64 -1
  store float* %add.ptr74, float** %prept, align 8
  %98 = load float*, float** %currentw, align 8
  %99 = load i32, i32* %lgth2.addr, align 4
  %idx.ext75 = sext i32 %99 to i64
  %add.ptr76 = getelementptr inbounds float, float* %98, i64 %idx.ext75
  %add.ptr77 = getelementptr inbounds float, float* %add.ptr76, i64 -2
  store float* %add.ptr77, float** %curpt, align 8
  %100 = load i32*, i32** %mp.addr, align 8
  %101 = load i32, i32* %lgth2.addr, align 4
  %idx.ext78 = sext i32 %101 to i64
  %add.ptr79 = getelementptr inbounds i32, i32* %100, i64 %idx.ext78
  %add.ptr80 = getelementptr inbounds i32, i32* %add.ptr79, i64 -2
  store i32* %add.ptr80, i32** %mpjpt, align 8
  %102 = load i32, i32* %lgth2.addr, align 4
  %sub81 = sub nsw i32 %102, 2
  store i32 %sub81, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.141, %for.body.55
  %103 = load i32, i32* %j, align 4
  %cmp83 = icmp sgt i32 %103, -1
  br i1 %cmp83, label %for.body.85, label %for.end.143

for.body.85:                                      ; preds = %for.cond.82
  %104 = load float*, float** %prept, align 8
  %105 = load float, float* %104, align 4
  store float %105, float* %wm, align 4
  %106 = load float, float* %mi, align 4
  %107 = load float, float* %fpenalty, align 4
  %add86 = fadd float %106, %107
  store float %add86, float* %g, align 4
  %108 = load float, float* %g, align 4
  %109 = load float, float* %wm, align 4
  %cmp87 = fcmp ogt float %108, %109
  br i1 %cmp87, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.85
  %110 = load float, float* %g, align 4
  store float %110, float* %wm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.85
  %111 = load float*, float** %prept, align 8
  %112 = load float, float* %111, align 4
  store float %112, float* %g, align 4
  %113 = load float, float* %g, align 4
  %114 = load float, float* %mi, align 4
  %cmp89 = fcmp oge float %113, %114
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end
  %115 = load float, float* %g, align 4
  store float %115, float* %mi, align 4
  %116 = load i32, i32* %j, align 4
  %add92 = add nsw i32 %116, 1
  store i32 %add92, i32* %mpi, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end
  %117 = load float*, float** %mjpt, align 8
  %118 = load float, float* %117, align 4
  %119 = load float, float* %fpenalty, align 4
  %add94 = fadd float %118, %119
  store float %add94, float* %g, align 4
  %120 = load float, float* %g, align 4
  %121 = load float, float* %wm, align 4
  %cmp95 = fcmp ogt float %120, %121
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.93
  %122 = load float, float* %g, align 4
  store float %122, float* %wm, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.93
  %123 = load float*, float** %prept, align 8
  %124 = load float, float* %123, align 4
  store float %124, float* %g, align 4
  %125 = load float, float* %g, align 4
  %126 = load float*, float** %mjpt, align 8
  %127 = load float, float* %126, align 4
  %cmp99 = fcmp oge float %125, %127
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.98
  %128 = load float, float* %g, align 4
  %129 = load float*, float** %mjpt, align 8
  store float %128, float* %129, align 4
  %130 = load i32, i32* %i, align 4
  %sub102 = sub nsw i32 %130, 1
  %131 = load i32*, i32** %mpjpt, align 8
  store i32 %sub102, i32* %131, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.98
  %132 = load float, float* %wm, align 4
  %133 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %133 to i64
  %134 = load float*, float** %maxinw.addr, align 8
  %arrayidx105 = getelementptr inbounds float, float* %134, i64 %idxprom104
  %135 = load float, float* %arrayidx105, align 4
  %136 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %136 to i64
  %137 = load float*, float** %maxinh.addr, align 8
  %arrayidx107 = getelementptr inbounds float, float* %137, i64 %idxprom106
  %138 = load float, float* %arrayidx107, align 4
  %cmp108 = fcmp olt float %135, %138
  br i1 %cmp108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.103
  %139 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %139 to i64
  %140 = load float*, float** %maxinw.addr, align 8
  %arrayidx111 = getelementptr inbounds float, float* %140, i64 %idxprom110
  %141 = load float, float* %arrayidx111, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.103
  %142 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %142 to i64
  %143 = load float*, float** %maxinh.addr, align 8
  %arrayidx113 = getelementptr inbounds float, float* %143, i64 %idxprom112
  %144 = load float, float* %arrayidx113, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %141, %cond.true ], [ %144, %cond.false ]
  %add114 = fadd float %132, %cond
  store float %add114, float* %forwwm, align 4
  %145 = load float, float* %forwwm, align 4
  %146 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %146 to i64
  %147 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %147 to i64
  %148 = load float**, float*** %WMMTX.addr, align 8
  %arrayidx117 = getelementptr inbounds float*, float** %148, i64 %idxprom116
  %149 = load float*, float** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds float, float* %149, i64 %idxprom115
  store float %145, float* %arrayidx118, align 4
  %150 = load float, float* %forwwm, align 4
  %151 = load float, float* %wmmax.addr, align 4
  %cmp119 = fcmp oeq float %150, %151
  br i1 %cmp119, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %cond.end
  %152 = load i32, i32* %i, align 4
  %153 = load i32, i32* %prevhiti, align 4
  %cmp121 = icmp slt i32 %152, %153
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.135

land.lhs.true.123:                                ; preds = %land.lhs.true
  %154 = load i32, i32* %j, align 4
  %155 = load i32, i32* %prevhitj, align 4
  %cmp124 = icmp slt i32 %154, %155
  br i1 %cmp124, label %if.then.126, label %if.end.135

if.then.126:                                      ; preds = %land.lhs.true.123
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %157 = load i8**, i8*** %mseq1.addr, align 8
  %158 = load i8**, i8*** %mseq2.addr, align 8
  %159 = load i8**, i8*** %seq1.addr, align 8
  %160 = load i8**, i8*** %seq2.addr, align 8
  %161 = load i32, i32* %i, align 4
  %162 = load i32, i32* %j, align 4
  %163 = load i32, i32* %prevhiti, align 4
  %164 = load i32, i32* %prevhitj, align 4
  call void @extendmseq(i8** %157, i8** %158, i8** %159, i8** %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %165 = load float, float* %forwwm, align 4
  %166 = load float, float* %wmmax.addr, align 4
  %cmp128 = fcmp oeq float %165, %166
  br i1 %cmp128, label %if.then.130, label %if.end.134

if.then.130:                                      ; preds = %if.then.126
  %167 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %167, i64 0
  %168 = load i8*, i8** %arrayidx131, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx131, align 8
  store i8 117, i8* %incdec.ptr, align 1
  %169 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %169, i64 0
  %170 = load i8*, i8** %arrayidx132, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %170, i32 -1
  store i8* %incdec.ptr133, i8** %arrayidx132, align 8
  store i8 117, i8* %incdec.ptr133, align 1
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.130, %if.then.126
  %171 = load i32, i32* %i, align 4
  store i32 %171, i32* %prevhiti, align 4
  %172 = load i32, i32* %j, align 4
  store i32 %172, i32* %prevhitj, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.123, %land.lhs.true, %cond.end
  %173 = load float, float* %wm, align 4
  %174 = load float*, float** %curpt, align 8
  %175 = load float, float* %174, align 4
  %add136 = fadd float %175, %173
  store float %add136, float* %174, align 4
  %176 = load float*, float** %mjpt, align 8
  %incdec.ptr137 = getelementptr inbounds float, float* %176, i32 -1
  store float* %incdec.ptr137, float** %mjpt, align 8
  %177 = load float*, float** %prept, align 8
  %incdec.ptr138 = getelementptr inbounds float, float* %177, i32 -1
  store float* %incdec.ptr138, float** %prept, align 8
  %178 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr139 = getelementptr inbounds i32, i32* %178, i32 -1
  store i32* %incdec.ptr139, i32** %mpjpt, align 8
  %179 = load float*, float** %curpt, align 8
  %incdec.ptr140 = getelementptr inbounds float, float* %179, i32 -1
  store float* %incdec.ptr140, float** %curpt, align 8
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.135
  %180 = load i32, i32* %j, align 4
  %dec142 = add nsw i32 %180, -1
  store i32 %dec142, i32* %j, align 4
  br label %for.cond.82

for.end.143:                                      ; preds = %for.cond.82
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.end.143
  %181 = load i32, i32* %i, align 4
  %dec145 = add nsw i32 %181, -1
  store i32 %dec145, i32* %i, align 4
  br label %for.cond.52

for.end.146:                                      ; preds = %for.cond.52
  %182 = load i8**, i8*** %mseq1.addr, align 8
  %183 = load i8**, i8*** %mseq2.addr, align 8
  %184 = load i8**, i8*** %seq1.addr, align 8
  %185 = load i8**, i8*** %seq2.addr, align 8
  %186 = load i32, i32* %prevhiti, align 4
  %187 = load i32, i32* %prevhitj, align 4
  call void @extendmseq(i8** %182, i8** %183, i8** %184, i8** %185, i32 -1, i32 -1, i32 %186, i32 %187)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @match_calc(float* %match, i8** %s1, i8** %s2, i32 %i1, i32 %lgth2) #0 {
entry:
  %match.addr = alloca float*, align 8
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %tmpc = alloca i8, align 1
  %seq2 = alloca i8*, align 8
  store float* %match, float** %match.addr, align 8
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  %0 = load i32, i32* %i1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %tmpc, align 1
  %4 = load i8**, i8*** %s2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %seq2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %seq2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %seq2, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %idxprom3 = sext i32 %conv to i64
  %9 = load i8, i8* %tmpc, align 1
  %conv4 = sext i8 %9 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx6, i32 0, i64 %idxprom3
  %10 = load i32, i32* %arrayidx7, align 4
  %conv8 = sitofp i32 %10 to float
  %11 = load float*, float** %match.addr, align 8
  %incdec.ptr9 = getelementptr inbounds float, float* %11, i32 1
  store float* %incdec.ptr9, float** %match.addr, align 8
  store float %conv8, float* %11, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @extendmseq(i8** %mseq1, i8** %mseq2, i8** %seq1, i8** %seq2, i32 %i, i32 %j, i32 %prevhiti, i32 %prevhitj) #0 {
entry:
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %prevhiti.addr = alloca i32, align 4
  %prevhitj.addr = alloca i32, align 4
  %gap = alloca [2 x i8], align 1
  %l = alloca i32, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %prevhiti, i32* %prevhiti.addr, align 4
  store i32 %prevhitj, i32* %prevhitj.addr, align 4
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @extendmseq.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %prevhiti.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 %2, i32 %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %j.addr, align 4
  %6 = load i32, i32* %prevhitj.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %5, i32 %6)
  %7 = load i32, i32* %prevhiti.addr, align 4
  %8 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %7, %8
  %sub2 = sub nsw i32 %sub, 1
  store i32 %sub2, i32* %l, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* %l, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %10)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %l, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %i.addr, align 4
  %13 = load i32, i32* %l, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %l, align 4
  %add = add nsw i32 %12, %13
  %idxprom = sext i32 %add to i64
  %14 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx4, align 1
  %17 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx5, align 8
  store i8 %16, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %19 = load i8, i8* %arraydecay, align 1
  %20 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx6, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr7, i8** %arrayidx6, align 8
  store i8 %19, i8* %incdec.ptr7, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %prevhitj.addr, align 4
  %23 = load i32, i32* %j.addr, align 4
  %sub8 = sub nsw i32 %22, %23
  %sub9 = sub nsw i32 %sub8, 1
  store i32 %sub9, i32* %l, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i32, i32* %l, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %25)
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.13, %while.end
  %26 = load i32, i32* %l, align 4
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %while.body.13, label %while.end.24

while.body.13:                                    ; preds = %while.cond.11
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %27 = load i8, i8* %arraydecay14, align 1
  %28 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx15, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr16, i8** %arrayidx15, align 8
  store i8 %27, i8* %incdec.ptr16, align 1
  %30 = load i32, i32* %j.addr, align 4
  %31 = load i32, i32* %l, align 4
  %dec17 = add nsw i32 %31, -1
  store i32 %dec17, i32* %l, align 4
  %add18 = add nsw i32 %30, %31
  %idxprom19 = sext i32 %add18 to i64
  %32 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i64 %idxprom19
  %34 = load i8, i8* %arrayidx21, align 1
  %35 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr23, i8** %arrayidx22, align 8
  store i8 %34, i8* %incdec.ptr23, align 1
  br label %while.cond.11

while.end.24:                                     ; preds = %while.cond.11
  %37 = load i32, i32* %i.addr, align 4
  %cmp25 = icmp slt i32 %37, 0
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.24
  %38 = load i32, i32* %j.addr, align 4
  %cmp26 = icmp slt i32 %38, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end.24
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %39 = load i32, i32* %i.addr, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %40, i64 0
  %41 = load i8*, i8** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %41, i64 %idxprom27
  %42 = load i8, i8* %arrayidx29, align 1
  %43 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %43, i64 0
  %44 = load i8*, i8** %arrayidx30, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr31, i8** %arrayidx30, align 8
  store i8 %42, i8* %incdec.ptr31, align 1
  %45 = load i32, i32* %j.addr, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %46, i64 0
  %47 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %47, i64 %idxprom32
  %48 = load i8, i8* %arrayidx34, align 1
  %49 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr36, i8** %arrayidx35, align 8
  store i8 %48, i8* %incdec.ptr36, align 1
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %i.addr, align 4
  %idxprom37 = sext i32 %52 to i64
  %53 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %54, i64 %idxprom37
  %55 = load i8, i8* %arrayidx39, align 1
  %conv = sext i8 %55 to i32
  %56 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i32 %conv, i8* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i32, i32* %j.addr, align 4
  %idxprom42 = sext i32 %59 to i64
  %60 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %60, i64 0
  %61 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %61, i64 %idxprom42
  %62 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %62 to i32
  %63 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %63, i64 0
  %64 = load i8*, i8** %arrayidx46, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 %conv45, i8* %64)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define float @MSalign11(i8** %seq1, i8** %seq2, i32 %alloclen) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %iin = alloca i32, align 4
  %jin = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %resultlen = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %fpenalty = alloca float, align 4
  %maxinw = alloca float*, align 8
  %maxinwpt = alloca float*, align 8
  %maxinh = alloca float*, align 8
  %wmmax = alloca float, align 4
  %wtmp = alloca float*, align 8
  %ijppt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll191 = alloca i32, align 4
  %ll292 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32 0, i32* %iin, align 4
  store i32 0, i32* %jin, align 4
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  store float* null, float** %maxinw, align 8
  store float* null, float** %maxinwpt, align 8
  store float* null, float** %maxinh, align 8
  %1 = load i32, i32* @MSalign11.orlgth1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %2, i32 0)
  store i8** %call, i8*** @MSalign11.mseq1, align 8
  %3 = load i32, i32* @njob, align 4
  %call2 = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call2, i8*** @MSalign11.mseq2, align 8
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
  %9 = load i32, i32* @MSalign11.orlgth1, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %11 = load i32, i32* @MSalign11.orlgth2, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.80

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* @MSalign11.orlgth1, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.12
  %13 = load i32, i32* @MSalign11.orlgth2, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load float*, float** @MSalign11.w1, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @MSalign11.w2, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @MSalign11.match, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @MSalign11.initverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @MSalign11.lastverticalw, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** %maxinw, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load float*, float** %maxinh, align 8
  call void @FreeFloatVec(float* %20)
  %21 = load float*, float** @MSalign11.m, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load i32*, i32** @MSalign11.mp, align 8
  call void @FreeIntVec(i32* %22)
  %23 = load i8**, i8*** @MSalign11.mseq, align 8
  call void @FreeCharMtx(i8** %23)
  %24 = load float**, float*** @MSalign11.cpmx1, align 8
  call void @FreeFloatMtx(float** %24)
  %25 = load float**, float*** @MSalign11.cpmx2, align 8
  call void @FreeFloatMtx(float** %25)
  %26 = load float**, float*** @MSalign11.floatwork, align 8
  call void @FreeFloatMtx(float** %26)
  %27 = load i32**, i32*** @MSalign11.intwork, align 8
  call void @FreeIntMtx(i32** %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  %28 = load i32, i32* %lgth1, align 4
  %conv19 = sitofp i32 %28 to double
  %mul = fmul double 1.300000e+00, %conv19
  %conv20 = fptosi double %mul to i32
  %29 = load i32, i32* @MSalign11.orlgth1, align 4
  %cmp21 = icmp sgt i32 %conv20, %29
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %30 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %30 to double
  %mul24 = fmul double 1.300000e+00, %conv23
  %conv25 = fptosi double %mul24 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %31 = load i32, i32* @MSalign11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %31, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %32 = load i32, i32* %lgth2, align 4
  %conv26 = sitofp i32 %32 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  %33 = load i32, i32* @MSalign11.orlgth2, align 4
  %cmp29 = icmp sgt i32 %conv28, %33
  br i1 %cmp29, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %cond.end
  %34 = load i32, i32* %lgth2, align 4
  %conv32 = sitofp i32 %34 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %35 = load i32, i32* @MSalign11.orlgth2, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.31
  %cond37 = phi i32 [ %conv34, %cond.true.31 ], [ %35, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 100
  store i32 %add38, i32* %ll2, align 4
  %36 = load i32, i32* %ll2, align 4
  %add39 = add nsw i32 %36, 2
  %call40 = call float* @AllocateFloatVec(i32 %add39)
  store float* %call40, float** @MSalign11.w1, align 8
  %37 = load i32, i32* %ll2, align 4
  %add41 = add nsw i32 %37, 2
  %call42 = call float* @AllocateFloatVec(i32 %add41)
  store float* %call42, float** @MSalign11.w2, align 8
  %38 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %38, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @MSalign11.match, align 8
  %39 = load i32, i32* %ll1, align 4
  %add45 = add nsw i32 %39, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @MSalign11.initverticalw, align 8
  %40 = load i32, i32* %ll1, align 4
  %add47 = add nsw i32 %40, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @MSalign11.lastverticalw, align 8
  %41 = load i32, i32* %ll1, align 4
  %add49 = add nsw i32 %41, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** %maxinw, align 8
  %42 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %42, 2
  %call52 = call float* @AllocateFloatVec(i32 %add51)
  store float* %call52, float** @MSalign11.m, align 8
  %43 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %43, 2
  %call54 = call i32* @AllocateIntVec(i32 %add53)
  store i32* %call54, i32** @MSalign11.mp, align 8
  %44 = load i32, i32* %ll2, align 4
  %add55 = add nsw i32 %44, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** %maxinh, align 8
  %45 = load i32, i32* @njob, align 4
  %46 = load i32, i32* %ll1, align 4
  %47 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %46, %47
  %call58 = call i8** @AllocateCharMtx(i32 %45, i32 %add57)
  store i8** %call58, i8*** @MSalign11.mseq, align 8
  %48 = load i32, i32* %ll1, align 4
  %add59 = add nsw i32 %48, 2
  %call60 = call float** @AllocateFloatMtx(i32 26, i32 %add59)
  store float** %call60, float*** @MSalign11.cpmx1, align 8
  %49 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %49, 2
  %call62 = call float** @AllocateFloatMtx(i32 26, i32 %add61)
  store float** %call62, float*** @MSalign11.cpmx2, align 8
  %50 = load i32, i32* %ll1, align 4
  %51 = load i32, i32* %ll2, align 4
  %cmp63 = icmp sgt i32 %50, %51
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.36
  %52 = load i32, i32* %ll1, align 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.36
  %53 = load i32, i32* %ll2, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %52, %cond.true.65 ], [ %53, %cond.false.66 ]
  %add69 = add nsw i32 %cond68, 2
  %call70 = call float** @AllocateFloatMtx(i32 26, i32 %add69)
  store float** %call70, float*** @MSalign11.floatwork, align 8
  %54 = load i32, i32* %ll1, align 4
  %55 = load i32, i32* %ll2, align 4
  %cmp71 = icmp sgt i32 %54, %55
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end.67
  %56 = load i32, i32* %ll1, align 4
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.67
  %57 = load i32, i32* %ll2, align 4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi i32 [ %56, %cond.true.73 ], [ %57, %cond.false.74 ]
  %add77 = add nsw i32 %cond76, 2
  %call78 = call i32** @AllocateIntMtx(i32 26, i32 %add77)
  store i32** %call78, i32*** @MSalign11.intwork, align 8
  %58 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %58, 100
  store i32 %sub, i32* @MSalign11.orlgth1, align 4
  %59 = load i32, i32* %ll2, align 4
  %sub79 = sub nsw i32 %59, 100
  store i32 %sub79, i32* @MSalign11.orlgth2, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.75, %lor.lhs.false
  %60 = load i8**, i8*** @MSalign11.mseq, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %60, i64 0
  %61 = load i8*, i8** %arrayidx81, align 8
  %62 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %61, i8** %arrayidx82, align 8
  %63 = load i8**, i8*** @MSalign11.mseq, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %63, i64 1
  %64 = load i8*, i8** %arrayidx83, align 8
  %65 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %64, i8** %arrayidx84, align 8
  %66 = load i32, i32* @MSalign11.orlgth1, align 4
  %67 = load i32, i32* @commonAlloc1, align 4
  %cmp85 = icmp sgt i32 %66, %67
  br i1 %cmp85, label %if.then.90, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.end.80
  %68 = load i32, i32* @MSalign11.orlgth2, align 4
  %69 = load i32, i32* @commonAlloc2, align 4
  %cmp88 = icmp sgt i32 %68, %69
  br i1 %cmp88, label %if.then.90, label %if.end.115

if.then.90:                                       ; preds = %lor.lhs.false.87, %if.end.80
  %70 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %land.lhs.true.93, label %if.end.96

land.lhs.true.93:                                 ; preds = %if.then.90
  %71 = load i32, i32* @commonAlloc2, align 4
  %tobool94 = icmp ne i32 %71, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true.93
  %72 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %72)
  %73 = load float**, float*** @MSalign11.WMMTX, align 8
  call void @FreeFloatMtx(float** %73)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true.93, %if.then.90
  %74 = load i32, i32* @MSalign11.orlgth1, align 4
  %75 = load i32, i32* @commonAlloc1, align 4
  %cmp97 = icmp sgt i32 %74, %75
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %if.end.96
  %76 = load i32, i32* @MSalign11.orlgth1, align 4
  br label %cond.end.101

cond.false.100:                                   ; preds = %if.end.96
  %77 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ %76, %cond.true.99 ], [ %77, %cond.false.100 ]
  store i32 %cond102, i32* %ll191, align 4
  %78 = load i32, i32* @MSalign11.orlgth2, align 4
  %79 = load i32, i32* @commonAlloc2, align 4
  %cmp103 = icmp sgt i32 %78, %79
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.end.101
  %80 = load i32, i32* @MSalign11.orlgth2, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.101
  %81 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi i32 [ %80, %cond.true.105 ], [ %81, %cond.false.106 ]
  store i32 %cond108, i32* %ll292, align 4
  %82 = load i32, i32* %ll191, align 4
  %add109 = add nsw i32 %82, 10
  %83 = load i32, i32* %ll292, align 4
  %add110 = add nsw i32 %83, 10
  %call111 = call i32** @AllocateIntMtx(i32 %add109, i32 %add110)
  store i32** %call111, i32*** @commonIP, align 8
  %84 = load i32, i32* %ll191, align 4
  %add112 = add nsw i32 %84, 10
  %85 = load i32, i32* %ll292, align 4
  %add113 = add nsw i32 %85, 10
  %call114 = call float** @AllocateFloatMtx(i32 %add112, i32 %add113)
  store float** %call114, float*** @MSalign11.WMMTX, align 8
  %86 = load i32, i32* %ll191, align 4
  store i32 %86, i32* @commonAlloc1, align 4
  %87 = load i32, i32* %ll292, align 4
  store i32 %87, i32* @commonAlloc2, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %cond.end.107, %lor.lhs.false.87
  %88 = load i32**, i32*** @commonIP, align 8
  store i32** %88, i32*** @MSalign11.ijp, align 8
  %89 = load float*, float** @MSalign11.w1, align 8
  store float* %89, float** %currentw, align 8
  %90 = load float*, float** @MSalign11.w2, align 8
  store float* %90, float** %previousw, align 8
  %91 = load float*, float** @MSalign11.initverticalw, align 8
  %92 = load i8**, i8*** %seq2.addr, align 8
  %93 = load i8**, i8*** %seq1.addr, align 8
  %94 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %91, i8** %92, i8** %93, i32 0, i32 %94)
  %95 = load float*, float** %currentw, align 8
  %96 = load i8**, i8*** %seq1.addr, align 8
  %97 = load i8**, i8*** %seq2.addr, align 8
  %98 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %95, i8** %96, i8** %97, i32 0, i32 %98)
  %99 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx116 = getelementptr inbounds float, float* %99, i64 0
  %100 = load float, float* %arrayidx116, align 4
  %101 = load float**, float*** @MSalign11.WMMTX, align 8
  %arrayidx117 = getelementptr inbounds float*, float** %101, i64 0
  %102 = load float*, float** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds float, float* %102, i64 0
  store float %100, float* %arrayidx118, align 4
  %103 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx119 = getelementptr inbounds float, float* %103, i64 0
  %104 = load float, float* %arrayidx119, align 4
  %105 = load float*, float** %maxinh, align 8
  %arrayidx120 = getelementptr inbounds float, float* %105, i64 0
  store float %104, float* %arrayidx120, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.115
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %lgth1, align 4
  %add121 = add nsw i32 %107, 1
  %cmp122 = icmp slt i32 %106, %add121
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load float, float* %fpenalty, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom = sext i32 %109 to i64
  %110 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx124 = getelementptr inbounds float, float* %110, i64 %idxprom
  %111 = load float, float* %arrayidx124, align 4
  %add125 = fadd float %111, %108
  store float %add125, float* %arrayidx124, align 4
  %112 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %112 to i64
  %113 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx127 = getelementptr inbounds float, float* %113, i64 %idxprom126
  %114 = load float, float* %arrayidx127, align 4
  %115 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %115 to i64
  %116 = load float**, float*** @MSalign11.WMMTX, align 8
  %arrayidx129 = getelementptr inbounds float*, float** %116, i64 %idxprom128
  %117 = load float*, float** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds float, float* %117, i64 0
  store float %114, float* %arrayidx130, align 4
  %118 = load float*, float** %maxinh, align 8
  %arrayidx131 = getelementptr inbounds float, float* %118, i64 0
  %119 = load float, float* %arrayidx131, align 4
  %120 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %120 to i64
  %121 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx133 = getelementptr inbounds float, float* %121, i64 %idxprom132
  %122 = load float, float* %arrayidx133, align 4
  %cmp134 = fcmp olt float %119, %122
  br i1 %cmp134, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %for.body
  %123 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %123 to i64
  %124 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx138 = getelementptr inbounds float, float* %124, i64 %idxprom137
  %125 = load float, float* %arrayidx138, align 4
  %126 = load float*, float** %maxinh, align 8
  %arrayidx139 = getelementptr inbounds float, float* %126, i64 0
  store float %125, float* %arrayidx139, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.136, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.140
  %127 = load i32, i32* %i, align 4
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %128 = load float*, float** %currentw, align 8
  %arrayidx141 = getelementptr inbounds float, float* %128, i64 0
  %129 = load float, float* %arrayidx141, align 4
  %130 = load float*, float** %maxinw, align 8
  %arrayidx142 = getelementptr inbounds float, float* %130, i64 0
  store float %129, float* %arrayidx142, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.166, %for.end
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %lgth2, align 4
  %add144 = add nsw i32 %132, 1
  %cmp145 = icmp slt i32 %131, %add144
  br i1 %cmp145, label %for.body.147, label %for.end.168

for.body.147:                                     ; preds = %for.cond.143
  %133 = load float, float* %fpenalty, align 4
  %134 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %134 to i64
  %135 = load float*, float** %currentw, align 8
  %arrayidx149 = getelementptr inbounds float, float* %135, i64 %idxprom148
  %136 = load float, float* %arrayidx149, align 4
  %add150 = fadd float %136, %133
  store float %add150, float* %arrayidx149, align 4
  %137 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %137 to i64
  %138 = load float*, float** %currentw, align 8
  %arrayidx152 = getelementptr inbounds float, float* %138, i64 %idxprom151
  %139 = load float, float* %arrayidx152, align 4
  %140 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %140 to i64
  %141 = load float**, float*** @MSalign11.WMMTX, align 8
  %arrayidx154 = getelementptr inbounds float*, float** %141, i64 0
  %142 = load float*, float** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds float, float* %142, i64 %idxprom153
  store float %139, float* %arrayidx155, align 4
  %143 = load float*, float** %maxinw, align 8
  %arrayidx156 = getelementptr inbounds float, float* %143, i64 0
  %144 = load float, float* %arrayidx156, align 4
  %145 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %145 to i64
  %146 = load float*, float** %currentw, align 8
  %arrayidx158 = getelementptr inbounds float, float* %146, i64 %idxprom157
  %147 = load float, float* %arrayidx158, align 4
  %cmp159 = fcmp olt float %144, %147
  br i1 %cmp159, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %for.body.147
  %148 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %148 to i64
  %149 = load float*, float** %currentw, align 8
  %arrayidx163 = getelementptr inbounds float, float* %149, i64 %idxprom162
  %150 = load float, float* %arrayidx163, align 4
  %151 = load float*, float** %maxinw, align 8
  %arrayidx164 = getelementptr inbounds float, float* %151, i64 0
  store float %150, float* %arrayidx164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %for.body.147
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %152 = load i32, i32* %j, align 4
  %inc167 = add nsw i32 %152, 1
  store i32 %inc167, i32* %j, align 4
  br label %for.cond.143

for.end.168:                                      ; preds = %for.cond.143
  store i32 1, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.181, %for.end.168
  %153 = load i32, i32* %j, align 4
  %154 = load i32, i32* %lgth2, align 4
  %add170 = add nsw i32 %154, 1
  %cmp171 = icmp slt i32 %153, %add170
  br i1 %cmp171, label %for.body.173, label %for.end.183

for.body.173:                                     ; preds = %for.cond.169
  %155 = load i32, i32* %j, align 4
  %sub174 = sub nsw i32 %155, 1
  %idxprom175 = sext i32 %sub174 to i64
  %156 = load float*, float** %currentw, align 8
  %arrayidx176 = getelementptr inbounds float, float* %156, i64 %idxprom175
  %157 = load float, float* %arrayidx176, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %158 to i64
  %159 = load float*, float** @MSalign11.m, align 8
  %arrayidx178 = getelementptr inbounds float, float* %159, i64 %idxprom177
  store float %157, float* %arrayidx178, align 4
  %160 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %160 to i64
  %161 = load i32*, i32** @MSalign11.mp, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %161, i64 %idxprom179
  store i32 0, i32* %arrayidx180, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.173
  %162 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %162, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.169

for.end.183:                                      ; preds = %for.cond.169
  %163 = load i32, i32* %lgth2, align 4
  %sub184 = sub nsw i32 %163, 1
  %idxprom185 = sext i32 %sub184 to i64
  %164 = load float*, float** %currentw, align 8
  %arrayidx186 = getelementptr inbounds float, float* %164, i64 %idxprom185
  %165 = load float, float* %arrayidx186, align 4
  %166 = load float*, float** @MSalign11.lastverticalw, align 8
  %arrayidx187 = getelementptr inbounds float, float* %166, i64 0
  store float %165, float* %arrayidx187, align 4
  %167 = load i32, i32* %lgth1, align 4
  %add188 = add nsw i32 %167, 1
  store i32 %add188, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.277, %for.end.183
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %lasti, align 4
  %cmp190 = icmp slt i32 %168, %169
  br i1 %cmp190, label %for.body.192, label %for.end.279

for.body.192:                                     ; preds = %for.cond.189
  %170 = load float*, float** %previousw, align 8
  store float* %170, float** %wtmp, align 8
  %171 = load float*, float** %currentw, align 8
  store float* %171, float** %previousw, align 8
  %172 = load float*, float** %wtmp, align 8
  store float* %172, float** %currentw, align 8
  %173 = load i32, i32* %i, align 4
  %sub193 = sub nsw i32 %173, 1
  %idxprom194 = sext i32 %sub193 to i64
  %174 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx195 = getelementptr inbounds float, float* %174, i64 %idxprom194
  %175 = load float, float* %arrayidx195, align 4
  %176 = load float*, float** %previousw, align 8
  %arrayidx196 = getelementptr inbounds float, float* %176, i64 0
  store float %175, float* %arrayidx196, align 4
  %177 = load float*, float** %currentw, align 8
  %178 = load i8**, i8*** %seq1.addr, align 8
  %179 = load i8**, i8*** %seq2.addr, align 8
  %180 = load i32, i32* %i, align 4
  %181 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %177, i8** %178, i8** %179, i32 %180, i32 %181)
  %182 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %182 to i64
  %183 = load float*, float** @MSalign11.initverticalw, align 8
  %arrayidx198 = getelementptr inbounds float, float* %183, i64 %idxprom197
  %184 = load float, float* %arrayidx198, align 4
  %185 = load float*, float** %currentw, align 8
  %arrayidx199 = getelementptr inbounds float, float* %185, i64 0
  store float %184, float* %arrayidx199, align 4
  %186 = load float*, float** %previousw, align 8
  %arrayidx200 = getelementptr inbounds float, float* %186, i64 0
  %187 = load float, float* %arrayidx200, align 4
  store float %187, float* @MSalign11.mi, align 4
  store i32 0, i32* @MSalign11.mpi, align 4
  %188 = load float*, float** %maxinw, align 8
  %189 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %189 to i64
  %add.ptr = getelementptr inbounds float, float* %188, i64 %idx.ext
  store float* %add.ptr, float** %maxinwpt, align 8
  %190 = load float*, float** %currentw, align 8
  %arrayidx201 = getelementptr inbounds float, float* %190, i64 0
  %191 = load float, float* %arrayidx201, align 4
  %192 = load float*, float** %maxinwpt, align 8
  store float %191, float* %192, align 4
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %194 = load float*, float** %currentw, align 8
  %arrayidx202 = getelementptr inbounds float, float* %194, i64 0
  %195 = load float, float* %arrayidx202, align 4
  %conv203 = fpext float %195 to double
  %196 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %196 to i64
  %197 = load float*, float** %maxinw, align 8
  %arrayidx205 = getelementptr inbounds float, float* %197, i64 %idxprom204
  %198 = load float, float* %arrayidx205, align 4
  %conv206 = fpext float %198 to double
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), double %conv203, double %conv206)
  %199 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %199 to i64
  %200 = load i32**, i32*** @MSalign11.ijp, align 8
  %arrayidx209 = getelementptr inbounds i32*, i32** %200, i64 %idxprom208
  %201 = load i32*, i32** %arrayidx209, align 8
  %add.ptr210 = getelementptr inbounds i32, i32* %201, i64 1
  store i32* %add.ptr210, i32** %ijppt, align 8
  %202 = load float*, float** @MSalign11.m, align 8
  %add.ptr211 = getelementptr inbounds float, float* %202, i64 1
  store float* %add.ptr211, float** %mjpt, align 8
  %203 = load float*, float** %previousw, align 8
  store float* %203, float** %prept, align 8
  %204 = load float*, float** %currentw, align 8
  %add.ptr212 = getelementptr inbounds float, float* %204, i64 1
  store float* %add.ptr212, float** %curpt, align 8
  %205 = load i32*, i32** @MSalign11.mp, align 8
  %add.ptr213 = getelementptr inbounds i32, i32* %205, i64 1
  store i32* %add.ptr213, i32** %mpjpt, align 8
  %206 = load i32, i32* %lgth2, align 4
  %add214 = add nsw i32 %206, 1
  store i32 %add214, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.269, %for.body.192
  %207 = load i32, i32* %j, align 4
  %208 = load i32, i32* %lastj, align 4
  %cmp216 = icmp slt i32 %207, %208
  br i1 %cmp216, label %for.body.218, label %for.end.271

for.body.218:                                     ; preds = %for.cond.215
  %209 = load float*, float** %prept, align 8
  %210 = load float, float* %209, align 4
  store float %210, float* %wm, align 4
  %211 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %211, align 4
  %212 = load float, float* @MSalign11.mi, align 4
  %213 = load float, float* %fpenalty, align 4
  %add219 = fadd float %212, %213
  store float %add219, float* %g, align 4
  %214 = load float, float* %g, align 4
  %215 = load float, float* %wm, align 4
  %cmp220 = fcmp ogt float %214, %215
  br i1 %cmp220, label %if.then.222, label %if.end.225

if.then.222:                                      ; preds = %for.body.218
  %216 = load float, float* %g, align 4
  store float %216, float* %wm, align 4
  %217 = load i32, i32* %j, align 4
  %218 = load i32, i32* @MSalign11.mpi, align 4
  %sub223 = sub nsw i32 %217, %218
  %sub224 = sub nsw i32 0, %sub223
  %219 = load i32*, i32** %ijppt, align 8
  store i32 %sub224, i32* %219, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.222, %for.body.218
  %220 = load float*, float** %prept, align 8
  %221 = load float, float* %220, align 4
  store float %221, float* %g, align 4
  %222 = load float, float* %g, align 4
  %223 = load float, float* @MSalign11.mi, align 4
  %cmp226 = fcmp oge float %222, %223
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.end.225
  %224 = load float, float* %g, align 4
  store float %224, float* @MSalign11.mi, align 4
  %225 = load i32, i32* %j, align 4
  %sub229 = sub nsw i32 %225, 1
  store i32 %sub229, i32* @MSalign11.mpi, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.end.225
  %226 = load float*, float** %mjpt, align 8
  %227 = load float, float* %226, align 4
  %228 = load float, float* %fpenalty, align 4
  %add231 = fadd float %227, %228
  store float %add231, float* %g, align 4
  %229 = load float, float* %g, align 4
  %230 = load float, float* %wm, align 4
  %cmp232 = fcmp ogt float %229, %230
  br i1 %cmp232, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %if.end.230
  %231 = load float, float* %g, align 4
  store float %231, float* %wm, align 4
  %232 = load i32, i32* %i, align 4
  %233 = load i32*, i32** %mpjpt, align 8
  %234 = load i32, i32* %233, align 4
  %sub235 = sub nsw i32 %232, %234
  %235 = load i32*, i32** %ijppt, align 8
  store i32 %sub235, i32* %235, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.234, %if.end.230
  %236 = load float*, float** %prept, align 8
  %237 = load float, float* %236, align 4
  store float %237, float* %g, align 4
  %238 = load float, float* %g, align 4
  %239 = load float*, float** %mjpt, align 8
  %240 = load float, float* %239, align 4
  %cmp237 = fcmp oge float %238, %240
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.end.236
  %241 = load float, float* %g, align 4
  %242 = load float*, float** %mjpt, align 8
  store float %241, float* %242, align 4
  %243 = load i32, i32* %i, align 4
  %sub240 = sub nsw i32 %243, 1
  %244 = load i32*, i32** %mpjpt, align 8
  store i32 %sub240, i32* %244, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.236
  %245 = load float, float* %wm, align 4
  %246 = load float*, float** %curpt, align 8
  %247 = load float, float* %246, align 4
  %add242 = fadd float %247, %245
  store float %add242, float* %246, align 4
  %248 = load float*, float** %curpt, align 8
  %249 = load float, float* %248, align 4
  %250 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %250 to i64
  %251 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %251 to i64
  %252 = load float**, float*** @MSalign11.WMMTX, align 8
  %arrayidx245 = getelementptr inbounds float*, float** %252, i64 %idxprom244
  %253 = load float*, float** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds float, float* %253, i64 %idxprom243
  store float %249, float* %arrayidx246, align 4
  %254 = load i32, i32* %j, align 4
  %255 = load i32, i32* %lgth2, align 4
  %cmp247 = icmp slt i32 %254, %255
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.253

land.lhs.true.249:                                ; preds = %if.end.241
  %256 = load float*, float** %maxinwpt, align 8
  %257 = load float, float* %256, align 4
  %258 = load float*, float** %curpt, align 8
  %259 = load float, float* %258, align 4
  %cmp250 = fcmp olt float %257, %259
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %land.lhs.true.249
  %260 = load float*, float** %curpt, align 8
  %261 = load float, float* %260, align 4
  %262 = load float*, float** %maxinwpt, align 8
  store float %261, float* %262, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %land.lhs.true.249, %if.end.241
  %263 = load i32, i32* %j, align 4
  %264 = load i32, i32* %lgth2, align 4
  %cmp254 = icmp slt i32 %263, %264
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.264

land.lhs.true.256:                                ; preds = %if.end.253
  %265 = load i32, i32* %j, align 4
  %idxprom257 = sext i32 %265 to i64
  %266 = load float*, float** %maxinh, align 8
  %arrayidx258 = getelementptr inbounds float, float* %266, i64 %idxprom257
  %267 = load float, float* %arrayidx258, align 4
  %268 = load float*, float** %curpt, align 8
  %269 = load float, float* %268, align 4
  %cmp259 = fcmp olt float %267, %269
  br i1 %cmp259, label %if.then.261, label %if.end.264

if.then.261:                                      ; preds = %land.lhs.true.256
  %270 = load float*, float** %curpt, align 8
  %271 = load float, float* %270, align 4
  %272 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %272 to i64
  %273 = load float*, float** %maxinh, align 8
  %arrayidx263 = getelementptr inbounds float, float* %273, i64 %idxprom262
  store float %271, float* %arrayidx263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %land.lhs.true.256, %if.end.253
  %274 = load i32*, i32** %ijppt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %incdec.ptr, i32** %ijppt, align 8
  %275 = load float*, float** %mjpt, align 8
  %incdec.ptr265 = getelementptr inbounds float, float* %275, i32 1
  store float* %incdec.ptr265, float** %mjpt, align 8
  %276 = load float*, float** %prept, align 8
  %incdec.ptr266 = getelementptr inbounds float, float* %276, i32 1
  store float* %incdec.ptr266, float** %prept, align 8
  %277 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr267 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %incdec.ptr267, i32** %mpjpt, align 8
  %278 = load float*, float** %curpt, align 8
  %incdec.ptr268 = getelementptr inbounds float, float* %278, i32 1
  store float* %incdec.ptr268, float** %curpt, align 8
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.264
  %279 = load i32, i32* %j, align 4
  %inc270 = add nsw i32 %279, 1
  store i32 %inc270, i32* %j, align 4
  br label %for.cond.215

for.end.271:                                      ; preds = %for.cond.215
  %280 = load i32, i32* %lgth2, align 4
  %sub272 = sub nsw i32 %280, 1
  %idxprom273 = sext i32 %sub272 to i64
  %281 = load float*, float** %currentw, align 8
  %arrayidx274 = getelementptr inbounds float, float* %281, i64 %idxprom273
  %282 = load float, float* %arrayidx274, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %283 to i64
  %284 = load float*, float** @MSalign11.lastverticalw, align 8
  %arrayidx276 = getelementptr inbounds float, float* %284, i64 %idxprom275
  store float %282, float* %arrayidx276, align 4
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.end.271
  %285 = load i32, i32* %i, align 4
  %inc278 = add nsw i32 %285, 1
  store i32 %inc278, i32* %i, align 4
  br label %for.cond.189

for.end.279:                                      ; preds = %for.cond.189
  store float 0xC08F3F3340000000, float* %wmmax, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.291, %for.end.279
  %286 = load i32, i32* %i, align 4
  %287 = load i32, i32* %lgth1, align 4
  %cmp281 = icmp slt i32 %286, %287
  br i1 %cmp281, label %for.body.283, label %for.end.293

for.body.283:                                     ; preds = %for.cond.280
  %288 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %288 to i64
  %289 = load float*, float** @MSalign11.lastverticalw, align 8
  %arrayidx285 = getelementptr inbounds float, float* %289, i64 %idxprom284
  %290 = load float, float* %arrayidx285, align 4
  store float %290, float* %g, align 4
  %291 = load float, float* %g, align 4
  %292 = load float, float* %wmmax, align 4
  %cmp286 = fcmp ogt float %291, %292
  br i1 %cmp286, label %if.then.288, label %if.end.290

if.then.288:                                      ; preds = %for.body.283
  %293 = load float, float* %g, align 4
  store float %293, float* %wmmax, align 4
  %294 = load i32, i32* %i, align 4
  store i32 %294, i32* %iin, align 4
  %295 = load i32, i32* %lgth2, align 4
  %sub289 = sub nsw i32 %295, 1
  store i32 %sub289, i32* %jin, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %for.body.283
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290
  %296 = load i32, i32* %i, align 4
  %inc292 = add nsw i32 %296, 1
  store i32 %inc292, i32* %i, align 4
  br label %for.cond.280

for.end.293:                                      ; preds = %for.cond.280
  store i32 0, i32* %j, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.305, %for.end.293
  %297 = load i32, i32* %j, align 4
  %298 = load i32, i32* %lgth2, align 4
  %cmp295 = icmp slt i32 %297, %298
  br i1 %cmp295, label %for.body.297, label %for.end.307

for.body.297:                                     ; preds = %for.cond.294
  %299 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %299 to i64
  %300 = load float*, float** %currentw, align 8
  %arrayidx299 = getelementptr inbounds float, float* %300, i64 %idxprom298
  %301 = load float, float* %arrayidx299, align 4
  store float %301, float* %g, align 4
  %302 = load float, float* %g, align 4
  %303 = load float, float* %wmmax, align 4
  %cmp300 = fcmp ogt float %302, %303
  br i1 %cmp300, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %for.body.297
  %304 = load float, float* %g, align 4
  store float %304, float* %wmmax, align 4
  %305 = load i32, i32* %lgth1, align 4
  %sub303 = sub nsw i32 %305, 1
  store i32 %sub303, i32* %iin, align 4
  %306 = load i32, i32* %j, align 4
  store i32 %306, i32* %jin, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %for.body.297
  br label %for.inc.305

for.inc.305:                                      ; preds = %if.end.304
  %307 = load i32, i32* %j, align 4
  %inc306 = add nsw i32 %307, 1
  store i32 %inc306, i32* %j, align 4
  br label %for.cond.294

for.end.307:                                      ; preds = %for.cond.294
  store i32 0, i32* %i, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.316, %for.end.307
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* %lgth1, align 4
  %cmp309 = icmp slt i32 %308, %309
  br i1 %cmp309, label %for.body.311, label %for.end.318

for.body.311:                                     ; preds = %for.cond.308
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %311 = load i32, i32* %i, align 4
  %312 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %312 to i64
  %313 = load float*, float** %maxinw, align 8
  %arrayidx313 = getelementptr inbounds float, float* %313, i64 %idxprom312
  %314 = load float, float* %arrayidx313, align 4
  %conv314 = fpext float %314 to double
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %311, double %conv314)
  br label %for.inc.316

for.inc.316:                                      ; preds = %for.body.311
  %315 = load i32, i32* %i, align 4
  %inc317 = add nsw i32 %315, 1
  store i32 %inc317, i32* %i, align 4
  br label %for.cond.308

for.end.318:                                      ; preds = %for.cond.308
  store i32 0, i32* %j, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.327, %for.end.318
  %316 = load i32, i32* %j, align 4
  %317 = load i32, i32* %lgth2, align 4
  %cmp320 = icmp slt i32 %316, %317
  br i1 %cmp320, label %for.body.322, label %for.end.329

for.body.322:                                     ; preds = %for.cond.319
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %319 = load i32, i32* %j, align 4
  %320 = load i32, i32* %j, align 4
  %idxprom323 = sext i32 %320 to i64
  %321 = load float*, float** %maxinh, align 8
  %arrayidx324 = getelementptr inbounds float, float* %321, i64 %idxprom323
  %322 = load float, float* %arrayidx324, align 4
  %conv325 = fpext float %322 to double
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %319, double %conv325)
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.body.322
  %323 = load i32, i32* %j, align 4
  %inc328 = add nsw i32 %323, 1
  store i32 %inc328, i32* %j, align 4
  br label %for.cond.319

for.end.329:                                      ; preds = %for.cond.319
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %325 = load float, float* %wmmax, align 4
  %conv330 = fpext float %325 to double
  %326 = load i32, i32* %iin, align 4
  %327 = load i32, i32* %jin, align 4
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), double %conv330, i32 %326, i32 %327)
  %328 = load i32, i32* %iin, align 4
  %329 = load i32, i32* %lgth1, align 4
  %sub332 = sub nsw i32 %329, 1
  %cmp333 = icmp eq i32 %328, %sub332
  br i1 %cmp333, label %land.lhs.true.335, label %if.else

land.lhs.true.335:                                ; preds = %for.end.329
  %330 = load i32, i32* %jin, align 4
  %331 = load i32, i32* %lgth2, align 4
  %sub336 = sub nsw i32 %331, 1
  %cmp337 = icmp eq i32 %330, %sub336
  br i1 %cmp337, label %if.then.339, label %if.else

if.then.339:                                      ; preds = %land.lhs.true.335
  br label %if.end.341

if.else:                                          ; preds = %land.lhs.true.335, %for.end.329
  %332 = load float, float* %fpenalty, align 4
  %333 = load float, float* %wmmax, align 4
  %add340 = fadd float %333, %332
  store float %add340, float* %wmmax, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %if.else, %if.then.339
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %335 = load float, float* %wmmax, align 4
  %conv342 = fpext float %335 to double
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), double %conv342)
  %336 = load i32, i32* %lgth1, align 4
  %337 = load i32, i32* %lgth2, align 4
  %add344 = add nsw i32 %336, %337
  %338 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx345 = getelementptr inbounds i8*, i8** %338, i64 0
  %339 = load i8*, i8** %arrayidx345, align 8
  %idx.ext346 = sext i32 %add344 to i64
  %add.ptr347 = getelementptr inbounds i8, i8* %339, i64 %idx.ext346
  store i8* %add.ptr347, i8** %arrayidx345, align 8
  %340 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx348 = getelementptr inbounds i8*, i8** %340, i64 0
  %341 = load i8*, i8** %arrayidx348, align 8
  store i8 0, i8* %341, align 1
  %342 = load i32, i32* %lgth1, align 4
  %343 = load i32, i32* %lgth2, align 4
  %add349 = add nsw i32 %342, %343
  %344 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx350 = getelementptr inbounds i8*, i8** %344, i64 0
  %345 = load i8*, i8** %arrayidx350, align 8
  %idx.ext351 = sext i32 %add349 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %345, i64 %idx.ext351
  store i8* %add.ptr352, i8** %arrayidx350, align 8
  %346 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx353 = getelementptr inbounds i8*, i8** %346, i64 0
  %347 = load i8*, i8** %arrayidx353, align 8
  store i8 0, i8* %347, align 1
  %348 = load float**, float*** @MSalign11.WMMTX, align 8
  %349 = load float, float* %wmmax, align 4
  %350 = load float*, float** %maxinw, align 8
  %351 = load float*, float** %maxinh, align 8
  %352 = load i32, i32* %lgth1, align 4
  %353 = load i32, i32* %lgth2, align 4
  %354 = load i32, i32* %alloclen.addr, align 4
  %355 = load float*, float** @MSalign11.w1, align 8
  %356 = load float*, float** @MSalign11.w2, align 8
  %357 = load float*, float** @MSalign11.initverticalw, align 8
  %358 = load float*, float** @MSalign11.m, align 8
  %359 = load i32*, i32** @MSalign11.mp, align 8
  %360 = load i32, i32* %iin, align 4
  %361 = load i32, i32* %jin, align 4
  %362 = load i8**, i8*** %seq1.addr, align 8
  %363 = load i8**, i8*** %seq2.addr, align 8
  %364 = load i8**, i8*** @MSalign11.mseq1, align 8
  %365 = load i8**, i8*** @MSalign11.mseq2, align 8
  call void @backdp(float** %348, float %349, float* %350, float* %351, i32 %352, i32 %353, i32 %354, float* %355, float* %356, float* %357, float* %358, i32* %359, i32 %360, i32 %361, i8** %362, i8** %363, i8** %364, i8** %365)
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %369 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx356 = getelementptr inbounds i8*, i8** %369, i64 0
  %370 = load i8*, i8** %arrayidx356, align 8
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %368, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %370)
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %372 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx358 = getelementptr inbounds i8*, i8** %372, i64 0
  %373 = load i8*, i8** %arrayidx358, align 8
  %call359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %371, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %373)
  %374 = load i8**, i8*** @MSalign11.mseq, align 8
  %arrayidx360 = getelementptr inbounds i8*, i8** %374, i64 0
  %375 = load i8*, i8** %arrayidx360, align 8
  %376 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx361 = getelementptr inbounds i8*, i8** %376, i64 0
  store i8* %375, i8** %arrayidx361, align 8
  %377 = load i8**, i8*** @MSalign11.mseq, align 8
  %arrayidx362 = getelementptr inbounds i8*, i8** %377, i64 1
  %378 = load i8*, i8** %arrayidx362, align 8
  %379 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx363 = getelementptr inbounds i8*, i8** %379, i64 0
  store i8* %378, i8** %arrayidx363, align 8
  %380 = load i32, i32* %lgth1, align 4
  %381 = load i32, i32* %lgth2, align 4
  %add364 = add nsw i32 %380, %381
  %382 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx365 = getelementptr inbounds i8*, i8** %382, i64 0
  %383 = load i8*, i8** %arrayidx365, align 8
  %idx.ext366 = sext i32 %add364 to i64
  %add.ptr367 = getelementptr inbounds i8, i8* %383, i64 %idx.ext366
  store i8* %add.ptr367, i8** %arrayidx365, align 8
  %384 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx368 = getelementptr inbounds i8*, i8** %384, i64 0
  %385 = load i8*, i8** %arrayidx368, align 8
  store i8 0, i8* %385, align 1
  %386 = load i32, i32* %lgth1, align 4
  %387 = load i32, i32* %lgth2, align 4
  %add369 = add nsw i32 %386, %387
  %388 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx370 = getelementptr inbounds i8*, i8** %388, i64 0
  %389 = load i8*, i8** %arrayidx370, align 8
  %idx.ext371 = sext i32 %add369 to i64
  %add.ptr372 = getelementptr inbounds i8, i8* %389, i64 %idx.ext371
  store i8* %add.ptr372, i8** %arrayidx370, align 8
  %390 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx373 = getelementptr inbounds i8*, i8** %390, i64 0
  %391 = load i8*, i8** %arrayidx373, align 8
  store i8 0, i8* %391, align 1
  %392 = load float*, float** %currentw, align 8
  %393 = load float*, float** @MSalign11.lastverticalw, align 8
  %394 = load i8**, i8*** %seq1.addr, align 8
  %395 = load i8**, i8*** %seq2.addr, align 8
  %396 = load i8**, i8*** @MSalign11.mseq1, align 8
  %397 = load i8**, i8*** @MSalign11.mseq2, align 8
  %398 = load float**, float*** @MSalign11.cpmx1, align 8
  %399 = load float**, float*** @MSalign11.cpmx2, align 8
  %400 = load i32**, i32*** @MSalign11.ijp, align 8
  %call374 = call float @Atracking(float* %392, float* %393, i8** %394, i8** %395, i8** %396, i8** %397, float** %398, float** %399, i32** %400)
  %401 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx375 = getelementptr inbounds i8*, i8** %401, i64 0
  %402 = load i8*, i8** %arrayidx375, align 8
  %call376 = call i64 @strlen(i8* %402) #5
  %conv377 = trunc i64 %call376 to i32
  store i32 %conv377, i32* %resultlen, align 4
  %403 = load i32, i32* %alloclen.addr, align 4
  %404 = load i32, i32* %resultlen, align 4
  %cmp378 = icmp slt i32 %403, %404
  br i1 %cmp378, label %if.then.383, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %if.end.341
  %405 = load i32, i32* %resultlen, align 4
  %cmp381 = icmp sgt i32 %405, 5000000
  br i1 %cmp381, label %if.then.383, label %if.end.385

if.then.383:                                      ; preds = %lor.lhs.false.380, %if.end.341
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %407 = load i32, i32* %alloclen.addr, align 4
  %408 = load i32, i32* %resultlen, align 4
  %call384 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %406, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i32 %407, i32 %408, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.383, %lor.lhs.false.380
  %409 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx386 = getelementptr inbounds i8*, i8** %409, i64 0
  %410 = load i8*, i8** %arrayidx386, align 8
  %411 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx387 = getelementptr inbounds i8*, i8** %411, i64 0
  %412 = load i8*, i8** %arrayidx387, align 8
  %call388 = call i8* @strcpy(i8* %410, i8* %412) #4
  %413 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx389 = getelementptr inbounds i8*, i8** %413, i64 0
  %414 = load i8*, i8** %arrayidx389, align 8
  %415 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx390 = getelementptr inbounds i8*, i8** %415, i64 0
  %416 = load i8*, i8** %arrayidx390, align 8
  %call391 = call i8* @strcpy(i8* %414, i8* %416) #4
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %419 = load i8**, i8*** @MSalign11.mseq1, align 8
  %arrayidx393 = getelementptr inbounds i8*, i8** %419, i64 0
  %420 = load i8*, i8** %arrayidx393, align 8
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %418, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %420)
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %422 = load i8**, i8*** @MSalign11.mseq2, align 8
  %arrayidx395 = getelementptr inbounds i8*, i8** %422, i64 0
  %423 = load i8*, i8** %arrayidx395, align 8
  %call396 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %421, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %423)
  %424 = load float, float* %wm, align 4
  ret float %424
}

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @FreeFloatVec(float*) #1

declare void @FreeIntVec(i32*) #1

declare void @FreeCharMtx(i8**) #1

declare void @FreeFloatMtx(float**) #1

declare void @FreeIntMtx(i32**) #1

declare float* @AllocateFloatVec(i32) #1

declare i32* @AllocateIntVec(i32) #1

declare float** @AllocateFloatMtx(i32, i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @Atracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijp) #0 {
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
  %limk = alloca i32, align 4
  %gap = alloca [2 x i8], align 1
  store float* %lasthorizontalw, float** %lasthorizontalw.addr, align 8
  store float* %lastverticalw, float** %lastverticalw.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Atracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %lgth1, align 4
  %add = add nsw i32 %6, 1
  %cmp = icmp slt i32 %5, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %7, 1
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %add5, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %for.end
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %lgth2, align 4
  %add9 = add nsw i32 %13, 1
  %cmp10 = icmp slt i32 %12, %add9
  br i1 %cmp10, label %for.body.12, label %for.end.19

for.body.12:                                      ; preds = %for.cond.8
  %14 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %14, 1
  %sub = sub nsw i32 0, %add13
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %16, i64 0
  %17 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  store i32 %sub, i32* %arrayidx16, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.12
  %18 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %for.cond.8
  %19 = load i32, i32* %lgth1, align 4
  %20 = load i32, i32* %lgth2, align 4
  %add20 = add nsw i32 %19, %20
  %21 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx21, align 8
  %idx.ext = sext i32 %add20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx21, align 8
  %23 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %23, i64 0
  %24 = load i8*, i8** %arrayidx22, align 8
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %lgth1, align 4
  %26 = load i32, i32* %lgth2, align 4
  %add23 = add nsw i32 %25, %26
  %27 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx24, align 8
  %idx.ext25 = sext i32 %add23 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %28, i64 %idx.ext25
  store i8* %add.ptr26, i8** %arrayidx24, align 8
  %29 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx27, align 8
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %lgth1, align 4
  store i32 %31, i32* %iin, align 4
  %32 = load i32, i32* %lgth2, align 4
  store i32 %32, i32* %jin, align 4
  %33 = load i32, i32* %lgth1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %add28 = add nsw i32 %33, %34
  %add29 = add nsw i32 %add28, 1
  store i32 %add29, i32* %limk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.105, %for.end.19
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %limk, align 4
  %cmp31 = icmp slt i32 %35, %36
  br i1 %cmp31, label %for.body.33, label %for.end.107

for.body.33:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %jin, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load i32, i32* %iin, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %39, i64 %idxprom35
  %40 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i64 %idxprom34
  %41 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp slt i32 %41, 0
  br i1 %cmp38, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.33
  %42 = load i32, i32* %iin, align 4
  %sub40 = sub nsw i32 %42, 1
  store i32 %sub40, i32* %ifi, align 4
  %43 = load i32, i32* %jin, align 4
  %44 = load i32, i32* %jin, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load i32, i32* %iin, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %46, i64 %idxprom42
  %47 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %47, i64 %idxprom41
  %48 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %43, %48
  store i32 %add45, i32* %jfi, align 4
  br label %if.end.62

if.else:                                          ; preds = %for.body.33
  %49 = load i32, i32* %jin, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load i32, i32* %iin, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %51, i64 %idxprom47
  %52 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %52, i64 %idxprom46
  %53 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sgt i32 %53, 0
  br i1 %cmp50, label %if.then.52, label %if.else.59

if.then.52:                                       ; preds = %if.else
  %54 = load i32, i32* %iin, align 4
  %55 = load i32, i32* %jin, align 4
  %idxprom53 = sext i32 %55 to i64
  %56 = load i32, i32* %iin, align 4
  %idxprom54 = sext i32 %56 to i64
  %57 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %57, i64 %idxprom54
  %58 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  %59 = load i32, i32* %arrayidx56, align 4
  %sub57 = sub nsw i32 %54, %59
  store i32 %sub57, i32* %ifi, align 4
  %60 = load i32, i32* %jin, align 4
  %sub58 = sub nsw i32 %60, 1
  store i32 %sub58, i32* %jfi, align 4
  br label %if.end

if.else.59:                                       ; preds = %if.else
  %61 = load i32, i32* %iin, align 4
  %sub60 = sub nsw i32 %61, 1
  store i32 %sub60, i32* %ifi, align 4
  %62 = load i32, i32* %jin, align 4
  %sub61 = sub nsw i32 %62, 1
  store i32 %sub61, i32* %jfi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.59, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %if.then
  %63 = load i32, i32* %iin, align 4
  %64 = load i32, i32* %ifi, align 4
  %sub63 = sub nsw i32 %63, %64
  store i32 %sub63, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.62
  %65 = load i32, i32* %l, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i32, i32* %ifi, align 4
  %67 = load i32, i32* %l, align 4
  %add64 = add nsw i32 %66, %67
  %idxprom65 = sext i32 %add64 to i64
  %68 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %68, i64 0
  %69 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %69, i64 %idxprom65
  %70 = load i8, i8* %arrayidx67, align 1
  %71 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %71, i64 0
  %72 = load i8*, i8** %arrayidx68, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx68, align 8
  store i8 %70, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %73 = load i8, i8* %arraydecay, align 1
  %74 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx69, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr70, i8** %arrayidx69, align 8
  store i8 %73, i8* %incdec.ptr70, align 1
  %76 = load i32, i32* %k, align 4
  %inc71 = add nsw i32 %76, 1
  store i32 %inc71, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load i32, i32* %jin, align 4
  %78 = load i32, i32* %jfi, align 4
  %sub72 = sub nsw i32 %77, %78
  store i32 %sub72, i32* %l, align 4
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.76, %while.end
  %79 = load i32, i32* %l, align 4
  %dec74 = add nsw i32 %79, -1
  store i32 %dec74, i32* %l, align 4
  %tobool75 = icmp ne i32 %dec74, 0
  br i1 %tobool75, label %while.body.76, label %while.end.87

while.body.76:                                    ; preds = %while.cond.73
  %arraydecay77 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %80 = load i8, i8* %arraydecay77, align 1
  %81 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %81, i64 0
  %82 = load i8*, i8** %arrayidx78, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %incdec.ptr79, i8** %arrayidx78, align 8
  store i8 %80, i8* %incdec.ptr79, align 1
  %83 = load i32, i32* %jfi, align 4
  %84 = load i32, i32* %l, align 4
  %add80 = add nsw i32 %83, %84
  %idxprom81 = sext i32 %add80 to i64
  %85 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %85, i64 0
  %86 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %86, i64 %idxprom81
  %87 = load i8, i8* %arrayidx83, align 1
  %88 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %88, i64 0
  %89 = load i8*, i8** %arrayidx84, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %incdec.ptr85, i8** %arrayidx84, align 8
  store i8 %87, i8* %incdec.ptr85, align 1
  %90 = load i32, i32* %k, align 4
  %inc86 = add nsw i32 %90, 1
  store i32 %inc86, i32* %k, align 4
  br label %while.cond.73

while.end.87:                                     ; preds = %while.cond.73
  %91 = load i32, i32* %iin, align 4
  %cmp88 = icmp sle i32 %91, 0
  br i1 %cmp88, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.87
  %92 = load i32, i32* %jin, align 4
  %cmp90 = icmp sle i32 %92, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false, %while.end.87
  br label %for.end.107

if.end.93:                                        ; preds = %lor.lhs.false
  %93 = load i32, i32* %ifi, align 4
  %idxprom94 = sext i32 %93 to i64
  %94 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %95, i64 %idxprom94
  %96 = load i8, i8* %arrayidx96, align 1
  %97 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %97, i64 0
  %98 = load i8*, i8** %arrayidx97, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr98, i8** %arrayidx97, align 8
  store i8 %96, i8* %incdec.ptr98, align 1
  %99 = load i32, i32* %jfi, align 4
  %idxprom99 = sext i32 %99 to i64
  %100 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %100, i64 0
  %101 = load i8*, i8** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %101, i64 %idxprom99
  %102 = load i8, i8* %arrayidx101, align 1
  %103 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx102 = getelementptr inbounds i8*, i8** %103, i64 0
  %104 = load i8*, i8** %arrayidx102, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr103, i8** %arrayidx102, align 8
  store i8 %102, i8* %incdec.ptr103, align 1
  %105 = load i32, i32* %k, align 4
  %inc104 = add nsw i32 %105, 1
  store i32 %inc104, i32* %k, align 4
  %106 = load i32, i32* %ifi, align 4
  store i32 %106, i32* %iin, align 4
  %107 = load i32, i32* %jfi, align 4
  store i32 %107, i32* %jin, align 4
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.93
  %108 = load i32, i32* %k, align 4
  %inc106 = add nsw i32 %108, 1
  store i32 %inc106, i32* %k, align 4
  br label %for.cond.30

for.end.107:                                      ; preds = %if.then.92, %for.cond.30
  ret float 0.000000e+00
}

declare void @ErrorExit(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
