; ModuleID = './MultiSource.Benchmarks.mafft/2.Galign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@penalty = external global i32, align 4
@penalty_ex = external global i32, align 4
@G__align11.mi = internal global float 0.000000e+00, align 4
@G__align11.m = internal global float* null, align 8
@G__align11.ijp = internal global i32** null, align 8
@G__align11.mpi = internal global i32 0, align 4
@G__align11.mp = internal global i32* null, align 8
@G__align11.w1 = internal global float* null, align 8
@G__align11.w2 = internal global float* null, align 8
@G__align11.match = internal global float* null, align 8
@G__align11.initverticalw = internal global float* null, align 8
@G__align11.lastverticalw = internal global float* null, align 8
@G__align11.mseq1 = internal global i8** null, align 8
@G__align11.mseq2 = internal global i8** null, align 8
@G__align11.mseq = internal global i8** null, align 8
@G__align11.intwork = internal global i32** null, align 8
@G__align11.floatwork = internal global float** null, align 8
@G__align11.orlgth1 = internal global i32 0, align 4
@G__align11.orlgth2 = internal global i32 0, align 4
@njob = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"WARNING (g11): lgth1=%d, lgth2=%d\0A\00", align 1
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@outgap = external global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@G__align11_noalign.mi = internal global float 0.000000e+00, align 4
@G__align11_noalign.m = internal global float* null, align 8
@G__align11_noalign.w1 = internal global float* null, align 8
@G__align11_noalign.w2 = internal global float* null, align 8
@G__align11_noalign.match = internal global float* null, align 8
@G__align11_noalign.initverticalw = internal global float* null, align 8
@G__align11_noalign.lastverticalw = internal global float* null, align 8
@G__align11_noalign.intwork = internal global i32** null, align 8
@G__align11_noalign.floatwork = internal global float** null, align 8
@G__align11_noalign.orlgth1 = internal global i32 0, align 4
@G__align11_noalign.orlgth2 = internal global i32 0, align 4
@amino_dis = external global [128 x [128 x i32]], align 16
@Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @G__align11(i8** %seq1, i8** %seq2, i32 %alloclen) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %resultlen = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %fpenalty = alloca float, align 4
  %fpenalty_ex = alloca float, align 4
  %wtmp = alloca float*, align 8
  %ijppt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll192 = alloca i32, align 4
  %ll293 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @penalty_ex, align 4
  %conv1 = sitofp i32 %1 to float
  store float %conv1, float* %fpenalty_ex, align 4
  store float 0.000000e+00, float* %wm, align 4
  %2 = load i32, i32* @G__align11.orlgth1, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %3, i32 0)
  store i8** %call, i8*** @G__align11.mseq1, align 8
  %4 = load i32, i32* @njob, align 4
  %call3 = call i8** @AllocateCharMtx(i32 %4, i32 0)
  store i8** %call3, i8*** @G__align11.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth1, align 4
  %7 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %8) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %lgth2, align 4
  %9 = load i32, i32* %lgth1, align 4
  %cmp9 = icmp sle i32 %9, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %lgth2, align 4
  %cmp11 = icmp sle i32 %10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %lgth1, align 4
  %13 = load i32, i32* %lgth2, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %lor.lhs.false
  %14 = load i32, i32* %lgth1, align 4
  %15 = load i32, i32* @G__align11.orlgth1, align 4
  %cmp16 = icmp sgt i32 %14, %15
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.15
  %16 = load i32, i32* %lgth2, align 4
  %17 = load i32, i32* @G__align11.orlgth2, align 4
  %cmp19 = icmp sgt i32 %16, %17
  br i1 %cmp19, label %if.then.21, label %if.end.81

if.then.21:                                       ; preds = %lor.lhs.false.18, %if.end.15
  %18 = load i32, i32* @G__align11.orlgth1, align 4
  %cmp22 = icmp sgt i32 %18, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.21
  %19 = load i32, i32* @G__align11.orlgth2, align 4
  %cmp24 = icmp sgt i32 %19, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  %20 = load float*, float** @G__align11.w1, align 8
  call void @FreeFloatVec(float* %20)
  %21 = load float*, float** @G__align11.w2, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @G__align11.match, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @G__align11.initverticalw, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @G__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @G__align11.m, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load i32*, i32** @G__align11.mp, align 8
  call void @FreeIntVec(i32* %26)
  %27 = load i8**, i8*** @G__align11.mseq, align 8
  call void @FreeCharMtx(i8** %27)
  %28 = load float**, float*** @G__align11.floatwork, align 8
  call void @FreeFloatMtx(float** %28)
  %29 = load i32**, i32*** @G__align11.intwork, align 8
  call void @FreeIntMtx(i32** %29)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.then.21
  %30 = load i32, i32* %lgth1, align 4
  %conv28 = sitofp i32 %30 to double
  %mul = fmul double 1.300000e+00, %conv28
  %conv29 = fptosi double %mul to i32
  %31 = load i32, i32* @G__align11.orlgth1, align 4
  %cmp30 = icmp sgt i32 %conv29, %31
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %32 = load i32, i32* %lgth1, align 4
  %conv32 = sitofp i32 %32 to double
  %mul33 = fmul double 1.300000e+00, %conv32
  %conv34 = fptosi double %mul33 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  %33 = load i32, i32* @G__align11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv34, %cond.true ], [ %33, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %conv35 = sitofp i32 %34 to double
  %mul36 = fmul double 1.300000e+00, %conv35
  %conv37 = fptosi double %mul36 to i32
  %35 = load i32, i32* @G__align11.orlgth2, align 4
  %cmp38 = icmp sgt i32 %conv37, %35
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %cond.end
  %36 = load i32, i32* %lgth2, align 4
  %conv41 = sitofp i32 %36 to double
  %mul42 = fmul double 1.300000e+00, %conv41
  %conv43 = fptosi double %mul42 to i32
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end
  %37 = load i32, i32* @G__align11.orlgth2, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.40
  %cond46 = phi i32 [ %conv43, %cond.true.40 ], [ %37, %cond.false.44 ]
  %add47 = add nsw i32 %cond46, 100
  store i32 %add47, i32* %ll2, align 4
  %38 = load i32, i32* %ll2, align 4
  %add48 = add nsw i32 %38, 2
  %call49 = call float* @AllocateFloatVec(i32 %add48)
  store float* %call49, float** @G__align11.w1, align 8
  %39 = load i32, i32* %ll2, align 4
  %add50 = add nsw i32 %39, 2
  %call51 = call float* @AllocateFloatVec(i32 %add50)
  store float* %call51, float** @G__align11.w2, align 8
  %40 = load i32, i32* %ll2, align 4
  %add52 = add nsw i32 %40, 2
  %call53 = call float* @AllocateFloatVec(i32 %add52)
  store float* %call53, float** @G__align11.match, align 8
  %41 = load i32, i32* %ll1, align 4
  %add54 = add nsw i32 %41, 2
  %call55 = call float* @AllocateFloatVec(i32 %add54)
  store float* %call55, float** @G__align11.initverticalw, align 8
  %42 = load i32, i32* %ll1, align 4
  %add56 = add nsw i32 %42, 2
  %call57 = call float* @AllocateFloatVec(i32 %add56)
  store float* %call57, float** @G__align11.lastverticalw, align 8
  %43 = load i32, i32* %ll2, align 4
  %add58 = add nsw i32 %43, 2
  %call59 = call float* @AllocateFloatVec(i32 %add58)
  store float* %call59, float** @G__align11.m, align 8
  %44 = load i32, i32* %ll2, align 4
  %add60 = add nsw i32 %44, 2
  %call61 = call i32* @AllocateIntVec(i32 %add60)
  store i32* %call61, i32** @G__align11.mp, align 8
  %45 = load i32, i32* @njob, align 4
  %46 = load i32, i32* %ll1, align 4
  %47 = load i32, i32* %ll2, align 4
  %add62 = add nsw i32 %46, %47
  %call63 = call i8** @AllocateCharMtx(i32 %45, i32 %add62)
  store i8** %call63, i8*** @G__align11.mseq, align 8
  %48 = load i32, i32* %ll1, align 4
  %49 = load i32, i32* %ll2, align 4
  %cmp64 = icmp sgt i32 %48, %49
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end.45
  %50 = load i32, i32* %ll1, align 4
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end.45
  %51 = load i32, i32* %ll2, align 4
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.66
  %cond69 = phi i32 [ %50, %cond.true.66 ], [ %51, %cond.false.67 ]
  %add70 = add nsw i32 %cond69, 2
  %call71 = call float** @AllocateFloatMtx(i32 26, i32 %add70)
  store float** %call71, float*** @G__align11.floatwork, align 8
  %52 = load i32, i32* %ll1, align 4
  %53 = load i32, i32* %ll2, align 4
  %cmp72 = icmp sgt i32 %52, %53
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.68
  %54 = load i32, i32* %ll1, align 4
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.end.68
  %55 = load i32, i32* %ll2, align 4
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i32 [ %54, %cond.true.74 ], [ %55, %cond.false.75 ]
  %add78 = add nsw i32 %cond77, 2
  %call79 = call i32** @AllocateIntMtx(i32 26, i32 %add78)
  store i32** %call79, i32*** @G__align11.intwork, align 8
  %56 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %56, 100
  store i32 %sub, i32* @G__align11.orlgth1, align 4
  %57 = load i32, i32* %ll2, align 4
  %sub80 = sub nsw i32 %57, 100
  store i32 %sub80, i32* @G__align11.orlgth2, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.76, %lor.lhs.false.18
  %58 = load i8**, i8*** @G__align11.mseq, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %58, i64 0
  %59 = load i8*, i8** %arrayidx82, align 8
  %60 = load i8**, i8*** @G__align11.mseq1, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %59, i8** %arrayidx83, align 8
  %61 = load i8**, i8*** @G__align11.mseq, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %61, i64 1
  %62 = load i8*, i8** %arrayidx84, align 8
  %63 = load i8**, i8*** @G__align11.mseq2, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %62, i8** %arrayidx85, align 8
  %64 = load i32, i32* @G__align11.orlgth1, align 4
  %65 = load i32, i32* @commonAlloc1, align 4
  %cmp86 = icmp sgt i32 %64, %65
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.end.81
  %66 = load i32, i32* @G__align11.orlgth2, align 4
  %67 = load i32, i32* @commonAlloc2, align 4
  %cmp89 = icmp sgt i32 %66, %67
  br i1 %cmp89, label %if.then.91, label %if.end.113

if.then.91:                                       ; preds = %lor.lhs.false.88, %if.end.81
  %68 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %land.lhs.true.94, label %if.end.97

land.lhs.true.94:                                 ; preds = %if.then.91
  %69 = load i32, i32* @commonAlloc2, align 4
  %tobool95 = icmp ne i32 %69, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.94
  %70 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %70)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %land.lhs.true.94, %if.then.91
  %71 = load i32, i32* @G__align11.orlgth1, align 4
  %72 = load i32, i32* @commonAlloc1, align 4
  %cmp98 = icmp sgt i32 %71, %72
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %if.end.97
  %73 = load i32, i32* @G__align11.orlgth1, align 4
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.end.97
  %74 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi i32 [ %73, %cond.true.100 ], [ %74, %cond.false.101 ]
  store i32 %cond103, i32* %ll192, align 4
  %75 = load i32, i32* @G__align11.orlgth2, align 4
  %76 = load i32, i32* @commonAlloc2, align 4
  %cmp104 = icmp sgt i32 %75, %76
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.end.102
  %77 = load i32, i32* @G__align11.orlgth2, align 4
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.end.102
  %78 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i32 [ %77, %cond.true.106 ], [ %78, %cond.false.107 ]
  store i32 %cond109, i32* %ll293, align 4
  %79 = load i32, i32* %ll192, align 4
  %add110 = add nsw i32 %79, 10
  %80 = load i32, i32* %ll293, align 4
  %add111 = add nsw i32 %80, 10
  %call112 = call i32** @AllocateIntMtx(i32 %add110, i32 %add111)
  store i32** %call112, i32*** @commonIP, align 8
  %81 = load i32, i32* %ll192, align 4
  store i32 %81, i32* @commonAlloc1, align 4
  %82 = load i32, i32* %ll293, align 4
  store i32 %82, i32* @commonAlloc2, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %cond.end.108, %lor.lhs.false.88
  %83 = load i32**, i32*** @commonIP, align 8
  store i32** %83, i32*** @G__align11.ijp, align 8
  %84 = load float*, float** @G__align11.w1, align 8
  store float* %84, float** %currentw, align 8
  %85 = load float*, float** @G__align11.w2, align 8
  store float* %85, float** %previousw, align 8
  %86 = load float*, float** @G__align11.initverticalw, align 8
  %87 = load i8**, i8*** %seq2.addr, align 8
  %88 = load i8**, i8*** %seq1.addr, align 8
  %89 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %86, i8** %87, i8** %88, i32 0, i32 %89)
  %90 = load float*, float** %currentw, align 8
  %91 = load i8**, i8*** %seq1.addr, align 8
  %92 = load i8**, i8*** %seq2.addr, align 8
  %93 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %90, i8** %91, i8** %92, i32 0, i32 %93)
  %94 = load i32, i32* @outgap, align 4
  %cmp114 = icmp eq i32 %94, 1
  br i1 %cmp114, label %if.then.116, label %if.end.133

if.then.116:                                      ; preds = %if.end.113
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %lgth1, align 4
  %add117 = add nsw i32 %96, 1
  %cmp118 = icmp slt i32 %95, %add117
  br i1 %cmp118, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load float, float* %fpenalty, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom = sext i32 %98 to i64
  %99 = load float*, float** @G__align11.initverticalw, align 8
  %arrayidx120 = getelementptr inbounds float, float* %99, i64 %idxprom
  %100 = load float, float* %arrayidx120, align 4
  %add121 = fadd float %100, %97
  store float %add121, float* %arrayidx120, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %i, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.130, %for.end
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %lgth2, align 4
  %add123 = add nsw i32 %103, 1
  %cmp124 = icmp slt i32 %102, %add123
  br i1 %cmp124, label %for.body.126, label %for.end.132

for.body.126:                                     ; preds = %for.cond.122
  %104 = load float, float* %fpenalty, align 4
  %105 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %105 to i64
  %106 = load float*, float** %currentw, align 8
  %arrayidx128 = getelementptr inbounds float, float* %106, i64 %idxprom127
  %107 = load float, float* %arrayidx128, align 4
  %add129 = fadd float %107, %104
  store float %add129, float* %arrayidx128, align 4
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.126
  %108 = load i32, i32* %j, align 4
  %inc131 = add nsw i32 %108, 1
  store i32 %inc131, i32* %j, align 4
  br label %for.cond.122

for.end.132:                                      ; preds = %for.cond.122
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %if.end.113
  store i32 1, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.146, %if.end.133
  %109 = load i32, i32* %j, align 4
  %110 = load i32, i32* %lgth2, align 4
  %add135 = add nsw i32 %110, 1
  %cmp136 = icmp slt i32 %109, %add135
  br i1 %cmp136, label %for.body.138, label %for.end.148

for.body.138:                                     ; preds = %for.cond.134
  %111 = load i32, i32* %j, align 4
  %sub139 = sub nsw i32 %111, 1
  %idxprom140 = sext i32 %sub139 to i64
  %112 = load float*, float** %currentw, align 8
  %arrayidx141 = getelementptr inbounds float, float* %112, i64 %idxprom140
  %113 = load float, float* %arrayidx141, align 4
  %114 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %114 to i64
  %115 = load float*, float** @G__align11.m, align 8
  %arrayidx143 = getelementptr inbounds float, float* %115, i64 %idxprom142
  store float %113, float* %arrayidx143, align 4
  %116 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %116 to i64
  %117 = load i32*, i32** @G__align11.mp, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %117, i64 %idxprom144
  store i32 0, i32* %arrayidx145, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.138
  %118 = load i32, i32* %j, align 4
  %inc147 = add nsw i32 %118, 1
  store i32 %inc147, i32* %j, align 4
  br label %for.cond.134

for.end.148:                                      ; preds = %for.cond.134
  %119 = load i32, i32* %lgth2, align 4
  %cmp149 = icmp eq i32 %119, 0
  br i1 %cmp149, label %if.then.151, label %if.else

if.then.151:                                      ; preds = %for.end.148
  %120 = load float*, float** @G__align11.lastverticalw, align 8
  %arrayidx152 = getelementptr inbounds float, float* %120, i64 0
  store float 0.000000e+00, float* %arrayidx152, align 4
  br label %if.end.157

if.else:                                          ; preds = %for.end.148
  %121 = load i32, i32* %lgth2, align 4
  %sub153 = sub nsw i32 %121, 1
  %idxprom154 = sext i32 %sub153 to i64
  %122 = load float*, float** %currentw, align 8
  %arrayidx155 = getelementptr inbounds float, float* %122, i64 %idxprom154
  %123 = load float, float* %arrayidx155, align 4
  %124 = load float*, float** @G__align11.lastverticalw, align 8
  %arrayidx156 = getelementptr inbounds float, float* %124, i64 0
  store float %123, float* %arrayidx156, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.else, %if.then.151
  %125 = load i32, i32* @outgap, align 4
  %tobool158 = icmp ne i32 %125, 0
  br i1 %tobool158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.end.157
  %126 = load i32, i32* %lgth1, align 4
  %add160 = add nsw i32 %126, 1
  store i32 %add160, i32* %lasti, align 4
  br label %if.end.162

if.else.161:                                      ; preds = %if.end.157
  %127 = load i32, i32* %lgth1, align 4
  store i32 %127, i32* %lasti, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.161, %if.then.159
  store i32 1, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.225, %if.end.162
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %lasti, align 4
  %cmp164 = icmp slt i32 %128, %129
  br i1 %cmp164, label %for.body.166, label %for.end.227

for.body.166:                                     ; preds = %for.cond.163
  %130 = load float*, float** %previousw, align 8
  store float* %130, float** %wtmp, align 8
  %131 = load float*, float** %currentw, align 8
  store float* %131, float** %previousw, align 8
  %132 = load float*, float** %wtmp, align 8
  store float* %132, float** %currentw, align 8
  %133 = load i32, i32* %i, align 4
  %sub167 = sub nsw i32 %133, 1
  %idxprom168 = sext i32 %sub167 to i64
  %134 = load float*, float** @G__align11.initverticalw, align 8
  %arrayidx169 = getelementptr inbounds float, float* %134, i64 %idxprom168
  %135 = load float, float* %arrayidx169, align 4
  %136 = load float*, float** %previousw, align 8
  %arrayidx170 = getelementptr inbounds float, float* %136, i64 0
  store float %135, float* %arrayidx170, align 4
  %137 = load float*, float** %currentw, align 8
  %138 = load i8**, i8*** %seq1.addr, align 8
  %139 = load i8**, i8*** %seq2.addr, align 8
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %137, i8** %138, i8** %139, i32 %140, i32 %141)
  %142 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %142 to i64
  %143 = load float*, float** @G__align11.initverticalw, align 8
  %arrayidx172 = getelementptr inbounds float, float* %143, i64 %idxprom171
  %144 = load float, float* %arrayidx172, align 4
  %145 = load float*, float** %currentw, align 8
  %arrayidx173 = getelementptr inbounds float, float* %145, i64 0
  store float %144, float* %arrayidx173, align 4
  %146 = load float*, float** %previousw, align 8
  %arrayidx174 = getelementptr inbounds float, float* %146, i64 0
  %147 = load float, float* %arrayidx174, align 4
  store float %147, float* @G__align11.mi, align 4
  store i32 0, i32* @G__align11.mpi, align 4
  %148 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %148 to i64
  %149 = load i32**, i32*** @G__align11.ijp, align 8
  %arrayidx176 = getelementptr inbounds i32*, i32** %149, i64 %idxprom175
  %150 = load i32*, i32** %arrayidx176, align 8
  %add.ptr = getelementptr inbounds i32, i32* %150, i64 1
  store i32* %add.ptr, i32** %ijppt, align 8
  %151 = load float*, float** @G__align11.m, align 8
  %add.ptr177 = getelementptr inbounds float, float* %151, i64 1
  store float* %add.ptr177, float** %mjpt, align 8
  %152 = load float*, float** %previousw, align 8
  store float* %152, float** %prept, align 8
  %153 = load float*, float** %currentw, align 8
  %add.ptr178 = getelementptr inbounds float, float* %153, i64 1
  store float* %add.ptr178, float** %curpt, align 8
  %154 = load i32*, i32** @G__align11.mp, align 8
  %add.ptr179 = getelementptr inbounds i32, i32* %154, i64 1
  store i32* %add.ptr179, i32** %mpjpt, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.217, %for.body.166
  %155 = load i32, i32* %j, align 4
  %156 = load i32, i32* %lgth2, align 4
  %add181 = add nsw i32 %156, 1
  %cmp182 = icmp slt i32 %155, %add181
  br i1 %cmp182, label %for.body.184, label %for.end.219

for.body.184:                                     ; preds = %for.cond.180
  %157 = load float*, float** %prept, align 8
  %158 = load float, float* %157, align 4
  store float %158, float* %wm, align 4
  %159 = load i32*, i32** %ijppt, align 8
  store i32 0, i32* %159, align 4
  %160 = load float, float* @G__align11.mi, align 4
  %161 = load float, float* %fpenalty, align 4
  %add185 = fadd float %160, %161
  store float %add185, float* %g, align 4
  %162 = load float, float* %wm, align 4
  %cmp186 = fcmp ogt float %add185, %162
  br i1 %cmp186, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %for.body.184
  %163 = load float, float* %g, align 4
  store float %163, float* %wm, align 4
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* @G__align11.mpi, align 4
  %sub189 = sub nsw i32 %164, %165
  %sub190 = sub nsw i32 0, %sub189
  %166 = load i32*, i32** %ijppt, align 8
  store i32 %sub190, i32* %166, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %for.body.184
  %167 = load float*, float** %prept, align 8
  %168 = load float, float* %167, align 4
  store float %168, float* %g, align 4
  %169 = load float, float* @G__align11.mi, align 4
  %cmp192 = fcmp oge float %168, %169
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.191
  %170 = load float, float* %g, align 4
  store float %170, float* @G__align11.mi, align 4
  %171 = load i32, i32* %j, align 4
  %sub195 = sub nsw i32 %171, 1
  store i32 %sub195, i32* @G__align11.mpi, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.end.191
  %172 = load float, float* %fpenalty_ex, align 4
  %173 = load float, float* @G__align11.mi, align 4
  %add197 = fadd float %173, %172
  store float %add197, float* @G__align11.mi, align 4
  %174 = load float*, float** %mjpt, align 8
  %175 = load float, float* %174, align 4
  %176 = load float, float* %fpenalty, align 4
  %add198 = fadd float %175, %176
  store float %add198, float* %g, align 4
  %177 = load float, float* %wm, align 4
  %cmp199 = fcmp ogt float %add198, %177
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.end.196
  %178 = load float, float* %g, align 4
  store float %178, float* %wm, align 4
  %179 = load i32, i32* %i, align 4
  %180 = load i32*, i32** %mpjpt, align 8
  %181 = load i32, i32* %180, align 4
  %sub202 = sub nsw i32 %179, %181
  %182 = load i32*, i32** %ijppt, align 8
  store i32 %sub202, i32* %182, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %if.end.196
  %183 = load float*, float** %prept, align 8
  %184 = load float, float* %183, align 4
  store float %184, float* %g, align 4
  %185 = load float*, float** %mjpt, align 8
  %186 = load float, float* %185, align 4
  %cmp204 = fcmp oge float %184, %186
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.203
  %187 = load float, float* %g, align 4
  %188 = load float*, float** %mjpt, align 8
  store float %187, float* %188, align 4
  %189 = load i32, i32* %i, align 4
  %sub207 = sub nsw i32 %189, 1
  %190 = load i32*, i32** %mpjpt, align 8
  store i32 %sub207, i32* %190, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.end.203
  %191 = load float, float* %fpenalty_ex, align 4
  %192 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %192 to i64
  %193 = load float*, float** @G__align11.m, align 8
  %arrayidx210 = getelementptr inbounds float, float* %193, i64 %idxprom209
  %194 = load float, float* %arrayidx210, align 4
  %add211 = fadd float %194, %191
  store float %add211, float* %arrayidx210, align 4
  %195 = load float, float* %wm, align 4
  %196 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %196, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %197 = load float, float* %196, align 4
  %add212 = fadd float %197, %195
  store float %add212, float* %196, align 4
  %198 = load i32*, i32** %ijppt, align 8
  %incdec.ptr213 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %incdec.ptr213, i32** %ijppt, align 8
  %199 = load float*, float** %mjpt, align 8
  %incdec.ptr214 = getelementptr inbounds float, float* %199, i32 1
  store float* %incdec.ptr214, float** %mjpt, align 8
  %200 = load float*, float** %prept, align 8
  %incdec.ptr215 = getelementptr inbounds float, float* %200, i32 1
  store float* %incdec.ptr215, float** %prept, align 8
  %201 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr216 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %incdec.ptr216, i32** %mpjpt, align 8
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.208
  %202 = load i32, i32* %j, align 4
  %inc218 = add nsw i32 %202, 1
  store i32 %inc218, i32* %j, align 4
  br label %for.cond.180

for.end.219:                                      ; preds = %for.cond.180
  %203 = load i32, i32* %lgth2, align 4
  %sub220 = sub nsw i32 %203, 1
  %idxprom221 = sext i32 %sub220 to i64
  %204 = load float*, float** %currentw, align 8
  %arrayidx222 = getelementptr inbounds float, float* %204, i64 %idxprom221
  %205 = load float, float* %arrayidx222, align 4
  %206 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %206 to i64
  %207 = load float*, float** @G__align11.lastverticalw, align 8
  %arrayidx224 = getelementptr inbounds float, float* %207, i64 %idxprom223
  store float %205, float* %arrayidx224, align 4
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.219
  %208 = load i32, i32* %i, align 4
  %inc226 = add nsw i32 %208, 1
  store i32 %inc226, i32* %i, align 4
  br label %for.cond.163

for.end.227:                                      ; preds = %for.cond.163
  %209 = load float*, float** %currentw, align 8
  %210 = load float*, float** @G__align11.lastverticalw, align 8
  %211 = load i8**, i8*** %seq1.addr, align 8
  %212 = load i8**, i8*** %seq2.addr, align 8
  %213 = load i8**, i8*** @G__align11.mseq1, align 8
  %214 = load i8**, i8*** @G__align11.mseq2, align 8
  %215 = load i32**, i32*** @G__align11.ijp, align 8
  %call228 = call float @Atracking(float* %209, float* %210, i8** %211, i8** %212, i8** %213, i8** %214, i32** %215)
  %216 = load i8**, i8*** @G__align11.mseq1, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %216, i64 0
  %217 = load i8*, i8** %arrayidx229, align 8
  %call230 = call i64 @strlen(i8* %217) #5
  %conv231 = trunc i64 %call230 to i32
  store i32 %conv231, i32* %resultlen, align 4
  %218 = load i32, i32* %alloclen.addr, align 4
  %219 = load i32, i32* %resultlen, align 4
  %cmp232 = icmp slt i32 %218, %219
  br i1 %cmp232, label %if.then.237, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %for.end.227
  %220 = load i32, i32* %resultlen, align 4
  %cmp235 = icmp sgt i32 %220, 5000000
  br i1 %cmp235, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %lor.lhs.false.234, %for.end.227
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %222 = load i32, i32* %alloclen.addr, align 4
  %223 = load i32, i32* %resultlen, align 4
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %222, i32 %223, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %lor.lhs.false.234
  %224 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx240 = getelementptr inbounds i8*, i8** %224, i64 0
  %225 = load i8*, i8** %arrayidx240, align 8
  %226 = load i8**, i8*** @G__align11.mseq1, align 8
  %arrayidx241 = getelementptr inbounds i8*, i8** %226, i64 0
  %227 = load i8*, i8** %arrayidx241, align 8
  %call242 = call i8* @strcpy(i8* %225, i8* %227) #4
  %228 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx243 = getelementptr inbounds i8*, i8** %228, i64 0
  %229 = load i8*, i8** %arrayidx243, align 8
  %230 = load i8**, i8*** @G__align11.mseq2, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %230, i64 0
  %231 = load i8*, i8** %arrayidx244, align 8
  %call245 = call i8* @strcpy(i8* %229, i8* %231) #4
  %232 = load float, float* %wm, align 4
  ret float %232
}

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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

; Function Attrs: nounwind uwtable
define internal float @Atracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, i32** %ijp) #0 {
entry:
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
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

; Function Attrs: nounwind uwtable
define float @G__align11_noalign([128 x i32]* %scoremtx, i32 %penal, i32 %penal_ex, i8** %seq1, i8** %seq2, i32 %alloclen) #0 {
entry:
  %scoremtx.addr = alloca [128 x i32]*, align 8
  %penal.addr = alloca i32, align 4
  %penal_ex.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %fpenalty = alloca float, align 4
  %fpenalty_ex = alloca float, align 4
  %wtmp = alloca float*, align 8
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  store [128 x i32]* %scoremtx, [128 x i32]** %scoremtx.addr, align 8
  store i32 %penal, i32* %penal.addr, align 4
  store i32 %penal_ex, i32* %penal_ex.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %0 = load i32, i32* %penal.addr, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* %penal_ex.addr, align 4
  %conv1 = sitofp i32 %1 to float
  store float %conv1, float* %fpenalty_ex, align 4
  store float 0.000000e+00, float* %wm, align 4
  %2 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %3) #5
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %lgth1, align 4
  %4 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %5) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth2, align 4
  %6 = load i32, i32* %lgth1, align 4
  %cmp = icmp sle i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %lgth2, align 4
  %cmp7 = icmp sle i32 %7, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %lgth1, align 4
  %10 = load i32, i32* %lgth2, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = load i32, i32* %lgth1, align 4
  %12 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %cmp10 = icmp sgt i32 %11, %12
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end
  %13 = load i32, i32* %lgth2, align 4
  %14 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %cmp13 = icmp sgt i32 %13, %14
  br i1 %cmp13, label %if.then.15, label %if.end.71

if.then.15:                                       ; preds = %lor.lhs.false.12, %if.end
  %15 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %cmp16 = icmp sgt i32 %15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.15
  %16 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %cmp18 = icmp sgt i32 %16, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  %17 = load float*, float** @G__align11_noalign.w1, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @G__align11_noalign.w2, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load float*, float** @G__align11_noalign.match, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load float*, float** @G__align11_noalign.initverticalw, align 8
  call void @FreeFloatVec(float* %20)
  %21 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @G__align11_noalign.m, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float**, float*** @G__align11_noalign.floatwork, align 8
  call void @FreeFloatMtx(float** %23)
  %24 = load i32**, i32*** @G__align11_noalign.intwork, align 8
  call void @FreeIntMtx(i32** %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.15
  %25 = load i32, i32* %lgth1, align 4
  %conv22 = sitofp i32 %25 to double
  %mul = fmul double 1.300000e+00, %conv22
  %conv23 = fptosi double %mul to i32
  %26 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %cmp24 = icmp sgt i32 %conv23, %26
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %27 = load i32, i32* %lgth1, align 4
  %conv26 = sitofp i32 %27 to double
  %mul27 = fmul double 1.300000e+00, %conv26
  %conv28 = fptosi double %mul27 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %28 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv28, %cond.true ], [ %28, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %29 = load i32, i32* %lgth2, align 4
  %conv29 = sitofp i32 %29 to double
  %mul30 = fmul double 1.300000e+00, %conv29
  %conv31 = fptosi double %mul30 to i32
  %30 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %cmp32 = icmp sgt i32 %conv31, %30
  br i1 %cmp32, label %cond.true.34, label %cond.false.38

cond.true.34:                                     ; preds = %cond.end
  %31 = load i32, i32* %lgth2, align 4
  %conv35 = sitofp i32 %31 to double
  %mul36 = fmul double 1.300000e+00, %conv35
  %conv37 = fptosi double %mul36 to i32
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  %32 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.34
  %cond40 = phi i32 [ %conv37, %cond.true.34 ], [ %32, %cond.false.38 ]
  %add41 = add nsw i32 %cond40, 100
  store i32 %add41, i32* %ll2, align 4
  %33 = load i32, i32* %ll2, align 4
  %add42 = add nsw i32 %33, 2
  %call43 = call float* @AllocateFloatVec(i32 %add42)
  store float* %call43, float** @G__align11_noalign.w1, align 8
  %34 = load i32, i32* %ll2, align 4
  %add44 = add nsw i32 %34, 2
  %call45 = call float* @AllocateFloatVec(i32 %add44)
  store float* %call45, float** @G__align11_noalign.w2, align 8
  %35 = load i32, i32* %ll2, align 4
  %add46 = add nsw i32 %35, 2
  %call47 = call float* @AllocateFloatVec(i32 %add46)
  store float* %call47, float** @G__align11_noalign.match, align 8
  %36 = load i32, i32* %ll1, align 4
  %add48 = add nsw i32 %36, 2
  %call49 = call float* @AllocateFloatVec(i32 %add48)
  store float* %call49, float** @G__align11_noalign.initverticalw, align 8
  %37 = load i32, i32* %ll1, align 4
  %add50 = add nsw i32 %37, 2
  %call51 = call float* @AllocateFloatVec(i32 %add50)
  store float* %call51, float** @G__align11_noalign.lastverticalw, align 8
  %38 = load i32, i32* %ll2, align 4
  %add52 = add nsw i32 %38, 2
  %call53 = call float* @AllocateFloatVec(i32 %add52)
  store float* %call53, float** @G__align11_noalign.m, align 8
  %39 = load i32, i32* %ll1, align 4
  %40 = load i32, i32* %ll2, align 4
  %cmp54 = icmp sgt i32 %39, %40
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.39
  %41 = load i32, i32* %ll1, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.end.39
  %42 = load i32, i32* %ll2, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %41, %cond.true.56 ], [ %42, %cond.false.57 ]
  %add60 = add nsw i32 %cond59, 2
  %call61 = call float** @AllocateFloatMtx(i32 26, i32 %add60)
  store float** %call61, float*** @G__align11_noalign.floatwork, align 8
  %43 = load i32, i32* %ll1, align 4
  %44 = load i32, i32* %ll2, align 4
  %cmp62 = icmp sgt i32 %43, %44
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.58
  %45 = load i32, i32* %ll1, align 4
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end.58
  %46 = load i32, i32* %ll2, align 4
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi i32 [ %45, %cond.true.64 ], [ %46, %cond.false.65 ]
  %add68 = add nsw i32 %cond67, 2
  %call69 = call i32** @AllocateIntMtx(i32 26, i32 %add68)
  store i32** %call69, i32*** @G__align11_noalign.intwork, align 8
  %47 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %47, 100
  store i32 %sub, i32* @G__align11_noalign.orlgth1, align 4
  %48 = load i32, i32* %ll2, align 4
  %sub70 = sub nsw i32 %48, 100
  store i32 %sub70, i32* @G__align11_noalign.orlgth2, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.66, %lor.lhs.false.12
  %49 = load float*, float** @G__align11_noalign.w1, align 8
  store float* %49, float** %currentw, align 8
  %50 = load float*, float** @G__align11_noalign.w2, align 8
  store float* %50, float** %previousw, align 8
  %51 = load [128 x i32]*, [128 x i32]** %scoremtx.addr, align 8
  %52 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %53 = load i8**, i8*** %seq2.addr, align 8
  %54 = load i8**, i8*** %seq1.addr, align 8
  %55 = load i32, i32* %lgth1, align 4
  call void @match_calc_mtx([128 x i32]* %51, float* %52, i8** %53, i8** %54, i32 0, i32 %55)
  %56 = load [128 x i32]*, [128 x i32]** %scoremtx.addr, align 8
  %57 = load float*, float** %currentw, align 8
  %58 = load i8**, i8*** %seq1.addr, align 8
  %59 = load i8**, i8*** %seq2.addr, align 8
  %60 = load i32, i32* %lgth2, align 4
  call void @match_calc_mtx([128 x i32]* %56, float* %57, i8** %58, i8** %59, i32 0, i32 %60)
  %61 = load i32, i32* @outgap, align 4
  %cmp72 = icmp eq i32 %61, 1
  br i1 %cmp72, label %if.then.74, label %if.end.91

if.then.74:                                       ; preds = %if.end.71
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.74
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %lgth1, align 4
  %add75 = add nsw i32 %63, 1
  %cmp76 = icmp slt i32 %62, %add75
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load float, float* %fpenalty, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %arrayidx78 = getelementptr inbounds float, float* %66, i64 %idxprom
  %67 = load float, float* %arrayidx78, align 4
  %add79 = fadd float %67, %64
  store float %add79, float* %arrayidx78, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.88, %for.end
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %lgth2, align 4
  %add81 = add nsw i32 %70, 1
  %cmp82 = icmp slt i32 %69, %add81
  br i1 %cmp82, label %for.body.84, label %for.end.90

for.body.84:                                      ; preds = %for.cond.80
  %71 = load float, float* %fpenalty, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %72 to i64
  %73 = load float*, float** %currentw, align 8
  %arrayidx86 = getelementptr inbounds float, float* %73, i64 %idxprom85
  %74 = load float, float* %arrayidx86, align 4
  %add87 = fadd float %74, %71
  store float %add87, float* %arrayidx86, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.84
  %75 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %75, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.80

for.end.90:                                       ; preds = %for.cond.80
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.end.71
  store i32 1, i32* %j, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.102, %if.end.91
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %lgth2, align 4
  %add93 = add nsw i32 %77, 1
  %cmp94 = icmp slt i32 %76, %add93
  br i1 %cmp94, label %for.body.96, label %for.end.104

for.body.96:                                      ; preds = %for.cond.92
  %78 = load i32, i32* %j, align 4
  %sub97 = sub nsw i32 %78, 1
  %idxprom98 = sext i32 %sub97 to i64
  %79 = load float*, float** %currentw, align 8
  %arrayidx99 = getelementptr inbounds float, float* %79, i64 %idxprom98
  %80 = load float, float* %arrayidx99, align 4
  %81 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %81 to i64
  %82 = load float*, float** @G__align11_noalign.m, align 8
  %arrayidx101 = getelementptr inbounds float, float* %82, i64 %idxprom100
  store float %80, float* %arrayidx101, align 4
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.96
  %83 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %83, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.92

for.end.104:                                      ; preds = %for.cond.92
  %84 = load i32, i32* %lgth2, align 4
  %cmp105 = icmp eq i32 %84, 0
  br i1 %cmp105, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %for.end.104
  %85 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %arrayidx108 = getelementptr inbounds float, float* %85, i64 0
  store float 0.000000e+00, float* %arrayidx108, align 4
  br label %if.end.113

if.else:                                          ; preds = %for.end.104
  %86 = load i32, i32* %lgth2, align 4
  %sub109 = sub nsw i32 %86, 1
  %idxprom110 = sext i32 %sub109 to i64
  %87 = load float*, float** %currentw, align 8
  %arrayidx111 = getelementptr inbounds float, float* %87, i64 %idxprom110
  %88 = load float, float* %arrayidx111, align 4
  %89 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %arrayidx112 = getelementptr inbounds float, float* %89, i64 0
  store float %88, float* %arrayidx112, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %if.then.107
  %90 = load i32, i32* @outgap, align 4
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %if.end.113
  %91 = load i32, i32* %lgth1, align 4
  %add115 = add nsw i32 %91, 1
  store i32 %add115, i32* %lasti, align 4
  br label %if.end.117

if.else.116:                                      ; preds = %if.end.113
  %92 = load i32, i32* %lgth1, align 4
  store i32 %92, i32* %lasti, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.116, %if.then.114
  store i32 1, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.169, %if.end.117
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %lasti, align 4
  %cmp119 = icmp slt i32 %93, %94
  br i1 %cmp119, label %for.body.121, label %for.end.171

for.body.121:                                     ; preds = %for.cond.118
  %95 = load float*, float** %previousw, align 8
  store float* %95, float** %wtmp, align 8
  %96 = load float*, float** %currentw, align 8
  store float* %96, float** %previousw, align 8
  %97 = load float*, float** %wtmp, align 8
  store float* %97, float** %currentw, align 8
  %98 = load i32, i32* %i, align 4
  %sub122 = sub nsw i32 %98, 1
  %idxprom123 = sext i32 %sub122 to i64
  %99 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %arrayidx124 = getelementptr inbounds float, float* %99, i64 %idxprom123
  %100 = load float, float* %arrayidx124, align 4
  %101 = load float*, float** %previousw, align 8
  %arrayidx125 = getelementptr inbounds float, float* %101, i64 0
  store float %100, float* %arrayidx125, align 4
  %102 = load [128 x i32]*, [128 x i32]** %scoremtx.addr, align 8
  %103 = load float*, float** %currentw, align 8
  %104 = load i8**, i8*** %seq1.addr, align 8
  %105 = load i8**, i8*** %seq2.addr, align 8
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %lgth2, align 4
  call void @match_calc_mtx([128 x i32]* %102, float* %103, i8** %104, i8** %105, i32 %106, i32 %107)
  %108 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %108 to i64
  %109 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %arrayidx127 = getelementptr inbounds float, float* %109, i64 %idxprom126
  %110 = load float, float* %arrayidx127, align 4
  %111 = load float*, float** %currentw, align 8
  %arrayidx128 = getelementptr inbounds float, float* %111, i64 0
  store float %110, float* %arrayidx128, align 4
  %112 = load float*, float** %previousw, align 8
  %arrayidx129 = getelementptr inbounds float, float* %112, i64 0
  %113 = load float, float* %arrayidx129, align 4
  store float %113, float* @G__align11_noalign.mi, align 4
  %114 = load float*, float** @G__align11_noalign.m, align 8
  %add.ptr = getelementptr inbounds float, float* %114, i64 1
  store float* %add.ptr, float** %mjpt, align 8
  %115 = load float*, float** %previousw, align 8
  store float* %115, float** %prept, align 8
  %116 = load float*, float** %currentw, align 8
  %add.ptr130 = getelementptr inbounds float, float* %116, i64 1
  store float* %add.ptr130, float** %curpt, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.161, %for.body.121
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %lgth2, align 4
  %add132 = add nsw i32 %118, 1
  %cmp133 = icmp slt i32 %117, %add132
  br i1 %cmp133, label %for.body.135, label %for.end.163

for.body.135:                                     ; preds = %for.cond.131
  %119 = load float*, float** %prept, align 8
  %120 = load float, float* %119, align 4
  store float %120, float* %wm, align 4
  %121 = load float, float* @G__align11_noalign.mi, align 4
  %122 = load float, float* %fpenalty, align 4
  %add136 = fadd float %121, %122
  store float %add136, float* %g, align 4
  %123 = load float, float* %wm, align 4
  %cmp137 = fcmp ogt float %add136, %123
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.body.135
  %124 = load float, float* %g, align 4
  store float %124, float* %wm, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %for.body.135
  %125 = load float*, float** %prept, align 8
  %126 = load float, float* %125, align 4
  store float %126, float* %g, align 4
  %127 = load float, float* @G__align11_noalign.mi, align 4
  %cmp141 = fcmp oge float %126, %127
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  %128 = load float, float* %g, align 4
  store float %128, float* @G__align11_noalign.mi, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.140
  %129 = load float, float* %fpenalty_ex, align 4
  %130 = load float, float* @G__align11_noalign.mi, align 4
  %add145 = fadd float %130, %129
  store float %add145, float* @G__align11_noalign.mi, align 4
  %131 = load float*, float** %mjpt, align 8
  %132 = load float, float* %131, align 4
  %133 = load float, float* %fpenalty, align 4
  %add146 = fadd float %132, %133
  store float %add146, float* %g, align 4
  %134 = load float, float* %wm, align 4
  %cmp147 = fcmp ogt float %add146, %134
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.144
  %135 = load float, float* %g, align 4
  store float %135, float* %wm, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.144
  %136 = load float*, float** %prept, align 8
  %137 = load float, float* %136, align 4
  store float %137, float* %g, align 4
  %138 = load float*, float** %mjpt, align 8
  %139 = load float, float* %138, align 4
  %cmp151 = fcmp oge float %137, %139
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.150
  %140 = load float, float* %g, align 4
  %141 = load float*, float** %mjpt, align 8
  store float %140, float* %141, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.end.150
  %142 = load float, float* %fpenalty_ex, align 4
  %143 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %143 to i64
  %144 = load float*, float** @G__align11_noalign.m, align 8
  %arrayidx156 = getelementptr inbounds float, float* %144, i64 %idxprom155
  %145 = load float, float* %arrayidx156, align 4
  %add157 = fadd float %145, %142
  store float %add157, float* %arrayidx156, align 4
  %146 = load float, float* %wm, align 4
  %147 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %147, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %148 = load float, float* %147, align 4
  %add158 = fadd float %148, %146
  store float %add158, float* %147, align 4
  %149 = load float*, float** %mjpt, align 8
  %incdec.ptr159 = getelementptr inbounds float, float* %149, i32 1
  store float* %incdec.ptr159, float** %mjpt, align 8
  %150 = load float*, float** %prept, align 8
  %incdec.ptr160 = getelementptr inbounds float, float* %150, i32 1
  store float* %incdec.ptr160, float** %prept, align 8
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.154
  %151 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %151, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.131

for.end.163:                                      ; preds = %for.cond.131
  %152 = load i32, i32* %lgth2, align 4
  %sub164 = sub nsw i32 %152, 1
  %idxprom165 = sext i32 %sub164 to i64
  %153 = load float*, float** %currentw, align 8
  %arrayidx166 = getelementptr inbounds float, float* %153, i64 %idxprom165
  %154 = load float, float* %arrayidx166, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %155 to i64
  %156 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %arrayidx168 = getelementptr inbounds float, float* %156, i64 %idxprom167
  store float %154, float* %arrayidx168, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.end.163
  %157 = load i32, i32* %i, align 4
  %inc170 = add nsw i32 %157, 1
  store i32 %inc170, i32* %i, align 4
  br label %for.cond.118

for.end.171:                                      ; preds = %for.cond.118
  %158 = load float, float* %wm, align 4
  ret float %158
}

; Function Attrs: nounwind uwtable
define internal void @match_calc_mtx([128 x i32]* %mtx, float* %match, i8** %s1, i8** %s2, i32 %i1, i32 %lgth2) #0 {
entry:
  %mtx.addr = alloca [128 x i32]*, align 8
  %match.addr = alloca float*, align 8
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %seq2 = alloca i8*, align 8
  %intptr = alloca i32*, align 8
  store [128 x i32]* %mtx, [128 x i32]** %mtx.addr, align 8
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
  %6 = load [128 x i32]*, [128 x i32]** %mtx.addr, align 8
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 %idxprom3
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx4, i32 0, i32 0
  store i32* %arraydecay, i32** %intptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %seq2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %seq2, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %10 = load i32*, i32** %intptr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %conv8 = sitofp i32 %11 to float
  %12 = load float*, float** %match.addr, align 8
  %incdec.ptr9 = getelementptr inbounds float, float* %12, i32 1
  store float* %incdec.ptr9, float** %match.addr, align 8
  store float %conv8, float* %12, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

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
