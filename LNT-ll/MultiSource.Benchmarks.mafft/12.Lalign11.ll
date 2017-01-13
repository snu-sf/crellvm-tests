; ModuleID = './MultiSource.Benchmarks.mafft/12.Lalign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@L__align11.mi = internal global float 0.000000e+00, align 4
@L__align11.m = internal global float* null, align 8
@L__align11.ijp = internal global i32** null, align 8
@L__align11.mpi = internal global i32 0, align 4
@L__align11.mp = internal global i32* null, align 8
@L__align11.w1 = internal global float* null, align 8
@L__align11.w2 = internal global float* null, align 8
@L__align11.match = internal global float* null, align 8
@L__align11.initverticalw = internal global float* null, align 8
@L__align11.lastverticalw = internal global float* null, align 8
@L__align11.mseq1 = internal global i8** null, align 8
@L__align11.mseq2 = internal global i8** null, align 8
@L__align11.mseq = internal global i8** null, align 8
@L__align11.orlgth1 = internal global i32 0, align 4
@L__align11.orlgth2 = internal global i32 0, align 4
@offset = external global i32, align 4
@penalty = external global i32, align 4
@penalty_ex = external global i32, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@localstop = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@Ltracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @L__align11(i8** %seq1, i8** %seq2, i32 %alloclen, i32* %off1pt, i32* %off2pt) #0 {
entry:
  %retval = alloca float, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %off1pt.addr = alloca i32*, align 8
  %off2pt.addr = alloca i32*, align 8
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
  %maxwm = alloca float, align 4
  %endali = alloca i32, align 4
  %endalj = alloca i32, align 4
  %localthr = alloca float, align 4
  %localthr2 = alloca float, align 4
  %fpenalty = alloca float, align 4
  %fpenalty_ex = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll172 = alloca i32, align 4
  %ll273 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %off1pt, i32** %off1pt.addr, align 8
  store i32* %off2pt, i32** %off2pt.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  store i32 0, i32* %endali, align 4
  store i32 0, i32* %endalj, align 4
  %0 = load i32, i32* @offset, align 4
  %sub = sub nsw i32 0, %0
  %conv = sitofp i32 %sub to float
  store float %conv, float* %localthr, align 4
  %1 = load i32, i32* @offset, align 4
  %sub1 = sub nsw i32 0, %1
  %conv2 = sitofp i32 %sub1 to float
  store float %conv2, float* %localthr2, align 4
  %2 = load i32, i32* @penalty, align 4
  %conv3 = sitofp i32 %2 to float
  store float %conv3, float* %fpenalty, align 4
  %3 = load i32, i32* @penalty_ex, align 4
  %conv4 = sitofp i32 %3 to float
  store float %conv4, float* %fpenalty_ex, align 4
  %4 = load i32, i32* @L__align11.orlgth1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %5, i32 0)
  store i8** %call, i8*** @L__align11.mseq1, align 8
  %6 = load i32, i32* @njob, align 4
  %call6 = call i8** @AllocateCharMtx(i32 %6, i32 0)
  store i8** %call6, i8*** @L__align11.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8
  %call7 = call i64 @strlen(i8* %8) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %lgth1, align 4
  %9 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i64 @strlen(i8* %10) #5
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %lgth2, align 4
  %11 = load i32, i32* %lgth1, align 4
  %12 = load i32, i32* @L__align11.orlgth1, align 4
  %cmp12 = icmp sgt i32 %11, %12
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, i32* %lgth2, align 4
  %14 = load i32, i32* @L__align11.orlgth2, align 4
  %cmp14 = icmp sgt i32 %13, %14
  br i1 %cmp14, label %if.then.16, label %if.end.61

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %15 = load i32, i32* @L__align11.orlgth1, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.16
  %16 = load i32, i32* @L__align11.orlgth2, align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %17 = load float*, float** @L__align11.w1, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @L__align11.w2, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @L__align11.match, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load float*, float** @L__align11.initverticalw, align 8
  call void @FreeFloatVec(float* %20)
  %21 = load float*, float** @L__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @L__align11.m, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load i32*, i32** @L__align11.mp, align 8
  call void @FreeIntVec(i32* %23)
  %24 = load i8**, i8*** @L__align11.mseq, align 8
  call void @FreeCharMtx(i8** %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.then.16
  %25 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %25 to double
  %mul = fmul double 1.300000e+00, %conv23
  %conv24 = fptosi double %mul to i32
  %26 = load i32, i32* @L__align11.orlgth1, align 4
  %cmp25 = icmp sgt i32 %conv24, %26
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %27 = load i32, i32* %lgth1, align 4
  %conv27 = sitofp i32 %27 to double
  %mul28 = fmul double 1.300000e+00, %conv27
  %conv29 = fptosi double %mul28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %28 = load i32, i32* @L__align11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv29, %cond.true ], [ %28, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %29 = load i32, i32* %lgth2, align 4
  %conv30 = sitofp i32 %29 to double
  %mul31 = fmul double 1.300000e+00, %conv30
  %conv32 = fptosi double %mul31 to i32
  %30 = load i32, i32* @L__align11.orlgth2, align 4
  %cmp33 = icmp sgt i32 %conv32, %30
  br i1 %cmp33, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.end
  %31 = load i32, i32* %lgth2, align 4
  %conv36 = sitofp i32 %31 to double
  %mul37 = fmul double 1.300000e+00, %conv36
  %conv38 = fptosi double %mul37 to i32
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end
  %32 = load i32, i32* @L__align11.orlgth2, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.35
  %cond41 = phi i32 [ %conv38, %cond.true.35 ], [ %32, %cond.false.39 ]
  %add42 = add nsw i32 %cond41, 100
  store i32 %add42, i32* %ll2, align 4
  %33 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %33, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @L__align11.w1, align 8
  %34 = load i32, i32* %ll2, align 4
  %add45 = add nsw i32 %34, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @L__align11.w2, align 8
  %35 = load i32, i32* %ll2, align 4
  %add47 = add nsw i32 %35, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @L__align11.match, align 8
  %36 = load i32, i32* %ll1, align 4
  %add49 = add nsw i32 %36, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @L__align11.initverticalw, align 8
  %37 = load i32, i32* %ll1, align 4
  %add51 = add nsw i32 %37, 2
  %call52 = call float* @AllocateFloatVec(i32 %add51)
  store float* %call52, float** @L__align11.lastverticalw, align 8
  %38 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %38, 2
  %call54 = call float* @AllocateFloatVec(i32 %add53)
  store float* %call54, float** @L__align11.m, align 8
  %39 = load i32, i32* %ll2, align 4
  %add55 = add nsw i32 %39, 2
  %call56 = call i32* @AllocateIntVec(i32 %add55)
  store i32* %call56, i32** @L__align11.mp, align 8
  %40 = load i32, i32* @njob, align 4
  %41 = load i32, i32* %ll1, align 4
  %42 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %41, %42
  %call58 = call i8** @AllocateCharMtx(i32 %40, i32 %add57)
  store i8** %call58, i8*** @L__align11.mseq, align 8
  %43 = load i32, i32* %ll1, align 4
  %sub59 = sub nsw i32 %43, 100
  store i32 %sub59, i32* @L__align11.orlgth1, align 4
  %44 = load i32, i32* %ll2, align 4
  %sub60 = sub nsw i32 %44, 100
  store i32 %sub60, i32* @L__align11.orlgth2, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.40, %lor.lhs.false
  %45 = load i8**, i8*** @L__align11.mseq, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx62, align 8
  %47 = load i8**, i8*** @L__align11.mseq1, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %46, i8** %arrayidx63, align 8
  %48 = load i8**, i8*** @L__align11.mseq, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %48, i64 1
  %49 = load i8*, i8** %arrayidx64, align 8
  %50 = load i8**, i8*** @L__align11.mseq2, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %49, i8** %arrayidx65, align 8
  %51 = load i32, i32* @L__align11.orlgth1, align 4
  %52 = load i32, i32* @commonAlloc1, align 4
  %cmp66 = icmp sgt i32 %51, %52
  br i1 %cmp66, label %if.then.71, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.61
  %53 = load i32, i32* @L__align11.orlgth2, align 4
  %54 = load i32, i32* @commonAlloc2, align 4
  %cmp69 = icmp sgt i32 %53, %54
  br i1 %cmp69, label %if.then.71, label %if.end.93

if.then.71:                                       ; preds = %lor.lhs.false.68, %if.end.61
  %55 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %land.lhs.true.74, label %if.end.77

land.lhs.true.74:                                 ; preds = %if.then.71
  %56 = load i32, i32* @commonAlloc2, align 4
  %tobool75 = icmp ne i32 %56, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.74
  %57 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %57)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.74, %if.then.71
  %58 = load i32, i32* @L__align11.orlgth1, align 4
  %59 = load i32, i32* @commonAlloc1, align 4
  %cmp78 = icmp sgt i32 %58, %59
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.end.77
  %60 = load i32, i32* @L__align11.orlgth1, align 4
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.end.77
  %61 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi i32 [ %60, %cond.true.80 ], [ %61, %cond.false.81 ]
  store i32 %cond83, i32* %ll172, align 4
  %62 = load i32, i32* @L__align11.orlgth2, align 4
  %63 = load i32, i32* @commonAlloc2, align 4
  %cmp84 = icmp sgt i32 %62, %63
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.82
  %64 = load i32, i32* @L__align11.orlgth2, align 4
  br label %cond.end.88

cond.false.87:                                    ; preds = %cond.end.82
  %65 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.86
  %cond89 = phi i32 [ %64, %cond.true.86 ], [ %65, %cond.false.87 ]
  store i32 %cond89, i32* %ll273, align 4
  %66 = load i32, i32* %ll172, align 4
  %add90 = add nsw i32 %66, 10
  %67 = load i32, i32* %ll273, align 4
  %add91 = add nsw i32 %67, 10
  %call92 = call i32** @AllocateIntMtx(i32 %add90, i32 %add91)
  store i32** %call92, i32*** @commonIP, align 8
  %68 = load i32, i32* %ll172, align 4
  store i32 %68, i32* @commonAlloc1, align 4
  %69 = load i32, i32* %ll273, align 4
  store i32 %69, i32* @commonAlloc2, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end.88, %lor.lhs.false.68
  %70 = load i32**, i32*** @commonIP, align 8
  store i32** %70, i32*** @L__align11.ijp, align 8
  %71 = load float*, float** @L__align11.w1, align 8
  store float* %71, float** %currentw, align 8
  %72 = load float*, float** @L__align11.w2, align 8
  store float* %72, float** %previousw, align 8
  %73 = load float*, float** @L__align11.initverticalw, align 8
  %74 = load i8**, i8*** %seq2.addr, align 8
  %75 = load i8**, i8*** %seq1.addr, align 8
  %76 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %73, i8** %74, i8** %75, i32 0, i32 %76)
  %77 = load float*, float** %currentw, align 8
  %78 = load i8**, i8*** %seq1.addr, align 8
  %79 = load i8**, i8*** %seq2.addr, align 8
  %80 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %77, i8** %78, i8** %79, i32 0, i32 %80)
  %81 = load i32, i32* %lgth2, align 4
  %add94 = add nsw i32 %81, 1
  store i32 %add94, i32* %lasti, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.93
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %lasti, align 4
  %cmp95 = icmp slt i32 %82, %83
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %j, align 4
  %sub97 = sub nsw i32 %84, 1
  %idxprom = sext i32 %sub97 to i64
  %85 = load float*, float** %currentw, align 8
  %arrayidx98 = getelementptr inbounds float, float* %85, i64 %idxprom
  %86 = load float, float* %arrayidx98, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %87 to i64
  %88 = load float*, float** @L__align11.m, align 8
  %arrayidx100 = getelementptr inbounds float, float* %88, i64 %idxprom99
  store float %86, float* %arrayidx100, align 4
  %89 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %89 to i64
  %90 = load i32*, i32** @L__align11.mp, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %90, i64 %idxprom101
  store i32 0, i32* %arrayidx102, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i32, i32* %j, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %92 = load i32, i32* %lgth2, align 4
  %sub103 = sub nsw i32 %92, 1
  %idxprom104 = sext i32 %sub103 to i64
  %93 = load float*, float** %currentw, align 8
  %arrayidx105 = getelementptr inbounds float, float* %93, i64 %idxprom104
  %94 = load float, float* %arrayidx105, align 4
  %95 = load float*, float** @L__align11.lastverticalw, align 8
  %arrayidx106 = getelementptr inbounds float, float* %95, i64 0
  store float %94, float* %arrayidx106, align 4
  %96 = load i32, i32* %lgth1, align 4
  %add107 = add nsw i32 %96, 1
  store i32 %add107, i32* %lasti, align 4
  %97 = load i32, i32* %lgth1, align 4
  %98 = load i32, i32* %lgth2, align 4
  %add108 = add nsw i32 %97, %98
  %add109 = add nsw i32 %add108, 1
  store i32 %add109, i32* @localstop, align 4
  store float -1.000000e+09, float* %maxwm, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.178, %for.end
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %lasti, align 4
  %cmp111 = icmp slt i32 %99, %100
  br i1 %cmp111, label %for.body.113, label %for.end.180

for.body.113:                                     ; preds = %for.cond.110
  %101 = load float*, float** %previousw, align 8
  store float* %101, float** %wtmp, align 8
  %102 = load float*, float** %currentw, align 8
  store float* %102, float** %previousw, align 8
  %103 = load float*, float** %wtmp, align 8
  store float* %103, float** %currentw, align 8
  %104 = load i32, i32* %i, align 4
  %sub114 = sub nsw i32 %104, 1
  %idxprom115 = sext i32 %sub114 to i64
  %105 = load float*, float** @L__align11.initverticalw, align 8
  %arrayidx116 = getelementptr inbounds float, float* %105, i64 %idxprom115
  %106 = load float, float* %arrayidx116, align 4
  %107 = load float*, float** %previousw, align 8
  %arrayidx117 = getelementptr inbounds float, float* %107, i64 0
  store float %106, float* %arrayidx117, align 4
  %108 = load float*, float** %currentw, align 8
  %109 = load i8**, i8*** %seq1.addr, align 8
  %110 = load i8**, i8*** %seq2.addr, align 8
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %108, i8** %109, i8** %110, i32 %111, i32 %112)
  %113 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %113 to i64
  %114 = load float*, float** @L__align11.initverticalw, align 8
  %arrayidx119 = getelementptr inbounds float, float* %114, i64 %idxprom118
  %115 = load float, float* %arrayidx119, align 4
  %116 = load float*, float** %currentw, align 8
  %arrayidx120 = getelementptr inbounds float, float* %116, i64 0
  store float %115, float* %arrayidx120, align 4
  %117 = load float*, float** %previousw, align 8
  %arrayidx121 = getelementptr inbounds float, float* %117, i64 0
  %118 = load float, float* %arrayidx121, align 4
  store float %118, float* @L__align11.mi, align 4
  store i32 0, i32* @L__align11.mpi, align 4
  %119 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %119 to i64
  %120 = load i32**, i32*** @L__align11.ijp, align 8
  %arrayidx123 = getelementptr inbounds i32*, i32** %120, i64 %idxprom122
  %121 = load i32*, i32** %arrayidx123, align 8
  %add.ptr = getelementptr inbounds i32, i32* %121, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %122 = load float*, float** @L__align11.m, align 8
  %add.ptr124 = getelementptr inbounds float, float* %122, i64 1
  store float* %add.ptr124, float** %mjpt, align 8
  %123 = load float*, float** %previousw, align 8
  store float* %123, float** %prept, align 8
  %124 = load float*, float** %currentw, align 8
  %add.ptr125 = getelementptr inbounds float, float* %124, i64 1
  store float* %add.ptr125, float** %curpt, align 8
  %125 = load i32*, i32** @L__align11.mp, align 8
  %add.ptr126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32* %add.ptr126, i32** %mpjpt, align 8
  %126 = load i32, i32* %lgth2, align 4
  %add127 = add nsw i32 %126, 1
  store i32 %add127, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.170, %for.body.113
  %127 = load i32, i32* %j, align 4
  %128 = load i32, i32* %lastj, align 4
  %cmp129 = icmp slt i32 %127, %128
  br i1 %cmp129, label %for.body.131, label %for.end.172

for.body.131:                                     ; preds = %for.cond.128
  %129 = load float*, float** %prept, align 8
  %130 = load float, float* %129, align 4
  store float %130, float* %wm, align 4
  %131 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %131, align 4
  %132 = load float, float* @L__align11.mi, align 4
  %133 = load float, float* %fpenalty, align 4
  %add132 = fadd float %132, %133
  store float %add132, float* %g, align 4
  %134 = load float, float* %wm, align 4
  %cmp133 = fcmp ogt float %add132, %134
  br i1 %cmp133, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %for.body.131
  %135 = load float, float* %g, align 4
  store float %135, float* %wm, align 4
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* @L__align11.mpi, align 4
  %sub136 = sub nsw i32 %136, %137
  %sub137 = sub nsw i32 0, %sub136
  %138 = load i32*, i32** %ijppt, align 8
  store i32 %sub137, i32* %138, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %for.body.131
  %139 = load float*, float** %prept, align 8
  %140 = load float, float* %139, align 4
  %141 = load float, float* @L__align11.mi, align 4
  %cmp139 = fcmp ogt float %140, %141
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.end.138
  %142 = load float*, float** %prept, align 8
  %143 = load float, float* %142, align 4
  store float %143, float* @L__align11.mi, align 4
  %144 = load i32, i32* %j, align 4
  %sub142 = sub nsw i32 %144, 1
  store i32 %sub142, i32* @L__align11.mpi, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.end.138
  %145 = load float, float* %fpenalty_ex, align 4
  %146 = load float, float* @L__align11.mi, align 4
  %add144 = fadd float %146, %145
  store float %add144, float* @L__align11.mi, align 4
  %147 = load float*, float** %mjpt, align 8
  %148 = load float, float* %147, align 4
  %149 = load float, float* %fpenalty, align 4
  %add145 = fadd float %148, %149
  store float %add145, float* %g, align 4
  %150 = load float, float* %wm, align 4
  %cmp146 = fcmp ogt float %add145, %150
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.143
  %151 = load float, float* %g, align 4
  store float %151, float* %wm, align 4
  %152 = load i32, i32* %i, align 4
  %153 = load i32*, i32** %mpjpt, align 8
  %154 = load i32, i32* %153, align 4
  %sub149 = sub nsw i32 %152, %154
  %155 = load i32*, i32** %ijppt, align 8
  store i32 %sub149, i32* %155, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.143
  %156 = load float*, float** %prept, align 8
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %mjpt, align 8
  %159 = load float, float* %158, align 4
  %cmp151 = fcmp ogt float %157, %159
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.150
  %160 = load float*, float** %prept, align 8
  %161 = load float, float* %160, align 4
  %162 = load float*, float** %mjpt, align 8
  store float %161, float* %162, align 4
  %163 = load i32, i32* %i, align 4
  %sub154 = sub nsw i32 %163, 1
  %164 = load i32*, i32** %mpjpt, align 8
  store i32 %sub154, i32* %164, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.150
  %165 = load float, float* %fpenalty_ex, align 4
  %166 = load float*, float** %mjpt, align 8
  %167 = load float, float* %166, align 4
  %add156 = fadd float %167, %165
  store float %add156, float* %166, align 4
  %168 = load float, float* %maxwm, align 4
  %169 = load float, float* %wm, align 4
  %cmp157 = fcmp olt float %168, %169
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  %170 = load float, float* %wm, align 4
  store float %170, float* %maxwm, align 4
  %171 = load i32, i32* %i, align 4
  store i32 %171, i32* %endali, align 4
  %172 = load i32, i32* %j, align 4
  store i32 %172, i32* %endalj, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.155
  %173 = load float, float* %wm, align 4
  %174 = load float, float* %localthr, align 4
  %cmp161 = fcmp olt float %173, %174
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.160
  %175 = load i32, i32* @localstop, align 4
  %176 = load i32*, i32** %ijppt, align 8
  store i32 %175, i32* %176, align 4
  %177 = load float, float* %localthr2, align 4
  store float %177, float* %wm, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.end.160
  %178 = load float, float* %wm, align 4
  %179 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %179, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %180 = load float, float* %179, align 4
  %add165 = fadd float %180, %178
  store float %add165, float* %179, align 4
  %181 = load i32*, i32** %ijppt, align 8
  %incdec.ptr166 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %incdec.ptr166, i32** %ijppt, align 8
  %182 = load float*, float** %mjpt, align 8
  %incdec.ptr167 = getelementptr inbounds float, float* %182, i32 1
  store float* %incdec.ptr167, float** %mjpt, align 8
  %183 = load float*, float** %prept, align 8
  %incdec.ptr168 = getelementptr inbounds float, float* %183, i32 1
  store float* %incdec.ptr168, float** %prept, align 8
  %184 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr169 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %incdec.ptr169, i32** %mpjpt, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.164
  %185 = load i32, i32* %j, align 4
  %inc171 = add nsw i32 %185, 1
  store i32 %inc171, i32* %j, align 4
  br label %for.cond.128

for.end.172:                                      ; preds = %for.cond.128
  %186 = load i32, i32* %lgth2, align 4
  %sub173 = sub nsw i32 %186, 1
  %idxprom174 = sext i32 %sub173 to i64
  %187 = load float*, float** %currentw, align 8
  %arrayidx175 = getelementptr inbounds float, float* %187, i64 %idxprom174
  %188 = load float, float* %arrayidx175, align 4
  %189 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %189 to i64
  %190 = load float*, float** @L__align11.lastverticalw, align 8
  %arrayidx177 = getelementptr inbounds float, float* %190, i64 %idxprom176
  store float %188, float* %arrayidx177, align 4
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end.172
  %191 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %191, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond.110

for.end.180:                                      ; preds = %for.cond.110
  %192 = load i32, i32* %endalj, align 4
  %idxprom181 = sext i32 %192 to i64
  %193 = load i32, i32* %endali, align 4
  %idxprom182 = sext i32 %193 to i64
  %194 = load i32**, i32*** @L__align11.ijp, align 8
  %arrayidx183 = getelementptr inbounds i32*, i32** %194, i64 %idxprom182
  %195 = load i32*, i32** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %195, i64 %idxprom181
  %196 = load i32, i32* %arrayidx184, align 4
  %197 = load i32, i32* @localstop, align 4
  %cmp185 = icmp eq i32 %196, %197
  br i1 %cmp185, label %if.then.187, label %if.end.192

if.then.187:                                      ; preds = %for.end.180
  %198 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %198, i64 0
  %199 = load i8*, i8** %arrayidx188, align 8
  %call189 = call i8* @strcpy(i8* %199, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %200 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx190 = getelementptr inbounds i8*, i8** %200, i64 0
  %201 = load i8*, i8** %arrayidx190, align 8
  %call191 = call i8* @strcpy(i8* %201, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %202 = load i32*, i32** %off2pt.addr, align 8
  store i32 0, i32* %202, align 4
  %203 = load i32*, i32** %off1pt.addr, align 8
  store i32 0, i32* %203, align 4
  store float 0.000000e+00, float* %retval
  br label %return

if.end.192:                                       ; preds = %for.end.180
  %204 = load float*, float** %currentw, align 8
  %205 = load float*, float** @L__align11.lastverticalw, align 8
  %206 = load i8**, i8*** %seq1.addr, align 8
  %207 = load i8**, i8*** %seq2.addr, align 8
  %208 = load i8**, i8*** @L__align11.mseq1, align 8
  %209 = load i8**, i8*** @L__align11.mseq2, align 8
  %210 = load i32**, i32*** @L__align11.ijp, align 8
  %211 = load i32*, i32** %off1pt.addr, align 8
  %212 = load i32*, i32** %off2pt.addr, align 8
  %213 = load i32, i32* %endali, align 4
  %214 = load i32, i32* %endalj, align 4
  %call193 = call float @Ltracking(float* %204, float* %205, i8** %206, i8** %207, i8** %208, i8** %209, i32** %210, i32* %211, i32* %212, i32 %213, i32 %214)
  %215 = load i8**, i8*** @L__align11.mseq1, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %215, i64 0
  %216 = load i8*, i8** %arrayidx194, align 8
  %call195 = call i64 @strlen(i8* %216) #5
  %conv196 = trunc i64 %call195 to i32
  store i32 %conv196, i32* %resultlen, align 4
  %217 = load i32, i32* %alloclen.addr, align 4
  %218 = load i32, i32* %resultlen, align 4
  %cmp197 = icmp slt i32 %217, %218
  br i1 %cmp197, label %if.then.202, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.end.192
  %219 = load i32, i32* %resultlen, align 4
  %cmp200 = icmp sgt i32 %219, 5000000
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %lor.lhs.false.199, %if.end.192
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %221 = load i32, i32* %alloclen.addr, align 4
  %222 = load i32, i32* %resultlen, align 4
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %221, i32 %222, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %lor.lhs.false.199
  %223 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %223, i64 0
  %224 = load i8*, i8** %arrayidx205, align 8
  %225 = load i8**, i8*** @L__align11.mseq1, align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %225, i64 0
  %226 = load i8*, i8** %arrayidx206, align 8
  %call207 = call i8* @strcpy(i8* %224, i8* %226) #4
  %227 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %227, i64 0
  %228 = load i8*, i8** %arrayidx208, align 8
  %229 = load i8**, i8*** @L__align11.mseq2, align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %229, i64 0
  %230 = load i8*, i8** %arrayidx209, align 8
  %call210 = call i8* @strcpy(i8* %228, i8* %230) #4
  %231 = load float, float* %maxwm, align 4
  store float %231, float* %retval
  br label %return

return:                                           ; preds = %if.end.204, %if.then.187
  %232 = load float, float* %retval
  ret float %232
}

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @FreeFloatVec(float*) #1

declare void @FreeIntVec(i32*) #1

declare void @FreeCharMtx(i8**) #1

declare float* @AllocateFloatVec(i32) #1

declare i32* @AllocateIntVec(i32) #1

declare void @FreeIntMtx(i32**) #1

declare i32** @AllocateIntMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @match_calc(float* %match, i8** %s1, i8** %s2, i32 %i1, i32 %lgth2) #0 {
entry:
  %match.addr = alloca float*, align 8
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %seq2 = alloca i8*, align 8
  %intptr = alloca i32*, align 8
  store float* %match, float** %match.addr, align 8
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  %0 = load i8**, i8*** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %seq2, align 8
  %2 = load i32, i32* %i1.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %s1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv to i64
  %arrayidx4 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom3
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx4, i32 0, i32 0
  store i32* %arraydecay, i32** %intptr, align 8
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
  %conv5 = sext i8 %8 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %9 = load i32*, i32** %intptr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
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

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal float @Ltracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, i32** %ijp, i32* %off1pt, i32* %off2pt, i32 %endi, i32 %endj) #0 {
entry:
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %ijp.addr = alloca i32**, align 8
  %off1pt.addr = alloca i32*, align 8
  %off2pt.addr = alloca i32*, align 8
  %endi.addr = alloca i32, align 4
  %endj.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %iin = alloca i32, align 4
  %jin = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %k = alloca i32, align 4
  %limk = alloca i32, align 4
  %ifi = alloca i32, align 4
  %jfi = alloca i32, align 4
  %gap = alloca [2 x i8], align 1
  store float* %lasthorizontalw, float** %lasthorizontalw.addr, align 8
  store float* %lastverticalw, float** %lastverticalw.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32** %ijp, i32*** %ijp.addr, align 8
  store i32* %off1pt, i32** %off1pt.addr, align 8
  store i32* %off2pt, i32** %off2pt.addr, align 8
  store i32 %endi, i32* %endi.addr, align 4
  store i32 %endj, i32* %endj.addr, align 4
  store i32 0, i32* %ifi, align 4
  store i32 0, i32* %jfi, align 4
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Ltracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
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
  %7 = load i32, i32* @localstop, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.15, %for.end
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %lgth2, align 4
  %add8 = add nsw i32 %13, 1
  %cmp9 = icmp slt i32 %12, %add8
  br i1 %cmp9, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.7
  %14 = load i32, i32* @localstop, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %16, i64 0
  %17 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  store i32 %14, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.11
  %18 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  %19 = load i32, i32* %lgth1, align 4
  %20 = load i32, i32* %lgth2, align 4
  %add18 = add nsw i32 %19, %20
  %21 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx19, align 8
  %idx.ext = sext i32 %add18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx19, align 8
  %23 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %23, i64 0
  %24 = load i8*, i8** %arrayidx20, align 8
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %lgth1, align 4
  %26 = load i32, i32* %lgth2, align 4
  %add21 = add nsw i32 %25, %26
  %27 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx22, align 8
  %idx.ext23 = sext i32 %add21 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %28, i64 %idx.ext23
  store i8* %add.ptr24, i8** %arrayidx22, align 8
  %29 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx25, align 8
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %endi.addr, align 4
  store i32 %31, i32* %iin, align 4
  %32 = load i32, i32* %endj.addr, align 4
  store i32 %32, i32* %jin, align 4
  %33 = load i32, i32* %lgth1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %add26 = add nsw i32 %33, %34
  store i32 %add26, i32* %limk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.109, %for.end.17
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %limk, align 4
  %cmp28 = icmp sle i32 %35, %36
  br i1 %cmp28, label %for.body.30, label %for.end.111

for.body.30:                                      ; preds = %for.cond.27
  %37 = load i32, i32* %jin, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32, i32* %iin, align 4
  %idxprom32 = sext i32 %38 to i64
  %39 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %39, i64 %idxprom32
  %40 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %40, i64 %idxprom31
  %41 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp slt i32 %41, 0
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.30
  %42 = load i32, i32* %iin, align 4
  %sub = sub nsw i32 %42, 1
  store i32 %sub, i32* %ifi, align 4
  %43 = load i32, i32* %jin, align 4
  %44 = load i32, i32* %jin, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load i32, i32* %iin, align 4
  %idxprom38 = sext i32 %45 to i64
  %46 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %46, i64 %idxprom38
  %47 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %47, i64 %idxprom37
  %48 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %43, %48
  store i32 %add41, i32* %jfi, align 4
  br label %if.end.58

if.else:                                          ; preds = %for.body.30
  %49 = load i32, i32* %jin, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load i32, i32* %iin, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %51, i64 %idxprom43
  %52 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %52, i64 %idxprom42
  %53 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp sgt i32 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.else
  %54 = load i32, i32* %iin, align 4
  %55 = load i32, i32* %jin, align 4
  %idxprom49 = sext i32 %55 to i64
  %56 = load i32, i32* %iin, align 4
  %idxprom50 = sext i32 %56 to i64
  %57 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %57, i64 %idxprom50
  %58 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %58, i64 %idxprom49
  %59 = load i32, i32* %arrayidx52, align 4
  %sub53 = sub nsw i32 %54, %59
  store i32 %sub53, i32* %ifi, align 4
  %60 = load i32, i32* %jin, align 4
  %sub54 = sub nsw i32 %60, 1
  store i32 %sub54, i32* %jfi, align 4
  br label %if.end

if.else.55:                                       ; preds = %if.else
  %61 = load i32, i32* %iin, align 4
  %sub56 = sub nsw i32 %61, 1
  store i32 %sub56, i32* %ifi, align 4
  %62 = load i32, i32* %jin, align 4
  %sub57 = sub nsw i32 %62, 1
  store i32 %sub57, i32* %jfi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.55, %if.then.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end, %if.then
  %63 = load i32, i32* %iin, align 4
  %64 = load i32, i32* %ifi, align 4
  %sub59 = sub nsw i32 %63, %64
  store i32 %sub59, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.58
  %65 = load i32, i32* %l, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i32, i32* %ifi, align 4
  %67 = load i32, i32* %l, align 4
  %add60 = add nsw i32 %66, %67
  %idxprom61 = sext i32 %add60 to i64
  %68 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %68, i64 0
  %69 = load i8*, i8** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %69, i64 %idxprom61
  %70 = load i8, i8* %arrayidx63, align 1
  %71 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %71, i64 0
  %72 = load i8*, i8** %arrayidx64, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx64, align 8
  store i8 %70, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %73 = load i8, i8* %arraydecay, align 1
  %74 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx65, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr66, i8** %arrayidx65, align 8
  store i8 %73, i8* %incdec.ptr66, align 1
  %76 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %76, 1
  store i32 %inc67, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load i32, i32* %jin, align 4
  %78 = load i32, i32* %jfi, align 4
  %sub68 = sub nsw i32 %77, %78
  store i32 %sub68, i32* %l, align 4
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.72, %while.end
  %79 = load i32, i32* %l, align 4
  %dec70 = add nsw i32 %79, -1
  store i32 %dec70, i32* %l, align 4
  %tobool71 = icmp ne i32 %dec70, 0
  br i1 %tobool71, label %while.body.72, label %while.end.83

while.body.72:                                    ; preds = %while.cond.69
  %arraydecay73 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %80 = load i8, i8* %arraydecay73, align 1
  %81 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %81, i64 0
  %82 = load i8*, i8** %arrayidx74, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %incdec.ptr75, i8** %arrayidx74, align 8
  store i8 %80, i8* %incdec.ptr75, align 1
  %83 = load i32, i32* %jfi, align 4
  %84 = load i32, i32* %l, align 4
  %add76 = add nsw i32 %83, %84
  %idxprom77 = sext i32 %add76 to i64
  %85 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %85, i64 0
  %86 = load i8*, i8** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %86, i64 %idxprom77
  %87 = load i8, i8* %arrayidx79, align 1
  %88 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %88, i64 0
  %89 = load i8*, i8** %arrayidx80, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %incdec.ptr81, i8** %arrayidx80, align 8
  store i8 %87, i8* %incdec.ptr81, align 1
  %90 = load i32, i32* %k, align 4
  %inc82 = add nsw i32 %90, 1
  store i32 %inc82, i32* %k, align 4
  br label %while.cond.69

while.end.83:                                     ; preds = %while.cond.69
  %91 = load i32, i32* %iin, align 4
  %cmp84 = icmp sle i32 %91, 0
  br i1 %cmp84, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.83
  %92 = load i32, i32* %jin, align 4
  %cmp86 = icmp sle i32 %92, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false, %while.end.83
  br label %for.end.111

if.end.89:                                        ; preds = %lor.lhs.false
  %93 = load i32, i32* %ifi, align 4
  %idxprom90 = sext i32 %93 to i64
  %94 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %95, i64 %idxprom90
  %96 = load i8, i8* %arrayidx92, align 1
  %97 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %97, i64 0
  %98 = load i8*, i8** %arrayidx93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr94, i8** %arrayidx93, align 8
  store i8 %96, i8* %incdec.ptr94, align 1
  %99 = load i32, i32* %jfi, align 4
  %idxprom95 = sext i32 %99 to i64
  %100 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %100, i64 0
  %101 = load i8*, i8** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %101, i64 %idxprom95
  %102 = load i8, i8* %arrayidx97, align 1
  %103 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %103, i64 0
  %104 = load i8*, i8** %arrayidx98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %incdec.ptr99, i8** %arrayidx98, align 8
  store i8 %102, i8* %incdec.ptr99, align 1
  %105 = load i32, i32* %jfi, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load i32, i32* %ifi, align 4
  %idxprom101 = sext i32 %106 to i64
  %107 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %107, i64 %idxprom101
  %108 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %108, i64 %idxprom100
  %109 = load i32, i32* %arrayidx103, align 4
  %110 = load i32, i32* @localstop, align 4
  %cmp104 = icmp eq i32 %109, %110
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.89
  br label %for.end.111

if.end.107:                                       ; preds = %if.end.89
  %111 = load i32, i32* %k, align 4
  %inc108 = add nsw i32 %111, 1
  store i32 %inc108, i32* %k, align 4
  %112 = load i32, i32* %ifi, align 4
  store i32 %112, i32* %iin, align 4
  %113 = load i32, i32* %jfi, align 4
  store i32 %113, i32* %jin, align 4
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.107
  %114 = load i32, i32* %k, align 4
  %inc110 = add nsw i32 %114, 1
  store i32 %inc110, i32* %k, align 4
  br label %for.cond.27

for.end.111:                                      ; preds = %if.then.106, %if.then.88, %for.cond.27
  %115 = load i32, i32* %ifi, align 4
  %cmp112 = icmp eq i32 %115, -1
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %for.end.111
  %116 = load i32*, i32** %off1pt.addr, align 8
  store i32 0, i32* %116, align 4
  br label %if.end.116

if.else.115:                                      ; preds = %for.end.111
  %117 = load i32, i32* %ifi, align 4
  %118 = load i32*, i32** %off1pt.addr, align 8
  store i32 %117, i32* %118, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.114
  %119 = load i32, i32* %jfi, align 4
  %cmp117 = icmp eq i32 %119, -1
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.116
  %120 = load i32*, i32** %off2pt.addr, align 8
  store i32 0, i32* %120, align 4
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.116
  %121 = load i32, i32* %jfi, align 4
  %122 = load i32*, i32** %off2pt.addr, align 8
  store i32 %121, i32* %122, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.119
  ret float 0.000000e+00
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @ErrorExit(i8*) #1

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
