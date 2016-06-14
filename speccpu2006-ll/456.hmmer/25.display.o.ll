; ModuleID = 'display.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"unknown state\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"         *      \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"    %c      \00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"\0AN    \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0AM%-3d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0AI%-3d \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\0AE    \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0AC    \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\0AJ    \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\0AB    \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\0AD%-3d \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%- #11.3e\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"M%d\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"I%d\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"bad transition\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"%d\09%s\09%d\09%s\09%-14.7g\09\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @DisplayPlan7Posteriors(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %forward, %struct.dpmatrix_s* %backward, %struct.p7trace_s* %viterbi, %struct.p7trace_s* %optacc) #0 {
entry:
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %forward.addr = alloca %struct.dpmatrix_s*, align 8
  %backward.addr = alloca %struct.dpmatrix_s*, align 8
  %viterbi.addr = alloca %struct.p7trace_s*, align 8
  %optacc.addr = alloca %struct.p7trace_s*, align 8
  %alignment = alloca [2 x %struct.p7trace_s*], align 16
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %forward, %struct.dpmatrix_s** %forward.addr, align 8
  store %struct.dpmatrix_s* %backward, %struct.dpmatrix_s** %backward.addr, align 8
  store %struct.p7trace_s* %viterbi, %struct.p7trace_s** %viterbi.addr, align 8
  store %struct.p7trace_s* %optacc, %struct.p7trace_s** %optacc.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %viterbi.addr, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.p7trace_s*], [2 x %struct.p7trace_s*]* %alignment, i32 0, i64 0
  store %struct.p7trace_s* %0, %struct.p7trace_s** %arrayidx, align 8
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %optacc.addr, align 8
  %arrayidx1 = getelementptr inbounds [2 x %struct.p7trace_s*], [2 x %struct.p7trace_s*]* %alignment, i32 0, i64 1
  store %struct.p7trace_s* %1, %struct.p7trace_s** %arrayidx1, align 8
  %2 = load i32, i32* %L.addr, align 4
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %5 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.p7trace_s*], [2 x %struct.p7trace_s*]* %alignment, i32 0, i32 0
  call void @DisplayPlan7PostAlign(i32 %2, %struct.plan7_s* %3, %struct.dpmatrix_s* %4, %struct.dpmatrix_s* %5, %struct.p7trace_s** %arraydecay, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DisplayPlan7PostAlign(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %forward, %struct.dpmatrix_s* %backward, %struct.p7trace_s** %alignment, i32 %A) #0 {
entry:
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %forward.addr = alloca %struct.dpmatrix_s*, align 8
  %backward.addr = alloca %struct.dpmatrix_s*, align 8
  %alignment.addr = alloca %struct.p7trace_s**, align 8
  %A.addr = alloca i32, align 4
  %sc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kmin = alloca i32, align 4
  %kmax = alloca i32, align 4
  %min = alloca i32*, align 8
  %max = alloca i32*, align 8
  %on = alloca i32*, align 8
  %state = alloca i8, align 1
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %forward, %struct.dpmatrix_s** %forward.addr, align 8
  store %struct.dpmatrix_s* %backward, %struct.dpmatrix_s** %backward.addr, align 8
  store %struct.p7trace_s** %alignment, %struct.p7trace_s*** %alignment.addr, align 8
  store i32 %A, i32* %A.addr, align 4
  %0 = load i32, i32* %L.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1, i32 0, i32 0
  %2 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 33
  %arrayidx2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 2
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %4, %6
  store i32 %add, i32* %sc, align 4
  %7 = load i32, i32* %A.addr, align 4
  %conv = sext i32 %7 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #3
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %min, align 8
  %9 = load i32, i32* %A.addr, align 4
  %conv4 = sext i32 %9 to i64
  %call5 = call noalias i8* @calloc(i64 %conv4, i64 4) #3
  %10 = bitcast i8* %call5 to i32*
  store i32* %10, i32** %max, align 8
  %11 = load i32, i32* %A.addr, align 4
  %conv6 = sext i32 %11 to i64
  %call7 = call noalias i8* @calloc(i64 %conv6, i64 4) #3
  %12 = bitcast i8* %call7 to i32*
  store i32* %12, i32** %on, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.443, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %L.addr, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.445

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %A.addr, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.12
  %17 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load i32*, i32** %min, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i64 %idxprom13
  %19 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %21, i64 %idxprom16
  %22 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx17, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %22, i32 0, i32 3
  %23 = load i32*, i32** %pos, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  %24 = load i32, i32* %arrayidx18, align 4
  %25 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %25, 1
  %cmp19 = icmp slt i32 %24, %sub
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load i32*, i32** %min, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom21
  %28 = load i32, i32* %arrayidx22, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %30, i64 %idxprom23
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx24, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %31, i32 0, i32 0
  %32 = load i32, i32* %tlen, align 4
  %sub25 = sub nsw i32 %32, 1
  %cmp26 = icmp slt i32 %28, %sub25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load i32*, i32** %min, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 %idxprom28
  %36 = load i32, i32* %arrayidx29, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %arrayidx29, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.51, %while.end
  %37 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32*, i32** %max, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %39 to i64
  %40 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %41, i64 %idxprom34
  %42 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx35, align 8
  %pos36 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %42, i32 0, i32 3
  %43 = load i32*, i32** %pos36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %43, i64 %idxprom33
  %44 = load i32, i32* %arrayidx37, align 4
  %45 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %45, 1
  %cmp39 = icmp sle i32 %44, %add38
  br i1 %cmp39, label %land.rhs.41, label %land.end.50

land.rhs.41:                                      ; preds = %while.cond.30
  %46 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load i32*, i32** %max, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %47, i64 %idxprom42
  %48 = load i32, i32* %arrayidx43, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %50, i64 %idxprom44
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx45, align 8
  %tlen46 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 0
  %52 = load i32, i32* %tlen46, align 4
  %sub47 = sub nsw i32 %52, 1
  %cmp48 = icmp slt i32 %48, %sub47
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.41, %while.cond.30
  %53 = phi i1 [ false, %while.cond.30 ], [ %cmp48, %land.rhs.41 ]
  br i1 %53, label %while.body.51, label %while.end.55

while.body.51:                                    ; preds = %land.end.50
  %54 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %54 to i64
  %55 = load i32*, i32** %max, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %55, i64 %idxprom52
  %56 = load i32, i32* %arrayidx53, align 4
  %inc54 = add nsw i32 %56, 1
  store i32 %inc54, i32* %arrayidx53, align 4
  br label %while.cond.30

while.end.55:                                     ; preds = %land.end.50
  br label %for.inc

for.inc:                                          ; preds = %while.end.55
  %57 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %57, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  store i8 1, i8* %state, align 1
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.440, %for.end
  %58 = load i8, i8* %state, align 1
  %conv58 = sext i8 %58 to i32
  %cmp59 = icmp sle i32 %conv58, 10
  br i1 %cmp59, label %for.body.61, label %for.end.442

for.body.61:                                      ; preds = %for.cond.57
  %59 = load i8, i8* %state, align 1
  %conv62 = sext i8 %59 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.61
  %60 = load i8, i8* %state, align 1
  %conv65 = sext i8 %60 to i32
  %cmp66 = icmp eq i32 %conv65, 6
  br i1 %cmp66, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.61
  store i32 1, i32* %kmin, align 4
  %61 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 20
  %62 = load i32, i32* %M, align 4
  store i32 %62, i32* %kmax, align 4
  br label %if.end.83

if.else:                                          ; preds = %lor.lhs.false
  %63 = load i8, i8* %state, align 1
  %conv68 = sext i8 %63 to i32
  %cmp69 = icmp eq i32 %conv68, 2
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.else
  store i32 2, i32* %kmin, align 4
  %64 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %64, i32 0, i32 20
  %65 = load i32, i32* %M72, align 4
  %sub73 = sub nsw i32 %65, 1
  store i32 %sub73, i32* %kmax, align 4
  br label %if.end.82

if.else.74:                                       ; preds = %if.else
  %66 = load i8, i8* %state, align 1
  %conv75 = sext i8 %66 to i32
  %cmp76 = icmp eq i32 %conv75, 3
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.else.74
  store i32 1, i32* %kmin, align 4
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 20
  %68 = load i32, i32* %M79, align 4
  %sub80 = sub nsw i32 %68, 1
  store i32 %sub80, i32* %kmax, align 4
  br label %if.end

if.else.81:                                       ; preds = %if.else.74
  store i32 0, i32* %kmax, align 4
  store i32 0, i32* %kmin, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.81, %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end, %if.then.71
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then
  %69 = load i32, i32* %kmin, align 4
  store i32 %69, i32* %k, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.294, %if.end.83
  %70 = load i32, i32* %k, align 4
  %71 = load i32, i32* %kmax, align 4
  %cmp85 = icmp sle i32 %70, %71
  br i1 %cmp85, label %for.body.87, label %for.end.296

for.body.87:                                      ; preds = %for.cond.84
  %72 = load i8, i8* %state, align 1
  %conv88 = sext i8 %72 to i32
  switch i32 %conv88, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.179
    i32 3, label %sw.bb.224
    i32 6, label %sw.bb.273
  ]

sw.bb:                                            ; preds = %for.body.87
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %L.addr, align 4
  %cmp89 = icmp slt i32 %73, %74
  br i1 %cmp89, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %sw.bb
  %75 = load i32, i32* %k, align 4
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M91 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 20
  %77 = load i32, i32* %M91, align 4
  %cmp92 = icmp slt i32 %75, %77
  br i1 %cmp92, label %if.then.94, label %if.end.114

if.then.94:                                       ; preds = %land.lhs.true
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %k, align 4
  %80 = load i32, i32* %i, align 4
  %add95 = add nsw i32 %80, 1
  %81 = load i32, i32* %k, align 4
  %add96 = add nsw i32 %81, 1
  %82 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %82 to i64
  %83 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %84, i32 0, i32 1
  %85 = load i32**, i32*** %mmx, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %85, i64 %idxprom98
  %86 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %86, i64 %idxprom97
  %87 = load i32, i32* %arrayidx100, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %88 to i64
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 30
  %90 = load i32**, i32*** %tsc, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %90, i64 0
  %91 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %91, i64 %idxprom101
  %92 = load i32, i32* %arrayidx103, align 4
  %add104 = add nsw i32 %87, %92
  %93 = load i32, i32* %k, align 4
  %add105 = add nsw i32 %93, 1
  %idxprom106 = sext i32 %add105 to i64
  %94 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %94, 1
  %idxprom108 = sext i32 %add107 to i64
  %95 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx109 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %95, i32 0, i32 1
  %96 = load i32**, i32*** %mmx109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %96, i64 %idxprom108
  %97 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %97, i64 %idxprom106
  %98 = load i32, i32* %arrayidx111, align 4
  %add112 = add nsw i32 %add104, %98
  %99 = load i32, i32* %sc, align 4
  %sub113 = sub nsw i32 %add112, %99
  %100 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %101 = load i32*, i32** %min, align 8
  %102 = load i32*, i32** %max, align 8
  %103 = load i32*, i32** %on, align 8
  %104 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 1, i32 %78, i32 %79, i8 signext 1, i32 %add95, i32 %add96, i32 %sub113, %struct.p7trace_s** %100, i32* %101, i32* %102, i32* %103, i32 %104)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.94, %land.lhs.true, %sw.bb
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %L.addr, align 4
  %cmp115 = icmp slt i32 %105, %106
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.140

land.lhs.true.117:                                ; preds = %if.end.114
  %107 = load i32, i32* %k, align 4
  %108 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %108, i32 0, i32 20
  %109 = load i32, i32* %M118, align 4
  %cmp119 = icmp slt i32 %107, %109
  br i1 %cmp119, label %if.then.121, label %if.end.140

if.then.121:                                      ; preds = %land.lhs.true.117
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %k, align 4
  %112 = load i32, i32* %i, align 4
  %add122 = add nsw i32 %112, 1
  %113 = load i32, i32* %k, align 4
  %114 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %115 to i64
  %116 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx125 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %116, i32 0, i32 1
  %117 = load i32**, i32*** %mmx125, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %117, i64 %idxprom124
  %118 = load i32*, i32** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %118, i64 %idxprom123
  %119 = load i32, i32* %arrayidx127, align 4
  %120 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %120 to i64
  %121 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc129 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %121, i32 0, i32 30
  %122 = load i32**, i32*** %tsc129, align 8
  %arrayidx130 = getelementptr inbounds i32*, i32** %122, i64 1
  %123 = load i32*, i32** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %123, i64 %idxprom128
  %124 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %119, %124
  %125 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %125 to i64
  %126 = load i32, i32* %i, align 4
  %add134 = add nsw i32 %126, 1
  %idxprom135 = sext i32 %add134 to i64
  %127 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %127, i32 0, i32 2
  %128 = load i32**, i32*** %imx, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %128, i64 %idxprom135
  %129 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %129, i64 %idxprom133
  %130 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %add132, %130
  %131 = load i32, i32* %sc, align 4
  %sub139 = sub nsw i32 %add138, %131
  %132 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %133 = load i32*, i32** %min, align 8
  %134 = load i32*, i32** %max, align 8
  %135 = load i32*, i32** %on, align 8
  %136 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 1, i32 %110, i32 %111, i8 signext 3, i32 %add122, i32 %113, i32 %sub139, %struct.p7trace_s** %132, i32* %133, i32* %134, i32* %135, i32 %136)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.121, %land.lhs.true.117, %if.end.114
  %137 = load i32, i32* %k, align 4
  %138 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M141 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %138, i32 0, i32 20
  %139 = load i32, i32* %M141, align 4
  %sub142 = sub nsw i32 %139, 1
  %cmp143 = icmp slt i32 %137, %sub142
  br i1 %cmp143, label %if.then.145, label %if.end.164

if.then.145:                                      ; preds = %if.end.140
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %k, align 4
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %k, align 4
  %add146 = add nsw i32 %143, 1
  %144 = load i32, i32* %k, align 4
  %idxprom147 = sext i32 %144 to i64
  %145 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %145 to i64
  %146 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx149 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %146, i32 0, i32 1
  %147 = load i32**, i32*** %mmx149, align 8
  %arrayidx150 = getelementptr inbounds i32*, i32** %147, i64 %idxprom148
  %148 = load i32*, i32** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %148, i64 %idxprom147
  %149 = load i32, i32* %arrayidx151, align 4
  %150 = load i32, i32* %k, align 4
  %idxprom152 = sext i32 %150 to i64
  %151 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc153 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %151, i32 0, i32 30
  %152 = load i32**, i32*** %tsc153, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %152, i64 2
  %153 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %153, i64 %idxprom152
  %154 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %149, %154
  %155 = load i32, i32* %k, align 4
  %add157 = add nsw i32 %155, 1
  %idxprom158 = sext i32 %add157 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %156 to i64
  %157 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %dmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %157, i32 0, i32 3
  %158 = load i32**, i32*** %dmx, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %158, i64 %idxprom159
  %159 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %159, i64 %idxprom158
  %160 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %add156, %160
  %161 = load i32, i32* %sc, align 4
  %sub163 = sub nsw i32 %add162, %161
  %162 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %163 = load i32*, i32** %min, align 8
  %164 = load i32*, i32** %max, align 8
  %165 = load i32*, i32** %on, align 8
  %166 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 1, i32 %140, i32 %141, i8 signext 2, i32 %142, i32 %add146, i32 %sub163, %struct.p7trace_s** %162, i32* %163, i32* %164, i32* %165, i32 %166)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.145, %if.end.140
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %k, align 4
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %170 to i64
  %171 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %171 to i64
  %172 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %mmx167 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %172, i32 0, i32 1
  %173 = load i32**, i32*** %mmx167, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %173, i64 %idxprom166
  %174 = load i32*, i32** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %174, i64 %idxprom165
  %175 = load i32, i32* %arrayidx169, align 4
  %176 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %176 to i64
  %177 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 35
  %178 = load i32*, i32** %esc, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %178, i64 %idxprom170
  %179 = load i32, i32* %arrayidx171, align 4
  %add172 = add nsw i32 %175, %179
  %180 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %180 to i64
  %181 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx174 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %181, i32 0, i32 0
  %182 = load i32**, i32*** %xmx174, align 8
  %arrayidx175 = getelementptr inbounds i32*, i32** %182, i64 %idxprom173
  %183 = load i32*, i32** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %183, i64 1
  %184 = load i32, i32* %arrayidx176, align 4
  %add177 = add nsw i32 %add172, %184
  %185 = load i32, i32* %sc, align 4
  %sub178 = sub nsw i32 %add177, %185
  %186 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %187 = load i32*, i32** %min, align 8
  %188 = load i32*, i32** %max, align 8
  %189 = load i32*, i32** %on, align 8
  %190 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 1, i32 %167, i32 %168, i8 signext 7, i32 %169, i32 0, i32 %sub178, %struct.p7trace_s** %186, i32* %187, i32* %188, i32* %189, i32 %190)
  br label %sw.epilog

sw.bb.179:                                        ; preds = %for.body.87
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %L.addr, align 4
  %cmp180 = icmp slt i32 %191, %192
  br i1 %cmp180, label %if.then.182, label %if.end.204

if.then.182:                                      ; preds = %sw.bb.179
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %k, align 4
  %195 = load i32, i32* %i, align 4
  %add183 = add nsw i32 %195, 1
  %196 = load i32, i32* %k, align 4
  %add184 = add nsw i32 %196, 1
  %197 = load i32, i32* %k, align 4
  %idxprom185 = sext i32 %197 to i64
  %198 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %198 to i64
  %199 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %dmx187 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %199, i32 0, i32 3
  %200 = load i32**, i32*** %dmx187, align 8
  %arrayidx188 = getelementptr inbounds i32*, i32** %200, i64 %idxprom186
  %201 = load i32*, i32** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %201, i64 %idxprom185
  %202 = load i32, i32* %arrayidx189, align 4
  %203 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %203 to i64
  %204 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc191 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %204, i32 0, i32 30
  %205 = load i32**, i32*** %tsc191, align 8
  %arrayidx192 = getelementptr inbounds i32*, i32** %205, i64 5
  %206 = load i32*, i32** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %206, i64 %idxprom190
  %207 = load i32, i32* %arrayidx193, align 4
  %add194 = add nsw i32 %202, %207
  %208 = load i32, i32* %k, align 4
  %add195 = add nsw i32 %208, 1
  %idxprom196 = sext i32 %add195 to i64
  %209 = load i32, i32* %i, align 4
  %add197 = add nsw i32 %209, 1
  %idxprom198 = sext i32 %add197 to i64
  %210 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx199 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %210, i32 0, i32 1
  %211 = load i32**, i32*** %mmx199, align 8
  %arrayidx200 = getelementptr inbounds i32*, i32** %211, i64 %idxprom198
  %212 = load i32*, i32** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %212, i64 %idxprom196
  %213 = load i32, i32* %arrayidx201, align 4
  %add202 = add nsw i32 %add194, %213
  %214 = load i32, i32* %sc, align 4
  %sub203 = sub nsw i32 %add202, %214
  %215 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %216 = load i32*, i32** %min, align 8
  %217 = load i32*, i32** %max, align 8
  %218 = load i32*, i32** %on, align 8
  %219 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 2, i32 %193, i32 %194, i8 signext 1, i32 %add183, i32 %add184, i32 %sub203, %struct.p7trace_s** %215, i32* %216, i32* %217, i32* %218, i32 %219)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.182, %sw.bb.179
  %220 = load i32, i32* %i, align 4
  %221 = load i32, i32* %k, align 4
  %222 = load i32, i32* %i, align 4
  %223 = load i32, i32* %k, align 4
  %add205 = add nsw i32 %223, 1
  %224 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %224 to i64
  %225 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %225 to i64
  %226 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %dmx208 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %226, i32 0, i32 3
  %227 = load i32**, i32*** %dmx208, align 8
  %arrayidx209 = getelementptr inbounds i32*, i32** %227, i64 %idxprom207
  %228 = load i32*, i32** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %228, i64 %idxprom206
  %229 = load i32, i32* %arrayidx210, align 4
  %230 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %230 to i64
  %231 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %231, i32 0, i32 30
  %232 = load i32**, i32*** %tsc212, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %232, i64 6
  %233 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %233, i64 %idxprom211
  %234 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %229, %234
  %235 = load i32, i32* %k, align 4
  %add216 = add nsw i32 %235, 1
  %idxprom217 = sext i32 %add216 to i64
  %236 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %236 to i64
  %237 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %dmx219 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %237, i32 0, i32 3
  %238 = load i32**, i32*** %dmx219, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %238, i64 %idxprom218
  %239 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %239, i64 %idxprom217
  %240 = load i32, i32* %arrayidx221, align 4
  %add222 = add nsw i32 %add215, %240
  %241 = load i32, i32* %sc, align 4
  %sub223 = sub nsw i32 %add222, %241
  %242 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %243 = load i32*, i32** %min, align 8
  %244 = load i32*, i32** %max, align 8
  %245 = load i32*, i32** %on, align 8
  %246 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 2, i32 %220, i32 %221, i8 signext 2, i32 %222, i32 %add205, i32 %sub223, %struct.p7trace_s** %242, i32* %243, i32* %244, i32* %245, i32 %246)
  br label %sw.epilog

sw.bb.224:                                        ; preds = %for.body.87
  %247 = load i32, i32* %i, align 4
  %248 = load i32, i32* %L.addr, align 4
  %cmp225 = icmp slt i32 %247, %248
  br i1 %cmp225, label %if.then.227, label %if.end.249

if.then.227:                                      ; preds = %sw.bb.224
  %249 = load i32, i32* %i, align 4
  %250 = load i32, i32* %k, align 4
  %251 = load i32, i32* %i, align 4
  %add228 = add nsw i32 %251, 1
  %252 = load i32, i32* %k, align 4
  %add229 = add nsw i32 %252, 1
  %253 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %253 to i64
  %254 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %254 to i64
  %255 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %imx232 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %255, i32 0, i32 2
  %256 = load i32**, i32*** %imx232, align 8
  %arrayidx233 = getelementptr inbounds i32*, i32** %256, i64 %idxprom231
  %257 = load i32*, i32** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %257, i64 %idxprom230
  %258 = load i32, i32* %arrayidx234, align 4
  %259 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %259 to i64
  %260 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc236 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %260, i32 0, i32 30
  %261 = load i32**, i32*** %tsc236, align 8
  %arrayidx237 = getelementptr inbounds i32*, i32** %261, i64 3
  %262 = load i32*, i32** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %262, i64 %idxprom235
  %263 = load i32, i32* %arrayidx238, align 4
  %add239 = add nsw i32 %258, %263
  %264 = load i32, i32* %k, align 4
  %add240 = add nsw i32 %264, 1
  %idxprom241 = sext i32 %add240 to i64
  %265 = load i32, i32* %i, align 4
  %add242 = add nsw i32 %265, 1
  %idxprom243 = sext i32 %add242 to i64
  %266 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx244 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %266, i32 0, i32 1
  %267 = load i32**, i32*** %mmx244, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %267, i64 %idxprom243
  %268 = load i32*, i32** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %268, i64 %idxprom241
  %269 = load i32, i32* %arrayidx246, align 4
  %add247 = add nsw i32 %add239, %269
  %270 = load i32, i32* %sc, align 4
  %sub248 = sub nsw i32 %add247, %270
  %271 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %272 = load i32*, i32** %min, align 8
  %273 = load i32*, i32** %max, align 8
  %274 = load i32*, i32** %on, align 8
  %275 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 3, i32 %249, i32 %250, i8 signext 1, i32 %add228, i32 %add229, i32 %sub248, %struct.p7trace_s** %271, i32* %272, i32* %273, i32* %274, i32 %275)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.227, %sw.bb.224
  %276 = load i32, i32* %i, align 4
  %277 = load i32, i32* %L.addr, align 4
  %cmp250 = icmp slt i32 %276, %277
  br i1 %cmp250, label %if.then.252, label %if.end.272

if.then.252:                                      ; preds = %if.end.249
  %278 = load i32, i32* %i, align 4
  %279 = load i32, i32* %k, align 4
  %280 = load i32, i32* %i, align 4
  %add253 = add nsw i32 %280, 1
  %281 = load i32, i32* %k, align 4
  %282 = load i32, i32* %k, align 4
  %idxprom254 = sext i32 %282 to i64
  %283 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %283 to i64
  %284 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %imx256 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %284, i32 0, i32 2
  %285 = load i32**, i32*** %imx256, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %285, i64 %idxprom255
  %286 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %286, i64 %idxprom254
  %287 = load i32, i32* %arrayidx258, align 4
  %288 = load i32, i32* %k, align 4
  %idxprom259 = sext i32 %288 to i64
  %289 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %289, i32 0, i32 30
  %290 = load i32**, i32*** %tsc260, align 8
  %arrayidx261 = getelementptr inbounds i32*, i32** %290, i64 4
  %291 = load i32*, i32** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %291, i64 %idxprom259
  %292 = load i32, i32* %arrayidx262, align 4
  %add263 = add nsw i32 %287, %292
  %293 = load i32, i32* %k, align 4
  %idxprom264 = sext i32 %293 to i64
  %294 = load i32, i32* %i, align 4
  %add265 = add nsw i32 %294, 1
  %idxprom266 = sext i32 %add265 to i64
  %295 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %imx267 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %295, i32 0, i32 2
  %296 = load i32**, i32*** %imx267, align 8
  %arrayidx268 = getelementptr inbounds i32*, i32** %296, i64 %idxprom266
  %297 = load i32*, i32** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %297, i64 %idxprom264
  %298 = load i32, i32* %arrayidx269, align 4
  %add270 = add nsw i32 %add263, %298
  %299 = load i32, i32* %sc, align 4
  %sub271 = sub nsw i32 %add270, %299
  %300 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %301 = load i32*, i32** %min, align 8
  %302 = load i32*, i32** %max, align 8
  %303 = load i32*, i32** %on, align 8
  %304 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 3, i32 %278, i32 %279, i8 signext 3, i32 %add253, i32 %281, i32 %sub271, %struct.p7trace_s** %300, i32* %301, i32* %302, i32* %303, i32 %304)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.252, %if.end.249
  br label %sw.epilog

sw.bb.273:                                        ; preds = %for.body.87
  %305 = load i32, i32* %i, align 4
  %306 = load i32, i32* %L.addr, align 4
  %cmp274 = icmp slt i32 %305, %306
  br i1 %cmp274, label %if.then.276, label %if.end.293

if.then.276:                                      ; preds = %sw.bb.273
  %307 = load i32, i32* %i, align 4
  %308 = load i32, i32* %i, align 4
  %add277 = add nsw i32 %308, 1
  %309 = load i32, i32* %k, align 4
  %310 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %310 to i64
  %311 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx279 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %311, i32 0, i32 0
  %312 = load i32**, i32*** %xmx279, align 8
  %arrayidx280 = getelementptr inbounds i32*, i32** %312, i64 %idxprom278
  %313 = load i32*, i32** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %313, i64 0
  %314 = load i32, i32* %arrayidx281, align 4
  %315 = load i32, i32* %k, align 4
  %idxprom282 = sext i32 %315 to i64
  %316 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %316, i32 0, i32 34
  %317 = load i32*, i32** %bsc, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %317, i64 %idxprom282
  %318 = load i32, i32* %arrayidx283, align 4
  %add284 = add nsw i32 %314, %318
  %319 = load i32, i32* %k, align 4
  %idxprom285 = sext i32 %319 to i64
  %320 = load i32, i32* %i, align 4
  %add286 = add nsw i32 %320, 1
  %idxprom287 = sext i32 %add286 to i64
  %321 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %mmx288 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %321, i32 0, i32 1
  %322 = load i32**, i32*** %mmx288, align 8
  %arrayidx289 = getelementptr inbounds i32*, i32** %322, i64 %idxprom287
  %323 = load i32*, i32** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i32, i32* %323, i64 %idxprom285
  %324 = load i32, i32* %arrayidx290, align 4
  %add291 = add nsw i32 %add284, %324
  %325 = load i32, i32* %sc, align 4
  %sub292 = sub nsw i32 %add291, %325
  %326 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %327 = load i32*, i32** %min, align 8
  %328 = load i32*, i32** %max, align 8
  %329 = load i32*, i32** %on, align 8
  %330 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 6, i32 %307, i32 0, i8 signext 1, i32 %add277, i32 %309, i32 %sub292, %struct.p7trace_s** %326, i32* %327, i32* %328, i32* %329, i32 %330)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.276, %sw.bb.273
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.87
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.293, %if.end.272, %if.end.204, %if.end.164
  br label %for.inc.294

for.inc.294:                                      ; preds = %sw.epilog
  %331 = load i32, i32* %k, align 4
  %inc295 = add nsw i32 %331, 1
  store i32 %inc295, i32* %k, align 4
  br label %for.cond.84

for.end.296:                                      ; preds = %for.cond.84
  %332 = load i8, i8* %state, align 1
  %conv297 = sext i8 %332 to i32
  switch i32 %conv297, label %sw.default.438 [
    i32 5, label %sw.bb.298
    i32 10, label %sw.bb.333
    i32 8, label %sw.bb.368
    i32 7, label %sw.bb.398
    i32 4, label %sw.bb.427
    i32 1, label %sw.bb.437
    i32 2, label %sw.bb.437
    i32 3, label %sw.bb.437
    i32 6, label %sw.bb.437
    i32 9, label %sw.bb.437
  ]

sw.bb.298:                                        ; preds = %for.end.296
  %333 = load i32, i32* %i, align 4
  %334 = load i32, i32* %i, align 4
  %335 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %335 to i64
  %336 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx300 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %336, i32 0, i32 0
  %337 = load i32**, i32*** %xmx300, align 8
  %arrayidx301 = getelementptr inbounds i32*, i32** %337, i64 %idxprom299
  %338 = load i32*, i32** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %338, i64 4
  %339 = load i32, i32* %arrayidx302, align 4
  %340 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc303 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %340, i32 0, i32 33
  %arrayidx304 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc303, i32 0, i64 0
  %arrayidx305 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx304, i32 0, i64 0
  %341 = load i32, i32* %arrayidx305, align 4
  %add306 = add nsw i32 %339, %341
  %342 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %342 to i64
  %343 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %343, i32 0, i32 0
  %344 = load i32**, i32*** %xmx308, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %344, i64 %idxprom307
  %345 = load i32*, i32** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %345, i64 0
  %346 = load i32, i32* %arrayidx310, align 4
  %add311 = add nsw i32 %add306, %346
  %347 = load i32, i32* %sc, align 4
  %sub312 = sub nsw i32 %add311, %347
  %348 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %349 = load i32*, i32** %min, align 8
  %350 = load i32*, i32** %max, align 8
  %351 = load i32*, i32** %on, align 8
  %352 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 5, i32 %333, i32 0, i8 signext 6, i32 %334, i32 0, i32 %sub312, %struct.p7trace_s** %348, i32* %349, i32* %350, i32* %351, i32 %352)
  %353 = load i32, i32* %i, align 4
  %354 = load i32, i32* %L.addr, align 4
  %cmp313 = icmp slt i32 %353, %354
  br i1 %cmp313, label %if.then.315, label %if.end.332

if.then.315:                                      ; preds = %sw.bb.298
  %355 = load i32, i32* %i, align 4
  %356 = load i32, i32* %i, align 4
  %add316 = add nsw i32 %356, 1
  %357 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %357 to i64
  %358 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx318 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %358, i32 0, i32 0
  %359 = load i32**, i32*** %xmx318, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %359, i64 %idxprom317
  %360 = load i32*, i32** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %360, i64 4
  %361 = load i32, i32* %arrayidx320, align 4
  %362 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc321 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %362, i32 0, i32 33
  %arrayidx322 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc321, i32 0, i64 0
  %arrayidx323 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx322, i32 0, i64 1
  %363 = load i32, i32* %arrayidx323, align 4
  %add324 = add nsw i32 %361, %363
  %364 = load i32, i32* %i, align 4
  %add325 = add nsw i32 %364, 1
  %idxprom326 = sext i32 %add325 to i64
  %365 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx327 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %365, i32 0, i32 0
  %366 = load i32**, i32*** %xmx327, align 8
  %arrayidx328 = getelementptr inbounds i32*, i32** %366, i64 %idxprom326
  %367 = load i32*, i32** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %367, i64 4
  %368 = load i32, i32* %arrayidx329, align 4
  %add330 = add nsw i32 %add324, %368
  %369 = load i32, i32* %sc, align 4
  %sub331 = sub nsw i32 %add330, %369
  %370 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %371 = load i32*, i32** %min, align 8
  %372 = load i32*, i32** %max, align 8
  %373 = load i32*, i32** %on, align 8
  %374 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 5, i32 %355, i32 0, i8 signext 5, i32 %add316, i32 0, i32 %sub331, %struct.p7trace_s** %370, i32* %371, i32* %372, i32* %373, i32 %374)
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.315, %sw.bb.298
  br label %sw.epilog.439

sw.bb.333:                                        ; preds = %for.end.296
  %375 = load i32, i32* %i, align 4
  %376 = load i32, i32* %i, align 4
  %377 = load i32, i32* %i, align 4
  %idxprom334 = sext i32 %377 to i64
  %378 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx335 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %378, i32 0, i32 0
  %379 = load i32**, i32*** %xmx335, align 8
  %arrayidx336 = getelementptr inbounds i32*, i32** %379, i64 %idxprom334
  %380 = load i32*, i32** %arrayidx336, align 8
  %arrayidx337 = getelementptr inbounds i32, i32* %380, i64 3
  %381 = load i32, i32* %arrayidx337, align 4
  %382 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc338 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %382, i32 0, i32 33
  %arrayidx339 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc338, i32 0, i64 3
  %arrayidx340 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx339, i32 0, i64 0
  %383 = load i32, i32* %arrayidx340, align 4
  %add341 = add nsw i32 %381, %383
  %384 = load i32, i32* %i, align 4
  %idxprom342 = sext i32 %384 to i64
  %385 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx343 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %385, i32 0, i32 0
  %386 = load i32**, i32*** %xmx343, align 8
  %arrayidx344 = getelementptr inbounds i32*, i32** %386, i64 %idxprom342
  %387 = load i32*, i32** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i32, i32* %387, i64 0
  %388 = load i32, i32* %arrayidx345, align 4
  %add346 = add nsw i32 %add341, %388
  %389 = load i32, i32* %sc, align 4
  %sub347 = sub nsw i32 %add346, %389
  %390 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %391 = load i32*, i32** %min, align 8
  %392 = load i32*, i32** %max, align 8
  %393 = load i32*, i32** %on, align 8
  %394 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 10, i32 %375, i32 0, i8 signext 6, i32 %376, i32 0, i32 %sub347, %struct.p7trace_s** %390, i32* %391, i32* %392, i32* %393, i32 %394)
  %395 = load i32, i32* %i, align 4
  %396 = load i32, i32* %L.addr, align 4
  %cmp348 = icmp slt i32 %395, %396
  br i1 %cmp348, label %if.then.350, label %if.end.367

if.then.350:                                      ; preds = %sw.bb.333
  %397 = load i32, i32* %i, align 4
  %398 = load i32, i32* %i, align 4
  %add351 = add nsw i32 %398, 1
  %399 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %399 to i64
  %400 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx353 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %400, i32 0, i32 0
  %401 = load i32**, i32*** %xmx353, align 8
  %arrayidx354 = getelementptr inbounds i32*, i32** %401, i64 %idxprom352
  %402 = load i32*, i32** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %402, i64 3
  %403 = load i32, i32* %arrayidx355, align 4
  %404 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc356 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %404, i32 0, i32 33
  %arrayidx357 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc356, i32 0, i64 3
  %arrayidx358 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx357, i32 0, i64 1
  %405 = load i32, i32* %arrayidx358, align 4
  %add359 = add nsw i32 %403, %405
  %406 = load i32, i32* %i, align 4
  %add360 = add nsw i32 %406, 1
  %idxprom361 = sext i32 %add360 to i64
  %407 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx362 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %407, i32 0, i32 0
  %408 = load i32**, i32*** %xmx362, align 8
  %arrayidx363 = getelementptr inbounds i32*, i32** %408, i64 %idxprom361
  %409 = load i32*, i32** %arrayidx363, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %409, i64 3
  %410 = load i32, i32* %arrayidx364, align 4
  %add365 = add nsw i32 %add359, %410
  %411 = load i32, i32* %sc, align 4
  %sub366 = sub nsw i32 %add365, %411
  %412 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %413 = load i32*, i32** %min, align 8
  %414 = load i32*, i32** %max, align 8
  %415 = load i32*, i32** %on, align 8
  %416 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 10, i32 %397, i32 0, i8 signext 10, i32 %add351, i32 0, i32 %sub366, %struct.p7trace_s** %412, i32* %413, i32* %414, i32* %415, i32 %416)
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.350, %sw.bb.333
  br label %sw.epilog.439

sw.bb.368:                                        ; preds = %for.end.296
  %417 = load i32, i32* %i, align 4
  %418 = load i32, i32* %i, align 4
  %419 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %419 to i64
  %420 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx370 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %420, i32 0, i32 0
  %421 = load i32**, i32*** %xmx370, align 8
  %arrayidx371 = getelementptr inbounds i32*, i32** %421, i64 %idxprom369
  %422 = load i32*, i32** %arrayidx371, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %422, i64 2
  %423 = load i32, i32* %arrayidx372, align 4
  %424 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc373 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %424, i32 0, i32 33
  %arrayidx374 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc373, i32 0, i64 2
  %arrayidx375 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx374, i32 0, i64 0
  %425 = load i32, i32* %arrayidx375, align 4
  %add376 = add nsw i32 %423, %425
  %426 = load i32, i32* %sc, align 4
  %sub377 = sub nsw i32 %add376, %426
  %427 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %428 = load i32*, i32** %min, align 8
  %429 = load i32*, i32** %max, align 8
  %430 = load i32*, i32** %on, align 8
  %431 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 8, i32 %417, i32 0, i8 signext 9, i32 %418, i32 0, i32 %sub377, %struct.p7trace_s** %427, i32* %428, i32* %429, i32* %430, i32 %431)
  %432 = load i32, i32* %i, align 4
  %433 = load i32, i32* %L.addr, align 4
  %cmp378 = icmp slt i32 %432, %433
  br i1 %cmp378, label %if.then.380, label %if.end.397

if.then.380:                                      ; preds = %sw.bb.368
  %434 = load i32, i32* %i, align 4
  %435 = load i32, i32* %i, align 4
  %add381 = add nsw i32 %435, 1
  %436 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %436 to i64
  %437 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx383 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %437, i32 0, i32 0
  %438 = load i32**, i32*** %xmx383, align 8
  %arrayidx384 = getelementptr inbounds i32*, i32** %438, i64 %idxprom382
  %439 = load i32*, i32** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %439, i64 2
  %440 = load i32, i32* %arrayidx385, align 4
  %441 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc386 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %441, i32 0, i32 33
  %arrayidx387 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc386, i32 0, i64 2
  %arrayidx388 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx387, i32 0, i64 1
  %442 = load i32, i32* %arrayidx388, align 4
  %add389 = add nsw i32 %440, %442
  %443 = load i32, i32* %i, align 4
  %add390 = add nsw i32 %443, 1
  %idxprom391 = sext i32 %add390 to i64
  %444 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx392 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %444, i32 0, i32 0
  %445 = load i32**, i32*** %xmx392, align 8
  %arrayidx393 = getelementptr inbounds i32*, i32** %445, i64 %idxprom391
  %446 = load i32*, i32** %arrayidx393, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %446, i64 2
  %447 = load i32, i32* %arrayidx394, align 4
  %add395 = add nsw i32 %add389, %447
  %448 = load i32, i32* %sc, align 4
  %sub396 = sub nsw i32 %add395, %448
  %449 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %450 = load i32*, i32** %min, align 8
  %451 = load i32*, i32** %max, align 8
  %452 = load i32*, i32** %on, align 8
  %453 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 8, i32 %434, i32 0, i8 signext 8, i32 %add381, i32 0, i32 %sub396, %struct.p7trace_s** %449, i32* %450, i32* %451, i32* %452, i32 %453)
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.380, %sw.bb.368
  br label %sw.epilog.439

sw.bb.398:                                        ; preds = %for.end.296
  %454 = load i32, i32* %i, align 4
  %455 = load i32, i32* %i, align 4
  %456 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %456 to i64
  %457 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx400 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %457, i32 0, i32 0
  %458 = load i32**, i32*** %xmx400, align 8
  %arrayidx401 = getelementptr inbounds i32*, i32** %458, i64 %idxprom399
  %459 = load i32*, i32** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %459, i64 1
  %460 = load i32, i32* %arrayidx402, align 4
  %461 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc403 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %461, i32 0, i32 33
  %arrayidx404 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc403, i32 0, i64 1
  %arrayidx405 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx404, i32 0, i64 0
  %462 = load i32, i32* %arrayidx405, align 4
  %add406 = add nsw i32 %460, %462
  %463 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %463 to i64
  %464 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx408 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %464, i32 0, i32 0
  %465 = load i32**, i32*** %xmx408, align 8
  %arrayidx409 = getelementptr inbounds i32*, i32** %465, i64 %idxprom407
  %466 = load i32*, i32** %arrayidx409, align 8
  %arrayidx410 = getelementptr inbounds i32, i32* %466, i64 2
  %467 = load i32, i32* %arrayidx410, align 4
  %add411 = add nsw i32 %add406, %467
  %468 = load i32, i32* %sc, align 4
  %sub412 = sub nsw i32 %add411, %468
  %469 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %470 = load i32*, i32** %min, align 8
  %471 = load i32*, i32** %max, align 8
  %472 = load i32*, i32** %on, align 8
  %473 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 7, i32 %454, i32 0, i8 signext 8, i32 %455, i32 0, i32 %sub412, %struct.p7trace_s** %469, i32* %470, i32* %471, i32* %472, i32 %473)
  %474 = load i32, i32* %i, align 4
  %475 = load i32, i32* %i, align 4
  %476 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %476 to i64
  %477 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %forward.addr, align 8
  %xmx414 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %477, i32 0, i32 0
  %478 = load i32**, i32*** %xmx414, align 8
  %arrayidx415 = getelementptr inbounds i32*, i32** %478, i64 %idxprom413
  %479 = load i32*, i32** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %479, i64 1
  %480 = load i32, i32* %arrayidx416, align 4
  %481 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc417 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %481, i32 0, i32 33
  %arrayidx418 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc417, i32 0, i64 1
  %arrayidx419 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx418, i32 0, i64 1
  %482 = load i32, i32* %arrayidx419, align 4
  %add420 = add nsw i32 %480, %482
  %483 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %483 to i64
  %484 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx422 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %484, i32 0, i32 0
  %485 = load i32**, i32*** %xmx422, align 8
  %arrayidx423 = getelementptr inbounds i32*, i32** %485, i64 %idxprom421
  %486 = load i32*, i32** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32, i32* %486, i64 3
  %487 = load i32, i32* %arrayidx424, align 4
  %add425 = add nsw i32 %add420, %487
  %488 = load i32, i32* %sc, align 4
  %sub426 = sub nsw i32 %add425, %488
  %489 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %490 = load i32*, i32** %min, align 8
  %491 = load i32*, i32** %max, align 8
  %492 = load i32*, i32** %on, align 8
  %493 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 7, i32 %474, i32 0, i8 signext 10, i32 %475, i32 0, i32 %sub426, %struct.p7trace_s** %489, i32* %490, i32* %491, i32* %492, i32 %493)
  br label %sw.epilog.439

sw.bb.427:                                        ; preds = %for.end.296
  %494 = load i32, i32* %i, align 4
  %cmp428 = icmp eq i32 %494, 0
  br i1 %cmp428, label %if.then.430, label %if.end.436

if.then.430:                                      ; preds = %sw.bb.427
  %495 = load i32, i32* %i, align 4
  %496 = load i32, i32* %i, align 4
  %497 = load i32, i32* %i, align 4
  %idxprom431 = sext i32 %497 to i64
  %498 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %backward.addr, align 8
  %xmx432 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %498, i32 0, i32 0
  %499 = load i32**, i32*** %xmx432, align 8
  %arrayidx433 = getelementptr inbounds i32*, i32** %499, i64 %idxprom431
  %500 = load i32*, i32** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %500, i64 4
  %501 = load i32, i32* %arrayidx434, align 4
  %502 = load i32, i32* %sc, align 4
  %sub435 = sub nsw i32 %501, %502
  %503 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %504 = load i32*, i32** %min, align 8
  %505 = load i32*, i32** %max, align 8
  %506 = load i32*, i32** %on, align 8
  %507 = load i32, i32* %A.addr, align 4
  call void @PrintTransition(i8 signext 4, i32 %495, i32 0, i8 signext 5, i32 %496, i32 0, i32 %sub435, %struct.p7trace_s** %503, i32* %504, i32* %505, i32* %506, i32 %507)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.430, %sw.bb.427
  br label %sw.epilog.439

sw.bb.437:                                        ; preds = %for.end.296, %for.end.296, %for.end.296, %for.end.296, %for.end.296
  br label %sw.epilog.439

sw.default.438:                                   ; preds = %for.end.296
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog.439

sw.epilog.439:                                    ; preds = %sw.default.438, %sw.bb.437, %if.end.436, %sw.bb.398, %if.end.397, %if.end.367, %if.end.332
  br label %for.inc.440

for.inc.440:                                      ; preds = %sw.epilog.439
  %508 = load i8, i8* %state, align 1
  %inc441 = add i8 %508, 1
  store i8 %inc441, i8* %state, align 1
  br label %for.cond.57

for.end.442:                                      ; preds = %for.cond.57
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.end.442
  %509 = load i32, i32* %i, align 4
  %inc444 = add nsw i32 %509, 1
  store i32 %inc444, i32* %i, align 4
  br label %for.cond

for.end.445:                                      ; preds = %for.cond
  %510 = load i32*, i32** %min, align 8
  %511 = bitcast i32* %510 to i8*
  call void @free(i8* %511) #3
  %512 = load i32*, i32** %max, align 8
  %513 = bitcast i32* %512 to i8*
  call void @free(i8* %513) #3
  %514 = load i32*, i32** %on, align 8
  %515 = bitcast i32* %514 to i8*
  call void @free(i8* %515) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @PrintTransition(i8 signext %src, i32 %isrc, i32 %ksrc, i8 signext %dest, i32 %idest, i32 %kdest, i32 %sc, %struct.p7trace_s** %alignment, i32* %min, i32* %max, i32* %on, i32 %A) #0 {
entry:
  %src.addr = alloca i8, align 1
  %isrc.addr = alloca i32, align 4
  %ksrc.addr = alloca i32, align 4
  %dest.addr = alloca i8, align 1
  %idest.addr = alloca i32, align 4
  %kdest.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %alignment.addr = alloca %struct.p7trace_s**, align 8
  %min.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  %on.addr = alloca i32*, align 8
  %A.addr = alloca i32, align 4
  %src_str = alloca [6 x i8], align 1
  %dest_str = alloca [6 x i8], align 1
  %j = alloca i32, align 4
  %tpos = alloca i32, align 4
  %tnext = alloca i32, align 4
  %pos = alloca i32, align 4
  %next = alloca i32, align 4
  %near = alloca i32, align 4
  store i8 %src, i8* %src.addr, align 1
  store i32 %isrc, i32* %isrc.addr, align 4
  store i32 %ksrc, i32* %ksrc.addr, align 4
  store i8 %dest, i8* %dest.addr, align 1
  store i32 %idest, i32* %idest.addr, align 4
  store i32 %kdest, i32* %kdest.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store %struct.p7trace_s** %alignment, %struct.p7trace_s*** %alignment.addr, align 8
  store i32* %min, i32** %min.addr, align 8
  store i32* %max, i32** %max.addr, align 8
  store i32* %on, i32** %on.addr, align 8
  store i32 %A, i32* %A.addr, align 4
  store i32 0, i32* %near, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.144, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %A.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.146

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %on.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  store i32 0, i32* %pos, align 4
  %4 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %min.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %tpos, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %tpos, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %max.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sle i32 %7, %10
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %tpos, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %13, i64 %idxprom9
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx10, align 8
  %pos11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 3
  %15 = load i32*, i32** %pos11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 %idxprom8
  %16 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %16, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %17 = load i32, i32* %tpos, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %19, i64 %idxprom15
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx16, align 8
  %pos17 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 3
  %21 = load i32*, i32** %pos17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %22 = load i32, i32* %arrayidx18, align 4
  store i32 %22, i32* %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  %23 = load i8, i8* %src.addr, align 1
  %conv = sext i8 %23 to i32
  %24 = load i32, i32* %tpos, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %26, i64 %idxprom20
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx21, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %27, i32 0, i32 1
  %28 = load i8*, i8** %statetype, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 %idxprom19
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %29 to i32
  %cmp24 = icmp eq i32 %conv, %conv23
  br i1 %cmp24, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end
  %30 = load i32, i32* %ksrc.addr, align 4
  %31 = load i32, i32* %tpos, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %33, i64 %idxprom27
  %34 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx28, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %34, i32 0, i32 2
  %35 = load i32*, i32** %nodeidx, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 %idxprom26
  %36 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %30, %36
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %isrc.addr, align 4
  %38 = load i32, i32* %pos, align 4
  %cmp33 = icmp eq i32 %37, %38
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %near, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %land.lhs.true, %if.end
  %39 = load i8, i8* %dest.addr, align 1
  %conv37 = sext i8 %39 to i32
  %40 = load i32, i32* %tpos, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %42, i64 %idxprom39
  %43 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx40, align 8
  %statetype41 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %43, i32 0, i32 1
  %44 = load i8*, i8** %statetype41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %44, i64 %idxprom38
  %45 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %45 to i32
  %cmp44 = icmp eq i32 %conv37, %conv43
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.58

land.lhs.true.46:                                 ; preds = %if.end.36
  %46 = load i32, i32* %kdest.addr, align 4
  %47 = load i32, i32* %tpos, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %48 to i64
  %49 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %49, i64 %idxprom48
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx49, align 8
  %nodeidx50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 2
  %51 = load i32*, i32** %nodeidx50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %51, i64 %idxprom47
  %52 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %46, %52
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %land.lhs.true.46
  %53 = load i32, i32* %idest.addr, align 4
  %54 = load i32, i32* %pos, align 4
  %cmp55 = icmp eq i32 %53, %54
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %near, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.54, %land.lhs.true.46, %if.end.36
  %55 = load i32, i32* %tpos, align 4
  %56 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %56 to i64
  %57 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %57, i64 %idxprom59
  %58 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx60, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %58, i32 0, i32 0
  %59 = load i32, i32* %tlen, align 4
  %sub = sub nsw i32 %59, 1
  %cmp61 = icmp slt i32 %55, %sub
  br i1 %cmp61, label %if.then.63, label %if.end.142

if.then.63:                                       ; preds = %if.end.58
  %60 = load i32, i32* %tpos, align 4
  %add = add nsw i32 %60, 1
  store i32 %add, i32* %tnext, align 4
  %61 = load i32, i32* %tpos, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %62 to i64
  %63 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %63, i64 %idxprom65
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx66, align 8
  %statetype67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %statetype67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %65, i64 %idxprom64
  %66 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %66 to i32
  %cmp70 = icmp eq i32 %conv69, 6
  br i1 %cmp70, label %if.then.72, label %if.end.87

if.then.72:                                       ; preds = %if.then.63
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.72
  %67 = load i32, i32* %tnext, align 4
  %idxprom73 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %69, i64 %idxprom74
  %70 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx75, align 8
  %statetype76 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %70, i32 0, i32 1
  %71 = load i8*, i8** %statetype76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %71, i64 %idxprom73
  %72 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %72 to i32
  %cmp79 = icmp eq i32 %conv78, 2
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %73 = load i32, i32* %tnext, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %74 to i64
  %75 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %75, i64 %idxprom81
  %76 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx82, align 8
  %tlen83 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %76, i32 0, i32 0
  %77 = load i32, i32* %tlen83, align 4
  %sub84 = sub nsw i32 %77, 1
  %cmp85 = icmp slt i32 %73, %sub84
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %78 = phi i1 [ false, %while.cond ], [ %cmp85, %land.rhs ]
  br i1 %78, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %79 = load i32, i32* %tnext, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %tnext, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.87

if.end.87:                                        ; preds = %while.end, %if.then.63
  %80 = load i32, i32* %tnext, align 4
  %idxprom88 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %81 to i64
  %82 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx90 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %82, i64 %idxprom89
  %83 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx90, align 8
  %pos91 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %83, i32 0, i32 3
  %84 = load i32*, i32** %pos91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %84, i64 %idxprom88
  %85 = load i32, i32* %arrayidx92, align 4
  store i32 %85, i32* %next, align 4
  %86 = load i32, i32* %next, align 4
  %cmp93 = icmp eq i32 %86, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.87
  %87 = load i32, i32* %pos, align 4
  store i32 %87, i32* %next, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.87
  %88 = load i8, i8* %src.addr, align 1
  %conv97 = sext i8 %88 to i32
  %89 = load i32, i32* %tpos, align 4
  %idxprom98 = sext i32 %89 to i64
  %90 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %90 to i64
  %91 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %91, i64 %idxprom99
  %92 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx100, align 8
  %statetype101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %92, i32 0, i32 1
  %93 = load i8*, i8** %statetype101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %93, i64 %idxprom98
  %94 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %94 to i32
  %cmp104 = icmp eq i32 %conv97, %conv103
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.141

land.lhs.true.106:                                ; preds = %if.end.96
  %95 = load i32, i32* %ksrc.addr, align 4
  %96 = load i32, i32* %tpos, align 4
  %idxprom107 = sext i32 %96 to i64
  %97 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %98, i64 %idxprom108
  %99 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx109, align 8
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %99, i32 0, i32 2
  %100 = load i32*, i32** %nodeidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %100, i64 %idxprom107
  %101 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp eq i32 %95, %101
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.141

land.lhs.true.114:                                ; preds = %land.lhs.true.106
  %102 = load i32, i32* %isrc.addr, align 4
  %103 = load i32, i32* %pos, align 4
  %cmp115 = icmp eq i32 %102, %103
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.141

land.lhs.true.117:                                ; preds = %land.lhs.true.114
  %104 = load i8, i8* %dest.addr, align 1
  %conv118 = sext i8 %104 to i32
  %105 = load i32, i32* %tnext, align 4
  %idxprom119 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %106 to i64
  %107 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %107, i64 %idxprom120
  %108 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx121, align 8
  %statetype122 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %108, i32 0, i32 1
  %109 = load i8*, i8** %statetype122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %109, i64 %idxprom119
  %110 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %110 to i32
  %cmp125 = icmp eq i32 %conv118, %conv124
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.141

land.lhs.true.127:                                ; preds = %land.lhs.true.117
  %111 = load i32, i32* %kdest.addr, align 4
  %112 = load i32, i32* %tnext, align 4
  %idxprom128 = sext i32 %112 to i64
  %113 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %113 to i64
  %114 = load %struct.p7trace_s**, %struct.p7trace_s*** %alignment.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %114, i64 %idxprom129
  %115 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx130, align 8
  %nodeidx131 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %115, i32 0, i32 2
  %116 = load i32*, i32** %nodeidx131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %116, i64 %idxprom128
  %117 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %111, %117
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.141

land.lhs.true.135:                                ; preds = %land.lhs.true.127
  %118 = load i32, i32* %idest.addr, align 4
  %119 = load i32, i32* %next, align 4
  %cmp136 = icmp eq i32 %118, %119
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %land.lhs.true.135
  %120 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %120 to i64
  %121 = load i32*, i32** %on.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %121, i64 %idxprom139
  store i32 1, i32* %arrayidx140, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.138, %land.lhs.true.135, %land.lhs.true.127, %land.lhs.true.117, %land.lhs.true.114, %land.lhs.true.106, %if.end.96
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.142
  %122 = load i32, i32* %tpos, align 4
  %inc143 = add nsw i32 %122, 1
  store i32 %inc143, i32* %tpos, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.end
  %123 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %123, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond

for.end.146:                                      ; preds = %for.cond
  %124 = load i32, i32* %near, align 4
  %tobool = icmp ne i32 %124, 0
  br i1 %tobool, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %for.end.146
  br label %return

if.end.148:                                       ; preds = %for.end.146
  %125 = load i8, i8* %src.addr, align 1
  %conv149 = sext i8 %125 to i32
  switch i32 %conv149, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.150
    i32 3, label %sw.bb.153
    i32 4, label %sw.bb.156
    i32 5, label %sw.bb.159
    i32 6, label %sw.bb.162
    i32 7, label %sw.bb.165
    i32 8, label %sw.bb.168
    i32 10, label %sw.bb.171
    i32 9, label %sw.bb.174
  ]

sw.bb:                                            ; preds = %if.end.148
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %126 = load i32, i32* %ksrc.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %126) #3
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.148
  %arraydecay151 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %127 = load i32, i32* %ksrc.addr, align 4
  %call152 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %127) #3
  br label %sw.epilog

sw.bb.153:                                        ; preds = %if.end.148
  %arraydecay154 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %128 = load i32, i32* %ksrc.addr, align 4
  %call155 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %128) #3
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.end.148
  %arraydecay157 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call158 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.159:                                        ; preds = %if.end.148
  %arraydecay160 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call161 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.162:                                        ; preds = %if.end.148
  %arraydecay163 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call164 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.165:                                        ; preds = %if.end.148
  %arraydecay166 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call167 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.168:                                        ; preds = %if.end.148
  %arraydecay169 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call170 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.end.148
  %arraydecay172 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call173 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #3
  br label %sw.epilog

sw.bb.174:                                        ; preds = %if.end.148
  %arraydecay175 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %call176 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.148
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.174, %sw.bb.171, %sw.bb.168, %sw.bb.165, %sw.bb.162, %sw.bb.159, %sw.bb.156, %sw.bb.153, %sw.bb.150, %sw.bb
  %129 = load i8, i8* %dest.addr, align 1
  %conv177 = sext i8 %129 to i32
  switch i32 %conv177, label %sw.default.208 [
    i32 1, label %sw.bb.178
    i32 2, label %sw.bb.181
    i32 3, label %sw.bb.184
    i32 4, label %sw.bb.187
    i32 5, label %sw.bb.190
    i32 6, label %sw.bb.193
    i32 7, label %sw.bb.196
    i32 8, label %sw.bb.199
    i32 10, label %sw.bb.202
    i32 9, label %sw.bb.205
  ]

sw.bb.178:                                        ; preds = %sw.epilog
  %arraydecay179 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %130 = load i32, i32* %kdest.addr, align 4
  %call180 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %130) #3
  br label %sw.epilog.209

sw.bb.181:                                        ; preds = %sw.epilog
  %arraydecay182 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %131 = load i32, i32* %kdest.addr, align 4
  %call183 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 %131) #3
  br label %sw.epilog.209

sw.bb.184:                                        ; preds = %sw.epilog
  %arraydecay185 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %132 = load i32, i32* %kdest.addr, align 4
  %call186 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %132) #3
  br label %sw.epilog.209

sw.bb.187:                                        ; preds = %sw.epilog
  %arraydecay188 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call189 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.190:                                        ; preds = %sw.epilog
  %arraydecay191 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call192 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.193:                                        ; preds = %sw.epilog
  %arraydecay194 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call195 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.196:                                        ; preds = %sw.epilog
  %arraydecay197 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call198 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.199:                                        ; preds = %sw.epilog
  %arraydecay200 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call201 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.202:                                        ; preds = %sw.epilog
  %arraydecay203 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call204 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.bb.205:                                        ; preds = %sw.epilog
  %arraydecay206 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %call207 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %sw.epilog.209

sw.default.208:                                   ; preds = %sw.epilog
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog.209

sw.epilog.209:                                    ; preds = %sw.default.208, %sw.bb.205, %sw.bb.202, %sw.bb.199, %sw.bb.196, %sw.bb.193, %sw.bb.190, %sw.bb.187, %sw.bb.184, %sw.bb.181, %sw.bb.178
  %133 = load i32, i32* %isrc.addr, align 4
  %arraydecay210 = getelementptr inbounds [6 x i8], [6 x i8]* %src_str, i32 0, i32 0
  %134 = load i32, i32* %idest.addr, align 4
  %arraydecay211 = getelementptr inbounds [6 x i8], [6 x i8]* %dest_str, i32 0, i32 0
  %135 = load i32, i32* %sc.addr, align 4
  %call212 = call float @Score2Prob(i32 %135, float 1.000000e+00)
  %conv213 = fpext float %call212 to double
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 %133, i8* %arraydecay210, i32 %134, i8* %arraydecay211, double %conv213)
  store i32 0, i32* %j, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.231, %sw.epilog.209
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* %A.addr, align 4
  %cmp216 = icmp slt i32 %136, %137
  br i1 %cmp216, label %for.body.218, label %for.end.233

for.body.218:                                     ; preds = %for.cond.215
  %138 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %138 to i64
  %139 = load i32*, i32** %on.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %139, i64 %idxprom219
  %140 = load i32, i32* %arrayidx220, align 4
  %tobool221 = icmp ne i32 %140, 0
  br i1 %tobool221, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %for.body.218
  %call223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %for.body.218
  %141 = load i32, i32* %j, align 4
  %142 = load i32, i32* %A.addr, align 4
  %sub225 = sub nsw i32 %142, 1
  %cmp226 = icmp slt i32 %141, %sub225
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.end.224
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.end.224
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %143 = load i32, i32* %j, align 4
  %inc232 = add nsw i32 %143, 1
  store i32 %inc232, i32* %j, align 4
  br label %for.cond.215

for.end.233:                                      ; preds = %for.cond.215
  %call234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end.233, %if.then.147
  ret void
}

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @DisplayPlan7Matrix(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %L.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %dsq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %L.addr, align 4
  %cmp7 = icmp sle i32 %7, %8
  br i1 %cmp7, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %10, i32 0, i32 0
  %11 = load i32**, i32*** %xmx, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %11, i64 %idxprom10
  %12 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 4
  %13 = load i32, i32* %arrayidx12, align 4
  call void @PrintIscore(i32 %13)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %14 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  store i32 1, i32* %k, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.32, %for.end.15
  %15 = load i32, i32* %k, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %17 = load i32, i32* %M, align 4
  %cmp17 = icmp sle i32 %15, %17
  br i1 %cmp17, label %for.body.19, label %for.end.34

for.body.19:                                      ; preds = %for.cond.16
  %18 = load i32, i32* %k, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %18)
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.29, %for.body.19
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %L.addr, align 4
  %cmp22 = icmp sle i32 %19, %20
  br i1 %cmp22, label %for.body.24, label %for.end.31

for.body.24:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %23, i32 0, i32 1
  %24 = load i32**, i32*** %mmx, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %24, i64 %idxprom26
  %25 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %25, i64 %idxprom25
  %26 = load i32, i32* %arrayidx28, align 4
  call void @PrintIscore(i32 %26)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.24
  %27 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.21

for.end.31:                                       ; preds = %for.cond.21
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %28 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %k, align 4
  br label %for.cond.16

for.end.34:                                       ; preds = %for.cond.16
  store i32 1, i32* %k, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.52, %for.end.34
  %29 = load i32, i32* %k, align 4
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 20
  %31 = load i32, i32* %M36, align 4
  %cmp37 = icmp slt i32 %29, %31
  br i1 %cmp37, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %for.cond.35
  %32 = load i32, i32* %k, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %32)
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.49, %for.body.39
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %L.addr, align 4
  %cmp42 = icmp sle i32 %33, %34
  br i1 %cmp42, label %for.body.44, label %for.end.51

for.body.44:                                      ; preds = %for.cond.41
  %35 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %37, i32 0, i32 2
  %38 = load i32**, i32*** %imx, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %38, i64 %idxprom46
  %39 = load i32*, i32** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %39, i64 %idxprom45
  %40 = load i32, i32* %arrayidx48, align 4
  call void @PrintIscore(i32 %40)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.44
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.41

for.end.51:                                       ; preds = %for.cond.41
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %42 = load i32, i32* %k, align 4
  %inc53 = add nsw i32 %42, 1
  store i32 %inc53, i32* %k, align 4
  br label %for.cond.35

for.end.54:                                       ; preds = %for.cond.35
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.64, %for.end.54
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %L.addr, align 4
  %cmp57 = icmp sle i32 %43, %44
  br i1 %cmp57, label %for.body.59, label %for.end.66

for.body.59:                                      ; preds = %for.cond.56
  %45 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %45 to i64
  %46 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx61 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %46, i32 0, i32 0
  %47 = load i32**, i32*** %xmx61, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %47, i64 %idxprom60
  %48 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %48, i64 1
  %49 = load i32, i32* %arrayidx63, align 4
  call void @PrintIscore(i32 %49)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.59
  %50 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %50, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.56

for.end.66:                                       ; preds = %for.cond.56
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.76, %for.end.66
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %L.addr, align 4
  %cmp69 = icmp sle i32 %51, %52
  br i1 %cmp69, label %for.body.71, label %for.end.78

for.body.71:                                      ; preds = %for.cond.68
  %53 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %53 to i64
  %54 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx73 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %54, i32 0, i32 0
  %55 = load i32**, i32*** %xmx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %55, i64 %idxprom72
  %56 = load i32*, i32** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %56, i64 2
  %57 = load i32, i32* %arrayidx75, align 4
  call void @PrintIscore(i32 %57)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.71
  %58 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %58, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.68

for.end.78:                                       ; preds = %for.cond.68
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.88, %for.end.78
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %L.addr, align 4
  %cmp81 = icmp sle i32 %59, %60
  br i1 %cmp81, label %for.body.83, label %for.end.90

for.body.83:                                      ; preds = %for.cond.80
  %61 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %61 to i64
  %62 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx85 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %62, i32 0, i32 0
  %63 = load i32**, i32*** %xmx85, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %63, i64 %idxprom84
  %64 = load i32*, i32** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %64, i64 3
  %65 = load i32, i32* %arrayidx87, align 4
  call void @PrintIscore(i32 %65)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.83
  %66 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %66, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.80

for.end.90:                                       ; preds = %for.cond.80
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.100, %for.end.90
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %L.addr, align 4
  %cmp93 = icmp sle i32 %67, %68
  br i1 %cmp93, label %for.body.95, label %for.end.102

for.body.95:                                      ; preds = %for.cond.92
  %69 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %69 to i64
  %70 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx97 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %70, i32 0, i32 0
  %71 = load i32**, i32*** %xmx97, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %71, i64 %idxprom96
  %72 = load i32*, i32** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx99, align 4
  call void @PrintIscore(i32 %73)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.95
  %74 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %74, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.92

for.end.102:                                      ; preds = %for.cond.92
  store i32 2, i32* %k, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.120, %for.end.102
  %75 = load i32, i32* %k, align 4
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M104 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 20
  %77 = load i32, i32* %M104, align 4
  %cmp105 = icmp slt i32 %75, %77
  br i1 %cmp105, label %for.body.107, label %for.end.122

for.body.107:                                     ; preds = %for.cond.103
  %78 = load i32, i32* %k, align 4
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %78)
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.117, %for.body.107
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %L.addr, align 4
  %cmp110 = icmp sle i32 %79, %80
  br i1 %cmp110, label %for.body.112, label %for.end.119

for.body.112:                                     ; preds = %for.cond.109
  %81 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %82 to i64
  %83 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %83, i32 0, i32 3
  %84 = load i32**, i32*** %dmx, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %84, i64 %idxprom114
  %85 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %85, i64 %idxprom113
  %86 = load i32, i32* %arrayidx116, align 4
  call void @PrintIscore(i32 %86)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.112
  %87 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %87, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.109

for.end.119:                                      ; preds = %for.cond.109
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %88 = load i32, i32* %k, align 4
  %inc121 = add nsw i32 %88, 1
  store i32 %inc121, i32* %k, align 4
  br label %for.cond.103

for.end.122:                                      ; preds = %for.cond.103
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PrintIscore(i32 %sc) #0 {
entry:
  %sc.addr = alloca i32, align 4
  %dsc = alloca double, align 8
  %div = alloca double, align 8
  store i32 %sc, i32* %sc.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %dsc, align 8
  store double 0x40968AC7B8CC7DEF, double* %div, align 8
  %1 = load double, double* %dsc, align 8
  %2 = load double, double* %div, align 8
  %div1 = fdiv double %1, %2
  store double %div1, double* %dsc, align 8
  %3 = load double, double* %dsc, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), double %3)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare float @Score2Prob(i32, float) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
