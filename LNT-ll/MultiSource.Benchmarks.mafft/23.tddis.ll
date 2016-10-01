; ModuleID = './MultiSource.Benchmarks.mafft/23.tddis.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._RNApair = type { i32, float, i32, float, i32, float }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@njob = external global i32, align 4
@amino_dis = external global [128 x [128 x i32]], align 16
@penalty = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"score in score_calc = %f\0A\00", align 1
@amino_n = external global [128 x i32], align 16
@strnbcat.b = internal global [5000000 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@nodeFromABranch.outergroup2 = internal global i32* null, align 8
@nodeFromABranch.table = internal global i32* null, align 8
@geta2 = external global float, align 4

; Function Attrs: nounwind uwtable
define void @mdfymtx(i8** %pair, i32 %s1, double** %partialmtx, double** %mtx) #0 {
entry:
  %pair.addr = alloca i8**, align 8
  %s1.addr = alloca i32, align 4
  %partialmtx.addr = alloca double**, align 8
  %mtx.addr = alloca double**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %icount = alloca i32, align 4
  %jcount = alloca i32, align 4
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s1, i32* %s1.addr, align 4
  store double** %partialmtx, double*** %partialmtx.addr, align 8
  store double** %mtx, double*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %icount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @njob, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %s1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.24

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %j, align 4
  %8 = load i32, i32* %icount, align 4
  %add3 = add nsw i32 %8, 1
  store i32 %add3, i32* %jcount, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.end
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* @njob, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32, i32* %s1.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i8**, i8*** %pair.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom7
  %15 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %15, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body.6
  br label %for.inc

if.end.13:                                        ; preds = %for.body.6
  %16 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load double**, double*** %mtx.addr, align 8
  %arrayidx16 = getelementptr inbounds double*, double** %18, i64 %idxprom15
  %19 = load double*, double** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds double, double* %19, i64 %idxprom14
  %20 = load double, double* %arrayidx17, align 8
  %21 = load i32, i32* %jcount, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32, i32* %icount, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load double**, double*** %partialmtx.addr, align 8
  %arrayidx20 = getelementptr inbounds double*, double** %23, i64 %idxprom19
  %24 = load double*, double** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds double, double* %24, i64 %idxprom18
  store double %20, double* %arrayidx21, align 8
  %25 = load i32, i32* %jcount, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %jcount, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.12
  %26 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %27 = load i32, i32* %icount, align 4
  %inc23 = add nsw i32 %27, 1
  store i32 %inc23, i32* %icount, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end, %if.then
  %28 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @score_calc(i8** %seq, i32 %s) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca i32, align 4
  %len = alloca i32, align 4
  %score = alloca float, align 4
  %tmpscore = alloca i32, align 4
  %mseq1 = alloca i8*, align 8
  %mseq2 = alloca i8*, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i8**, i8*** %seq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store float 0.000000e+00, float* %score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %s.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.82, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %s.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.5, label %for.end.84

for.body.5:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %seq.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx6, align 8
  store i8* %9, i8** %mseq1, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i8**, i8*** %seq.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx8, align 8
  store i8* %12, i8** %mseq2, align 8
  store i32 0, i32* %tmpscore, align 4
  store i32 0, i32* %c, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body.5
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %len, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %15 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i8*, i8** %mseq1, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 45
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.12
  %18 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8*, i8** %mseq2, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 45
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body.12
  %21 = load i32, i32* %c, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %c, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i8*, i8** %mseq2, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 %idxprom23
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %25 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i8*, i8** %mseq1, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %27 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %arrayidx31 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx31, i32 0, i64 %idxprom26
  %28 = load i32, i32* %arrayidx32, align 4
  %29 = load i32, i32* %tmpscore, align 4
  %add33 = add nsw i32 %29, %28
  store i32 %add33, i32* %tmpscore, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load i8*, i8** %mseq1, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %idxprom34
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 45
  br i1 %cmp37, label %if.then.39, label %if.end.52

if.then.39:                                       ; preds = %if.end
  %33 = load i32, i32* @penalty, align 4
  %34 = load i32, i32* %tmpscore, align 4
  %add40 = add nsw i32 %34, %33
  store i32 %add40, i32* %tmpscore, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.39
  %35 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %35, 1
  store i32 %inc41, i32* %k, align 4
  %idxprom42 = sext i32 %inc41 to i64
  %36 = load i8*, i8** %mseq1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 %idxprom42
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 45
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i32, i32* %k, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %k, align 4
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %len, align 4
  %sub47 = sub nsw i32 %40, 2
  %cmp48 = icmp sgt i32 %39, %sub47
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end
  br label %for.end

if.end.51:                                        ; preds = %while.end
  br label %for.inc

if.end.52:                                        ; preds = %if.end
  %41 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load i8*, i8** %mseq2, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %42, i64 %idxprom53
  %43 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %43 to i32
  %cmp56 = icmp eq i32 %conv55, 45
  br i1 %cmp56, label %if.then.58, label %if.end.75

if.then.58:                                       ; preds = %if.end.52
  %44 = load i32, i32* @penalty, align 4
  %45 = load i32, i32* %tmpscore, align 4
  %add59 = add nsw i32 %45, %44
  store i32 %add59, i32* %tmpscore, align 4
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.67, %if.then.58
  %46 = load i32, i32* %k, align 4
  %inc61 = add nsw i32 %46, 1
  store i32 %inc61, i32* %k, align 4
  %idxprom62 = sext i32 %inc61 to i64
  %47 = load i8*, i8** %mseq2, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %47, i64 %idxprom62
  %48 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %48 to i32
  %cmp65 = icmp eq i32 %conv64, 45
  br i1 %cmp65, label %while.body.67, label %while.end.68

while.body.67:                                    ; preds = %while.cond.60
  br label %while.cond.60

while.end.68:                                     ; preds = %while.cond.60
  %49 = load i32, i32* %k, align 4
  %dec69 = add nsw i32 %49, -1
  store i32 %dec69, i32* %k, align 4
  %50 = load i32, i32* %k, align 4
  %51 = load i32, i32* %len, align 4
  %sub70 = sub nsw i32 %51, 2
  %cmp71 = icmp sgt i32 %50, %sub70
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %while.end.68
  br label %for.end

if.end.74:                                        ; preds = %while.end.68
  br label %for.inc

if.end.75:                                        ; preds = %if.end.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %if.end.74, %if.end.51, %if.then
  %52 = load i32, i32* %k, align 4
  %inc76 = add nsw i32 %52, 1
  store i32 %inc76, i32* %k, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.then.73, %if.then.50, %for.cond.9
  %53 = load i32, i32* %tmpscore, align 4
  %conv77 = sitofp i32 %53 to double
  %54 = load i32, i32* %c, align 4
  %conv78 = sitofp i32 %54 to double
  %div = fdiv double %conv77, %conv78
  %55 = load float, float* %score, align 4
  %conv79 = fpext float %55 to double
  %add80 = fadd double %conv79, %div
  %conv81 = fptrunc double %add80 to float
  store float %conv81, float* %score, align 4
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %56 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %56, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.2

for.end.84:                                       ; preds = %for.cond.2
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %57 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %57, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  %58 = load float, float* %score, align 4
  %conv88 = fpext float %58 to double
  %59 = load i32, i32* %s.addr, align 4
  %conv89 = sitofp i32 %59 to double
  %60 = load i32, i32* %s.addr, align 4
  %conv90 = sitofp i32 %60 to double
  %sub91 = fsub double %conv90, 1.000000e+00
  %mul = fmul double %conv89, %sub91
  %div92 = fdiv double %mul, 2.000000e+00
  %div93 = fdiv double %conv88, %div92
  %conv94 = fptrunc double %div93 to float
  store float %conv94, float* %score, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load float, float* %score, align 4
  %conv95 = fpext float %62 to double
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), double %conv95)
  %63 = load float, float* %score, align 4
  ret float %63
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @cpmx_calc(i8** %seq, float** %cpmx, double* %eff, i32 %lgth, i32 %clus) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %cpmx.addr = alloca float**, align 8
  %eff.addr = alloca double*, align 8
  %lgth.addr = alloca i32, align 4
  %clus.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %totaleff = alloca double, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store float** %cpmx, float*** %cpmx.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  store i32 %clus, i32* %clus.addr, align 4
  store double 0.000000e+00, double* %totaleff, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %clus.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %eff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %totaleff, align 8
  %add = fadd double %5, %4
  store double %add, double* %totaleff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.14, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %7, 26
  br i1 %cmp2, label %for.body.3, label %for.end.16

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %for.body.3
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %lgth.addr, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load float**, float*** %cpmx.addr, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %12, i64 %idxprom8
  %13 = load float*, float** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %13, i64 %idxprom7
  store float 0.000000e+00, float* %arrayidx10, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %14 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.4

for.end.13:                                       ; preds = %for.cond.4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %15 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.1

for.end.16:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.43, %for.end.16
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %lgth.addr, align 4
  %cmp18 = icmp slt i32 %16, %17
  br i1 %cmp18, label %for.body.19, label %for.end.45

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %k, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.40, %for.body.19
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %clus.addr, align 4
  %cmp21 = icmp slt i32 %18, %19
  br i1 %cmp21, label %for.body.22, label %for.end.42

for.body.22:                                      ; preds = %for.cond.20
  %20 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load double*, double** %eff.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %21, i64 %idxprom23
  %22 = load double, double* %arrayidx24, align 8
  %conv = fptrunc double %22 to float
  %conv25 = fpext float %conv to double
  %23 = load double, double* %totaleff, align 8
  %div = fdiv double %conv25, %23
  %24 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load i8**, i8*** %seq.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %27, i64 %idxprom28
  %28 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %28, i64 %idxprom27
  %29 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %29 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load float**, float*** %cpmx.addr, align 8
  %arrayidx35 = getelementptr inbounds float*, float** %31, i64 %idxprom34
  %32 = load float*, float** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds float, float* %32, i64 %idxprom26
  %33 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %33 to double
  %add38 = fadd double %conv37, %div
  %conv39 = fptrunc double %add38 to float
  store float %conv39, float* %arrayidx36, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.22
  %34 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond.20

for.end.42:                                       ; preds = %for.cond.20
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %35 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.17

for.end.45:                                       ; preds = %for.cond.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpmx_calc_new_bk(i8** %seq, float** %cpmx, double* %eff, i32 %lgth, i32 %clus) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %cpmx.addr = alloca float**, align 8
  %eff.addr = alloca double*, align 8
  %lgth.addr = alloca i32, align 4
  %clus.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %feff = alloca float, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store float** %cpmx, float*** %cpmx.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  store i32 %clus, i32* %clus.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 26
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %lgth.addr, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load float**, float*** %cpmx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom4
  %6 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.32, %for.end.8
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %clus.addr, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body.11, label %for.end.34

for.body.11:                                      ; preds = %for.cond.9
  %11 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load double*, double** %eff.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %12, i64 %idxprom12
  %13 = load double, double* %arrayidx13, align 8
  %conv = fptrunc double %13 to float
  store float %conv, float* %feff, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.29, %for.body.11
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %lgth.addr, align 4
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.14
  %16 = load float, float* %feff, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i8**, i8*** %seq.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %20, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 %idxprom19
  %22 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom24
  %23 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load float**, float*** %cpmx.addr, align 8
  %arrayidx27 = getelementptr inbounds float*, float** %24, i64 %idxprom26
  %25 = load float*, float** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds float, float* %25, i64 %idxprom18
  %26 = load float, float* %arrayidx28, align 4
  %add = fadd float %26, %16
  store float %add, float* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.17
  %27 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %28 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %k, align 4
  br label %for.cond.9

for.end.34:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpmx_calc_new(i8** %seq, float** %cpmx, double* %eff, i32 %lgth, i32 %clus) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %cpmx.addr = alloca float**, align 8
  %eff.addr = alloca double*, align 8
  %lgth.addr = alloca i32, align 4
  %clus.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %feff = alloca float, align 4
  %cpmxpt = alloca float*, align 8
  %cpmxptpt = alloca float**, align 8
  %seqpt = alloca i8*, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store float** %cpmx, float*** %cpmx.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  store i32 %clus, i32* %clus.addr, align 4
  store i32 26, i32* %j, align 4
  %0 = load float**, float*** %cpmx.addr, align 8
  store float** %0, float*** %cpmxptpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i32, i32* %j, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end.6

while.body:                                       ; preds = %while.cond
  %2 = load float**, float*** %cpmxptpt, align 8
  %incdec.ptr = getelementptr inbounds float*, float** %2, i32 1
  store float** %incdec.ptr, float*** %cpmxptpt, align 8
  %3 = load float*, float** %2, align 8
  store float* %3, float** %cpmxpt, align 8
  %4 = load i32, i32* %lgth.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.4, %while.body
  %5 = load i32, i32* %i, align 4
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, i32* %i, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %6 = load float*, float** %cpmxpt, align 8
  %incdec.ptr5 = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr5, float** %cpmxpt, align 8
  store float 0.000000e+00, float* %6, align 4
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  br label %while.cond

while.end.6:                                      ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %while.end.6
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %clus.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %eff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %conv = fptrunc double %11 to float
  store float %conv, float* %feff, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom7
  %14 = load i8*, i8** %arrayidx8, align 8
  store i8* %14, i8** %seqpt, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %lgth.addr, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %17 = load float, float* %feff, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i8*, i8** %seqpt, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr14, i8** %seqpt, align 8
  %20 = load i8, i8* %19, align 1
  %conv15 = sext i8 %20 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %arrayidx17 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load float**, float*** %cpmx.addr, align 8
  %arrayidx19 = getelementptr inbounds float*, float** %22, i64 %idxprom18
  %23 = load float*, float** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 %idxprom13
  %24 = load float, float* %arrayidx20, align 4
  %add = fadd float %24, %17
  store float %add, float* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %26 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %k, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MScpmx_calc_new(i8** %seq, float** %cpmx, double* %eff, i32 %lgth, i32 %clus) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %cpmx.addr = alloca float**, align 8
  %eff.addr = alloca double*, align 8
  %lgth.addr = alloca i32, align 4
  %clus.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %feff = alloca float, align 4
  %cpmxptpt = alloca float**, align 8
  %cpmxpt = alloca float*, align 8
  %seqpt = alloca i8*, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store float** %cpmx, float*** %cpmx.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  store i32 %clus, i32* %clus.addr, align 4
  %0 = load i32, i32* %lgth.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load float**, float*** %cpmx.addr, align 8
  store float** %1, float*** %cpmxptpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, i32* %j, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end.6

while.body:                                       ; preds = %while.cond
  %3 = load float**, float*** %cpmxptpt, align 8
  %incdec.ptr = getelementptr inbounds float*, float** %3, i32 1
  store float** %incdec.ptr, float*** %cpmxptpt, align 8
  %4 = load float*, float** %3, align 8
  store float* %4, float** %cpmxpt, align 8
  store i32 26, i32* %i, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.4, %while.body
  %5 = load i32, i32* %i, align 4
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, i32* %i, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %6 = load float*, float** %cpmxpt, align 8
  %incdec.ptr5 = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr5, float** %cpmxpt, align 8
  store float 0.000000e+00, float* %6, align 4
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  br label %while.cond

while.end.6:                                      ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.6
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %clus.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %eff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %conv = fptrunc double %11 to float
  store float %conv, float* %feff, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom7
  %14 = load i8*, i8** %arrayidx8, align 8
  store i8* %14, i8** %seqpt, align 8
  %15 = load float**, float*** %cpmx.addr, align 8
  store float** %15, float*** %cpmxptpt, align 8
  %16 = load i32, i32* %lgth.addr, align 4
  store i32 %16, i32* %j, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.12, %for.body
  %17 = load i32, i32* %j, align 4
  %dec10 = add nsw i32 %17, -1
  store i32 %dec10, i32* %j, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %while.body.12, label %while.end.20

while.body.12:                                    ; preds = %while.cond.9
  %18 = load float, float* %feff, align 4
  %19 = load i8*, i8** %seqpt, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr13, i8** %seqpt, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = sext i8 %20 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load float**, float*** %cpmxptpt, align 8
  %incdec.ptr18 = getelementptr inbounds float*, float** %22, i32 1
  store float** %incdec.ptr18, float*** %cpmxptpt, align 8
  %23 = load float*, float** %22, align 8
  %arrayidx19 = getelementptr inbounds float, float* %23, i64 %idxprom17
  %24 = load float, float* %arrayidx19, align 4
  %add = fadd float %24, %18
  store float %add, float* %arrayidx19, align 4
  br label %while.cond.9

while.end.20:                                     ; preds = %while.cond.9
  br label %for.inc

for.inc:                                          ; preds = %while.end.20
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpmx_ribosum(i8** %seq, i8** %seqr, i8* %dir, float** %cpmx, double* %eff, i32 %lgth, i32 %clus) #0 {
entry:
  %seq.addr = alloca i8**, align 8
  %seqr.addr = alloca i8**, align 8
  %dir.addr = alloca i8*, align 8
  %cpmx.addr = alloca float**, align 8
  %eff.addr = alloca double*, align 8
  %lgth.addr = alloca i32, align 4
  %clus.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %feff = alloca float, align 4
  %cpmxptpt = alloca float**, align 8
  %cpmxpt = alloca float*, align 8
  %seqpt = alloca i8*, align 8
  %seqrpt = alloca i8*, align 8
  %dirpt = alloca i8*, align 8
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %seqr, i8*** %seqr.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store float** %cpmx, float*** %cpmx.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i32 %lgth, i32* %lgth.addr, align 4
  store i32 %clus, i32* %clus.addr, align 4
  %0 = load i32, i32* %lgth.addr, align 4
  store i32 %0, i32* %j, align 4
  %1 = load float**, float*** %cpmx.addr, align 8
  store float** %1, float*** %cpmxptpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, i32* %j, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end.6

while.body:                                       ; preds = %while.cond
  %3 = load float**, float*** %cpmxptpt, align 8
  %incdec.ptr = getelementptr inbounds float*, float** %3, i32 1
  store float** %incdec.ptr, float*** %cpmxptpt, align 8
  %4 = load float*, float** %3, align 8
  store float* %4, float** %cpmxpt, align 8
  store i32 37, i32* %i, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.4, %while.body
  %5 = load i32, i32* %i, align 4
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, i32* %i, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.1
  %6 = load float*, float** %cpmxpt, align 8
  %incdec.ptr5 = getelementptr inbounds float, float* %6, i32 1
  store float* %incdec.ptr5, float** %cpmxpt, align 8
  store float 0.000000e+00, float* %6, align 4
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  br label %while.cond

while.end.6:                                      ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.6
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %clus.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %eff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %conv = fptrunc double %11 to float
  store float %conv, float* %feff, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom7
  %14 = load i8*, i8** %arrayidx8, align 8
  store i8* %14, i8** %seqpt, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8**, i8*** %seqr.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  %17 = load i8*, i8** %arrayidx10, align 8
  store i8* %17, i8** %seqrpt, align 8
  %18 = load i8*, i8** %dir.addr, align 8
  store i8* %18, i8** %dirpt, align 8
  %19 = load float**, float*** %cpmx.addr, align 8
  store float** %19, float*** %cpmxptpt, align 8
  %20 = load i32, i32* %lgth.addr, align 4
  store i32 %20, i32* %j, align 4
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.43, %for.body
  %21 = load i32, i32* %j, align 4
  %dec12 = add nsw i32 %21, -1
  store i32 %dec12, i32* %j, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %while.body.14, label %while.end.51

while.body.14:                                    ; preds = %while.cond.11
  %22 = load i8*, i8** %seqpt, align 8
  %23 = load i8, i8* %22, align 1
  %conv15 = sext i8 %23 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %arrayidx17 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  store i32 %24, i32* %code1, align 4
  %25 = load i8*, i8** %seqrpt, align 8
  %26 = load i8, i8* %25, align 1
  %conv18 = sext i8 %26 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom19
  %27 = load i32, i32* %arrayidx20, align 4
  store i32 %27, i32* %code2, align 4
  %28 = load i32, i32* %code1, align 4
  %cmp21 = icmp sgt i32 %28, 3
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.14
  store i32 36, i32* %code, align 4
  br label %if.end.43

if.else:                                          ; preds = %while.body.14
  %29 = load i32, i32* %code2, align 4
  %cmp23 = icmp sgt i32 %29, 3
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else
  %30 = load i32, i32* %code1, align 4
  store i32 %30, i32* %code, align 4
  br label %if.end.42

if.else.26:                                       ; preds = %if.else
  %31 = load i8*, i8** %dirpt, align 8
  %32 = load i8, i8* %31, align 1
  %conv27 = sext i8 %32 to i32
  %cmp28 = icmp eq i32 %conv27, 53
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.26
  %33 = load i32, i32* %code2, align 4
  %mul = mul nsw i32 %33, 4
  %add = add nsw i32 4, %mul
  %34 = load i32, i32* %code1, align 4
  %add31 = add nsw i32 %add, %34
  store i32 %add31, i32* %code, align 4
  br label %if.end.41

if.else.32:                                       ; preds = %if.else.26
  %35 = load i8*, i8** %dirpt, align 8
  %36 = load i8, i8* %35, align 1
  %conv33 = sext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv33, 51
  br i1 %cmp34, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.else.32
  %37 = load i32, i32* %code2, align 4
  %mul37 = mul nsw i32 %37, 4
  %add38 = add nsw i32 20, %mul37
  %38 = load i32, i32* %code1, align 4
  %add39 = add nsw i32 %add38, %38
  store i32 %add39, i32* %code, align 4
  br label %if.end

if.else.40:                                       ; preds = %if.else.32
  %39 = load i32, i32* %code1, align 4
  store i32 %39, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.40, %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.25
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then
  %40 = load i8*, i8** %seqpt, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr44, i8** %seqpt, align 8
  %41 = load i8*, i8** %seqrpt, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr45, i8** %seqrpt, align 8
  %42 = load i8*, i8** %dirpt, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr46, i8** %dirpt, align 8
  %43 = load float, float* %feff, align 4
  %44 = load i32, i32* %code, align 4
  %idxprom47 = sext i32 %44 to i64
  %45 = load float**, float*** %cpmxptpt, align 8
  %incdec.ptr48 = getelementptr inbounds float*, float** %45, i32 1
  store float** %incdec.ptr48, float*** %cpmxptpt, align 8
  %46 = load float*, float** %45, align 8
  %arrayidx49 = getelementptr inbounds float, float* %46, i64 %idxprom47
  %47 = load float, float* %arrayidx49, align 4
  %add50 = fadd float %47, %43
  store float %add50, float* %arrayidx49, align 4
  br label %while.cond.11

while.end.51:                                     ; preds = %while.cond.11
  br label %for.inc

for.inc:                                          ; preds = %while.end.51
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mseqcat(i8** %seq1, i8** %seq2, double** %eff, double* %effarr1, double* %effarr2, [256 x i8]* %name1, [256 x i8]* %name2, i32 %clus1, i32 %clus2) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff.addr = alloca double**, align 8
  %effarr1.addr = alloca double*, align 8
  %effarr2.addr = alloca double*, align 8
  %name1.addr = alloca [256 x i8]*, align 8
  %name2.addr = alloca [256 x i8]*, align 8
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double** %eff, double*** %eff.addr, align 8
  store double* %effarr1, double** %effarr1.addr, align 8
  store double* %effarr2, double** %effarr2.addr, align 8
  store [256 x i8]* %name1, [256 x i8]** %name1.addr, align 8
  store [256 x i8]* %name2, [256 x i8]** %name2.addr, align 8
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %clus2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i32, i32* %clus1.addr, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, %6
  %idxprom1 = sext i32 %add to i64
  %7 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 %idxprom1
  store i8* %4, i8** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.12, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %clus2.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end.14

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %clus1.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, %12
  %idxprom7 = sext i32 %add6 to i64
  %13 = load [256 x i8]*, [256 x i8]** %name1.addr, align 8
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 %idxprom7
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load [256 x i8]*, [256 x i8]** %name2.addr, align 8
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 %idxprom9
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx10, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay11) #5
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.5
  %16 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.3

for.end.14:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.32, %for.end.14
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %clus1.addr, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body.17, label %for.end.34

for.body.17:                                      ; preds = %for.cond.15
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.body.17
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %clus1.addr, align 4
  %cmp19 = icmp slt i32 %19, %20
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load double*, double** %effarr1.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %22, i64 %idxprom21
  %23 = load double, double* %arrayidx22, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load double*, double** %effarr1.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %25, i64 %idxprom23
  %26 = load double, double* %arrayidx24, align 8
  %mul = fmul double %23, %26
  %27 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load double**, double*** %eff.addr, align 8
  %arrayidx27 = getelementptr inbounds double*, double** %29, i64 %idxprom26
  %30 = load double*, double** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds double, double* %30, i64 %idxprom25
  store double %mul, double* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.20
  %31 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %32 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.15

for.end.34:                                       ; preds = %for.cond.15
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.54, %for.end.34
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %clus1.addr, align 4
  %cmp36 = icmp slt i32 %33, %34
  br i1 %cmp36, label %for.body.37, label %for.end.56

for.body.37:                                      ; preds = %for.cond.35
  %35 = load i32, i32* %clus1.addr, align 4
  store i32 %35, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.51, %for.body.37
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %clus1.addr, align 4
  %38 = load i32, i32* %clus2.addr, align 4
  %add39 = add nsw i32 %37, %38
  %cmp40 = icmp slt i32 %36, %add39
  br i1 %cmp40, label %for.body.41, label %for.end.53

for.body.41:                                      ; preds = %for.cond.38
  %39 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load double*, double** %effarr1.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %40, i64 %idxprom42
  %41 = load double, double* %arrayidx43, align 8
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %clus1.addr, align 4
  %sub = sub nsw i32 %42, %43
  %idxprom44 = sext i32 %sub to i64
  %44 = load double*, double** %effarr2.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %44, i64 %idxprom44
  %45 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %41, %45
  %46 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load double**, double*** %eff.addr, align 8
  %arrayidx49 = getelementptr inbounds double*, double** %48, i64 %idxprom48
  %49 = load double*, double** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds double, double* %49, i64 %idxprom47
  store double %mul46, double* %arrayidx50, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.41
  %50 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %50, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.38

for.end.53:                                       ; preds = %for.cond.38
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %51 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.35

for.end.56:                                       ; preds = %for.cond.35
  %52 = load i32, i32* %clus1.addr, align 4
  store i32 %52, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.77, %for.end.56
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %clus1.addr, align 4
  %55 = load i32, i32* %clus2.addr, align 4
  %add58 = add nsw i32 %54, %55
  %cmp59 = icmp slt i32 %53, %add58
  br i1 %cmp59, label %for.body.60, label %for.end.79

for.body.60:                                      ; preds = %for.cond.57
  store i32 0, i32* %j, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.74, %for.body.60
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %clus1.addr, align 4
  %cmp62 = icmp slt i32 %56, %57
  br i1 %cmp62, label %for.body.63, label %for.end.76

for.body.63:                                      ; preds = %for.cond.61
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %clus1.addr, align 4
  %sub64 = sub nsw i32 %58, %59
  %idxprom65 = sext i32 %sub64 to i64
  %60 = load double*, double** %effarr2.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %60, i64 %idxprom65
  %61 = load double, double* %arrayidx66, align 8
  %62 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %62 to i64
  %63 = load double*, double** %effarr1.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %63, i64 %idxprom67
  %64 = load double, double* %arrayidx68, align 8
  %mul69 = fmul double %61, %64
  %65 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %66 to i64
  %67 = load double**, double*** %eff.addr, align 8
  %arrayidx72 = getelementptr inbounds double*, double** %67, i64 %idxprom71
  %68 = load double*, double** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds double, double* %68, i64 %idxprom70
  store double %mul69, double* %arrayidx73, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.63
  %69 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %69, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.61

for.end.76:                                       ; preds = %for.cond.61
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %70 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %70, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.57

for.end.79:                                       ; preds = %for.cond.57
  %71 = load i32, i32* %clus1.addr, align 4
  store i32 %71, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.102, %for.end.79
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %clus1.addr, align 4
  %74 = load i32, i32* %clus2.addr, align 4
  %add81 = add nsw i32 %73, %74
  %cmp82 = icmp slt i32 %72, %add81
  br i1 %cmp82, label %for.body.83, label %for.end.104

for.body.83:                                      ; preds = %for.cond.80
  %75 = load i32, i32* %clus1.addr, align 4
  store i32 %75, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.99, %for.body.83
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %clus1.addr, align 4
  %78 = load i32, i32* %clus2.addr, align 4
  %add85 = add nsw i32 %77, %78
  %cmp86 = icmp slt i32 %76, %add85
  br i1 %cmp86, label %for.body.87, label %for.end.101

for.body.87:                                      ; preds = %for.cond.84
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %clus1.addr, align 4
  %sub88 = sub nsw i32 %79, %80
  %idxprom89 = sext i32 %sub88 to i64
  %81 = load double*, double** %effarr2.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %81, i64 %idxprom89
  %82 = load double, double* %arrayidx90, align 8
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %clus1.addr, align 4
  %sub91 = sub nsw i32 %83, %84
  %idxprom92 = sext i32 %sub91 to i64
  %85 = load double*, double** %effarr2.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %85, i64 %idxprom92
  %86 = load double, double* %arrayidx93, align 8
  %mul94 = fmul double %82, %86
  %87 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %88 to i64
  %89 = load double**, double*** %eff.addr, align 8
  %arrayidx97 = getelementptr inbounds double*, double** %89, i64 %idxprom96
  %90 = load double*, double** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds double, double* %90, i64 %idxprom95
  store double %mul94, double* %arrayidx98, align 8
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.87
  %91 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %91, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.84

for.end.101:                                      ; preds = %for.cond.84
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %92 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %92, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.80

for.end.104:                                      ; preds = %for.cond.80
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @strnbcat(i8* %s1, i8* %s2, i32 %m) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i32, i32* %m.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @strncpy(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @strnbcat.b, i32 0, i32 0), i8* %0, i64 %conv) #5
  %2 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5000000 x i8], [5000000 x i8]* @strnbcat.b, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %s2.addr, align 8
  %call1 = call i8* @strcat(i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @strnbcat.b, i32 0, i32 0), i8* %3) #5
  %4 = load i8*, i8** %s2.addr, align 8
  %call2 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([5000000 x i8], [5000000 x i8]* @strnbcat.b, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @conjuctionforgaln(i32 %s0, i32 %s1, i8** %seq, i8** %aseq, double* %peff, double* %eff, i8** %name, i8** %aname, i8* %d) #0 {
entry:
  %s0.addr = alloca i32, align 4
  %s1.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %eff.addr = alloca double*, align 8
  %name.addr = alloca i8**, align 8
  %aname.addr = alloca i8**, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i32 %s0, i32* %s0.addr, align 4
  store i32 %s1, i32* %s1.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8** %aname, i8*** %aname.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* %s0.addr, align 4
  store i32 %1, i32* %m, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %s1.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %4 = load i32, i32* %m, align 4
  %add = add nsw i32 %4, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %5 = load i8*, i8** %d.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #4
  %cmp2 = icmp ult i64 %call1, 100
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %d.addr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %6, i8* %arraydecay3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %m, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx5, align 8
  %10 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %11, i64 %idxprom6
  store i8* %9, i8** %arrayidx7, align 8
  %12 = load i32, i32* %m, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load double*, double** %eff.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load double*, double** %peff.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 %idxprom10
  store double %14, double* %arrayidx11, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load double*, double** %peff.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %18, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %20 = load double, double* %total, align 8
  %add14 = fadd double %20, %19
  store double %add14, double* %total, align 8
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %m, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.21, %for.end
  %23 = load i32, i32* %m, align 4
  %24 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.16
  %25 = load double, double* %total, align 8
  %26 = load i32, i32* %m, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load double*, double** %peff.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %27, i64 %idxprom19
  %28 = load double, double* %arrayidx20, align 8
  %div = fdiv double %28, %25
  store double %div, double* %arrayidx20, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %29 = load i32, i32* %m, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %m, align 4
  br label %for.cond.16

for.end.23:                                       ; preds = %for.cond.16
  %30 = load i32, i32* %k, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @makegrouprna(%struct._RNApair*** %group, %struct._RNApair*** %all, i32* %memlist) #0 {
entry:
  %group.addr = alloca %struct._RNApair***, align 8
  %all.addr = alloca %struct._RNApair***, align 8
  %memlist.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct._RNApair*** %group, %struct._RNApair**** %group.addr, align 8
  store %struct._RNApair*** %all, %struct._RNApair**** %all.addr, align 8
  store i32* %memlist, i32** %memlist.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32*, i32** %memlist.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %m, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._RNApair***, %struct._RNApair**** %all.addr, align 8
  %arrayidx = getelementptr inbounds %struct._RNApair**, %struct._RNApair*** %3, i64 %idxprom
  %4 = load %struct._RNApair**, %struct._RNApair*** %arrayidx, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct._RNApair***, %struct._RNApair**** %group.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._RNApair**, %struct._RNApair*** %6, i64 %idxprom1
  store %struct._RNApair** %4, %struct._RNApair*** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32*, i32** %memlist.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %memlist.addr, align 8
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @makegrouprnait(%struct._RNApair*** %group, %struct._RNApair*** %all, i8** %pair, i32 %s) #0 {
entry:
  %group.addr = alloca %struct._RNApair***, align 8
  %all.addr = alloca %struct._RNApair***, align 8
  %pair.addr = alloca i8**, align 8
  %s.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct._RNApair*** %group, %struct._RNApair**** %group.addr, align 8
  store %struct._RNApair*** %all, %struct._RNApair**** %all.addr, align 8
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  store i32 %0, i32* %m, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %m, align 4
  %2 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %m, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8**, i8*** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %m, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct._RNApair***, %struct._RNApair**** %all.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._RNApair**, %struct._RNApair*** %9, i64 %idxprom5
  %10 = load %struct._RNApair**, %struct._RNApair*** %arrayidx6, align 8
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct._RNApair***, %struct._RNApair**** %group.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._RNApair**, %struct._RNApair*** %12, i64 %idxprom7
  store %struct._RNApair** %10, %struct._RNApair*** %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %m, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fastconjuction_noweight(i32* %memlist, i8** %seq, i8** %aseq, double* %peff, i8* %d) #0 {
entry:
  %memlist.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %dln = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i32* %memlist, i32** %memlist.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %dln, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*, i32** %memlist.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %memlist.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %m, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %5 = load i32, i32* %m, align 4
  %add = add nsw i32 %5, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %6 = load i32, i32* %dln, align 4
  %add1 = add nsw i32 %6, %call
  store i32 %add1, i32* %dln, align 4
  %7 = load i32, i32* %dln, align 4
  %cmp2 = icmp slt i32 %7, 100
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %d.addr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %8, i8* %arraydecay3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %m, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx5, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %13, i64 %idxprom6
  store i8* %11, i8** %arrayidx7, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load double*, double** %peff.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  store double 1.000000e+00, double* %arrayidx9, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load double*, double** %peff.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %17, i64 %idxprom10
  %18 = load double, double* %arrayidx11, align 8
  %19 = load double, double* %total, align 8
  %add12 = fadd double %19, %18
  store double %add12, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32*, i32** %memlist.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr, i32** %memlist.addr, align 8
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.18, %for.end
  %22 = load i32, i32* %m, align 4
  %23 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %22, %23
  br i1 %cmp14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.13
  %24 = load double, double* %total, align 8
  %25 = load i32, i32* %m, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load double*, double** %peff.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 %idxprom16
  %27 = load double, double* %arrayidx17, align 8
  %div = fdiv double %27, %24
  store double %div, double* %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %28 = load i32, i32* %m, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %m, align 4
  br label %for.cond.13

for.end.20:                                       ; preds = %for.cond.13
  %29 = load i32, i32* %k, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @fastconjuction_noname(i32* %memlist, i8** %seq, i8** %aseq, double* %peff, double* %eff, i8* %d) #0 {
entry:
  %memlist.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %eff.addr = alloca double*, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %dln = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i32* %memlist, i32** %memlist.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %dln, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*, i32** %memlist.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %memlist.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %m, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %5 = load i32, i32* %m, align 4
  %add = add nsw i32 %5, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %6 = load i32, i32* %dln, align 4
  %add1 = add nsw i32 %6, %call
  store i32 %add1, i32* %dln, align 4
  %7 = load i32, i32* %dln, align 4
  %cmp2 = icmp slt i32 %7, 100
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %d.addr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %8, i8* %arraydecay3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %m, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx5, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %13, i64 %idxprom6
  store i8* %11, i8** %arrayidx7, align 8
  %14 = load i32, i32* %m, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load double*, double** %eff.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  %16 = load double, double* %arrayidx9, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load double*, double** %peff.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  store double %16, double* %arrayidx11, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load double*, double** %peff.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 %idxprom12
  %21 = load double, double* %arrayidx13, align 8
  %22 = load double, double* %total, align 8
  %add14 = fadd double %22, %21
  store double %add14, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32*, i32** %memlist.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr, i32** %memlist.addr, align 8
  %24 = load i32, i32* %k, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %for.end
  %25 = load i32, i32* %m, align 4
  %26 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.15
  %27 = load double, double* %total, align 8
  %28 = load i32, i32* %m, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load double*, double** %peff.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %29, i64 %idxprom18
  %30 = load double, double* %arrayidx19, align 8
  %div = fdiv double %30, %27
  store double %div, double* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %31 = load i32, i32* %m, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, i32* %m, align 4
  br label %for.cond.15

for.end.22:                                       ; preds = %for.cond.15
  %32 = load i32, i32* %k, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @fastconjuction(i32* %memlist, i8** %seq, i8** %aseq, double* %peff, double* %eff, [256 x i8]* %name, [256 x i8]* %aname, i8* %d) #0 {
entry:
  %memlist.addr = alloca i32*, align 8
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %eff.addr = alloca double*, align 8
  %name.addr = alloca [256 x i8]*, align 8
  %aname.addr = alloca [256 x i8]*, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %dln = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i32* %memlist, i32** %memlist.addr, align 8
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store [256 x i8]* %aname, [256 x i8]** %aname.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %dln, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*, i32** %memlist.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %memlist.addr, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %m, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %5 = load i32, i32* %m, align 4
  %add = add nsw i32 %5, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %6 = load i32, i32* %dln, align 4
  %add1 = add nsw i32 %6, %call
  store i32 %add1, i32* %dln, align 4
  %7 = load i32, i32* %dln, align 4
  %cmp2 = icmp slt i32 %7, 100
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %d.addr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %8, i8* %arraydecay3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %m, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %seq.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx5, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %13, i64 %idxprom6
  store i8* %11, i8** %arrayidx7, align 8
  %14 = load i32, i32* %m, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load double*, double** %eff.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  %16 = load double, double* %arrayidx9, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load double*, double** %peff.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  store double %16, double* %arrayidx11, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load double*, double** %peff.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 %idxprom12
  %21 = load double, double* %arrayidx13, align 8
  %22 = load double, double* %total, align 8
  %add14 = fadd double %22, %21
  store double %add14, double* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32*, i32** %memlist.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr, i32** %memlist.addr, align 8
  %24 = load i32, i32* %k, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %for.end
  %25 = load i32, i32* %m, align 4
  %26 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.15
  %27 = load double, double* %total, align 8
  %28 = load i32, i32* %m, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load double*, double** %peff.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %29, i64 %idxprom18
  %30 = load double, double* %arrayidx19, align 8
  %div = fdiv double %30, %27
  store double %div, double* %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %31 = load i32, i32* %m, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, i32* %m, align 4
  br label %for.cond.15

for.end.22:                                       ; preds = %for.cond.15
  %32 = load i32, i32* %k, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @conjuctionfortbfast(i8** %pair, i32 %s, i8** %seq, i8** %aseq, double* %peff, double* %eff, i8* %d) #0 {
entry:
  %pair.addr = alloca i8**, align 8
  %s.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %eff.addr = alloca double*, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* %s.addr, align 4
  store i32 %1, i32* %m, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %m, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %pair.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %9 = load i32, i32* %m, align 4
  %add = add nsw i32 %9, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %10 = load i8*, i8** %d.addr, align 8
  %call6 = call i64 @strlen(i8* %10) #4
  %cmp7 = icmp ult i64 %call6, 100
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load i8*, i8** %d.addr, align 8
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call11 = call i8* @strcat(i8* %11, i8* %arraydecay10) #5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %12 = load i32, i32* %m, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %13, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %16, i64 %idxprom14
  store i8* %14, i8** %arrayidx15, align 8
  %17 = load i32, i32* %m, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load double*, double** %eff.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %18, i64 %idxprom16
  %19 = load double, double* %arrayidx17, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load double*, double** %peff.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %21, i64 %idxprom18
  store double %19, double* %arrayidx19, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load double*, double** %peff.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %23, i64 %idxprom20
  %24 = load double, double* %arrayidx21, align 8
  %25 = load double, double* %total, align 8
  %add22 = fadd double %25, %24
  store double %add22, double* %total, align 8
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %27 = load i32, i32* %m, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %for.end
  %28 = load i32, i32* %m, align 4
  %29 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %28, %29
  br i1 %cmp26, label %for.body.28, label %for.end.33

for.body.28:                                      ; preds = %for.cond.25
  %30 = load double, double* %total, align 8
  %31 = load i32, i32* %m, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load double*, double** %peff.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %32, i64 %idxprom29
  %33 = load double, double* %arrayidx30, align 8
  %div = fdiv double %33, %30
  store double %div, double* %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.28
  %34 = load i32, i32* %m, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, i32* %m, align 4
  br label %for.cond.25

for.end.33:                                       ; preds = %for.cond.25
  %35 = load i32, i32* %k, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @conjuction(i8** %pair, i32 %s, i8** %seq, i8** %aseq, double* %peff, double* %eff, [256 x i8]* %name, [256 x i8]* %aname, i8* %d) #0 {
entry:
  %pair.addr = alloca i8**, align 8
  %s.addr = alloca i32, align 4
  %seq.addr = alloca i8**, align 8
  %aseq.addr = alloca i8**, align 8
  %peff.addr = alloca double*, align 8
  %eff.addr = alloca double*, align 8
  %name.addr = alloca [256 x i8]*, align 8
  %aname.addr = alloca [256 x i8]*, align 8
  %d.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %total = alloca double, align 8
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8** %seq, i8*** %seq.addr, align 8
  store i8** %aseq, i8*** %aseq.addr, align 8
  store double* %peff, double** %peff.addr, align 8
  store double* %eff, double** %eff.addr, align 8
  store [256 x i8]* %name, [256 x i8]** %name.addr, align 8
  store [256 x i8]* %aname, [256 x i8]** %aname.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double 0.000000e+00, double* %total, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i32, i32* %s.addr, align 4
  store i32 %1, i32* %m, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %m, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %pair.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %9 = load i32, i32* %m, align 4
  %add = add nsw i32 %9, 1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add) #5
  %10 = load i8*, i8** %d.addr, align 8
  %call6 = call i64 @strlen(i8* %10) #4
  %cmp7 = icmp ult i64 %call6, 100
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load i8*, i8** %d.addr, align 8
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  %call11 = call i8* @strcat(i8* %11, i8* %arraydecay10) #5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %12 = load i32, i32* %m, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i8**, i8*** %seq.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %13, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %16, i64 %idxprom14
  store i8* %14, i8** %arrayidx15, align 8
  %17 = load i32, i32* %m, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load double*, double** %eff.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %18, i64 %idxprom16
  %19 = load double, double* %arrayidx17, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load double*, double** %peff.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %21, i64 %idxprom18
  store double %19, double* %arrayidx19, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load double*, double** %peff.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %23, i64 %idxprom20
  %24 = load double, double* %arrayidx21, align 8
  %25 = load double, double* %total, align 8
  %add22 = fadd double %25, %24
  store double %add22, double* %total, align 8
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %27 = load i32, i32* %m, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %k, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define void @floatdelete(float** %cpmx, i32 %d, i32 %len) #0 {
entry:
  %cpmx.addr = alloca float**, align 8
  %d.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float** %cpmx, float*** %cpmx.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %d.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 26
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load float**, float*** %cpmx.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %6, i64 %idxprom4
  %7 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx5, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load float**, float*** %cpmx.addr, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %11, i64 %idxprom7
  %12 = load float*, float** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds float, float* %12, i64 %idxprom6
  store float %8, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @chardelete(i8* %seq, i32 %d) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %d.addr = alloca i32, align 4
  %b = alloca [5000000 x i8], align 16
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  %arraydecay = getelementptr inbounds [5000000 x i8], [5000000 x i8]* %b, i32 0, i32 0
  %0 = load i8*, i8** %seq.addr, align 8
  %1 = load i32, i32* %d.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %call = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr1) #5
  %2 = load i8*, i8** %seq.addr, align 8
  %3 = load i32, i32* %d.addr, align 4
  %idx.ext2 = sext i32 %3 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %2, i64 %idx.ext2
  %arraydecay4 = getelementptr inbounds [5000000 x i8], [5000000 x i8]* %b, i32 0, i32 0
  %call5 = call i8* @strcpy(i8* %add.ptr3, i8* %arraydecay4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @RootBranchNode(i32 %nseq, i32*** %topol, i32 %step, i32 %branch) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %topol.addr = alloca i32***, align 8
  %step.addr = alloca i32, align 4
  %branch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32*** %topol, i32**** %topol.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %branch, i32* %branch.addr, align 4
  store i32 1, i32* %value, align 4
  %0 = load i32, i32* %step.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %2, 2
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32***, i32**** %topol.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %5, i64 %idxprom2
  %6 = load i32**, i32*** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %6, i64 0
  %7 = load i32*, i32** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx4, align 4
  store i32 %8, i32* %s1, align 4
  %cmp5 = icmp sgt i32 %8, -1
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %s1, align 4
  %10 = load i32, i32* %branch.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %step.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32***, i32**** %topol.addr, align 8
  %arrayidx9 = getelementptr inbounds i32**, i32*** %12, i64 %idxprom8
  %13 = load i32**, i32*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %13, i64 %idxprom7
  %14 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %9, %15
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %16 = load i32, i32* %value, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.31, %for.end
  %18 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load i32***, i32**** %topol.addr, align 8
  %arrayidx17 = getelementptr inbounds i32**, i32*** %20, i64 %idxprom16
  %21 = load i32**, i32*** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %21, i64 1
  %22 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom15
  %23 = load i32, i32* %arrayidx19, align 4
  store i32 %23, i32* %s2, align 4
  %cmp20 = icmp sgt i32 %23, -1
  br i1 %cmp20, label %for.body.21, label %for.end.33

for.body.21:                                      ; preds = %for.cond.14
  %24 = load i32, i32* %s2, align 4
  %25 = load i32, i32* %branch.addr, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load i32, i32* %step.addr, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32***, i32**** %topol.addr, align 8
  %arrayidx24 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom23
  %28 = load i32**, i32*** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %28, i64 %idxprom22
  %29 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %24, %30
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.body.21
  %31 = load i32, i32* %value, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %value, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.body.21
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %32 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %32, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond.14

for.end.33:                                       ; preds = %for.cond.14
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %33 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %33, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %34 = load i32, i32* %value, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @BranchLeafNode(i32 %nseq, i32*** %topol, i32* %node, i32 %step, i32 %branch) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %topol.addr = alloca i32***, align 8
  %node.addr = alloca i32*, align 8
  %step.addr = alloca i32, align 4
  %branch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32*** %topol, i32**** %topol.addr, align 8
  store i32* %node, i32** %node.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %branch, i32* %branch.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %node.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.25, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %step.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp2 = icmp slt i32 %5, %sub
  br i1 %cmp2, label %for.body.3, label %for.end.27

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.22, %for.body.3
  %7 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %7, 2
  br i1 %cmp5, label %for.body.6, label %for.end.24

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.body.6
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32***, i32**** %topol.addr, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %11, i64 %idxprom10
  %12 = load i32**, i32*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %12, i64 %idxprom9
  %13 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  %14 = load i32, i32* %arrayidx13, align 4
  store i32 %14, i32* %s, align 4
  %cmp14 = icmp sgt i32 %14, -1
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.7
  %15 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32*, i32** %node.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %arrayidx17, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %18 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %19 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond.4

for.end.24:                                       ; preds = %for.cond.4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %20 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.1

for.end.27:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.46, %for.end.27
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %branch.addr, align 4
  %add = add nsw i32 %22, 1
  %cmp29 = icmp slt i32 %21, %add
  br i1 %cmp29, label %for.body.30, label %for.end.48

for.body.30:                                      ; preds = %for.cond.28
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %for.body.30
  %23 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %24 to i64
  %25 = load i32, i32* %step.addr, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load i32***, i32**** %topol.addr, align 8
  %arrayidx35 = getelementptr inbounds i32**, i32*** %26, i64 %idxprom34
  %27 = load i32**, i32*** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %27, i64 %idxprom33
  %28 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %28, i64 %idxprom32
  %29 = load i32, i32* %arrayidx37, align 4
  store i32 %29, i32* %s, align 4
  %cmp38 = icmp sgt i32 %29, -1
  br i1 %cmp38, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.31
  %30 = load i32, i32* %s, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i32*, i32** %node.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %31, i64 %idxprom40
  %32 = load i32, i32* %arrayidx41, align 4
  %inc42 = add nsw i32 %32, 1
  store i32 %inc42, i32* %arrayidx41, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %33 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %33, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %34 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.28

for.end.48:                                       ; preds = %for.cond.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @RootLeafNode(i32 %nseq, i32*** %topol, i32* %node) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %topol.addr = alloca i32***, align 8
  %node.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32*** %topol, i32**** %topol.addr, align 8
  store i32* %node, i32** %node.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %node.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.25, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %6, 2
  %cmp2 = icmp slt i32 %5, %sub
  br i1 %cmp2, label %for.body.3, label %for.end.27

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.22, %for.body.3
  %7 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %7, 2
  br i1 %cmp5, label %for.body.6, label %for.end.24

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.body.6
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32***, i32**** %topol.addr, align 8
  %arrayidx11 = getelementptr inbounds i32**, i32*** %11, i64 %idxprom10
  %12 = load i32**, i32*** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %12, i64 %idxprom9
  %13 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  %14 = load i32, i32* %arrayidx13, align 4
  store i32 %14, i32* %s, align 4
  %cmp14 = icmp sgt i32 %14, -1
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.7
  %15 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32*, i32** %node.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %arrayidx17, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %18 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %19 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond.4

for.end.24:                                       ; preds = %for.cond.4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %20 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.1

for.end.27:                                       ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @nodeFromABranch(i32 %nseq, i32* %result, i32** %pairwisenode, i32*** %topol, double** %len, i32 %step, i32 %num) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %result.addr = alloca i32*, align 8
  %pairwisenode.addr = alloca i32**, align 8
  %topol.addr = alloca i32***, align 8
  %len.addr = alloca double**, align 8
  %step.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %count = alloca i32, align 4
  %innergroup = alloca i32*, align 8
  %outergroup1 = alloca i32*, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32* %result, i32** %result.addr, align 8
  store i32** %pairwisenode, i32*** %pairwisenode.addr, align 8
  store i32*** %topol, i32**** %topol.addr, align 8
  store double** %len, double*** %len.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %nseq.addr, align 4
  %call = call i32* @AllocateIntVec(i32 %1)
  store i32* %call, i32** @nodeFromABranch.outergroup2, align 8
  %2 = load i32, i32* %nseq.addr, align 4
  %call1 = call i32* @AllocateIntVec(i32 %2)
  store i32* %call1, i32** @nodeFromABranch.table, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %num.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %step.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32***, i32**** %topol.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %5, i64 %idxprom2
  %6 = load i32**, i32*** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  %7 = load i32*, i32** %arrayidx3, align 8
  store i32* %7, i32** %innergroup, align 8
  %8 = load i32, i32* %num.addr, align 4
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom4 = sext i32 %lnot.ext to i64
  %9 = load i32, i32* %step.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i32***, i32**** %topol.addr, align 8
  %arrayidx6 = getelementptr inbounds i32**, i32*** %10, i64 %idxprom5
  %11 = load i32**, i32*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %11, i64 %idxprom4
  %12 = load i32*, i32** %arrayidx7, align 8
  store i32* %12, i32** %outergroup1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nseq.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** @nodeFromABranch.table, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %for.end
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i32*, i32** %innergroup, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %20 = load i32, i32* %arrayidx13, align 4
  store i32 %20, i32* %s, align 4
  %cmp14 = icmp sgt i32 %20, -1
  br i1 %cmp14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.11
  %21 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32*, i32** @nodeFromABranch.table, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %23 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.end.20
  %24 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load i32*, i32** %outergroup1, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %25, i64 %idxprom22
  %26 = load i32, i32* %arrayidx23, align 4
  store i32 %26, i32* %s, align 4
  %cmp24 = icmp sgt i32 %26, -1
  br i1 %cmp24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %s, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i32*, i32** @nodeFromABranch.table, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %28, i64 %idxprom26
  store i32 0, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.25
  %29 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  store i32 0, i32* %i, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.42, %for.end.30
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %nseq.addr, align 4
  %cmp32 = icmp slt i32 %30, %31
  br i1 %cmp32, label %for.body.33, label %for.end.44

for.body.33:                                      ; preds = %for.cond.31
  %32 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = load i32*, i32** @nodeFromABranch.table, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %33, i64 %idxprom34
  %34 = load i32, i32* %arrayidx35, align 4
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %for.body.33
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %count, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %37, i64 %idxprom38
  store i32 %35, i32* %arrayidx39, align 4
  %38 = load i32, i32* %count, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %count, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %for.body.33
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %39 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.31

for.end.44:                                       ; preds = %for.cond.31
  %40 = load i32, i32* %count, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %41, i64 %idxprom45
  store i32 -1, i32* %arrayidx46, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.73, %for.end.44
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load i32*, i32** %innergroup, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %43, i64 %idxprom48
  %44 = load i32, i32* %arrayidx49, align 4
  store i32 %44, i32* %s, align 4
  %cmp50 = icmp sgt i32 %44, -1
  br i1 %cmp50, label %for.body.51, label %for.end.75

for.body.51:                                      ; preds = %for.cond.47
  %45 = load i32*, i32** %outergroup1, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load i32, i32* %s, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %48, i64 %idxprom54
  %49 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %49, i64 %idxprom53
  %50 = load i32, i32* %arrayidx56, align 4
  %51 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load i32, i32* %s, align 4
  %idxprom59 = sext i32 %53 to i64
  %54 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %54, i64 %idxprom59
  %55 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %55, i64 %idxprom58
  %56 = load i32, i32* %arrayidx61, align 4
  %add = add nsw i32 %50, %56
  %57 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %58 to i64
  %59 = load i32*, i32** %outergroup1, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %60 to i64
  %61 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %61, i64 %idxprom65
  %62 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %62, i64 %idxprom63
  %63 = load i32, i32* %arrayidx67, align 4
  %sub = sub nsw i32 %add, %63
  %sub68 = sub nsw i32 %sub, 1
  %64 = load i32, i32* %s, align 4
  %idxprom69 = sext i32 %64 to i64
  %65 = load i32*, i32** %result.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %65, i64 %idxprom69
  store i32 %sub68, i32* %arrayidx70, align 4
  %66 = load i32, i32* %s, align 4
  %idxprom71 = sext i32 %66 to i64
  %67 = load i32*, i32** %result.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %67, i64 %idxprom71
  %68 = load i32, i32* %arrayidx72, align 4
  %div = sdiv i32 %68, 2
  store i32 %div, i32* %arrayidx72, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.51
  %69 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %69, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.47

for.end.75:                                       ; preds = %for.cond.47
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.105, %for.end.75
  %70 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %70 to i64
  %71 = load i32*, i32** %outergroup1, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %71, i64 %idxprom77
  %72 = load i32, i32* %arrayidx78, align 4
  store i32 %72, i32* %s, align 4
  %cmp79 = icmp sgt i32 %72, -1
  br i1 %cmp79, label %for.body.80, label %for.end.107

for.body.80:                                      ; preds = %for.cond.76
  %73 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx81, align 4
  %idxprom82 = sext i32 %74 to i64
  %75 = load i32, i32* %s, align 4
  %idxprom83 = sext i32 %75 to i64
  %76 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %76, i64 %idxprom83
  %77 = load i32*, i32** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %77, i64 %idxprom82
  %78 = load i32, i32* %arrayidx85, align 4
  %79 = load i32*, i32** %innergroup, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %80 to i64
  %81 = load i32, i32* %s, align 4
  %idxprom88 = sext i32 %81 to i64
  %82 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %82, i64 %idxprom88
  %83 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %83, i64 %idxprom87
  %84 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %78, %84
  %85 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %85, i64 0
  %86 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %86 to i64
  %87 = load i32*, i32** %innergroup, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %88 to i64
  %89 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %89, i64 %idxprom95
  %90 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %90, i64 %idxprom93
  %91 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %add91, %91
  %add99 = add nsw i32 %sub98, 1
  %92 = load i32, i32* %s, align 4
  %idxprom100 = sext i32 %92 to i64
  %93 = load i32*, i32** %result.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %93, i64 %idxprom100
  store i32 %add99, i32* %arrayidx101, align 4
  %94 = load i32, i32* %s, align 4
  %idxprom102 = sext i32 %94 to i64
  %95 = load i32*, i32** %result.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %95, i64 %idxprom102
  %96 = load i32, i32* %arrayidx103, align 4
  %div104 = sdiv i32 %96, 2
  store i32 %div104, i32* %arrayidx103, align 4
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.80
  %97 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %97, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.76

for.end.107:                                      ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.137, %for.end.107
  %98 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load i32*, i32** @nodeFromABranch.outergroup2, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %99, i64 %idxprom109
  %100 = load i32, i32* %arrayidx110, align 4
  store i32 %100, i32* %s, align 4
  %cmp111 = icmp sgt i32 %100, -1
  br i1 %cmp111, label %for.body.112, label %for.end.139

for.body.112:                                     ; preds = %for.cond.108
  %101 = load i32*, i32** %outergroup1, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx113, align 4
  %idxprom114 = sext i32 %102 to i64
  %103 = load i32, i32* %s, align 4
  %idxprom115 = sext i32 %103 to i64
  %104 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %104, i64 %idxprom115
  %105 = load i32*, i32** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %105, i64 %idxprom114
  %106 = load i32, i32* %arrayidx117, align 4
  %107 = load i32*, i32** %innergroup, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %107, i64 0
  %108 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %108 to i64
  %109 = load i32, i32* %s, align 4
  %idxprom120 = sext i32 %109 to i64
  %110 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %110, i64 %idxprom120
  %111 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %111, i64 %idxprom119
  %112 = load i32, i32* %arrayidx122, align 4
  %add123 = add nsw i32 %106, %112
  %113 = load i32*, i32** %outergroup1, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx124, align 4
  %idxprom125 = sext i32 %114 to i64
  %115 = load i32*, i32** %innergroup, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %115, i64 0
  %116 = load i32, i32* %arrayidx126, align 4
  %idxprom127 = sext i32 %116 to i64
  %117 = load i32**, i32*** %pairwisenode.addr, align 8
  %arrayidx128 = getelementptr inbounds i32*, i32** %117, i64 %idxprom127
  %118 = load i32*, i32** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %118, i64 %idxprom125
  %119 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %add123, %119
  %add131 = add nsw i32 %sub130, 1
  %120 = load i32, i32* %s, align 4
  %idxprom132 = sext i32 %120 to i64
  %121 = load i32*, i32** %result.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %121, i64 %idxprom132
  store i32 %add131, i32* %arrayidx133, align 4
  %122 = load i32, i32* %s, align 4
  %idxprom134 = sext i32 %122 to i64
  %123 = load i32*, i32** %result.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %123, i64 %idxprom134
  %124 = load i32, i32* %arrayidx135, align 4
  %div136 = sdiv i32 %124, 2
  store i32 %div136, i32* %arrayidx135, align 4
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.112
  %125 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %125, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond.108

for.end.139:                                      ; preds = %for.cond.108
  ret void
}

declare i32* @AllocateIntVec(i32) #2

; Function Attrs: nounwind uwtable
define void @OneClusterAndTheOther(i32 %locnjob, i8** %pair, i32* %s1, i32* %s2, i32*** %topol, i32 %step, i32 %branch) #0 {
entry:
  %locnjob.addr = alloca i32, align 4
  %pair.addr = alloca i8**, align 8
  %s1.addr = alloca i32*, align 8
  %s2.addr = alloca i32*, align 8
  %topol.addr = alloca i32***, align 8
  %step.addr = alloca i32, align 4
  %branch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r1 = alloca i32, align 4
  store i32 %locnjob, i32* %locnjob.addr, align 4
  store i8** %pair, i8*** %pair.addr, align 8
  store i32* %s1, i32** %s1.addr, align 8
  store i32* %s2, i32** %s2.addr, align 8
  store i32*** %topol, i32**** %topol.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %branch, i32* %branch.addr, align 4
  %0 = load i32, i32* %branch.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %step.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32***, i32**** %topol.addr, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %2, i64 %idxprom1
  %3 = load i32**, i32*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %3, i64 %idxprom
  %4 = load i32*, i32** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load i32*, i32** %s1.addr, align 8
  store i32 %5, i32* %6, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32, i32* %branch.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32, i32* %step.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32***, i32**** %topol.addr, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %10, i64 %idxprom6
  %11 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %11, i64 %idxprom5
  %12 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx9, align 4
  store i32 %13, i32* %r1, align 4
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %r1, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i32*, i32** %s1.addr, align 8
  %16 = load i32, i32* %15, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i8**, i8*** %pair.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 %idxprom11
  %18 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  store i8 1, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %locnjob.addr, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.14
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32*, i32** %s1.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load i8**, i8*** %pair.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %25, i64 %idxprom18
  %26 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 %idxprom17
  %27 = load i8, i8* %arrayidx20, align 1
  %tobool = icmp ne i8 %27, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.16
  %28 = load i32, i32* %i, align 4
  %29 = load i32*, i32** %s2.addr, align 8
  store i32 %28, i32* %29, align 4
  br label %for.end.23

if.end:                                           ; preds = %for.body.16
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.14

for.end.23:                                       ; preds = %if.then, %for.cond.14
  %31 = load i32*, i32** %s2.addr, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.38, %for.end.23
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %locnjob.addr, align 4
  %cmp25 = icmp slt i32 %33, %34
  br i1 %cmp25, label %for.body.26, label %for.end.40

for.body.26:                                      ; preds = %for.cond.24
  %35 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load i32*, i32** %s1.addr, align 8
  %37 = load i32, i32* %36, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load i8**, i8*** %pair.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %38, i64 %idxprom28
  %39 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %39, i64 %idxprom27
  %40 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %40, 0
  br i1 %tobool31, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %for.body.26
  %41 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load i32*, i32** %s2.addr, align 8
  %43 = load i32, i32* %42, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = load i8**, i8*** %pair.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %44, i64 %idxprom34
  %45 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %45, i64 %idxprom33
  store i8 1, i8* %arrayidx36, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %for.body.26
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %46 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %46, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.24

for.end.40:                                       ; preds = %for.cond.24
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeEffMtx(i32 %nseq, double** %mtx, double* %vec) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %mtx.addr = alloca double**, align 8
  %vec.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store double** %mtx, double*** %mtx.addr, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double*, double** %vec.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4
  %9 = load double, double* %arrayidx5, align 8
  %mul = fmul double %6, %9
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load double**, double*** %mtx.addr, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %12, i64 %idxprom7
  %13 = load double*, double** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom6
  store double %mul, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @node_eff(i32 %nseq, double* %eff, i32* %node) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %eff.addr = alloca double*, align 8
  %node.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store double* %eff, double** %eff.addr, align 8
  store i32* %node, i32** %node.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %node.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call double @ipower(double 5.000000e-01, i32 %4)
  %5 = load float, float* @geta2, align 4
  %conv = fpext float %5 to double
  %add = fadd double %call, %conv
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load double*, double** %eff.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  store double %add, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare double @ipower(double, i32) #2

; Function Attrs: nounwind uwtable
define i32 @shrinklocalhom(i8** %pair, i32 %s1, i32 %s2, %struct._LocalHom** %localhom, %struct._LocalHom*** %localhomshrink) #0 {
entry:
  %pair.addr = alloca i8**, align 8
  %s1.addr = alloca i32, align 4
  %s2.addr = alloca i32, align 4
  %localhom.addr = alloca %struct._LocalHom**, align 8
  %localhomshrink.addr = alloca %struct._LocalHom***, align 8
  %m1 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %k2 = alloca i32, align 4
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s1, i32* %s1.addr, align 4
  store i32 %s2, i32* %s2.addr, align 4
  store %struct._LocalHom** %localhom, %struct._LocalHom*** %localhom.addr, align 8
  store %struct._LocalHom*** %localhomshrink, %struct._LocalHom**** %localhomshrink.addr, align 8
  %0 = load i32, i32* %s1.addr, align 4
  store i32 %0, i32* %m1, align 4
  store i32 0, i32* %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %1 = load i32, i32* %m1, align 4
  %2 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %m1, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %s1.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8**, i8*** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end.37

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %s2.addr, align 4
  store i32 %8, i32* %m2, align 4
  store i32 0, i32* %k2, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %m2, align 4
  %10 = load i32, i32* @njob, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %m2, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %s2.addr, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8**, i8*** %pair.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.34

if.then.16:                                       ; preds = %for.body.8
  %16 = load i32, i32* %m2, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i32, i32* %m1, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %18, i64 %idxprom18
  %19 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %19, i64 %idxprom17
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx20, i32 0, i32 7
  %20 = load double, double* %opt, align 8
  %cmp21 = fcmp oeq double %20, -1.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.16
  %21 = load i32, i32* %k2, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load i32, i32* %k1, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %23, i64 %idxprom25
  %24 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %24, i64 %idxprom24
  store %struct._LocalHom* null, %struct._LocalHom** %arrayidx27, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.16
  %25 = load i32, i32* %m1, align 4
  %idxprom28 = sext i32 %25 to i64
  %26 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %26, i64 %idxprom28
  %27 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx29, align 8
  %28 = load i32, i32* %m2, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i64 %idx.ext
  %29 = load i32, i32* %k2, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i32, i32* %k1, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %31, i64 %idxprom31
  %32 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %32, i64 %idxprom30
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %arrayidx33, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  %33 = load i32, i32* %k2, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k2, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %34 = load i32, i32* %m2, align 4
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, i32* %m2, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %35 = load i32, i32* %k1, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %k1, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %36 = load i32, i32* %m1, align 4
  %inc39 = add nsw i32 %36, 1
  store i32 %inc39, i32* %m1, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @msshrinklocalhom(i8** %pair, i32 %s1, i32 %s2, %struct._LocalHom** %localhom, %struct._LocalHom*** %localhomshrink) #0 {
entry:
  %pair.addr = alloca i8**, align 8
  %s1.addr = alloca i32, align 4
  %s2.addr = alloca i32, align 4
  %localhom.addr = alloca %struct._LocalHom**, align 8
  %localhomshrink.addr = alloca %struct._LocalHom***, align 8
  %m1 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %n2 = alloca i32, align 4
  store i8** %pair, i8*** %pair.addr, align 8
  store i32 %s1, i32* %s1.addr, align 4
  store i32 %s2, i32* %s2.addr, align 4
  store %struct._LocalHom** %localhom, %struct._LocalHom*** %localhom.addr, align 8
  store %struct._LocalHom*** %localhomshrink, %struct._LocalHom**** %localhomshrink.addr, align 8
  %0 = load i32, i32* %s1.addr, align 4
  store i32 %0, i32* %m1, align 4
  store i32 0, i32* %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %1 = load i32, i32* %m1, align 4
  %2 = load i32, i32* @njob, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %m1, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %s1.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8**, i8*** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end.45

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %s2.addr, align 4
  store i32 %8, i32* %m2, align 4
  store i32 0, i32* %k2, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %m2, align 4
  %10 = load i32, i32* @njob, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %m2, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %s2.addr, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8**, i8*** %pair.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.42

if.then.16:                                       ; preds = %for.body.8
  %16 = load i32, i32* %m1, align 4
  %17 = load i32, i32* %m2, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %18 = load i32, i32* %m1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %19 = load i32, i32* %m2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %n1, align 4
  %20 = load i32, i32* %m1, align 4
  %21 = load i32, i32* %m2, align 4
  %cmp19 = icmp sgt i32 %20, %21
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %22 = load i32, i32* %m1, align 4
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  %23 = load i32, i32* %m2, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %22, %cond.true.21 ], [ %23, %cond.false.22 ]
  store i32 %cond24, i32* %n2, align 4
  %24 = load i32, i32* %m2, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i32, i32* %m1, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %26, i64 %idxprom26
  %27 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %27, i64 %idxprom25
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx28, i32 0, i32 7
  %28 = load double, double* %opt, align 8
  %cmp29 = fcmp oeq double %28, -1.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %cond.end.23
  %29 = load i32, i32* %k2, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32, i32* %k1, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %31, i64 %idxprom33
  %32 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %32, i64 %idxprom32
  store %struct._LocalHom* null, %struct._LocalHom** %arrayidx35, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.23
  %33 = load i32, i32* %n1, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %34, i64 %idxprom36
  %35 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx37, align 8
  %36 = load i32, i32* %n2, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %35, i64 %idx.ext
  %37 = load i32, i32* %k2, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load i32, i32* %k1, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %39, i64 %idxprom39
  %40 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %40, i64 %idxprom38
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %arrayidx41, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.31
  %41 = load i32, i32* %k2, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %k2, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %42 = load i32, i32* %m2, align 4
  %inc43 = add nsw i32 %42, 1
  store i32 %inc43, i32* %m2, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %43 = load i32, i32* %k1, align 4
  %inc44 = add nsw i32 %43, 1
  store i32 %inc44, i32* %k1, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %for.body
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %44 = load i32, i32* %m1, align 4
  %inc47 = add nsw i32 %44, 1
  store i32 %inc47, i32* %m1, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @fastshrinklocalhom(i32* %mem1, i32* %mem2, %struct._LocalHom** %localhom, %struct._LocalHom*** %localhomshrink) #0 {
entry:
  %mem1.addr = alloca i32*, align 8
  %mem2.addr = alloca i32*, align 8
  %localhom.addr = alloca %struct._LocalHom**, align 8
  %localhomshrink.addr = alloca %struct._LocalHom***, align 8
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %intpt1 = alloca i32*, align 8
  %intpt2 = alloca i32*, align 8
  store i32* %mem1, i32** %mem1.addr, align 8
  store i32* %mem2, i32** %mem2.addr, align 8
  store %struct._LocalHom** %localhom, %struct._LocalHom*** %localhom.addr, align 8
  store %struct._LocalHom*** %localhomshrink, %struct._LocalHom**** %localhomshrink.addr, align 8
  %0 = load i32*, i32** %mem1.addr, align 8
  store i32* %0, i32** %intpt1, align 8
  store i32 0, i32* %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %1 = load i32*, i32** %intpt1, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %mem2.addr, align 8
  store i32* %3, i32** %intpt2, align 8
  store i32 0, i32* %k2, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32*, i32** %intpt2, align 8
  %5 = load i32, i32* %4, align 4
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32*, i32** %intpt2, align 8
  %7 = load i32, i32* %6, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %intpt1, align 8
  %9 = load i32, i32* %8, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %10, i64 %idxprom4
  %11 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %11, i64 %idxprom
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx5, i32 0, i32 7
  %12 = load double, double* %opt, align 8
  %cmp6 = fcmp oeq double %12, -1.000000e+00
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %13 = load i32, i32* %k2, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32, i32* %k1, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %15, i64 %idxprom8
  %16 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %16, i64 %idxprom7
  store %struct._LocalHom* null, %struct._LocalHom** %arrayidx10, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %17 = load i32*, i32** %intpt1, align 8
  %18 = load i32, i32* %17, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %19, i64 %idxprom11
  %20 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx12, align 8
  %21 = load i32*, i32** %intpt2, align 8
  %22 = load i32, i32* %21, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %20, i64 %idx.ext
  %23 = load i32, i32* %k2, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load i32, i32* %k1, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %25, i64 %idxprom14
  %26 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %26, i64 %idxprom13
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32*, i32** %intpt2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr, i32** %intpt2, align 8
  %28 = load i32, i32* %k2, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k2, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %29 = load i32*, i32** %intpt1, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr18, i32** %intpt1, align 8
  %30 = load i32, i32* %k1, align 4
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, i32* %k1, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @msfastshrinklocalhom(i32* %mem1, i32* %mem2, %struct._LocalHom** %localhom, %struct._LocalHom*** %localhomshrink) #0 {
entry:
  %mem1.addr = alloca i32*, align 8
  %mem2.addr = alloca i32*, align 8
  %localhom.addr = alloca %struct._LocalHom**, align 8
  %localhomshrink.addr = alloca %struct._LocalHom***, align 8
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %intpt1 = alloca i32*, align 8
  %intpt2 = alloca i32*, align 8
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  store i32* %mem1, i32** %mem1.addr, align 8
  store i32* %mem2, i32** %mem2.addr, align 8
  store %struct._LocalHom** %localhom, %struct._LocalHom*** %localhom.addr, align 8
  store %struct._LocalHom*** %localhomshrink, %struct._LocalHom**** %localhomshrink.addr, align 8
  %0 = load i32*, i32** %mem1.addr, align 8
  store i32* %0, i32** %intpt1, align 8
  store i32 0, i32* %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %1 = load i32*, i32** %intpt1, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %mem2.addr, align 8
  store i32* %3, i32** %intpt2, align 8
  store i32 0, i32* %k2, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32*, i32** %intpt2, align 8
  %5 = load i32, i32* %4, align 4
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32*, i32** %intpt1, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %intpt2, align 8
  %9 = load i32, i32* %8, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %10 = load i32*, i32** %intpt1, align 8
  %11 = load i32, i32* %10, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %12 = load i32*, i32** %intpt2, align 8
  %13 = load i32, i32* %12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %m1, align 4
  %14 = load i32*, i32** %intpt1, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %intpt2, align 8
  %17 = load i32, i32* %16, align 4
  %cmp5 = icmp sgt i32 %15, %17
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  %18 = load i32*, i32** %intpt1, align 8
  %19 = load i32, i32* %18, align 4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %20 = load i32*, i32** %intpt2, align 8
  %21 = load i32, i32* %20, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %19, %cond.true.6 ], [ %21, %cond.false.7 ]
  store i32 %cond9, i32* %m2, align 4
  %22 = load i32, i32* %m2, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32, i32* %m1, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %24, i64 %idxprom10
  %25 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx, align 8
  %arrayidx11 = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %25, i64 %idxprom
  %opt = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %arrayidx11, i32 0, i32 7
  %26 = load double, double* %opt, align 8
  %cmp12 = fcmp oeq double %26, -1.000000e+00
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  %27 = load i32, i32* %k2, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load i32, i32* %k1, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %29, i64 %idxprom14
  %30 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %30, i64 %idxprom13
  store %struct._LocalHom* null, %struct._LocalHom** %arrayidx16, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.8
  %31 = load i32, i32* %m1, align 4
  %idxprom17 = sext i32 %31 to i64
  %32 = load %struct._LocalHom**, %struct._LocalHom*** %localhom.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %32, i64 %idxprom17
  %33 = load %struct._LocalHom*, %struct._LocalHom** %arrayidx18, align 8
  %34 = load i32, i32* %m2, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds %struct._LocalHom, %struct._LocalHom* %33, i64 %idx.ext
  %35 = load i32, i32* %k2, align 4
  %idxprom19 = sext i32 %35 to i64
  %36 = load i32, i32* %k1, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load %struct._LocalHom***, %struct._LocalHom**** %localhomshrink.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._LocalHom**, %struct._LocalHom*** %37, i64 %idxprom20
  %38 = load %struct._LocalHom**, %struct._LocalHom*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds %struct._LocalHom*, %struct._LocalHom** %38, i64 %idxprom19
  store %struct._LocalHom* %add.ptr, %struct._LocalHom** %arrayidx22, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32*, i32** %intpt2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr, i32** %intpt2, align 8
  %40 = load i32, i32* %k2, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k2, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %41 = load i32*, i32** %intpt1, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr24, i32** %intpt1, align 8
  %42 = load i32, i32* %k1, align 4
  %inc25 = add nsw i32 %42, 1
  store i32 %inc25, i32* %k1, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
