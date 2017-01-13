; ModuleID = './MultiSource.Benchmarks.mafft/9.Calignm1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1
@Calignm1.mi = internal global float 0.000000e+00, align 4
@Calignm1.m = internal global float* null, align 8
@Calignm1.mpi = internal global i32 0, align 4
@Calignm1.mp = internal global i32* null, align 8
@Calignm1.g = internal global float*** null, align 8
@Calignm1.ijp = internal global i32** null, align 8
@Calignm1.v = internal global float** null, align 8
@Calignm1.w = internal global float** null, align 8
@Calignm1.gvsa = internal global float* null, align 8
@Calignm1.mseq = internal global i8** null, align 8
@Calignm1.nseq = internal global i8** null, align 8
@Calignm1.scmx = internal global float** null, align 8
@Calignm1.orlgth = internal global i32 0, align 4
@Calignm1.orlgth1 = internal global i32 0, align 4
@Calignm1.gl = internal global float** null, align 8
@Calignm1.gs = internal global float** null, align 8
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@n_dis = external global [26 x [26 x i32]], align 16
@amino_n = external global [128 x i32], align 16
@penalty = external global i32, align 4
@cnst = external global i32, align 4
@amino_dis = external global [128 x [128 x i32]], align 16

; Function Attrs: nounwind uwtable
define void @tracking(i8** %nseq, i8** %aseq, i8* %seq, i32** %ijp, i32 %icyc) #0 {
entry:
  %nseq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %seq.addr = alloca i8*, align 8
  %ijp.addr = alloca i32**, align 8
  %icyc.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %iin = alloca i32, align 4
  %ifi = alloca i32, align 4
  %jin = alloca i32, align 4
  %jfi = alloca i32, align 4
  %lgth = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %gap = alloca [2 x i8], align 1
  store i8** %nseq, i8*** %nseq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  %0 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lgth, align 4
  %2 = load i8*, i8** %seq.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %lgth1, align 4
  %3 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %icyc.addr, align 4
  %add = add nsw i32 %5, 1
  %cmp = icmp sle i32 %4, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %lgth, align 4
  %7 = load i32, i32* %lgth1, align 4
  %add4 = add nsw i32 %6, %7
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx5, align 8
  %idx.ext = sext i32 %add4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx5, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 %idxprom6
  %13 = load i8*, i8** %arrayidx7, align 8
  store i8 0, i8* %13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %lgth, align 4
  store i32 %15, i32* %iin, align 4
  %16 = load i32, i32* %lgth1, align 4
  store i32 %16, i32* %jin, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.end.120, %for.end
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %lgth, align 4
  %19 = load i32, i32* %lgth1, align 4
  %add9 = add nsw i32 %18, %19
  %cmp10 = icmp sle i32 %17, %add9
  br i1 %cmp10, label %for.body.12, label %for.end.128

for.body.12:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %jin, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load i32, i32* %iin, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %22, i64 %idxprom14
  %23 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  %24 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %24, 0
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.12
  %25 = load i32, i32* %iin, align 4
  %sub = sub nsw i32 %25, 1
  store i32 %sub, i32* %ifi, align 4
  %26 = load i32, i32* %jin, align 4
  %27 = load i32, i32* %jin, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load i32, i32* %iin, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %29, i64 %idxprom20
  %30 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 %idxprom19
  %31 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %26, %31
  store i32 %add23, i32* %jfi, align 4
  br label %if.end.40

if.else:                                          ; preds = %for.body.12
  %32 = load i32, i32* %jin, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i32, i32* %iin, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %34, i64 %idxprom25
  %35 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %35, i64 %idxprom24
  %36 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sgt i32 %36, 0
  br i1 %cmp28, label %if.then.30, label %if.else.37

if.then.30:                                       ; preds = %if.else
  %37 = load i32, i32* %iin, align 4
  %38 = load i32, i32* %jin, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load i32, i32* %iin, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %40, i64 %idxprom32
  %41 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %41, i64 %idxprom31
  %42 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %37, %42
  store i32 %sub35, i32* %ifi, align 4
  %43 = load i32, i32* %jin, align 4
  %sub36 = sub nsw i32 %43, 1
  store i32 %sub36, i32* %jfi, align 4
  br label %if.end

if.else.37:                                       ; preds = %if.else
  %44 = load i32, i32* %iin, align 4
  %sub38 = sub nsw i32 %44, 1
  store i32 %sub38, i32* %ifi, align 4
  %45 = load i32, i32* %jin, align 4
  %sub39 = sub nsw i32 %45, 1
  store i32 %sub39, i32* %jfi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then
  store i32 1, i32* %l, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.66, %if.end.40
  %46 = load i32, i32* %l, align 4
  %47 = load i32, i32* %iin, align 4
  %48 = load i32, i32* %ifi, align 4
  %sub42 = sub nsw i32 %47, %48
  %cmp43 = icmp slt i32 %46, %sub42
  br i1 %cmp43, label %for.body.45, label %for.end.68

for.body.45:                                      ; preds = %for.cond.41
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.58, %for.body.45
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %icyc.addr, align 4
  %add47 = add nsw i32 %50, 1
  %cmp48 = icmp slt i32 %49, %add47
  br i1 %cmp48, label %for.body.50, label %for.end.60

for.body.50:                                      ; preds = %for.cond.46
  %51 = load i32, i32* %iin, align 4
  %52 = load i32, i32* %l, align 4
  %sub51 = sub nsw i32 %51, %52
  %idxprom52 = sext i32 %sub51 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %53 to i64
  %54 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %54, i64 %idxprom53
  %55 = load i8*, i8** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %55, i64 %idxprom52
  %56 = load i8, i8* %arrayidx55, align 1
  %57 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %57 to i64
  %58 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %58, i64 %idxprom56
  %59 = load i8*, i8** %arrayidx57, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx57, align 8
  store i8 %56, i8* %incdec.ptr, align 1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.50
  %60 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %60, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.46

for.end.60:                                       ; preds = %for.cond.46
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %61 = load i8, i8* %arraydecay, align 1
  %62 = load i32, i32* %icyc.addr, align 4
  %add61 = add nsw i32 %62, 1
  %idxprom62 = sext i32 %add61 to i64
  %63 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %63, i64 %idxprom62
  %64 = load i8*, i8** %arrayidx63, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %incdec.ptr64, i8** %arrayidx63, align 8
  store i8 %61, i8* %incdec.ptr64, align 1
  %65 = load i32, i32* %k, align 4
  %inc65 = add nsw i32 %65, 1
  store i32 %inc65, i32* %k, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.60
  %66 = load i32, i32* %l, align 4
  %inc67 = add nsw i32 %66, 1
  store i32 %inc67, i32* %l, align 4
  br label %for.cond.41

for.end.68:                                       ; preds = %for.cond.41
  store i32 1, i32* %l, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.97, %for.end.68
  %67 = load i32, i32* %l, align 4
  %68 = load i32, i32* %jin, align 4
  %69 = load i32, i32* %jfi, align 4
  %sub70 = sub nsw i32 %68, %69
  %cmp71 = icmp slt i32 %67, %sub70
  br i1 %cmp71, label %for.body.73, label %for.end.99

for.body.73:                                      ; preds = %for.cond.69
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.83, %for.body.73
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %icyc.addr, align 4
  %add75 = add nsw i32 %71, 1
  %cmp76 = icmp slt i32 %70, %add75
  br i1 %cmp76, label %for.body.78, label %for.end.85

for.body.78:                                      ; preds = %for.cond.74
  %arraydecay79 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %72 = load i8, i8* %arraydecay79, align 1
  %73 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %73 to i64
  %74 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %74, i64 %idxprom80
  %75 = load i8*, i8** %arrayidx81, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr82, i8** %arrayidx81, align 8
  store i8 %72, i8* %incdec.ptr82, align 1
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.78
  %76 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %76, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.74

for.end.85:                                       ; preds = %for.cond.74
  %77 = load i32, i32* %icyc.addr, align 4
  %add86 = add nsw i32 %77, 1
  %idxprom87 = sext i32 %add86 to i64
  %78 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %78, i64 %idxprom87
  %79 = load i8*, i8** %arrayidx88, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr89, i8** %arrayidx88, align 8
  %80 = load i32, i32* %jin, align 4
  %81 = load i32, i32* %l, align 4
  %sub90 = sub nsw i32 %80, %81
  %idxprom91 = sext i32 %sub90 to i64
  %82 = load i8*, i8** %seq.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %82, i64 %idxprom91
  %83 = load i8, i8* %arrayidx92, align 1
  %84 = load i32, i32* %icyc.addr, align 4
  %add93 = add nsw i32 %84, 1
  %idxprom94 = sext i32 %add93 to i64
  %85 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %85, i64 %idxprom94
  %86 = load i8*, i8** %arrayidx95, align 8
  store i8 %83, i8* %86, align 1
  %87 = load i32, i32* %k, align 4
  %inc96 = add nsw i32 %87, 1
  store i32 %inc96, i32* %k, align 4
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.85
  %88 = load i32, i32* %l, align 4
  %inc98 = add nsw i32 %88, 1
  store i32 %inc98, i32* %l, align 4
  br label %for.cond.69

for.end.99:                                       ; preds = %for.cond.69
  %89 = load i32, i32* %iin, align 4
  %cmp100 = icmp sle i32 %89, 0
  br i1 %cmp100, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.99
  %90 = load i32, i32* %jin, align 4
  %cmp102 = icmp sle i32 %90, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false, %for.end.99
  br label %for.end.128

if.end.105:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.118, %if.end.105
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %icyc.addr, align 4
  %add107 = add nsw i32 %92, 1
  %cmp108 = icmp slt i32 %91, %add107
  br i1 %cmp108, label %for.body.110, label %for.end.120

for.body.110:                                     ; preds = %for.cond.106
  %93 = load i32, i32* %ifi, align 4
  %idxprom111 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %94 to i64
  %95 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %95, i64 %idxprom112
  %96 = load i8*, i8** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %96, i64 %idxprom111
  %97 = load i8, i8* %arrayidx114, align 1
  %98 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %98 to i64
  %99 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %99, i64 %idxprom115
  %100 = load i8*, i8** %arrayidx116, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %incdec.ptr117, i8** %arrayidx116, align 8
  store i8 %97, i8* %incdec.ptr117, align 1
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.110
  %101 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %101, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.106

for.end.120:                                      ; preds = %for.cond.106
  %102 = load i32, i32* %jfi, align 4
  %idxprom121 = sext i32 %102 to i64
  %103 = load i8*, i8** %seq.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %103, i64 %idxprom121
  %104 = load i8, i8* %arrayidx122, align 1
  %105 = load i32, i32* %icyc.addr, align 4
  %add123 = add nsw i32 %105, 1
  %idxprom124 = sext i32 %add123 to i64
  %106 = load i8**, i8*** %nseq.addr, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %106, i64 %idxprom124
  %107 = load i8*, i8** %arrayidx125, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %107, i32 -1
  store i8* %incdec.ptr126, i8** %arrayidx125, align 8
  store i8 %104, i8* %incdec.ptr126, align 1
  %108 = load i32, i32* %k, align 4
  %inc127 = add nsw i32 %108, 1
  store i32 %inc127, i32* %k, align 4
  %109 = load i32, i32* %ifi, align 4
  store i32 %109, i32* %iin, align 4
  %110 = load i32, i32* %jfi, align 4
  store i32 %110, i32* %jin, align 4
  br label %for.cond.8

for.end.128:                                      ; preds = %if.then.104, %for.cond.8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8** @Calignm1(float* %wm, i8** %aseq, i8* %seq, double* %effarr, i32 %icyc, i32 %ex) #0 {
entry:
  %wm.addr = alloca float*, align 8
  %aseq.addr = alloca i8**, align 8
  %seq.addr = alloca i8*, align 8
  %effarr.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %ex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tmpfloat = alloca float, align 4
  %inttmp = alloca i32, align 4
  %gb1 = alloca i32, align 4
  %gc1 = alloca i32, align 4
  %wmax = alloca float, align 4
  %lgth = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %x = alloca float, align 4
  %efficient = alloca float, align 4
  %totaleff = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1113 = alloca i32, align 4
  %ll2114 = alloca i32, align 4
  %scarr = alloca [26 x float], align 16
  store float* %wm, float** %wm.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store double* %effarr, double** %effarr.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %ex, i32* %ex.addr, align 4
  store float 0.000000e+00, float* %totaleff, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %icyc.addr, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %effarr.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load float, float* %totaleff, align 4
  %conv = fpext float %5 to double
  %add1 = fadd double %conv, %4
  %conv2 = fptrunc double %add1 to float
  store float %conv2, float* %totaleff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx3, align 8
  %call = call i64 @strlen(i8* %8) #5
  %conv4 = trunc i64 %call to i32
  store i32 %conv4, i32* %lgth, align 4
  %9 = load i8*, i8** %seq.addr, align 8
  %call5 = call i64 @strlen(i8* %9) #5
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %lgth1, align 4
  %10 = load i32, i32* @Calignm1.orlgth, align 4
  %cmp7 = icmp sgt i32 %10, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %11 = load i32, i32* @Calignm1.orlgth1, align 4
  %cmp9 = icmp sgt i32 %11, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @njob, align 4
  %add12 = add nsw i32 %13, 1
  %cmp13 = icmp slt i32 %12, %add12
  br i1 %cmp13, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.11
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i8**, i8*** @Calignm1.mseq, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %15, i64 %idxprom16
  %16 = load i8*, i8** %arrayidx17, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i8**, i8*** @Calignm1.nseq, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %18, i64 %idxprom18
  store i8* %16, i8** %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  br label %if.end

if.end:                                           ; preds = %for.end.22, %land.lhs.true, %for.end
  %20 = load i32, i32* %lgth, align 4
  %21 = load i32, i32* @Calignm1.orlgth, align 4
  %cmp23 = icmp sgt i32 %20, %21
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load i32, i32* %lgth1, align 4
  %23 = load i32, i32* @Calignm1.orlgth1, align 4
  %cmp25 = icmp sgt i32 %22, %23
  br i1 %cmp25, label %if.then.27, label %if.end.106

if.then.27:                                       ; preds = %lor.lhs.false, %if.end
  %24 = load i32, i32* @Calignm1.orlgth, align 4
  %cmp28 = icmp sgt i32 %24, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %if.then.27
  %25 = load i32, i32* @Calignm1.orlgth1, align 4
  %cmp31 = icmp sgt i32 %25, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  %26 = load float**, float*** @Calignm1.v, align 8
  call void @FreeFloatMtx(float** %26)
  %27 = load float***, float**** @Calignm1.g, align 8
  call void @FreeFloatCub(float*** %27)
  %28 = load float**, float*** @Calignm1.gl, align 8
  call void @FreeFloatTri(float** %28)
  %29 = load float**, float*** @Calignm1.gs, align 8
  call void @FreeFloatTri(float** %29)
  %30 = load float*, float** @Calignm1.m, align 8
  call void @FreeFloatVec(float* %30)
  %31 = load i32*, i32** @Calignm1.mp, align 8
  call void @FreeIntVec(i32* %31)
  %32 = load i8**, i8*** @Calignm1.mseq, align 8
  call void @FreeCharMtx(i8** %32)
  %33 = load float*, float** @Calignm1.gvsa, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float**, float*** @Calignm1.scmx, align 8
  call void @FreeFloatMtx(float** %34)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.30, %if.then.27
  %35 = load i32, i32* %lgth, align 4
  %conv35 = sitofp i32 %35 to double
  %mul = fmul double 1.100000e+00, %conv35
  %conv36 = fptosi double %mul to i32
  %36 = load i32, i32* @Calignm1.orlgth, align 4
  %cmp37 = icmp sgt i32 %conv36, %36
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %37 = load i32, i32* %lgth, align 4
  %conv39 = sitofp i32 %37 to double
  %mul40 = fmul double 1.100000e+00, %conv39
  %conv41 = fptosi double %mul40 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  %38 = load i32, i32* @Calignm1.orlgth, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv41, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, i32* %ll1, align 4
  %39 = load i32, i32* %lgth1, align 4
  %conv42 = sitofp i32 %39 to double
  %mul43 = fmul double 1.100000e+00, %conv42
  %conv44 = fptosi double %mul43 to i32
  %40 = load i32, i32* @Calignm1.orlgth1, align 4
  %cmp45 = icmp sgt i32 %conv44, %40
  br i1 %cmp45, label %cond.true.47, label %cond.false.51

cond.true.47:                                     ; preds = %cond.end
  %41 = load i32, i32* %lgth1, align 4
  %conv48 = sitofp i32 %41 to double
  %mul49 = fmul double 1.100000e+00, %conv48
  %conv50 = fptosi double %mul49 to i32
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end
  %42 = load i32, i32* @Calignm1.orlgth1, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.47
  %cond53 = phi i32 [ %conv50, %cond.true.47 ], [ %42, %cond.false.51 ]
  store i32 %cond53, i32* %ll2, align 4
  %43 = load i32, i32* %ll1, align 4
  %44 = load i32, i32* %ll2, align 4
  %cmp54 = icmp sgt i32 %43, %44
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.52
  %45 = load i32, i32* %ll1, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.end.52
  %46 = load i32, i32* %ll2, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %45, %cond.true.56 ], [ %46, %cond.false.57 ]
  store i32 %cond59, i32* %ll1, align 4
  %47 = load i32, i32* %ll1, align 4
  %add60 = add nsw i32 %47, 2
  %48 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %48, 2
  %call62 = call float** @AllocateFloatMtx(i32 %add60, i32 %add61)
  store float** %call62, float*** @Calignm1.v, align 8
  %49 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %49, 2
  %call64 = call float*** @AllocateFloatCub(i32 %add63, i32 3, i32 3)
  store float*** %call64, float**** @Calignm1.g, align 8
  %50 = load i32, i32* %ll1, align 4
  %51 = load i32, i32* %ll2, align 4
  %cmp65 = icmp sgt i32 %50, %51
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.58
  %52 = load i32, i32* %ll1, align 4
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.58
  %53 = load i32, i32* %ll2, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ %52, %cond.true.67 ], [ %53, %cond.false.68 ]
  %add71 = add nsw i32 %cond70, 3
  %call72 = call float** @AllocateFloatTri(i32 %add71)
  store float** %call72, float*** @Calignm1.gl, align 8
  %54 = load i32, i32* %ll1, align 4
  %55 = load i32, i32* %ll2, align 4
  %cmp73 = icmp sgt i32 %54, %55
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.69
  %56 = load i32, i32* %ll1, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end.69
  %57 = load i32, i32* %ll2, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %56, %cond.true.75 ], [ %57, %cond.false.76 ]
  %add79 = add nsw i32 %cond78, 3
  %call80 = call float** @AllocateFloatTri(i32 %add79)
  store float** %call80, float*** @Calignm1.gs, align 8
  %58 = load i32, i32* %ll1, align 4
  %add81 = add nsw i32 %58, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** @Calignm1.m, align 8
  %59 = load i32, i32* %ll1, align 4
  %add83 = add nsw i32 %59, 2
  %call84 = call i32* @AllocateIntVec(i32 %add83)
  store i32* %call84, i32** @Calignm1.mp, align 8
  %60 = load i32, i32* @njob, align 4
  %add85 = add nsw i32 %60, 1
  %call86 = call i8** @AllocateCharMtx(i32 %add85, i32 1)
  store i8** %call86, i8*** @Calignm1.mseq, align 8
  %61 = load i32, i32* @njob, align 4
  %add87 = add nsw i32 %61, 1
  %62 = load i32, i32* %ll1, align 4
  %63 = load i32, i32* %ll2, align 4
  %add88 = add nsw i32 %62, %63
  %call89 = call i8** @AllocateCharMtx(i32 %add87, i32 %add88)
  store i8** %call89, i8*** @Calignm1.nseq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.99, %cond.end.77
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* @njob, align 4
  %add91 = add nsw i32 %65, 1
  %cmp92 = icmp slt i32 %64, %add91
  br i1 %cmp92, label %for.body.94, label %for.end.101

for.body.94:                                      ; preds = %for.cond.90
  %66 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %66 to i64
  %67 = load i8**, i8*** @Calignm1.nseq, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %67, i64 %idxprom95
  %68 = load i8*, i8** %arrayidx96, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %69 to i64
  %70 = load i8**, i8*** @Calignm1.mseq, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %70, i64 %idxprom97
  store i8* %68, i8** %arrayidx98, align 8
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.94
  %71 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %71, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.90

for.end.101:                                      ; preds = %for.cond.90
  %72 = load i32, i32* %ll1, align 4
  %add102 = add nsw i32 %72, 2
  %call103 = call float* @AllocateFloatVec(i32 %add102)
  store float* %call103, float** @Calignm1.gvsa, align 8
  %73 = load i32, i32* %ll1, align 4
  %add104 = add nsw i32 %73, 2
  %call105 = call float** @AllocateFloatMtx(i32 26, i32 %add104)
  store float** %call105, float*** @Calignm1.scmx, align 8
  %74 = load i32, i32* %ll1, align 4
  store i32 %74, i32* @Calignm1.orlgth, align 4
  %75 = load i32, i32* %ll2, align 4
  store i32 %75, i32* @Calignm1.orlgth1, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.101, %lor.lhs.false
  %76 = load i32, i32* @Calignm1.orlgth, align 4
  %77 = load i32, i32* @commonAlloc1, align 4
  %cmp107 = icmp sgt i32 %76, %77
  br i1 %cmp107, label %if.then.112, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %if.end.106
  %78 = load i32, i32* @Calignm1.orlgth1, align 4
  %79 = load i32, i32* @commonAlloc2, align 4
  %cmp110 = icmp sgt i32 %78, %79
  br i1 %cmp110, label %if.then.112, label %if.end.134

if.then.112:                                      ; preds = %lor.lhs.false.109, %if.end.106
  %80 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %land.lhs.true.115, label %if.end.118

land.lhs.true.115:                                ; preds = %if.then.112
  %81 = load i32, i32* @commonAlloc2, align 4
  %tobool116 = icmp ne i32 %81, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.115
  %82 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %82)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %land.lhs.true.115, %if.then.112
  %83 = load i32, i32* @commonAlloc1, align 4
  %84 = load i32, i32* @Calignm1.orlgth, align 4
  %cmp119 = icmp sgt i32 %83, %84
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.end.118
  %85 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.end.118
  %86 = load i32, i32* @Calignm1.orlgth, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi i32 [ %85, %cond.true.121 ], [ %86, %cond.false.122 ]
  store i32 %cond124, i32* %ll1113, align 4
  %87 = load i32, i32* @commonAlloc2, align 4
  %88 = load i32, i32* @Calignm1.orlgth1, align 4
  %cmp125 = icmp sgt i32 %87, %88
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.end.123
  %89 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.end.123
  %90 = load i32, i32* @Calignm1.orlgth1, align 4
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %89, %cond.true.127 ], [ %90, %cond.false.128 ]
  store i32 %cond130, i32* %ll2114, align 4
  %91 = load i32, i32* %ll1113, align 4
  %add131 = add nsw i32 %91, 10
  %92 = load i32, i32* %ll2114, align 4
  %add132 = add nsw i32 %92, 10
  %call133 = call i32** @AllocateIntMtx(i32 %add131, i32 %add132)
  store i32** %call133, i32*** @commonIP, align 8
  %93 = load i32, i32* %ll1113, align 4
  store i32 %93, i32* @commonAlloc1, align 4
  %94 = load i32, i32* %ll2114, align 4
  store i32 %94, i32* @commonAlloc2, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %cond.end.129, %lor.lhs.false.109
  %95 = load i32**, i32*** @commonIP, align 8
  store i32** %95, i32*** @Calignm1.ijp, align 8
  %96 = load i32, i32* %icyc.addr, align 4
  %97 = load i8**, i8*** %aseq.addr, align 8
  %98 = load double*, double** %effarr.addr, align 8
  %99 = load float**, float*** @Calignm1.scmx, align 8
  call void @scmx_calc(i32 %96, i8** %97, double* %98, float** %99)
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.189, %if.end.134
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %lgth, align 4
  %cmp136 = icmp slt i32 %100, %101
  br i1 %cmp136, label %for.body.138, label %for.end.191

for.body.138:                                     ; preds = %for.cond.135
  store i32 0, i32* %l, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.165, %for.body.138
  %102 = load i32, i32* %l, align 4
  %cmp140 = icmp slt i32 %102, 26
  br i1 %cmp140, label %for.body.142, label %for.end.167

for.body.142:                                     ; preds = %for.cond.139
  %103 = load i32, i32* %l, align 4
  %idxprom143 = sext i32 %103 to i64
  %arrayidx144 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom143
  store float 0.000000e+00, float* %arrayidx144, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.162, %for.body.142
  %104 = load i32, i32* %k, align 4
  %cmp146 = icmp slt i32 %104, 26
  br i1 %cmp146, label %for.body.148, label %for.end.164

for.body.148:                                     ; preds = %for.cond.145
  %105 = load i32, i32* %l, align 4
  %idxprom149 = sext i32 %105 to i64
  %106 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %106 to i64
  %arrayidx151 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx151, i32 0, i64 %idxprom149
  %107 = load i32, i32* %arrayidx152, align 4
  %conv153 = sitofp i32 %107 to float
  %108 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %108 to i64
  %109 = load i32, i32* %k, align 4
  %idxprom155 = sext i32 %109 to i64
  %110 = load float**, float*** @Calignm1.scmx, align 8
  %arrayidx156 = getelementptr inbounds float*, float** %110, i64 %idxprom155
  %111 = load float*, float** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds float, float* %111, i64 %idxprom154
  %112 = load float, float* %arrayidx157, align 4
  %mul158 = fmul float %conv153, %112
  %113 = load i32, i32* %l, align 4
  %idxprom159 = sext i32 %113 to i64
  %arrayidx160 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom159
  %114 = load float, float* %arrayidx160, align 4
  %add161 = fadd float %114, %mul158
  store float %add161, float* %arrayidx160, align 4
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.148
  %115 = load i32, i32* %k, align 4
  %inc163 = add nsw i32 %115, 1
  store i32 %inc163, i32* %k, align 4
  br label %for.cond.145

for.end.164:                                      ; preds = %for.cond.145
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.end.164
  %116 = load i32, i32* %l, align 4
  %inc166 = add nsw i32 %116, 1
  store i32 %inc166, i32* %l, align 4
  br label %for.cond.139

for.end.167:                                      ; preds = %for.cond.139
  store i32 0, i32* %j, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.183, %for.end.167
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %lgth1, align 4
  %cmp169 = icmp slt i32 %117, %118
  br i1 %cmp169, label %for.body.171, label %for.end.185

for.body.171:                                     ; preds = %for.cond.168
  %119 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %119 to i64
  %120 = load i8*, i8** %seq.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %120, i64 %idxprom172
  %121 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %121 to i32
  %idxprom175 = sext i32 %conv174 to i64
  %arrayidx176 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom175
  %122 = load i32, i32* %arrayidx176, align 4
  %idxprom177 = sext i32 %122 to i64
  %arrayidx178 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom177
  %123 = load float, float* %arrayidx178, align 4
  %124 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %124 to i64
  %125 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %125 to i64
  %126 = load float**, float*** @Calignm1.v, align 8
  %arrayidx181 = getelementptr inbounds float*, float** %126, i64 %idxprom180
  %127 = load float*, float** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds float, float* %127, i64 %idxprom179
  store float %123, float* %arrayidx182, align 4
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.171
  %128 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %128, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.168

for.end.185:                                      ; preds = %for.cond.168
  %arrayidx186 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 24
  %129 = load float, float* %arrayidx186, align 4
  %130 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %130 to i64
  %131 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx188 = getelementptr inbounds float, float* %131, i64 %idxprom187
  store float %129, float* %arrayidx188, align 4
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.185
  %132 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %132, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.135

for.end.191:                                      ; preds = %for.cond.135
  store i32 0, i32* %i, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.201, %for.end.191
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %lgth, align 4
  %add193 = add nsw i32 %134, 1
  %cmp194 = icmp slt i32 %133, %add193
  br i1 %cmp194, label %for.body.196, label %for.end.203

for.body.196:                                     ; preds = %for.cond.192
  %135 = load i32, i32* %lgth1, align 4
  %idxprom197 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %136 to i64
  %137 = load float**, float*** @Calignm1.v, align 8
  %arrayidx199 = getelementptr inbounds float*, float** %137, i64 %idxprom198
  %138 = load float*, float** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds float, float* %138, i64 %idxprom197
  store float 0.000000e+00, float* %arrayidx200, align 4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.196
  %139 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %139, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.192

for.end.203:                                      ; preds = %for.cond.192
  store i32 0, i32* %j, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.213, %for.end.203
  %140 = load i32, i32* %j, align 4
  %141 = load i32, i32* %lgth1, align 4
  %add205 = add nsw i32 %141, 1
  %cmp206 = icmp slt i32 %140, %add205
  br i1 %cmp206, label %for.body.208, label %for.end.215

for.body.208:                                     ; preds = %for.cond.204
  %142 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %142 to i64
  %143 = load i32, i32* %lgth, align 4
  %idxprom210 = sext i32 %143 to i64
  %144 = load float**, float*** @Calignm1.v, align 8
  %arrayidx211 = getelementptr inbounds float*, float** %144, i64 %idxprom210
  %145 = load float*, float** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds float, float* %145, i64 %idxprom209
  store float 0.000000e+00, float* %arrayidx212, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.208
  %146 = load i32, i32* %j, align 4
  %inc214 = add nsw i32 %146, 1
  store i32 %inc214, i32* %j, align 4
  br label %for.cond.204

for.end.215:                                      ; preds = %for.cond.204
  %147 = load i32, i32* %lgth, align 4
  %idxprom216 = sext i32 %147 to i64
  %148 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx217 = getelementptr inbounds float, float* %148, i64 %idxprom216
  store float 0.000000e+00, float* %arrayidx217, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.243, %for.end.215
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %lgth, align 4
  %add219 = add nsw i32 %150, 1
  %cmp220 = icmp slt i32 %149, %add219
  br i1 %cmp220, label %for.body.222, label %for.end.245

for.body.222:                                     ; preds = %for.cond.218
  store i32 0, i32* %k, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.240, %for.body.222
  %151 = load i32, i32* %k, align 4
  %cmp224 = icmp slt i32 %151, 3
  br i1 %cmp224, label %for.body.226, label %for.end.242

for.body.226:                                     ; preds = %for.cond.223
  store i32 0, i32* %l, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.237, %for.body.226
  %152 = load i32, i32* %l, align 4
  %cmp228 = icmp slt i32 %152, 3
  br i1 %cmp228, label %for.body.230, label %for.end.239

for.body.230:                                     ; preds = %for.cond.227
  %153 = load i32, i32* %l, align 4
  %idxprom231 = sext i32 %153 to i64
  %154 = load i32, i32* %k, align 4
  %idxprom232 = sext i32 %154 to i64
  %155 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %155 to i64
  %156 = load float***, float**** @Calignm1.g, align 8
  %arrayidx234 = getelementptr inbounds float**, float*** %156, i64 %idxprom233
  %157 = load float**, float*** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds float*, float** %157, i64 %idxprom232
  %158 = load float*, float** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds float, float* %158, i64 %idxprom231
  store float 0.000000e+00, float* %arrayidx236, align 4
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.230
  %159 = load i32, i32* %l, align 4
  %inc238 = add nsw i32 %159, 1
  store i32 %inc238, i32* %l, align 4
  br label %for.cond.227

for.end.239:                                      ; preds = %for.cond.227
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.end.239
  %160 = load i32, i32* %k, align 4
  %inc241 = add nsw i32 %160, 1
  store i32 %inc241, i32* %k, align 4
  br label %for.cond.223

for.end.242:                                      ; preds = %for.cond.223
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.242
  %161 = load i32, i32* %j, align 4
  %inc244 = add nsw i32 %161, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.218

for.end.245:                                      ; preds = %for.cond.218
  store i32 0, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.349, %for.end.245
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %icyc.addr, align 4
  %add247 = add nsw i32 %163, 1
  %cmp248 = icmp slt i32 %162, %add247
  br i1 %cmp248, label %for.body.250, label %for.end.351

for.body.250:                                     ; preds = %for.cond.246
  %164 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %164 to i64
  %165 = load double*, double** %effarr.addr, align 8
  %arrayidx252 = getelementptr inbounds double, double* %165, i64 %idxprom251
  %166 = load double, double* %arrayidx252, align 8
  %conv253 = fptrunc double %166 to float
  store float %conv253, float* %efficient, align 4
  store i32 0, i32* %gc1, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.346, %for.body.250
  %167 = load i32, i32* %j, align 4
  %168 = load i32, i32* %lgth, align 4
  %add255 = add nsw i32 %168, 1
  %cmp256 = icmp slt i32 %167, %add255
  br i1 %cmp256, label %for.body.258, label %for.end.348

for.body.258:                                     ; preds = %for.cond.254
  %169 = load i32, i32* %gc1, align 4
  store i32 %169, i32* %gb1, align 4
  %170 = load i32, i32* %j, align 4
  %idxprom259 = sext i32 %170 to i64
  %171 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %171 to i64
  %172 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx261 = getelementptr inbounds i8*, i8** %172, i64 %idxprom260
  %173 = load i8*, i8** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %173, i64 %idxprom259
  %174 = load i8, i8* %arrayidx262, align 1
  %conv263 = sext i8 %174 to i32
  %cmp264 = icmp eq i32 %conv263, 45
  %conv265 = zext i1 %cmp264 to i32
  store i32 %conv265, i32* %gc1, align 4
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %lgth, align 4
  %cmp266 = icmp eq i32 %175, %176
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %for.body.258
  store i32 0, i32* %gc1, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %for.body.258
  %177 = load i32, i32* %gb1, align 4
  %tobool270 = icmp ne i32 %177, 0
  %lnot = xor i1 %tobool270, true
  %lnot.ext = zext i1 %lnot to i32
  %178 = load i32, i32* %gc1, align 4
  %mul271 = mul nsw i32 %lnot.ext, %178
  %conv272 = sitofp i32 %mul271 to float
  %179 = load float, float* %efficient, align 4
  %mul273 = fmul float %conv272, %179
  %180 = load i32, i32* @penalty, align 4
  %conv274 = sitofp i32 %180 to float
  %mul275 = fmul float %mul273, %conv274
  %181 = load i32, i32* %j, align 4
  %idxprom276 = sext i32 %181 to i64
  %182 = load float***, float**** @Calignm1.g, align 8
  %arrayidx277 = getelementptr inbounds float**, float*** %182, i64 %idxprom276
  %183 = load float**, float*** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds float*, float** %183, i64 0
  %184 = load float*, float** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds float, float* %184, i64 0
  %185 = load float, float* %arrayidx279, align 4
  %add280 = fadd float %185, %mul275
  store float %add280, float* %arrayidx279, align 4
  %186 = load float, float* %efficient, align 4
  %mul281 = fmul float 0.000000e+00, %186
  %187 = load i32, i32* @penalty, align 4
  %conv282 = sitofp i32 %187 to float
  %mul283 = fmul float %mul281, %conv282
  %188 = load i32, i32* %j, align 4
  %idxprom284 = sext i32 %188 to i64
  %189 = load float***, float**** @Calignm1.g, align 8
  %arrayidx285 = getelementptr inbounds float**, float*** %189, i64 %idxprom284
  %190 = load float**, float*** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds float*, float** %190, i64 1
  %191 = load float*, float** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds float, float* %191, i64 0
  %192 = load float, float* %arrayidx287, align 4
  %add288 = fadd float %192, %mul283
  store float %add288, float* %arrayidx287, align 4
  %193 = load float, float* %efficient, align 4
  %mul289 = fmul float 0.000000e+00, %193
  %194 = load i32, i32* @penalty, align 4
  %conv290 = sitofp i32 %194 to float
  %mul291 = fmul float %mul289, %conv290
  %195 = load i32, i32* %j, align 4
  %idxprom292 = sext i32 %195 to i64
  %196 = load float***, float**** @Calignm1.g, align 8
  %arrayidx293 = getelementptr inbounds float**, float*** %196, i64 %idxprom292
  %197 = load float**, float*** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds float*, float** %197, i64 2
  %198 = load float*, float** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds float, float* %198, i64 0
  %199 = load float, float* %arrayidx295, align 4
  %add296 = fadd float %199, %mul291
  store float %add296, float* %arrayidx295, align 4
  %200 = load i32, i32* %gb1, align 4
  %201 = load i32, i32* %gc1, align 4
  %tobool297 = icmp ne i32 %201, 0
  %lnot298 = xor i1 %tobool297, true
  %lnot.ext299 = zext i1 %lnot298 to i32
  %mul300 = mul nsw i32 %200, %lnot.ext299
  %202 = load i32, i32* %gb1, align 4
  %tobool301 = icmp ne i32 %202, 0
  %lnot302 = xor i1 %tobool301, true
  %lnot.ext303 = zext i1 %lnot302 to i32
  %203 = load i32, i32* %gc1, align 4
  %tobool304 = icmp ne i32 %203, 0
  %lnot305 = xor i1 %tobool304, true
  %lnot.ext306 = zext i1 %lnot305 to i32
  %mul307 = mul nsw i32 %lnot.ext303, %lnot.ext306
  %add308 = add nsw i32 %mul300, %mul307
  %conv309 = sitofp i32 %add308 to float
  %204 = load float, float* %efficient, align 4
  %mul310 = fmul float %conv309, %204
  %205 = load i32, i32* @penalty, align 4
  %conv311 = sitofp i32 %205 to float
  %mul312 = fmul float %mul310, %conv311
  %206 = load i32, i32* %j, align 4
  %idxprom313 = sext i32 %206 to i64
  %207 = load float***, float**** @Calignm1.g, align 8
  %arrayidx314 = getelementptr inbounds float**, float*** %207, i64 %idxprom313
  %208 = load float**, float*** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds float*, float** %208, i64 0
  %209 = load float*, float** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds float, float* %209, i64 1
  %210 = load float, float* %arrayidx316, align 4
  %add317 = fadd float %210, %mul312
  store float %add317, float* %arrayidx316, align 4
  %211 = load float, float* %efficient, align 4
  %mul318 = fmul float 0.000000e+00, %211
  %212 = load i32, i32* @penalty, align 4
  %conv319 = sitofp i32 %212 to float
  %mul320 = fmul float %mul318, %conv319
  %213 = load i32, i32* %j, align 4
  %idxprom321 = sext i32 %213 to i64
  %214 = load float***, float**** @Calignm1.g, align 8
  %arrayidx322 = getelementptr inbounds float**, float*** %214, i64 %idxprom321
  %215 = load float**, float*** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds float*, float** %215, i64 1
  %216 = load float*, float** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds float, float* %216, i64 1
  %217 = load float, float* %arrayidx324, align 4
  %add325 = fadd float %217, %mul320
  store float %add325, float* %arrayidx324, align 4
  %218 = load i32, i32* %gb1, align 4
  %tobool326 = icmp ne i32 %218, 0
  %lnot327 = xor i1 %tobool326, true
  %lnot.ext328 = zext i1 %lnot327 to i32
  %conv329 = sitofp i32 %lnot.ext328 to float
  %219 = load float, float* %efficient, align 4
  %mul330 = fmul float %conv329, %219
  %220 = load i32, i32* @penalty, align 4
  %conv331 = sitofp i32 %220 to float
  %mul332 = fmul float %mul330, %conv331
  %221 = load i32, i32* %j, align 4
  %idxprom333 = sext i32 %221 to i64
  %222 = load float***, float**** @Calignm1.g, align 8
  %arrayidx334 = getelementptr inbounds float**, float*** %222, i64 %idxprom333
  %223 = load float**, float*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds float*, float** %223, i64 0
  %224 = load float*, float** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds float, float* %224, i64 2
  %225 = load float, float* %arrayidx336, align 4
  %add337 = fadd float %225, %mul332
  store float %add337, float* %arrayidx336, align 4
  %226 = load float, float* %efficient, align 4
  %mul338 = fmul float 0.000000e+00, %226
  %227 = load i32, i32* @penalty, align 4
  %conv339 = sitofp i32 %227 to float
  %mul340 = fmul float %mul338, %conv339
  %228 = load i32, i32* %j, align 4
  %idxprom341 = sext i32 %228 to i64
  %229 = load float***, float**** @Calignm1.g, align 8
  %arrayidx342 = getelementptr inbounds float**, float*** %229, i64 %idxprom341
  %230 = load float**, float*** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds float*, float** %230, i64 2
  %231 = load float*, float** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds float, float* %231, i64 2
  %232 = load float, float* %arrayidx344, align 4
  %add345 = fadd float %232, %mul340
  store float %add345, float* %arrayidx344, align 4
  br label %for.inc.346

for.inc.346:                                      ; preds = %if.end.269
  %233 = load i32, i32* %j, align 4
  %inc347 = add nsw i32 %233, 1
  store i32 %inc347, i32* %j, align 4
  br label %for.cond.254

for.end.348:                                      ; preds = %for.cond.254
  br label %for.inc.349

for.inc.349:                                      ; preds = %for.end.348
  %234 = load i32, i32* %i, align 4
  %inc350 = add nsw i32 %234, 1
  store i32 %inc350, i32* %i, align 4
  br label %for.cond.246

for.end.351:                                      ; preds = %for.cond.246
  store i32 0, i32* %i, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.373, %for.end.351
  %235 = load i32, i32* %i, align 4
  %236 = load i32, i32* %lgth, align 4
  %add353 = add nsw i32 %236, 2
  %cmp354 = icmp slt i32 %235, %add353
  br i1 %cmp354, label %for.body.356, label %for.end.375

for.body.356:                                     ; preds = %for.cond.352
  store i32 0, i32* %j, align 4
  br label %for.cond.357

for.cond.357:                                     ; preds = %for.inc.370, %for.body.356
  %237 = load i32, i32* %j, align 4
  %238 = load i32, i32* %i, align 4
  %add358 = add nsw i32 %238, 1
  %cmp359 = icmp sle i32 %237, %add358
  br i1 %cmp359, label %for.body.361, label %for.end.372

for.body.361:                                     ; preds = %for.cond.357
  %239 = load i32, i32* %j, align 4
  %idxprom362 = sext i32 %239 to i64
  %240 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %240 to i64
  %241 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx364 = getelementptr inbounds float*, float** %241, i64 %idxprom363
  %242 = load float*, float** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds float, float* %242, i64 %idxprom362
  store float 0.000000e+00, float* %arrayidx365, align 4
  %243 = load i32, i32* %j, align 4
  %idxprom366 = sext i32 %243 to i64
  %244 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %244 to i64
  %245 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx368 = getelementptr inbounds float*, float** %245, i64 %idxprom367
  %246 = load float*, float** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds float, float* %246, i64 %idxprom366
  store float 0.000000e+00, float* %arrayidx369, align 4
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.body.361
  %247 = load i32, i32* %j, align 4
  %inc371 = add nsw i32 %247, 1
  store i32 %inc371, i32* %j, align 4
  br label %for.cond.357

for.end.372:                                      ; preds = %for.cond.357
  br label %for.inc.373

for.inc.373:                                      ; preds = %for.end.372
  %248 = load i32, i32* %i, align 4
  %inc374 = add nsw i32 %248, 1
  store i32 %inc374, i32* %i, align 4
  br label %for.cond.352

for.end.375:                                      ; preds = %for.cond.352
  store i32 0, i32* %i, align 4
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.inc.426, %for.end.375
  %249 = load i32, i32* %i, align 4
  %250 = load i32, i32* %icyc.addr, align 4
  %add377 = add nsw i32 %250, 1
  %cmp378 = icmp slt i32 %249, %add377
  br i1 %cmp378, label %for.body.380, label %for.end.428

for.body.380:                                     ; preds = %for.cond.376
  %251 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %251 to i64
  %252 = load double*, double** %effarr.addr, align 8
  %arrayidx382 = getelementptr inbounds double, double* %252, i64 %idxprom381
  %253 = load double, double* %arrayidx382, align 8
  %conv383 = fptrunc double %253 to float
  store float %conv383, float* %efficient, align 4
  store i32 0, i32* %inttmp, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.384

for.cond.384:                                     ; preds = %for.inc.423, %for.body.380
  %254 = load i32, i32* %j, align 4
  %255 = load i32, i32* %lgth, align 4
  %add385 = add nsw i32 %255, 1
  %cmp386 = icmp slt i32 %254, %add385
  br i1 %cmp386, label %for.body.388, label %for.end.425

for.body.388:                                     ; preds = %for.cond.384
  %256 = load i32, i32* %j, align 4
  %idxprom389 = sext i32 %256 to i64
  %257 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %257 to i64
  %258 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx391 = getelementptr inbounds i8*, i8** %258, i64 %idxprom390
  %259 = load i8*, i8** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds i8, i8* %259, i64 %idxprom389
  %260 = load i8, i8* %arrayidx392, align 1
  %conv393 = sext i8 %260 to i32
  %cmp394 = icmp eq i32 %conv393, 45
  br i1 %cmp394, label %if.then.396, label %if.else

if.then.396:                                      ; preds = %for.body.388
  %261 = load i32, i32* %inttmp, align 4
  %inc397 = add nsw i32 %261, 1
  store i32 %inc397, i32* %inttmp, align 4
  %262 = load float, float* %efficient, align 4
  %263 = load i32, i32* @penalty, align 4
  %conv398 = sitofp i32 %263 to float
  %mul399 = fmul float %262, %conv398
  %264 = load i32, i32* %inttmp, align 4
  %idxprom400 = sext i32 %264 to i64
  %265 = load i32, i32* %j, align 4
  %idxprom401 = sext i32 %265 to i64
  %266 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx402 = getelementptr inbounds float*, float** %266, i64 %idxprom401
  %267 = load float*, float** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds float, float* %267, i64 %idxprom400
  %268 = load float, float* %arrayidx403, align 4
  %add404 = fadd float %268, %mul399
  store float %add404, float* %arrayidx403, align 4
  %269 = load i32, i32* %j, align 4
  %add405 = add nsw i32 %269, 1
  %idxprom406 = sext i32 %add405 to i64
  %270 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %270 to i64
  %271 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx408 = getelementptr inbounds i8*, i8** %271, i64 %idxprom407
  %272 = load i8*, i8** %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %272, i64 %idxprom406
  %273 = load i8, i8* %arrayidx409, align 1
  %conv410 = sext i8 %273 to i32
  %cmp411 = icmp ne i32 %conv410, 45
  br i1 %cmp411, label %if.then.413, label %if.end.421

if.then.413:                                      ; preds = %if.then.396
  %274 = load float, float* %efficient, align 4
  %275 = load i32, i32* @penalty, align 4
  %conv414 = sitofp i32 %275 to float
  %mul415 = fmul float %274, %conv414
  %276 = load i32, i32* %inttmp, align 4
  %idxprom416 = sext i32 %276 to i64
  %277 = load i32, i32* %j, align 4
  %idxprom417 = sext i32 %277 to i64
  %278 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx418 = getelementptr inbounds float*, float** %278, i64 %idxprom417
  %279 = load float*, float** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds float, float* %279, i64 %idxprom416
  %280 = load float, float* %arrayidx419, align 4
  %add420 = fadd float %280, %mul415
  store float %add420, float* %arrayidx419, align 4
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.413, %if.then.396
  br label %if.end.422

if.else:                                          ; preds = %for.body.388
  store i32 0, i32* %inttmp, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.else, %if.end.421
  br label %for.inc.423

for.inc.423:                                      ; preds = %if.end.422
  %281 = load i32, i32* %j, align 4
  %inc424 = add nsw i32 %281, 1
  store i32 %inc424, i32* %j, align 4
  br label %for.cond.384

for.end.425:                                      ; preds = %for.cond.384
  br label %for.inc.426

for.inc.426:                                      ; preds = %for.end.425
  %282 = load i32, i32* %i, align 4
  %inc427 = add nsw i32 %282, 1
  store i32 %inc427, i32* %i, align 4
  br label %for.cond.376

for.end.428:                                      ; preds = %for.cond.376
  store i32 0, i32* %i, align 4
  br label %for.cond.429

for.cond.429:                                     ; preds = %for.inc.467, %for.end.428
  %283 = load i32, i32* %i, align 4
  %284 = load i32, i32* %lgth, align 4
  %add430 = add nsw i32 %284, 1
  %cmp431 = icmp slt i32 %283, %add430
  br i1 %cmp431, label %for.body.433, label %for.end.469

for.body.433:                                     ; preds = %for.cond.429
  store i32 1, i32* %j, align 4
  br label %for.cond.434

for.cond.434:                                     ; preds = %for.inc.448, %for.body.433
  %285 = load i32, i32* %j, align 4
  %286 = load i32, i32* %i, align 4
  %cmp435 = icmp sle i32 %285, %286
  br i1 %cmp435, label %for.body.437, label %for.end.450

for.body.437:                                     ; preds = %for.cond.434
  %287 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %287 to i64
  %288 = load i32, i32* %i, align 4
  %idxprom439 = sext i32 %288 to i64
  %289 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx440 = getelementptr inbounds float*, float** %289, i64 %idxprom439
  %290 = load float*, float** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds float, float* %290, i64 %idxprom438
  %291 = load float, float* %arrayidx441, align 4
  %292 = load i32, i32* %j, align 4
  %add442 = add nsw i32 %292, 1
  %idxprom443 = sext i32 %add442 to i64
  %293 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %293 to i64
  %294 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx445 = getelementptr inbounds float*, float** %294, i64 %idxprom444
  %295 = load float*, float** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds float, float* %295, i64 %idxprom443
  %296 = load float, float* %arrayidx446, align 4
  %add447 = fadd float %296, %291
  store float %add447, float* %arrayidx446, align 4
  br label %for.inc.448

for.inc.448:                                      ; preds = %for.body.437
  %297 = load i32, i32* %j, align 4
  %inc449 = add nsw i32 %297, 1
  store i32 %inc449, i32* %j, align 4
  br label %for.cond.434

for.end.450:                                      ; preds = %for.cond.434
  %298 = load i32, i32* %i, align 4
  store i32 %298, i32* %j, align 4
  br label %for.cond.451

for.cond.451:                                     ; preds = %for.inc.465, %for.end.450
  %299 = load i32, i32* %j, align 4
  %cmp452 = icmp sgt i32 %299, 0
  br i1 %cmp452, label %for.body.454, label %for.end.466

for.body.454:                                     ; preds = %for.cond.451
  %300 = load i32, i32* %j, align 4
  %add455 = add nsw i32 %300, 1
  %idxprom456 = sext i32 %add455 to i64
  %301 = load i32, i32* %i, align 4
  %idxprom457 = sext i32 %301 to i64
  %302 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx458 = getelementptr inbounds float*, float** %302, i64 %idxprom457
  %303 = load float*, float** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds float, float* %303, i64 %idxprom456
  %304 = load float, float* %arrayidx459, align 4
  %305 = load i32, i32* %j, align 4
  %idxprom460 = sext i32 %305 to i64
  %306 = load i32, i32* %i, align 4
  %idxprom461 = sext i32 %306 to i64
  %307 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx462 = getelementptr inbounds float*, float** %307, i64 %idxprom461
  %308 = load float*, float** %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds float, float* %308, i64 %idxprom460
  %309 = load float, float* %arrayidx463, align 4
  %add464 = fadd float %309, %304
  store float %add464, float* %arrayidx463, align 4
  br label %for.inc.465

for.inc.465:                                      ; preds = %for.body.454
  %310 = load i32, i32* %j, align 4
  %dec = add nsw i32 %310, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.451

for.end.466:                                      ; preds = %for.cond.451
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.end.466
  %311 = load i32, i32* %i, align 4
  %inc468 = add nsw i32 %311, 1
  store i32 %inc468, i32* %i, align 4
  br label %for.cond.429

for.end.469:                                      ; preds = %for.cond.429
  %312 = load float**, float*** @Calignm1.v, align 8
  store float** %312, float*** @Calignm1.w, align 8
  %313 = load float***, float**** @Calignm1.g, align 8
  %arrayidx470 = getelementptr inbounds float**, float*** %313, i64 0
  %314 = load float**, float*** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds float*, float** %314, i64 0
  %315 = load float*, float** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds float, float* %315, i64 0
  %316 = load float, float* %arrayidx472, align 4
  %317 = load float**, float*** @Calignm1.w, align 8
  %arrayidx473 = getelementptr inbounds float*, float** %317, i64 0
  %318 = load float*, float** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds float, float* %318, i64 0
  %319 = load float, float* %arrayidx474, align 4
  %add475 = fadd float %319, %316
  store float %add475, float* %arrayidx474, align 4
  %320 = load float***, float**** @Calignm1.g, align 8
  %arrayidx476 = getelementptr inbounds float**, float*** %320, i64 0
  %321 = load float**, float*** %arrayidx476, align 8
  %arrayidx477 = getelementptr inbounds float*, float** %321, i64 0
  %322 = load float*, float** %arrayidx477, align 8
  %arrayidx478 = getelementptr inbounds float, float* %322, i64 1
  %323 = load float, float* %arrayidx478, align 4
  %324 = load float***, float**** @Calignm1.g, align 8
  %arrayidx479 = getelementptr inbounds float**, float*** %324, i64 1
  %325 = load float**, float*** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds float*, float** %325, i64 1
  %326 = load float*, float** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds float, float* %326, i64 0
  %327 = load float, float* %arrayidx481, align 4
  %add482 = fadd float %323, %327
  %328 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx483 = getelementptr inbounds float*, float** %328, i64 1
  %329 = load float*, float** %arrayidx483, align 8
  %arrayidx484 = getelementptr inbounds float, float* %329, i64 2
  %330 = load float, float* %arrayidx484, align 4
  %add485 = fadd float %add482, %330
  %331 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx486 = getelementptr inbounds float, float* %331, i64 0
  %332 = load float, float* %arrayidx486, align 4
  %add487 = fadd float %add485, %332
  %333 = load float**, float*** @Calignm1.w, align 8
  %arrayidx488 = getelementptr inbounds float*, float** %333, i64 1
  %334 = load float*, float** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds float, float* %334, i64 0
  %335 = load float, float* %arrayidx489, align 4
  %add490 = fadd float %335, %add487
  store float %add490, float* %arrayidx489, align 4
  store float 0.000000e+00, float* %tmpfloat, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.533, %for.end.469
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %lgth, align 4
  %add492 = add nsw i32 %337, 2
  %cmp493 = icmp slt i32 %336, %add492
  br i1 %cmp493, label %for.body.495, label %for.end.535

for.body.495:                                     ; preds = %for.cond.491
  %338 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %338, 1
  %idxprom496 = sext i32 %sub to i64
  %339 = load float***, float**** @Calignm1.g, align 8
  %arrayidx497 = getelementptr inbounds float**, float*** %339, i64 %idxprom496
  %340 = load float**, float*** %arrayidx497, align 8
  %arrayidx498 = getelementptr inbounds float*, float** %340, i64 1
  %341 = load float*, float** %arrayidx498, align 8
  %arrayidx499 = getelementptr inbounds float, float* %341, i64 1
  %342 = load float, float* %arrayidx499, align 4
  %343 = load i32, i32* %i, align 4
  %sub500 = sub nsw i32 %343, 1
  %idxprom501 = sext i32 %sub500 to i64
  %344 = load i32, i32* %i, align 4
  %sub502 = sub nsw i32 %344, 2
  %idxprom503 = sext i32 %sub502 to i64
  %345 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx504 = getelementptr inbounds float*, float** %345, i64 %idxprom503
  %346 = load float*, float** %arrayidx504, align 8
  %arrayidx505 = getelementptr inbounds float, float* %346, i64 %idxprom501
  %347 = load float, float* %arrayidx505, align 4
  %add506 = fadd float %342, %347
  %348 = load i32, i32* %i, align 4
  %sub507 = sub nsw i32 %348, 1
  %idxprom508 = sext i32 %sub507 to i64
  %349 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx509 = getelementptr inbounds float, float* %349, i64 %idxprom508
  %350 = load float, float* %arrayidx509, align 4
  %add510 = fadd float %add506, %350
  %351 = load float, float* %tmpfloat, align 4
  %add511 = fadd float %351, %add510
  store float %add511, float* %tmpfloat, align 4
  %352 = load float***, float**** @Calignm1.g, align 8
  %arrayidx512 = getelementptr inbounds float**, float*** %352, i64 0
  %353 = load float**, float*** %arrayidx512, align 8
  %arrayidx513 = getelementptr inbounds float*, float** %353, i64 0
  %354 = load float*, float** %arrayidx513, align 8
  %arrayidx514 = getelementptr inbounds float, float* %354, i64 1
  %355 = load float, float* %arrayidx514, align 4
  %356 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx515 = getelementptr inbounds float, float* %356, i64 0
  %357 = load float, float* %arrayidx515, align 4
  %add516 = fadd float %355, %357
  %358 = load float, float* %tmpfloat, align 4
  %add517 = fadd float %add516, %358
  %359 = load i32, i32* %i, align 4
  %idxprom518 = sext i32 %359 to i64
  %360 = load float***, float**** @Calignm1.g, align 8
  %arrayidx519 = getelementptr inbounds float**, float*** %360, i64 %idxprom518
  %361 = load float**, float*** %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds float*, float** %361, i64 1
  %362 = load float*, float** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds float, float* %362, i64 0
  %363 = load float, float* %arrayidx521, align 4
  %add522 = fadd float %add517, %363
  %364 = load i32, i32* %i, align 4
  %add523 = add nsw i32 %364, 1
  %idxprom524 = sext i32 %add523 to i64
  %365 = load i32, i32* %i, align 4
  %idxprom525 = sext i32 %365 to i64
  %366 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx526 = getelementptr inbounds float*, float** %366, i64 %idxprom525
  %367 = load float*, float** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds float, float* %367, i64 %idxprom524
  %368 = load float, float* %arrayidx527, align 4
  %add528 = fadd float %add522, %368
  %369 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %369 to i64
  %370 = load float**, float*** @Calignm1.w, align 8
  %arrayidx530 = getelementptr inbounds float*, float** %370, i64 %idxprom529
  %371 = load float*, float** %arrayidx530, align 8
  %arrayidx531 = getelementptr inbounds float, float* %371, i64 0
  %372 = load float, float* %arrayidx531, align 4
  %add532 = fadd float %372, %add528
  store float %add532, float* %arrayidx531, align 4
  br label %for.inc.533

for.inc.533:                                      ; preds = %for.body.495
  %373 = load i32, i32* %i, align 4
  %inc534 = add nsw i32 %373, 1
  store i32 %inc534, i32* %i, align 4
  br label %for.cond.491

for.end.535:                                      ; preds = %for.cond.491
  %374 = load i32, i32* @penalty, align 4
  %conv536 = sitofp i32 %374 to float
  %375 = load float, float* %totaleff, align 4
  %mul537 = fmul float %conv536, %375
  %376 = load i32, i32* getelementptr inbounds ([26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 24, i64 0), align 4
  %conv538 = sitofp i32 %376 to float
  %377 = load float, float* %totaleff, align 4
  %mul539 = fmul float %conv538, %377
  %add540 = fadd float %mul537, %mul539
  %378 = load float**, float*** @Calignm1.w, align 8
  %arrayidx541 = getelementptr inbounds float*, float** %378, i64 0
  %379 = load float*, float** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds float, float* %379, i64 1
  %380 = load float, float* %arrayidx542, align 4
  %add543 = fadd float %380, %add540
  store float %add543, float* %arrayidx542, align 4
  store float 0.000000e+00, float* %tmpfloat, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.544

for.cond.544:                                     ; preds = %for.inc.559, %for.end.535
  %381 = load i32, i32* %j, align 4
  %382 = load i32, i32* %lgth1, align 4
  %add545 = add nsw i32 %382, 1
  %cmp546 = icmp slt i32 %381, %add545
  br i1 %cmp546, label %for.body.548, label %for.end.561

for.body.548:                                     ; preds = %for.cond.544
  %383 = load i32, i32* getelementptr inbounds ([26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 24, i64 0), align 4
  %conv549 = sitofp i32 %383 to float
  %384 = load float, float* %totaleff, align 4
  %mul550 = fmul float %conv549, %384
  %385 = load float, float* %tmpfloat, align 4
  %add551 = fadd float %385, %mul550
  store float %add551, float* %tmpfloat, align 4
  %386 = load i32, i32* @penalty, align 4
  %conv552 = sitofp i32 %386 to float
  %387 = load float, float* %totaleff, align 4
  %mul553 = fmul float %conv552, %387
  %388 = load float, float* %tmpfloat, align 4
  %add554 = fadd float %mul553, %388
  %389 = load i32, i32* %j, align 4
  %idxprom555 = sext i32 %389 to i64
  %390 = load float**, float*** @Calignm1.w, align 8
  %arrayidx556 = getelementptr inbounds float*, float** %390, i64 0
  %391 = load float*, float** %arrayidx556, align 8
  %arrayidx557 = getelementptr inbounds float, float* %391, i64 %idxprom555
  %392 = load float, float* %arrayidx557, align 4
  %add558 = fadd float %392, %add554
  store float %add558, float* %arrayidx557, align 4
  br label %for.inc.559

for.inc.559:                                      ; preds = %for.body.548
  %393 = load i32, i32* %j, align 4
  %inc560 = add nsw i32 %393, 1
  store i32 %inc560, i32* %j, align 4
  br label %for.cond.544

for.end.561:                                      ; preds = %for.cond.544
  store i32 0, i32* %j, align 4
  br label %for.cond.562

for.cond.562:                                     ; preds = %for.inc.571, %for.end.561
  %394 = load i32, i32* %j, align 4
  %395 = load i32, i32* %lgth1, align 4
  %add563 = add nsw i32 %395, 1
  %cmp564 = icmp slt i32 %394, %add563
  br i1 %cmp564, label %for.body.566, label %for.end.573

for.body.566:                                     ; preds = %for.cond.562
  %396 = load i32, i32* %j, align 4
  %idxprom567 = sext i32 %396 to i64
  %397 = load float*, float** @Calignm1.m, align 8
  %arrayidx568 = getelementptr inbounds float, float* %397, i64 %idxprom567
  store float 0.000000e+00, float* %arrayidx568, align 4
  %398 = load i32, i32* %j, align 4
  %idxprom569 = sext i32 %398 to i64
  %399 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx570 = getelementptr inbounds i32, i32* %399, i64 %idxprom569
  store i32 0, i32* %arrayidx570, align 4
  br label %for.inc.571

for.inc.571:                                      ; preds = %for.body.566
  %400 = load i32, i32* %j, align 4
  %inc572 = add nsw i32 %400, 1
  store i32 %inc572, i32* %j, align 4
  br label %for.cond.562

for.end.573:                                      ; preds = %for.cond.562
  store i32 1, i32* %i, align 4
  br label %for.cond.574

for.cond.574:                                     ; preds = %for.inc.759, %for.end.573
  %401 = load i32, i32* %i, align 4
  %402 = load i32, i32* %lgth, align 4
  %add575 = add nsw i32 %402, 1
  %cmp576 = icmp slt i32 %401, %add575
  br i1 %cmp576, label %for.body.578, label %for.end.761

for.body.578:                                     ; preds = %for.cond.574
  store float 0.000000e+00, float* @Calignm1.mi, align 4
  store i32 0, i32* @Calignm1.mpi, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.579

for.cond.579:                                     ; preds = %for.inc.756, %for.body.578
  %403 = load i32, i32* %j, align 4
  %404 = load i32, i32* %lgth1, align 4
  %add580 = add nsw i32 %404, 1
  %cmp581 = icmp slt i32 %403, %add580
  br i1 %cmp581, label %for.body.583, label %for.end.758

for.body.583:                                     ; preds = %for.cond.579
  %405 = load i32, i32* %j, align 4
  %cmp584 = icmp sgt i32 %405, 1
  br i1 %cmp584, label %if.then.586, label %if.else.616

if.then.586:                                      ; preds = %for.body.583
  %406 = load i32, i32* %j, align 4
  %sub587 = sub nsw i32 %406, 2
  %idxprom588 = sext i32 %sub587 to i64
  %407 = load i32, i32* %i, align 4
  %sub589 = sub nsw i32 %407, 1
  %idxprom590 = sext i32 %sub589 to i64
  %408 = load float**, float*** @Calignm1.w, align 8
  %arrayidx591 = getelementptr inbounds float*, float** %408, i64 %idxprom590
  %409 = load float*, float** %arrayidx591, align 8
  %arrayidx592 = getelementptr inbounds float, float* %409, i64 %idxprom588
  %410 = load float, float* %arrayidx592, align 4
  %411 = load i32, i32* %i, align 4
  %sub593 = sub nsw i32 %411, 0
  %idxprom594 = sext i32 %sub593 to i64
  %412 = load float***, float**** @Calignm1.g, align 8
  %arrayidx595 = getelementptr inbounds float**, float*** %412, i64 %idxprom594
  %413 = load float**, float*** %arrayidx595, align 8
  %arrayidx596 = getelementptr inbounds float*, float** %413, i64 0
  %414 = load float*, float** %arrayidx596, align 8
  %arrayidx597 = getelementptr inbounds float, float* %414, i64 2
  %415 = load float, float* %arrayidx597, align 4
  %add598 = fadd float %410, %415
  %416 = load i32, i32* getelementptr inbounds ([26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 24, i64 0), align 4
  %conv599 = sitofp i32 %416 to float
  %417 = load float, float* %totaleff, align 4
  %mul600 = fmul float %conv599, %417
  %add601 = fadd float %add598, %mul600
  store float %add601, float* %x, align 4
  %418 = load i32, i32* %i, align 4
  %sub602 = sub nsw i32 %418, 1
  %idxprom603 = sext i32 %sub602 to i64
  %419 = load float***, float**** @Calignm1.g, align 8
  %arrayidx604 = getelementptr inbounds float**, float*** %419, i64 %idxprom603
  %420 = load float**, float*** %arrayidx604, align 8
  %arrayidx605 = getelementptr inbounds float*, float** %420, i64 2
  %421 = load float*, float** %arrayidx605, align 8
  %arrayidx606 = getelementptr inbounds float, float* %421, i64 2
  %422 = load float, float* %arrayidx606, align 4
  %423 = load i32, i32* getelementptr inbounds ([26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 24, i64 0), align 4
  %conv607 = sitofp i32 %423 to float
  %424 = load float, float* %totaleff, align 4
  %mul608 = fmul float %conv607, %424
  %add609 = fadd float %422, %mul608
  %425 = load float, float* @Calignm1.mi, align 4
  %add610 = fadd float %425, %add609
  store float %add610, float* @Calignm1.mi, align 4
  %426 = load float, float* @Calignm1.mi, align 4
  %427 = load float, float* %x, align 4
  %cmp611 = fcmp olt float %426, %427
  br i1 %cmp611, label %if.then.613, label %if.end.615

if.then.613:                                      ; preds = %if.then.586
  %428 = load float, float* %x, align 4
  store float %428, float* @Calignm1.mi, align 4
  %429 = load i32, i32* %j, align 4
  %sub614 = sub nsw i32 %429, 2
  store i32 %sub614, i32* @Calignm1.mpi, align 4
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.613, %if.then.586
  br label %if.end.627

if.else.616:                                      ; preds = %for.body.583
  %430 = load i32, i32* %i, align 4
  %sub617 = sub nsw i32 %430, 1
  %idxprom618 = sext i32 %sub617 to i64
  %431 = load float**, float*** @Calignm1.w, align 8
  %arrayidx619 = getelementptr inbounds float*, float** %431, i64 %idxprom618
  %432 = load float*, float** %arrayidx619, align 8
  %arrayidx620 = getelementptr inbounds float, float* %432, i64 0
  %433 = load float, float* %arrayidx620, align 4
  %434 = load i32, i32* %i, align 4
  %sub621 = sub nsw i32 %434, 0
  %idxprom622 = sext i32 %sub621 to i64
  %435 = load float***, float**** @Calignm1.g, align 8
  %arrayidx623 = getelementptr inbounds float**, float*** %435, i64 %idxprom622
  %436 = load float**, float*** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds float*, float** %436, i64 0
  %437 = load float*, float** %arrayidx624, align 8
  %arrayidx625 = getelementptr inbounds float, float* %437, i64 2
  %438 = load float, float* %arrayidx625, align 4
  %add626 = fadd float %433, %438
  store float %add626, float* @Calignm1.mi, align 4
  store i32 0, i32* @Calignm1.mpi, align 4
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.616, %if.end.615
  %439 = load i32, i32* %i, align 4
  %cmp628 = icmp sgt i32 %439, 1
  br i1 %cmp628, label %if.then.630, label %if.else.680

if.then.630:                                      ; preds = %if.end.627
  %440 = load i32, i32* %j, align 4
  %sub631 = sub nsw i32 %440, 1
  %idxprom632 = sext i32 %sub631 to i64
  %441 = load i32, i32* %i, align 4
  %sub633 = sub nsw i32 %441, 2
  %idxprom634 = sext i32 %sub633 to i64
  %442 = load float**, float*** @Calignm1.w, align 8
  %arrayidx635 = getelementptr inbounds float*, float** %442, i64 %idxprom634
  %443 = load float*, float** %arrayidx635, align 8
  %arrayidx636 = getelementptr inbounds float, float* %443, i64 %idxprom632
  %444 = load float, float* %arrayidx636, align 4
  %445 = load i32, i32* %i, align 4
  %sub637 = sub nsw i32 %445, 1
  %idxprom638 = sext i32 %sub637 to i64
  %446 = load float***, float**** @Calignm1.g, align 8
  %arrayidx639 = getelementptr inbounds float**, float*** %446, i64 %idxprom638
  %447 = load float**, float*** %arrayidx639, align 8
  %arrayidx640 = getelementptr inbounds float*, float** %447, i64 0
  %448 = load float*, float** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds float, float* %448, i64 1
  %449 = load float, float* %arrayidx641, align 4
  %add642 = fadd float %444, %449
  %450 = load i32, i32* %i, align 4
  %sub643 = sub nsw i32 %450, 1
  %idxprom644 = sext i32 %sub643 to i64
  %451 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx645 = getelementptr inbounds float, float* %451, i64 %idxprom644
  %452 = load float, float* %arrayidx645, align 4
  %add646 = fadd float %add642, %452
  store float %add646, float* %x, align 4
  %453 = load i32, i32* %i, align 4
  %sub647 = sub nsw i32 %453, 1
  %idxprom648 = sext i32 %sub647 to i64
  %454 = load float***, float**** @Calignm1.g, align 8
  %arrayidx649 = getelementptr inbounds float**, float*** %454, i64 %idxprom648
  %455 = load float**, float*** %arrayidx649, align 8
  %arrayidx650 = getelementptr inbounds float*, float** %455, i64 1
  %456 = load float*, float** %arrayidx650, align 8
  %arrayidx651 = getelementptr inbounds float, float* %456, i64 1
  %457 = load float, float* %arrayidx651, align 4
  %458 = load i32, i32* %i, align 4
  %459 = load i32, i32* %j, align 4
  %idxprom652 = sext i32 %459 to i64
  %460 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx653 = getelementptr inbounds i32, i32* %460, i64 %idxprom652
  %461 = load i32, i32* %arrayidx653, align 4
  %sub654 = sub nsw i32 %458, %461
  %sub655 = sub nsw i32 %sub654, 2
  %idxprom656 = sext i32 %sub655 to i64
  %462 = load i32, i32* %i, align 4
  %sub657 = sub nsw i32 %462, 2
  %idxprom658 = sext i32 %sub657 to i64
  %463 = load float**, float*** @Calignm1.gl, align 8
  %arrayidx659 = getelementptr inbounds float*, float** %463, i64 %idxprom658
  %464 = load float*, float** %arrayidx659, align 8
  %arrayidx660 = getelementptr inbounds float, float* %464, i64 %idxprom656
  %465 = load float, float* %arrayidx660, align 4
  %add661 = fadd float %457, %465
  %466 = load i32, i32* %i, align 4
  %sub662 = sub nsw i32 %466, 1
  %idxprom663 = sext i32 %sub662 to i64
  %467 = load float*, float** @Calignm1.gvsa, align 8
  %arrayidx664 = getelementptr inbounds float, float* %467, i64 %idxprom663
  %468 = load float, float* %arrayidx664, align 4
  %add665 = fadd float %add661, %468
  %469 = load i32, i32* %j, align 4
  %idxprom666 = sext i32 %469 to i64
  %470 = load float*, float** @Calignm1.m, align 8
  %arrayidx667 = getelementptr inbounds float, float* %470, i64 %idxprom666
  %471 = load float, float* %arrayidx667, align 4
  %add668 = fadd float %471, %add665
  store float %add668, float* %arrayidx667, align 4
  %472 = load i32, i32* %j, align 4
  %idxprom669 = sext i32 %472 to i64
  %473 = load float*, float** @Calignm1.m, align 8
  %arrayidx670 = getelementptr inbounds float, float* %473, i64 %idxprom669
  %474 = load float, float* %arrayidx670, align 4
  %475 = load float, float* %x, align 4
  %cmp671 = fcmp olt float %474, %475
  br i1 %cmp671, label %if.then.673, label %if.end.679

if.then.673:                                      ; preds = %if.then.630
  %476 = load float, float* %x, align 4
  %477 = load i32, i32* %j, align 4
  %idxprom674 = sext i32 %477 to i64
  %478 = load float*, float** @Calignm1.m, align 8
  %arrayidx675 = getelementptr inbounds float, float* %478, i64 %idxprom674
  store float %476, float* %arrayidx675, align 4
  %479 = load i32, i32* %i, align 4
  %sub676 = sub nsw i32 %479, 2
  %480 = load i32, i32* %j, align 4
  %idxprom677 = sext i32 %480 to i64
  %481 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx678 = getelementptr inbounds i32, i32* %481, i64 %idxprom677
  store i32 %sub676, i32* %arrayidx678, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.673, %if.then.630
  br label %if.end.694

if.else.680:                                      ; preds = %if.end.627
  %482 = load i32, i32* %j, align 4
  %sub681 = sub nsw i32 %482, 1
  %idxprom682 = sext i32 %sub681 to i64
  %483 = load float**, float*** @Calignm1.w, align 8
  %arrayidx683 = getelementptr inbounds float*, float** %483, i64 0
  %484 = load float*, float** %arrayidx683, align 8
  %arrayidx684 = getelementptr inbounds float, float* %484, i64 %idxprom682
  %485 = load float, float* %arrayidx684, align 4
  %486 = load i32, i32* %i, align 4
  %idxprom685 = sext i32 %486 to i64
  %487 = load float***, float**** @Calignm1.g, align 8
  %arrayidx686 = getelementptr inbounds float**, float*** %487, i64 %idxprom685
  %488 = load float**, float*** %arrayidx686, align 8
  %arrayidx687 = getelementptr inbounds float*, float** %488, i64 0
  %489 = load float*, float** %arrayidx687, align 8
  %arrayidx688 = getelementptr inbounds float, float* %489, i64 1
  %490 = load float, float* %arrayidx688, align 4
  %add689 = fadd float %485, %490
  %491 = load i32, i32* %j, align 4
  %idxprom690 = sext i32 %491 to i64
  %492 = load float*, float** @Calignm1.m, align 8
  %arrayidx691 = getelementptr inbounds float, float* %492, i64 %idxprom690
  store float %add689, float* %arrayidx691, align 4
  %493 = load i32, i32* %j, align 4
  %idxprom692 = sext i32 %493 to i64
  %494 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx693 = getelementptr inbounds i32, i32* %494, i64 %idxprom692
  store i32 0, i32* %arrayidx693, align 4
  br label %if.end.694

if.end.694:                                       ; preds = %if.else.680, %if.end.679
  %495 = load i32, i32* %j, align 4
  %sub695 = sub nsw i32 %495, 1
  %idxprom696 = sext i32 %sub695 to i64
  %496 = load i32, i32* %i, align 4
  %sub697 = sub nsw i32 %496, 1
  %idxprom698 = sext i32 %sub697 to i64
  %497 = load float**, float*** @Calignm1.w, align 8
  %arrayidx699 = getelementptr inbounds float*, float** %497, i64 %idxprom698
  %498 = load float*, float** %arrayidx699, align 8
  %arrayidx700 = getelementptr inbounds float, float* %498, i64 %idxprom696
  %499 = load float, float* %arrayidx700, align 4
  %500 = load i32, i32* %i, align 4
  %idxprom701 = sext i32 %500 to i64
  %501 = load float***, float**** @Calignm1.g, align 8
  %arrayidx702 = getelementptr inbounds float**, float*** %501, i64 %idxprom701
  %502 = load float**, float*** %arrayidx702, align 8
  %arrayidx703 = getelementptr inbounds float*, float** %502, i64 0
  %503 = load float*, float** %arrayidx703, align 8
  %arrayidx704 = getelementptr inbounds float, float* %503, i64 0
  %504 = load float, float* %arrayidx704, align 4
  %add705 = fadd float %499, %504
  store float %add705, float* %wmax, align 4
  %505 = load i32, i32* %j, align 4
  %idxprom706 = sext i32 %505 to i64
  %506 = load i32, i32* %i, align 4
  %idxprom707 = sext i32 %506 to i64
  %507 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx708 = getelementptr inbounds i32*, i32** %507, i64 %idxprom707
  %508 = load i32*, i32** %arrayidx708, align 8
  %arrayidx709 = getelementptr inbounds i32, i32* %508, i64 %idxprom706
  store i32 0, i32* %arrayidx709, align 4
  %509 = load float, float* @Calignm1.mi, align 4
  %510 = load i32, i32* %i, align 4
  %idxprom710 = sext i32 %510 to i64
  %511 = load float***, float**** @Calignm1.g, align 8
  %arrayidx711 = getelementptr inbounds float**, float*** %511, i64 %idxprom710
  %512 = load float**, float*** %arrayidx711, align 8
  %arrayidx712 = getelementptr inbounds float*, float** %512, i64 2
  %513 = load float*, float** %arrayidx712, align 8
  %arrayidx713 = getelementptr inbounds float, float* %513, i64 0
  %514 = load float, float* %arrayidx713, align 4
  %add714 = fadd float %509, %514
  store float %add714, float* %x, align 4
  %515 = load float, float* %x, align 4
  %516 = load float, float* %wmax, align 4
  %cmp715 = fcmp ogt float %515, %516
  br i1 %cmp715, label %if.then.717, label %if.end.724

if.then.717:                                      ; preds = %if.end.694
  %517 = load float, float* %x, align 4
  store float %517, float* %wmax, align 4
  %518 = load i32, i32* %j, align 4
  %519 = load i32, i32* @Calignm1.mpi, align 4
  %sub718 = sub nsw i32 %518, %519
  %sub719 = sub nsw i32 0, %sub718
  %520 = load i32, i32* %j, align 4
  %idxprom720 = sext i32 %520 to i64
  %521 = load i32, i32* %i, align 4
  %idxprom721 = sext i32 %521 to i64
  %522 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx722 = getelementptr inbounds i32*, i32** %522, i64 %idxprom721
  %523 = load i32*, i32** %arrayidx722, align 8
  %arrayidx723 = getelementptr inbounds i32, i32* %523, i64 %idxprom720
  store i32 %sub719, i32* %arrayidx723, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.717, %if.end.694
  %524 = load i32, i32* %j, align 4
  %idxprom725 = sext i32 %524 to i64
  %525 = load float*, float** @Calignm1.m, align 8
  %arrayidx726 = getelementptr inbounds float, float* %525, i64 %idxprom725
  %526 = load float, float* %arrayidx726, align 4
  %527 = load i32, i32* %i, align 4
  %idxprom727 = sext i32 %527 to i64
  %528 = load float***, float**** @Calignm1.g, align 8
  %arrayidx728 = getelementptr inbounds float**, float*** %528, i64 %idxprom727
  %529 = load float**, float*** %arrayidx728, align 8
  %arrayidx729 = getelementptr inbounds float*, float** %529, i64 1
  %530 = load float*, float** %arrayidx729, align 8
  %arrayidx730 = getelementptr inbounds float, float* %530, i64 0
  %531 = load float, float* %arrayidx730, align 4
  %add731 = fadd float %526, %531
  %532 = load i32, i32* %i, align 4
  %533 = load i32, i32* %j, align 4
  %idxprom732 = sext i32 %533 to i64
  %534 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx733 = getelementptr inbounds i32, i32* %534, i64 %idxprom732
  %535 = load i32, i32* %arrayidx733, align 4
  %sub734 = sub nsw i32 %532, %535
  %idxprom735 = sext i32 %sub734 to i64
  %536 = load i32, i32* %i, align 4
  %idxprom736 = sext i32 %536 to i64
  %537 = load float**, float*** @Calignm1.gs, align 8
  %arrayidx737 = getelementptr inbounds float*, float** %537, i64 %idxprom736
  %538 = load float*, float** %arrayidx737, align 8
  %arrayidx738 = getelementptr inbounds float, float* %538, i64 %idxprom735
  %539 = load float, float* %arrayidx738, align 4
  %add739 = fadd float %add731, %539
  store float %add739, float* %x, align 4
  %540 = load float, float* %x, align 4
  %541 = load float, float* %wmax, align 4
  %cmp740 = fcmp ogt float %540, %541
  br i1 %cmp740, label %if.then.742, label %if.end.750

if.then.742:                                      ; preds = %if.end.724
  %542 = load float, float* %x, align 4
  store float %542, float* %wmax, align 4
  %543 = load i32, i32* %i, align 4
  %544 = load i32, i32* %j, align 4
  %idxprom743 = sext i32 %544 to i64
  %545 = load i32*, i32** @Calignm1.mp, align 8
  %arrayidx744 = getelementptr inbounds i32, i32* %545, i64 %idxprom743
  %546 = load i32, i32* %arrayidx744, align 4
  %sub745 = sub nsw i32 %543, %546
  %547 = load i32, i32* %j, align 4
  %idxprom746 = sext i32 %547 to i64
  %548 = load i32, i32* %i, align 4
  %idxprom747 = sext i32 %548 to i64
  %549 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx748 = getelementptr inbounds i32*, i32** %549, i64 %idxprom747
  %550 = load i32*, i32** %arrayidx748, align 8
  %arrayidx749 = getelementptr inbounds i32, i32* %550, i64 %idxprom746
  store i32 %sub745, i32* %arrayidx749, align 4
  br label %if.end.750

if.end.750:                                       ; preds = %if.then.742, %if.end.724
  %551 = load float, float* %wmax, align 4
  %552 = load i32, i32* %j, align 4
  %idxprom751 = sext i32 %552 to i64
  %553 = load i32, i32* %i, align 4
  %idxprom752 = sext i32 %553 to i64
  %554 = load float**, float*** @Calignm1.w, align 8
  %arrayidx753 = getelementptr inbounds float*, float** %554, i64 %idxprom752
  %555 = load float*, float** %arrayidx753, align 8
  %arrayidx754 = getelementptr inbounds float, float* %555, i64 %idxprom751
  %556 = load float, float* %arrayidx754, align 4
  %add755 = fadd float %556, %551
  store float %add755, float* %arrayidx754, align 4
  br label %for.inc.756

for.inc.756:                                      ; preds = %if.end.750
  %557 = load i32, i32* %j, align 4
  %inc757 = add nsw i32 %557, 1
  store i32 %inc757, i32* %j, align 4
  br label %for.cond.579

for.end.758:                                      ; preds = %for.cond.579
  br label %for.inc.759

for.inc.759:                                      ; preds = %for.end.758
  %558 = load i32, i32* %i, align 4
  %inc760 = add nsw i32 %558, 1
  store i32 %inc760, i32* %i, align 4
  br label %for.cond.574

for.end.761:                                      ; preds = %for.cond.574
  %559 = load i32, i32* @cnst, align 4
  %tobool762 = icmp ne i32 %559, 0
  br i1 %tobool762, label %if.then.763, label %if.end.783

if.then.763:                                      ; preds = %for.end.761
  %560 = load i32, i32* %lgth1, align 4
  %sub764 = sub nsw i32 %560, 1
  %idxprom765 = sext i32 %sub764 to i64
  %561 = load i32, i32* %lgth, align 4
  %sub766 = sub nsw i32 %561, 1
  %idxprom767 = sext i32 %sub766 to i64
  %562 = load float**, float*** @Calignm1.w, align 8
  %arrayidx768 = getelementptr inbounds float*, float** %562, i64 %idxprom767
  %563 = load float*, float** %arrayidx768, align 8
  %arrayidx769 = getelementptr inbounds float, float* %563, i64 %idxprom765
  %564 = load float, float* %arrayidx769, align 4
  %565 = load i32, i32* %lgth, align 4
  %idxprom770 = sext i32 %565 to i64
  %566 = load float***, float**** @Calignm1.g, align 8
  %arrayidx771 = getelementptr inbounds float**, float*** %566, i64 %idxprom770
  %567 = load float**, float*** %arrayidx771, align 8
  %arrayidx772 = getelementptr inbounds float*, float** %567, i64 0
  %568 = load float*, float** %arrayidx772, align 8
  %arrayidx773 = getelementptr inbounds float, float* %568, i64 0
  %569 = load float, float* %arrayidx773, align 4
  %add774 = fadd float %564, %569
  %570 = load i32, i32* %lgth1, align 4
  %idxprom775 = sext i32 %570 to i64
  %571 = load i32, i32* %lgth, align 4
  %idxprom776 = sext i32 %571 to i64
  %572 = load float**, float*** @Calignm1.w, align 8
  %arrayidx777 = getelementptr inbounds float*, float** %572, i64 %idxprom776
  %573 = load float*, float** %arrayidx777, align 8
  %arrayidx778 = getelementptr inbounds float, float* %573, i64 %idxprom775
  store float %add774, float* %arrayidx778, align 4
  %574 = load i32, i32* %lgth1, align 4
  %idxprom779 = sext i32 %574 to i64
  %575 = load i32, i32* %lgth, align 4
  %idxprom780 = sext i32 %575 to i64
  %576 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx781 = getelementptr inbounds i32*, i32** %576, i64 %idxprom780
  %577 = load i32*, i32** %arrayidx781, align 8
  %arrayidx782 = getelementptr inbounds i32, i32* %577, i64 %idxprom779
  store i32 0, i32* %arrayidx782, align 4
  br label %if.end.783

if.end.783:                                       ; preds = %if.then.763, %for.end.761
  %578 = load i32, i32* %lgth1, align 4
  %idxprom784 = sext i32 %578 to i64
  %579 = load i32, i32* %lgth, align 4
  %idxprom785 = sext i32 %579 to i64
  %580 = load float**, float*** @Calignm1.w, align 8
  %arrayidx786 = getelementptr inbounds float*, float** %580, i64 %idxprom785
  %581 = load float*, float** %arrayidx786, align 8
  %arrayidx787 = getelementptr inbounds float, float* %581, i64 %idxprom784
  %582 = load float, float* %arrayidx787, align 4
  %583 = load float*, float** %wm.addr, align 8
  store float %582, float* %583, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.788

for.cond.788:                                     ; preds = %for.inc.797, %if.end.783
  %584 = load i32, i32* %i, align 4
  %585 = load i32, i32* %lgth, align 4
  %add789 = add nsw i32 %585, 1
  %cmp790 = icmp slt i32 %584, %add789
  br i1 %cmp790, label %for.body.792, label %for.end.799

for.body.792:                                     ; preds = %for.cond.788
  %586 = load i32, i32* %i, align 4
  %add793 = add nsw i32 %586, 1
  %587 = load i32, i32* %i, align 4
  %idxprom794 = sext i32 %587 to i64
  %588 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx795 = getelementptr inbounds i32*, i32** %588, i64 %idxprom794
  %589 = load i32*, i32** %arrayidx795, align 8
  %arrayidx796 = getelementptr inbounds i32, i32* %589, i64 0
  store i32 %add793, i32* %arrayidx796, align 4
  br label %for.inc.797

for.inc.797:                                      ; preds = %for.body.792
  %590 = load i32, i32* %i, align 4
  %inc798 = add nsw i32 %590, 1
  store i32 %inc798, i32* %i, align 4
  br label %for.cond.788

for.end.799:                                      ; preds = %for.cond.788
  store i32 0, i32* %j, align 4
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.810, %for.end.799
  %591 = load i32, i32* %j, align 4
  %592 = load i32, i32* %lgth1, align 4
  %add801 = add nsw i32 %592, 1
  %cmp802 = icmp slt i32 %591, %add801
  br i1 %cmp802, label %for.body.804, label %for.end.812

for.body.804:                                     ; preds = %for.cond.800
  %593 = load i32, i32* %j, align 4
  %add805 = add nsw i32 %593, 1
  %sub806 = sub nsw i32 0, %add805
  %594 = load i32, i32* %j, align 4
  %idxprom807 = sext i32 %594 to i64
  %595 = load i32**, i32*** @Calignm1.ijp, align 8
  %arrayidx808 = getelementptr inbounds i32*, i32** %595, i64 0
  %596 = load i32*, i32** %arrayidx808, align 8
  %arrayidx809 = getelementptr inbounds i32, i32* %596, i64 %idxprom807
  store i32 %sub806, i32* %arrayidx809, align 4
  br label %for.inc.810

for.inc.810:                                      ; preds = %for.body.804
  %597 = load i32, i32* %j, align 4
  %inc811 = add nsw i32 %597, 1
  store i32 %inc811, i32* %j, align 4
  br label %for.cond.800

for.end.812:                                      ; preds = %for.cond.800
  %598 = load i8**, i8*** @Calignm1.nseq, align 8
  %599 = load i8**, i8*** %aseq.addr, align 8
  %600 = load i8*, i8** %seq.addr, align 8
  %601 = load i32**, i32*** @Calignm1.ijp, align 8
  %602 = load i32, i32* %icyc.addr, align 4
  call void @tracking(i8** %598, i8** %599, i8* %600, i32** %601, i32 %602)
  %603 = load i32, i32* %lgth1, align 4
  %idxprom813 = sext i32 %603 to i64
  %604 = load i32, i32* %lgth, align 4
  %idxprom814 = sext i32 %604 to i64
  %605 = load float**, float*** @Calignm1.w, align 8
  %arrayidx815 = getelementptr inbounds float*, float** %605, i64 %idxprom814
  %606 = load float*, float** %arrayidx815, align 8
  %arrayidx816 = getelementptr inbounds float, float* %606, i64 %idxprom813
  %607 = load float, float* %arrayidx816, align 4
  %608 = load float*, float** %wm.addr, align 8
  store float %607, float* %608, align 4
  %609 = load i8**, i8*** @Calignm1.nseq, align 8
  ret i8** %609
}

declare void @FreeFloatMtx(float**) #3

declare void @FreeFloatCub(float***) #3

declare void @FreeFloatTri(float**) #3

declare void @FreeFloatVec(float*) #3

declare void @FreeIntVec(i32*) #3

declare void @FreeCharMtx(i8**) #3

declare float** @AllocateFloatMtx(i32, i32) #3

declare float*** @AllocateFloatCub(i32, i32, i32) #3

declare float** @AllocateFloatTri(i32) #3

declare float* @AllocateFloatVec(i32) #3

declare i32* @AllocateIntVec(i32) #3

declare i8** @AllocateCharMtx(i32, i32) #3

declare void @FreeIntMtx(i32**) #3

declare i32** @AllocateIntMtx(i32, i32) #3

declare void @scmx_calc(i32, i8**, double*, float**) #3

; Function Attrs: nounwind uwtable
define double @Cscore_m_1(i8** %seq, i32 %locnjob, i32 %ex, double** %eff) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %locnjob.addr = alloca i32, align 4
  %ex.addr = alloca i32, align 4
  %eff.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %len = alloca i32, align 4
  %gb1 = alloca i32, align 4
  %gb2 = alloca i32, align 4
  %gc1 = alloca i32, align 4
  %gc2 = alloca i32, align 4
  %cob = alloca i32, align 4
  %nglen = alloca i32, align 4
  %score = alloca double, align 8
  %pen = alloca double, align 8
  %tmpscore = alloca double, align 8
  %glen1 = alloca i32*, align 8
  %glen2 = alloca i32*, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %efficient = alloca double, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i32 %ex, i32* %ex.addr, align 4
  store double** %eff, double*** %eff.addr, align 8
  %0 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %locnjob.addr, align 4
  %call1 = call i32* @AllocateIntVec(i32 %2)
  store i32* %call1, i32** %glen1, align 8
  %3 = load i32, i32* %locnjob.addr, align 4
  %call2 = call i32* @AllocateIntVec(i32 %3)
  store i32* %call2, i32** %glen2, align 8
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %nglen, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.162, %entry
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.164

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %pen, align 8
  store double 0.000000e+00, double* %tmpscore, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %locnjob.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %ex.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load double**, double*** %eff.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %10, i64 %idxprom8
  %11 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx10, align 8
  store double %12, double* %efficient, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ex.addr, align 4
  %cmp11 = icmp eq i32 %13, %14
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  br label %for.inc

if.end:                                           ; preds = %for.body.7
  %15 = load i32, i32* %k, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %16 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom16 = sext i32 %sub to i64
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i8**, i8*** %seq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %18, i64 %idxprom17
  %19 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 45
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %gb1, align 4
  %21 = load i32, i32* %k, align 4
  %sub23 = sub nsw i32 %21, 1
  %idxprom24 = sext i32 %sub23 to i64
  %22 = load i32, i32* %ex.addr, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i8**, i8*** %seq.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %23, i64 %idxprom25
  %24 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom24
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %gb2, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end
  store i32 0, i32* %gb1, align 4
  store i32 0, i32* %gb2, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.15
  %26 = load i32, i32* %gb1, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.end.31
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i32*, i32** %glen1, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %28, i64 %idxprom33
  %29 = load i32, i32* %arrayidx34, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %arrayidx34, align 4
  br label %if.end.38

if.else.35:                                       ; preds = %if.end.31
  %30 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i32*, i32** %glen1, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %31, i64 %idxprom36
  store i32 0, i32* %arrayidx37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.32
  %32 = load i32, i32* %gb2, align 4
  %tobool39 = icmp ne i32 %32, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.end.38
  %33 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32*, i32** %glen2, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %34, i64 %idxprom41
  %35 = load i32, i32* %arrayidx42, align 4
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, i32* %arrayidx42, align 4
  br label %if.end.47

if.else.44:                                       ; preds = %if.end.38
  %36 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load i32*, i32** %glen2, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %37, i64 %idxprom45
  store i32 0, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.40
  %38 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %40 = load i8**, i8*** %seq.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %40, i64 %idxprom49
  %41 = load i8*, i8** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %41, i64 %idxprom48
  %42 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %42 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  %conv54 = zext i1 %cmp53 to i32
  store i32 %conv54, i32* %gc1, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load i32, i32* %ex.addr, align 4
  %idxprom56 = sext i32 %44 to i64
  %45 = load i8**, i8*** %seq.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %45, i64 %idxprom56
  %46 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %46, i64 %idxprom55
  %47 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %47 to i32
  %cmp60 = icmp eq i32 %conv59, 45
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %gc2, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %48 to i64
  %49 = load i32*, i32** %glen1, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %49, i64 %idxprom62
  %50 = load i32, i32* %arrayidx63, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %51 to i64
  %52 = load i32*, i32** %glen2, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %52, i64 %idxprom64
  %53 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp sge i32 %50, %53
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.end.47
  store i32 1, i32* %tmp1, align 4
  br label %if.end.70

if.else.69:                                       ; preds = %if.end.47
  store i32 0, i32* %tmp1, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.68
  %54 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %54 to i64
  %55 = load i32*, i32** %glen1, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %55, i64 %idxprom71
  %56 = load i32, i32* %arrayidx72, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %57 to i64
  %58 = load i32*, i32** %glen2, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %58, i64 %idxprom73
  %59 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp sle i32 %56, %59
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.70
  store i32 1, i32* %tmp2, align 4
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.70
  store i32 0, i32* %tmp2, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  %60 = load i32, i32* %gb1, align 4
  %tobool80 = icmp ne i32 %60, 0
  %lnot = xor i1 %tobool80, true
  %lnot.ext = zext i1 %lnot to i32
  %61 = load i32, i32* %gc1, align 4
  %mul = mul nsw i32 %lnot.ext, %61
  %62 = load i32, i32* %gb2, align 4
  %tobool81 = icmp ne i32 %62, 0
  %lnot82 = xor i1 %tobool81, true
  %lnot.ext83 = zext i1 %lnot82 to i32
  %mul84 = mul nsw i32 %mul, %lnot.ext83
  %63 = load i32, i32* %gc2, align 4
  %tobool85 = icmp ne i32 %63, 0
  %lnot86 = xor i1 %tobool85, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  %mul88 = mul nsw i32 %mul84, %lnot.ext87
  %64 = load i32, i32* %gb1, align 4
  %tobool89 = icmp ne i32 %64, 0
  %lnot90 = xor i1 %tobool89, true
  %lnot.ext91 = zext i1 %lnot90 to i32
  %65 = load i32, i32* %gc1, align 4
  %tobool92 = icmp ne i32 %65, 0
  %lnot93 = xor i1 %tobool92, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %mul95 = mul nsw i32 %lnot.ext91, %lnot.ext94
  %66 = load i32, i32* %gb2, align 4
  %tobool96 = icmp ne i32 %66, 0
  %lnot97 = xor i1 %tobool96, true
  %lnot.ext98 = zext i1 %lnot97 to i32
  %mul99 = mul nsw i32 %mul95, %lnot.ext98
  %67 = load i32, i32* %gc2, align 4
  %mul100 = mul nsw i32 %mul99, %67
  %add = add nsw i32 %mul88, %mul100
  %68 = load i32, i32* %gb1, align 4
  %tobool101 = icmp ne i32 %68, 0
  %lnot102 = xor i1 %tobool101, true
  %lnot.ext103 = zext i1 %lnot102 to i32
  %69 = load i32, i32* %gc1, align 4
  %mul104 = mul nsw i32 %lnot.ext103, %69
  %70 = load i32, i32* %gb2, align 4
  %mul105 = mul nsw i32 %mul104, %70
  %71 = load i32, i32* %gc2, align 4
  %tobool106 = icmp ne i32 %71, 0
  %lnot107 = xor i1 %tobool106, true
  %lnot.ext108 = zext i1 %lnot107 to i32
  %mul109 = mul nsw i32 %mul105, %lnot.ext108
  %add110 = add nsw i32 %add, %mul109
  %72 = load i32, i32* %gb1, align 4
  %73 = load i32, i32* %gc1, align 4
  %tobool111 = icmp ne i32 %73, 0
  %lnot112 = xor i1 %tobool111, true
  %lnot.ext113 = zext i1 %lnot112 to i32
  %mul114 = mul nsw i32 %72, %lnot.ext113
  %74 = load i32, i32* %gb2, align 4
  %tobool115 = icmp ne i32 %74, 0
  %lnot116 = xor i1 %tobool115, true
  %lnot.ext117 = zext i1 %lnot116 to i32
  %mul118 = mul nsw i32 %mul114, %lnot.ext117
  %75 = load i32, i32* %gc2, align 4
  %mul119 = mul nsw i32 %mul118, %75
  %add120 = add nsw i32 %add110, %mul119
  %76 = load i32, i32* %gb1, align 4
  %77 = load i32, i32* %gc1, align 4
  %tobool121 = icmp ne i32 %77, 0
  %lnot122 = xor i1 %tobool121, true
  %lnot.ext123 = zext i1 %lnot122 to i32
  %mul124 = mul nsw i32 %76, %lnot.ext123
  %78 = load i32, i32* %gb2, align 4
  %mul125 = mul nsw i32 %mul124, %78
  %79 = load i32, i32* %gc2, align 4
  %mul126 = mul nsw i32 %mul125, %79
  %80 = load i32, i32* %tmp1, align 4
  %mul127 = mul nsw i32 %mul126, %80
  %add128 = add nsw i32 %add120, %mul127
  %81 = load i32, i32* %gb1, align 4
  %82 = load i32, i32* %gc1, align 4
  %mul129 = mul nsw i32 %81, %82
  %83 = load i32, i32* %gb2, align 4
  %mul130 = mul nsw i32 %mul129, %83
  %84 = load i32, i32* %gc2, align 4
  %tobool131 = icmp ne i32 %84, 0
  %lnot132 = xor i1 %tobool131, true
  %lnot.ext133 = zext i1 %lnot132 to i32
  %mul134 = mul nsw i32 %mul130, %lnot.ext133
  %85 = load i32, i32* %tmp2, align 4
  %mul135 = mul nsw i32 %mul134, %85
  %add136 = add nsw i32 %add128, %mul135
  store i32 %add136, i32* %cob, align 4
  %86 = load i32, i32* %cob, align 4
  %conv137 = sitofp i32 %86 to double
  %87 = load i32, i32* @penalty, align 4
  %conv138 = sitofp i32 %87 to double
  %mul139 = fmul double %conv137, %conv138
  %88 = load double, double* %efficient, align 8
  %mul140 = fmul double %mul139, %88
  %89 = load double, double* %pen, align 8
  %add141 = fadd double %89, %mul140
  store double %add141, double* %pen, align 8
  %90 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %90 to i64
  %91 = load i32, i32* %ex.addr, align 4
  %idxprom143 = sext i32 %91 to i64
  %92 = load i8**, i8*** %seq.addr, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %92, i64 %idxprom143
  %93 = load i8*, i8** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %93, i64 %idxprom142
  %94 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %94 to i32
  %idxprom147 = sext i32 %conv146 to i64
  %95 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %96 to i64
  %97 = load i8**, i8*** %seq.addr, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %97, i64 %idxprom149
  %98 = load i8*, i8** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %98, i64 %idxprom148
  %99 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %99 to i32
  %idxprom153 = sext i32 %conv152 to i64
  %arrayidx154 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx154, i32 0, i64 %idxprom147
  %100 = load i32, i32* %arrayidx155, align 4
  %conv156 = sitofp i32 %100 to double
  %101 = load double, double* %efficient, align 8
  %mul157 = fmul double %conv156, %101
  %102 = load double, double* %tmpscore, align 8
  %add158 = fadd double %102, %mul157
  store double %add158, double* %tmpscore, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.79, %if.then
  %103 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %103, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %104 = load double, double* %tmpscore, align 8
  %105 = load double, double* %score, align 8
  %add160 = fadd double %105, %104
  store double %add160, double* %score, align 8
  %106 = load double, double* %pen, align 8
  %107 = load double, double* %score, align 8
  %add161 = fadd double %107, %106
  store double %add161, double* %score, align 8
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.end
  %108 = load i32, i32* %k, align 4
  %inc163 = add nsw i32 %108, 1
  store i32 %inc163, i32* %k, align 4
  br label %for.cond

for.end.164:                                      ; preds = %for.cond
  %109 = load i32*, i32** %glen1, align 8
  %110 = bitcast i32* %109 to i8*
  call void @free(i8* %110) #2
  %111 = load i32*, i32** %glen2, align 8
  %112 = bitcast i32* %111 to i8*
  call void @free(i8* %112) #2
  %113 = load double, double* %score, align 8
  ret double %113
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
