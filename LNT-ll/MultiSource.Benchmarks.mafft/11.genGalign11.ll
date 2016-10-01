; ModuleID = './MultiSource.Benchmarks.mafft/11.genGalign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@penalty = external global i32, align 4
@penalty_OP = external global i32, align 4
@penalty_ex = external global i32, align 4
@genG__align11.mi = internal global float 0.000000e+00, align 4
@genG__align11.m = internal global float* null, align 8
@genG__align11.Mi = internal global float 0.000000e+00, align 4
@genG__align11.largeM = internal global float* null, align 8
@genG__align11.ijpi = internal global i32** null, align 8
@genG__align11.ijpj = internal global i32** null, align 8
@genG__align11.mpi = internal global i32 0, align 4
@genG__align11.mp = internal global i32* null, align 8
@genG__align11.Mpi = internal global i32 0, align 4
@genG__align11.Mp = internal global i32* null, align 8
@genG__align11.w1 = internal global float* null, align 8
@genG__align11.w2 = internal global float* null, align 8
@genG__align11.match = internal global float* null, align 8
@genG__align11.initverticalw = internal global float* null, align 8
@genG__align11.lastverticalw = internal global float* null, align 8
@genG__align11.mseq1 = internal global i8** null, align 8
@genG__align11.mseq2 = internal global i8** null, align 8
@genG__align11.mseq = internal global i8** null, align 8
@genG__align11.cpmx1 = internal global float** null, align 8
@genG__align11.cpmx2 = internal global float** null, align 8
@genG__align11.intwork = internal global i32** null, align 8
@genG__align11.floatwork = internal global float** null, align 8
@genG__align11.orlgth1 = internal global i32 0, align 4
@genG__align11.orlgth2 = internal global i32 0, align 4
@njob = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"WARNING (g11): lgth1=%d, lgth2=%d\0A\00", align 1
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@commonJP = external global i32**, align 8
@outgap = external global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@genGtracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @genG__align11(i8** %seq1, i8** %seq2, i32 %alloclen) #0 {
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
  %fpenalty_OP = alloca float, align 4
  %fpenalty_ex = alloca float, align 4
  %wtmp = alloca float*, align 8
  %ijpipt = alloca i32*, align 8
  %ijpjpt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %Mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %Mpjpt = alloca i32*, align 8
  %tbk = alloca float, align 4
  %tbki = alloca i32, align 4
  %tbkj = alloca i32, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1101 = alloca i32, align 4
  %ll2102 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @penalty_OP, align 4
  %conv1 = sitofp i32 %1 to float
  store float %conv1, float* %fpenalty_OP, align 4
  %2 = load i32, i32* @penalty_ex, align 4
  %conv2 = sitofp i32 %2 to float
  store float %conv2, float* %fpenalty_ex, align 4
  store float 0.000000e+00, float* %wm, align 4
  %3 = load i32, i32* @genG__align11.orlgth1, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %4, i32 0)
  store i8** %call, i8*** @genG__align11.mseq1, align 8
  %5 = load i32, i32* @njob, align 4
  %call4 = call i8** @AllocateCharMtx(i32 %5, i32 0)
  store i8** %call4, i8*** @genG__align11.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8
  %call5 = call i64 @strlen(i8* %7) #5
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %lgth1, align 4
  %8 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %9) #5
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %lgth2, align 4
  %10 = load i32, i32* %lgth1, align 4
  %cmp10 = icmp sle i32 %10, 0
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %lgth2, align 4
  %cmp12 = icmp sle i32 %11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %lgth1, align 4
  %14 = load i32, i32* %lgth2, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %lor.lhs.false
  %15 = load i32, i32* %lgth1, align 4
  %16 = load i32, i32* @genG__align11.orlgth1, align 4
  %cmp17 = icmp sgt i32 %15, %16
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.16
  %17 = load i32, i32* %lgth2, align 4
  %18 = load i32, i32* @genG__align11.orlgth2, align 4
  %cmp20 = icmp sgt i32 %17, %18
  br i1 %cmp20, label %if.then.22, label %if.end.90

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.16
  %19 = load i32, i32* @genG__align11.orlgth1, align 4
  %cmp23 = icmp sgt i32 %19, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.22
  %20 = load i32, i32* @genG__align11.orlgth2, align 4
  %cmp25 = icmp sgt i32 %20, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %21 = load float*, float** @genG__align11.w1, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @genG__align11.w2, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @genG__align11.match, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @genG__align11.initverticalw, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load float*, float** @genG__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* %25)
  %26 = load float*, float** @genG__align11.m, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load i32*, i32** @genG__align11.mp, align 8
  call void @FreeIntVec(i32* %27)
  %28 = load float*, float** @genG__align11.largeM, align 8
  call void @FreeFloatVec(float* %28)
  %29 = load i32*, i32** @genG__align11.Mp, align 8
  call void @FreeIntVec(i32* %29)
  %30 = load i8**, i8*** @genG__align11.mseq, align 8
  call void @FreeCharMtx(i8** %30)
  %31 = load float**, float*** @genG__align11.cpmx1, align 8
  call void @FreeFloatMtx(float** %31)
  %32 = load float**, float*** @genG__align11.cpmx2, align 8
  call void @FreeFloatMtx(float** %32)
  %33 = load float**, float*** @genG__align11.floatwork, align 8
  call void @FreeFloatMtx(float** %33)
  %34 = load i32**, i32*** @genG__align11.intwork, align 8
  call void @FreeIntMtx(i32** %34)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.then.22
  %35 = load i32, i32* %lgth1, align 4
  %conv29 = sitofp i32 %35 to double
  %mul = fmul double 1.300000e+00, %conv29
  %conv30 = fptosi double %mul to i32
  %36 = load i32, i32* @genG__align11.orlgth1, align 4
  %cmp31 = icmp sgt i32 %conv30, %36
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %37 = load i32, i32* %lgth1, align 4
  %conv33 = sitofp i32 %37 to double
  %mul34 = fmul double 1.300000e+00, %conv33
  %conv35 = fptosi double %mul34 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %38 = load i32, i32* @genG__align11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv35, %cond.true ], [ %38, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %39 = load i32, i32* %lgth2, align 4
  %conv36 = sitofp i32 %39 to double
  %mul37 = fmul double 1.300000e+00, %conv36
  %conv38 = fptosi double %mul37 to i32
  %40 = load i32, i32* @genG__align11.orlgth2, align 4
  %cmp39 = icmp sgt i32 %conv38, %40
  br i1 %cmp39, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %cond.end
  %41 = load i32, i32* %lgth2, align 4
  %conv42 = sitofp i32 %41 to double
  %mul43 = fmul double 1.300000e+00, %conv42
  %conv44 = fptosi double %mul43 to i32
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end
  %42 = load i32, i32* @genG__align11.orlgth2, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.41
  %cond47 = phi i32 [ %conv44, %cond.true.41 ], [ %42, %cond.false.45 ]
  %add48 = add nsw i32 %cond47, 100
  store i32 %add48, i32* %ll2, align 4
  %43 = load i32, i32* %ll2, align 4
  %add49 = add nsw i32 %43, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @genG__align11.w1, align 8
  %44 = load i32, i32* %ll2, align 4
  %add51 = add nsw i32 %44, 2
  %call52 = call float* @AllocateFloatVec(i32 %add51)
  store float* %call52, float** @genG__align11.w2, align 8
  %45 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %45, 2
  %call54 = call float* @AllocateFloatVec(i32 %add53)
  store float* %call54, float** @genG__align11.match, align 8
  %46 = load i32, i32* %ll1, align 4
  %add55 = add nsw i32 %46, 2
  %call56 = call float* @AllocateFloatVec(i32 %add55)
  store float* %call56, float** @genG__align11.initverticalw, align 8
  %47 = load i32, i32* %ll1, align 4
  %add57 = add nsw i32 %47, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @genG__align11.lastverticalw, align 8
  %48 = load i32, i32* %ll2, align 4
  %add59 = add nsw i32 %48, 2
  %call60 = call float* @AllocateFloatVec(i32 %add59)
  store float* %call60, float** @genG__align11.m, align 8
  %49 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %49, 2
  %call62 = call i32* @AllocateIntVec(i32 %add61)
  store i32* %call62, i32** @genG__align11.mp, align 8
  %50 = load i32, i32* %ll2, align 4
  %add63 = add nsw i32 %50, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @genG__align11.largeM, align 8
  %51 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %51, 2
  %call66 = call i32* @AllocateIntVec(i32 %add65)
  store i32* %call66, i32** @genG__align11.Mp, align 8
  %52 = load i32, i32* @njob, align 4
  %53 = load i32, i32* %ll1, align 4
  %54 = load i32, i32* %ll2, align 4
  %add67 = add nsw i32 %53, %54
  %call68 = call i8** @AllocateCharMtx(i32 %52, i32 %add67)
  store i8** %call68, i8*** @genG__align11.mseq, align 8
  %55 = load i32, i32* %ll1, align 4
  %add69 = add nsw i32 %55, 2
  %call70 = call float** @AllocateFloatMtx(i32 26, i32 %add69)
  store float** %call70, float*** @genG__align11.cpmx1, align 8
  %56 = load i32, i32* %ll2, align 4
  %add71 = add nsw i32 %56, 2
  %call72 = call float** @AllocateFloatMtx(i32 26, i32 %add71)
  store float** %call72, float*** @genG__align11.cpmx2, align 8
  %57 = load i32, i32* %ll1, align 4
  %58 = load i32, i32* %ll2, align 4
  %cmp73 = icmp sgt i32 %57, %58
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.46
  %59 = load i32, i32* %ll1, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end.46
  %60 = load i32, i32* %ll2, align 4
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.75
  %cond78 = phi i32 [ %59, %cond.true.75 ], [ %60, %cond.false.76 ]
  %add79 = add nsw i32 %cond78, 2
  %call80 = call float** @AllocateFloatMtx(i32 26, i32 %add79)
  store float** %call80, float*** @genG__align11.floatwork, align 8
  %61 = load i32, i32* %ll1, align 4
  %62 = load i32, i32* %ll2, align 4
  %cmp81 = icmp sgt i32 %61, %62
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end.77
  %63 = load i32, i32* %ll1, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.77
  %64 = load i32, i32* %ll2, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %63, %cond.true.83 ], [ %64, %cond.false.84 ]
  %add87 = add nsw i32 %cond86, 2
  %call88 = call i32** @AllocateIntMtx(i32 26, i32 %add87)
  store i32** %call88, i32*** @genG__align11.intwork, align 8
  %65 = load i32, i32* %ll1, align 4
  %sub = sub nsw i32 %65, 100
  store i32 %sub, i32* @genG__align11.orlgth1, align 4
  %66 = load i32, i32* %ll2, align 4
  %sub89 = sub nsw i32 %66, 100
  store i32 %sub89, i32* @genG__align11.orlgth2, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.85, %lor.lhs.false.19
  %67 = load i8**, i8*** @genG__align11.mseq, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %67, i64 0
  %68 = load i8*, i8** %arrayidx91, align 8
  %69 = load i8**, i8*** @genG__align11.mseq1, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %68, i8** %arrayidx92, align 8
  %70 = load i8**, i8*** @genG__align11.mseq, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %70, i64 1
  %71 = load i8*, i8** %arrayidx93, align 8
  %72 = load i8**, i8*** @genG__align11.mseq2, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %71, i8** %arrayidx94, align 8
  %73 = load i32, i32* @genG__align11.orlgth1, align 4
  %74 = load i32, i32* @commonAlloc1, align 4
  %cmp95 = icmp sgt i32 %73, %74
  br i1 %cmp95, label %if.then.100, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.end.90
  %75 = load i32, i32* @genG__align11.orlgth2, align 4
  %76 = load i32, i32* @commonAlloc2, align 4
  %cmp98 = icmp sgt i32 %75, %76
  br i1 %cmp98, label %if.then.100, label %if.end.125

if.then.100:                                      ; preds = %lor.lhs.false.97, %if.end.90
  %77 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %land.lhs.true.103, label %if.end.106

land.lhs.true.103:                                ; preds = %if.then.100
  %78 = load i32, i32* @commonAlloc2, align 4
  %tobool104 = icmp ne i32 %78, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.103
  %79 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %79)
  %80 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** %80)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %land.lhs.true.103, %if.then.100
  %81 = load i32, i32* @genG__align11.orlgth1, align 4
  %82 = load i32, i32* @commonAlloc1, align 4
  %cmp107 = icmp sgt i32 %81, %82
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %if.end.106
  %83 = load i32, i32* @genG__align11.orlgth1, align 4
  br label %cond.end.111

cond.false.110:                                   ; preds = %if.end.106
  %84 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi i32 [ %83, %cond.true.109 ], [ %84, %cond.false.110 ]
  store i32 %cond112, i32* %ll1101, align 4
  %85 = load i32, i32* @genG__align11.orlgth2, align 4
  %86 = load i32, i32* @commonAlloc2, align 4
  %cmp113 = icmp sgt i32 %85, %86
  br i1 %cmp113, label %cond.true.115, label %cond.false.116

cond.true.115:                                    ; preds = %cond.end.111
  %87 = load i32, i32* @genG__align11.orlgth2, align 4
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.111
  %88 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.115
  %cond118 = phi i32 [ %87, %cond.true.115 ], [ %88, %cond.false.116 ]
  store i32 %cond118, i32* %ll2102, align 4
  %89 = load i32, i32* %ll1101, align 4
  %add119 = add nsw i32 %89, 10
  %90 = load i32, i32* %ll2102, align 4
  %add120 = add nsw i32 %90, 10
  %call121 = call i32** @AllocateIntMtx(i32 %add119, i32 %add120)
  store i32** %call121, i32*** @commonIP, align 8
  %91 = load i32, i32* %ll1101, align 4
  %add122 = add nsw i32 %91, 10
  %92 = load i32, i32* %ll2102, align 4
  %add123 = add nsw i32 %92, 10
  %call124 = call i32** @AllocateIntMtx(i32 %add122, i32 %add123)
  store i32** %call124, i32*** @commonJP, align 8
  %93 = load i32, i32* %ll1101, align 4
  store i32 %93, i32* @commonAlloc1, align 4
  %94 = load i32, i32* %ll2102, align 4
  store i32 %94, i32* @commonAlloc2, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.117, %lor.lhs.false.97
  %95 = load i32**, i32*** @commonIP, align 8
  store i32** %95, i32*** @genG__align11.ijpi, align 8
  %96 = load i32**, i32*** @commonJP, align 8
  store i32** %96, i32*** @genG__align11.ijpj, align 8
  %97 = load float*, float** @genG__align11.w1, align 8
  store float* %97, float** %currentw, align 8
  %98 = load float*, float** @genG__align11.w2, align 8
  store float* %98, float** %previousw, align 8
  %99 = load float*, float** @genG__align11.initverticalw, align 8
  %100 = load i8**, i8*** %seq2.addr, align 8
  %101 = load i8**, i8*** %seq1.addr, align 8
  %102 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %99, i8** %100, i8** %101, i32 0, i32 %102)
  %103 = load float*, float** %currentw, align 8
  %104 = load i8**, i8*** %seq1.addr, align 8
  %105 = load i8**, i8*** %seq2.addr, align 8
  %106 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %103, i8** %104, i8** %105, i32 0, i32 %106)
  %107 = load i32, i32* @outgap, align 4
  %cmp126 = icmp eq i32 %107, 1
  br i1 %cmp126, label %if.then.128, label %if.end.145

if.then.128:                                      ; preds = %if.end.125
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.128
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %lgth1, align 4
  %add129 = add nsw i32 %109, 1
  %cmp130 = icmp slt i32 %108, %add129
  br i1 %cmp130, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load float, float* %fpenalty, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom = sext i32 %111 to i64
  %112 = load float*, float** @genG__align11.initverticalw, align 8
  %arrayidx132 = getelementptr inbounds float, float* %112, i64 %idxprom
  %113 = load float, float* %arrayidx132, align 4
  %add133 = fadd float %113, %110
  store float %add133, float* %arrayidx132, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %i, align 4
  %inc = add nsw i32 %114, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.142, %for.end
  %115 = load i32, i32* %j, align 4
  %116 = load i32, i32* %lgth2, align 4
  %add135 = add nsw i32 %116, 1
  %cmp136 = icmp slt i32 %115, %add135
  br i1 %cmp136, label %for.body.138, label %for.end.144

for.body.138:                                     ; preds = %for.cond.134
  %117 = load float, float* %fpenalty, align 4
  %118 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %118 to i64
  %119 = load float*, float** %currentw, align 8
  %arrayidx140 = getelementptr inbounds float, float* %119, i64 %idxprom139
  %120 = load float, float* %arrayidx140, align 4
  %add141 = fadd float %120, %117
  store float %add141, float* %arrayidx140, align 4
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.138
  %121 = load i32, i32* %j, align 4
  %inc143 = add nsw i32 %121, 1
  store i32 %inc143, i32* %j, align 4
  br label %for.cond.134

for.end.144:                                      ; preds = %for.cond.134
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.144, %if.end.125
  store i32 1, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.165, %if.end.145
  %122 = load i32, i32* %j, align 4
  %123 = load i32, i32* %lgth2, align 4
  %add147 = add nsw i32 %123, 1
  %cmp148 = icmp slt i32 %122, %add147
  br i1 %cmp148, label %for.body.150, label %for.end.167

for.body.150:                                     ; preds = %for.cond.146
  %124 = load i32, i32* %j, align 4
  %sub151 = sub nsw i32 %124, 1
  %idxprom152 = sext i32 %sub151 to i64
  %125 = load float*, float** %currentw, align 8
  %arrayidx153 = getelementptr inbounds float, float* %125, i64 %idxprom152
  %126 = load float, float* %arrayidx153, align 4
  %127 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %127 to i64
  %128 = load float*, float** @genG__align11.m, align 8
  %arrayidx155 = getelementptr inbounds float, float* %128, i64 %idxprom154
  store float %126, float* %arrayidx155, align 4
  %129 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %129 to i64
  %130 = load i32*, i32** @genG__align11.mp, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %130, i64 %idxprom156
  store i32 0, i32* %arrayidx157, align 4
  %131 = load i32, i32* %j, align 4
  %sub158 = sub nsw i32 %131, 1
  %idxprom159 = sext i32 %sub158 to i64
  %132 = load float*, float** %currentw, align 8
  %arrayidx160 = getelementptr inbounds float, float* %132, i64 %idxprom159
  %133 = load float, float* %arrayidx160, align 4
  %134 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %134 to i64
  %135 = load float*, float** @genG__align11.largeM, align 8
  %arrayidx162 = getelementptr inbounds float, float* %135, i64 %idxprom161
  store float %133, float* %arrayidx162, align 4
  %136 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %136 to i64
  %137 = load i32*, i32** @genG__align11.Mp, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %137, i64 %idxprom163
  store i32 0, i32* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.150
  %138 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %138, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.146

for.end.167:                                      ; preds = %for.cond.146
  %139 = load i32, i32* %lgth2, align 4
  %cmp168 = icmp eq i32 %139, 0
  br i1 %cmp168, label %if.then.170, label %if.else

if.then.170:                                      ; preds = %for.end.167
  %140 = load float*, float** @genG__align11.lastverticalw, align 8
  %arrayidx171 = getelementptr inbounds float, float* %140, i64 0
  store float 0.000000e+00, float* %arrayidx171, align 4
  br label %if.end.176

if.else:                                          ; preds = %for.end.167
  %141 = load i32, i32* %lgth2, align 4
  %sub172 = sub nsw i32 %141, 1
  %idxprom173 = sext i32 %sub172 to i64
  %142 = load float*, float** %currentw, align 8
  %arrayidx174 = getelementptr inbounds float, float* %142, i64 %idxprom173
  %143 = load float, float* %arrayidx174, align 4
  %144 = load float*, float** @genG__align11.lastverticalw, align 8
  %arrayidx175 = getelementptr inbounds float, float* %144, i64 0
  store float %143, float* %arrayidx175, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else, %if.then.170
  %145 = load i32, i32* @outgap, align 4
  %tobool177 = icmp ne i32 %145, 0
  br i1 %tobool177, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %if.end.176
  %146 = load i32, i32* %lgth1, align 4
  %add179 = add nsw i32 %146, 1
  store i32 %add179, i32* %lasti, align 4
  br label %if.end.181

if.else.180:                                      ; preds = %if.end.176
  %147 = load i32, i32* %lgth1, align 4
  store i32 %147, i32* %lasti, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.180, %if.then.178
  store i32 1, i32* %i, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.278, %if.end.181
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %lasti, align 4
  %cmp183 = icmp slt i32 %148, %149
  br i1 %cmp183, label %for.body.185, label %for.end.280

for.body.185:                                     ; preds = %for.cond.182
  %150 = load float*, float** %previousw, align 8
  store float* %150, float** %wtmp, align 8
  %151 = load float*, float** %currentw, align 8
  store float* %151, float** %previousw, align 8
  %152 = load float*, float** %wtmp, align 8
  store float* %152, float** %currentw, align 8
  %153 = load i32, i32* %i, align 4
  %sub186 = sub nsw i32 %153, 1
  %idxprom187 = sext i32 %sub186 to i64
  %154 = load float*, float** @genG__align11.initverticalw, align 8
  %arrayidx188 = getelementptr inbounds float, float* %154, i64 %idxprom187
  %155 = load float, float* %arrayidx188, align 4
  %156 = load float*, float** %previousw, align 8
  %arrayidx189 = getelementptr inbounds float, float* %156, i64 0
  store float %155, float* %arrayidx189, align 4
  %157 = load float*, float** %currentw, align 8
  %158 = load i8**, i8*** %seq1.addr, align 8
  %159 = load i8**, i8*** %seq2.addr, align 8
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %157, i8** %158, i8** %159, i32 %160, i32 %161)
  %162 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %162 to i64
  %163 = load float*, float** @genG__align11.initverticalw, align 8
  %arrayidx191 = getelementptr inbounds float, float* %163, i64 %idxprom190
  %164 = load float, float* %arrayidx191, align 4
  %165 = load float*, float** %currentw, align 8
  %arrayidx192 = getelementptr inbounds float, float* %165, i64 0
  store float %164, float* %arrayidx192, align 4
  %166 = load float*, float** %previousw, align 8
  %arrayidx193 = getelementptr inbounds float, float* %166, i64 0
  %167 = load float, float* %arrayidx193, align 4
  store float %167, float* @genG__align11.mi, align 4
  store i32 0, i32* @genG__align11.mpi, align 4
  %168 = load float*, float** %previousw, align 8
  %arrayidx194 = getelementptr inbounds float, float* %168, i64 0
  %169 = load float, float* %arrayidx194, align 4
  store float %169, float* @genG__align11.Mi, align 4
  store i32 0, i32* @genG__align11.Mpi, align 4
  %170 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %170 to i64
  %171 = load i32**, i32*** @genG__align11.ijpi, align 8
  %arrayidx196 = getelementptr inbounds i32*, i32** %171, i64 %idxprom195
  %172 = load i32*, i32** %arrayidx196, align 8
  %add.ptr = getelementptr inbounds i32, i32* %172, i64 1
  store i32* %add.ptr, i32** %ijpipt, align 8
  %173 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %173 to i64
  %174 = load i32**, i32*** @genG__align11.ijpj, align 8
  %arrayidx198 = getelementptr inbounds i32*, i32** %174, i64 %idxprom197
  %175 = load i32*, i32** %arrayidx198, align 8
  %add.ptr199 = getelementptr inbounds i32, i32* %175, i64 1
  store i32* %add.ptr199, i32** %ijpjpt, align 8
  %176 = load float*, float** @genG__align11.m, align 8
  %add.ptr200 = getelementptr inbounds float, float* %176, i64 1
  store float* %add.ptr200, float** %mjpt, align 8
  %177 = load float*, float** @genG__align11.largeM, align 8
  %add.ptr201 = getelementptr inbounds float, float* %177, i64 1
  store float* %add.ptr201, float** %Mjpt, align 8
  %178 = load float*, float** %previousw, align 8
  store float* %178, float** %prept, align 8
  %179 = load float*, float** %currentw, align 8
  %add.ptr202 = getelementptr inbounds float, float* %179, i64 1
  store float* %add.ptr202, float** %curpt, align 8
  %180 = load i32*, i32** @genG__align11.mp, align 8
  %add.ptr203 = getelementptr inbounds i32, i32* %180, i64 1
  store i32* %add.ptr203, i32** %mpjpt, align 8
  %181 = load i32*, i32** @genG__align11.Mp, align 8
  %add.ptr204 = getelementptr inbounds i32, i32* %181, i64 1
  store i32* %add.ptr204, i32** %Mpjpt, align 8
  store float -1.000000e+07, float* %tbk, align 4
  store i32 0, i32* %tbki, align 4
  store i32 0, i32* %tbkj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.270, %for.body.185
  %182 = load i32, i32* %j, align 4
  %183 = load i32, i32* %lgth2, align 4
  %add206 = add nsw i32 %183, 1
  %cmp207 = icmp slt i32 %182, %add206
  br i1 %cmp207, label %for.body.209, label %for.end.272

for.body.209:                                     ; preds = %for.cond.205
  %184 = load float*, float** %prept, align 8
  %185 = load float, float* %184, align 4
  store float %185, float* %wm, align 4
  %186 = load i32, i32* %i, align 4
  %sub210 = sub nsw i32 %186, 1
  %187 = load i32*, i32** %ijpipt, align 8
  store i32 %sub210, i32* %187, align 4
  %188 = load i32, i32* %j, align 4
  %sub211 = sub nsw i32 %188, 1
  %189 = load i32*, i32** %ijpjpt, align 8
  store i32 %sub211, i32* %189, align 4
  %190 = load float, float* @genG__align11.mi, align 4
  %191 = load float, float* %fpenalty, align 4
  %add212 = fadd float %190, %191
  store float %add212, float* %g, align 4
  %192 = load float, float* %wm, align 4
  %cmp213 = fcmp ogt float %add212, %192
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %for.body.209
  %193 = load float, float* %g, align 4
  store float %193, float* %wm, align 4
  %194 = load i32, i32* @genG__align11.mpi, align 4
  %195 = load i32*, i32** %ijpjpt, align 8
  store i32 %194, i32* %195, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %for.body.209
  %196 = load float*, float** %prept, align 8
  %197 = load float, float* %196, align 4
  store float %197, float* %g, align 4
  %198 = load float, float* @genG__align11.mi, align 4
  %cmp217 = fcmp oge float %197, %198
  br i1 %cmp217, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.216
  %199 = load float, float* %g, align 4
  store float %199, float* @genG__align11.mi, align 4
  %200 = load i32, i32* %j, align 4
  %sub220 = sub nsw i32 %200, 1
  store i32 %sub220, i32* @genG__align11.mpi, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.216
  %201 = load float, float* %fpenalty_ex, align 4
  %202 = load float, float* @genG__align11.mi, align 4
  %add222 = fadd float %202, %201
  store float %add222, float* @genG__align11.mi, align 4
  %203 = load float*, float** %mjpt, align 8
  %204 = load float, float* %203, align 4
  %205 = load float, float* %fpenalty, align 4
  %add223 = fadd float %204, %205
  store float %add223, float* %g, align 4
  %206 = load float, float* %wm, align 4
  %cmp224 = fcmp ogt float %add223, %206
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.end.221
  %207 = load float, float* %g, align 4
  store float %207, float* %wm, align 4
  %208 = load i32*, i32** %mpjpt, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %ijpipt, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i32, i32* %j, align 4
  %sub227 = sub nsw i32 %211, 1
  %212 = load i32*, i32** %ijpjpt, align 8
  store i32 %sub227, i32* %212, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.end.221
  %213 = load float*, float** %prept, align 8
  %214 = load float, float* %213, align 4
  store float %214, float* %g, align 4
  %215 = load float*, float** %mjpt, align 8
  %216 = load float, float* %215, align 4
  %cmp229 = fcmp oge float %214, %216
  br i1 %cmp229, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %if.end.228
  %217 = load float, float* %g, align 4
  %218 = load float*, float** %mjpt, align 8
  store float %217, float* %218, align 4
  %219 = load i32, i32* %i, align 4
  %sub232 = sub nsw i32 %219, 1
  %220 = load i32*, i32** %mpjpt, align 8
  store i32 %sub232, i32* %220, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %if.end.228
  %221 = load float, float* %fpenalty_ex, align 4
  %222 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %222 to i64
  %223 = load float*, float** @genG__align11.m, align 8
  %arrayidx235 = getelementptr inbounds float, float* %223, i64 %idxprom234
  %224 = load float, float* %arrayidx235, align 4
  %add236 = fadd float %224, %221
  store float %add236, float* %arrayidx235, align 4
  %225 = load float, float* %tbk, align 4
  %226 = load float, float* %fpenalty_OP, align 4
  %add237 = fadd float %225, %226
  store float %add237, float* %g, align 4
  %227 = load float, float* %g, align 4
  %228 = load float, float* %wm, align 4
  %cmp238 = fcmp ogt float %227, %228
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.233
  %229 = load float, float* %g, align 4
  store float %229, float* %wm, align 4
  %230 = load i32, i32* %tbki, align 4
  %231 = load i32*, i32** %ijpipt, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* %tbkj, align 4
  %233 = load i32*, i32** %ijpjpt, align 8
  store i32 %232, i32* %233, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.end.233
  %234 = load float, float* @genG__align11.Mi, align 4
  %235 = load float, float* %tbk, align 4
  %cmp242 = fcmp ogt float %234, %235
  br i1 %cmp242, label %if.then.244, label %if.end.246

if.then.244:                                      ; preds = %if.end.241
  %236 = load float, float* @genG__align11.Mi, align 4
  store float %236, float* %tbk, align 4
  %237 = load i32, i32* %i, align 4
  %sub245 = sub nsw i32 %237, 1
  store i32 %sub245, i32* %tbki, align 4
  %238 = load i32, i32* @genG__align11.Mpi, align 4
  store i32 %238, i32* %tbkj, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.244, %if.end.241
  %239 = load float*, float** %Mjpt, align 8
  %240 = load float, float* %239, align 4
  %241 = load float, float* %tbk, align 4
  %cmp247 = fcmp ogt float %240, %241
  br i1 %cmp247, label %if.then.249, label %if.end.251

if.then.249:                                      ; preds = %if.end.246
  %242 = load float*, float** %Mjpt, align 8
  %243 = load float, float* %242, align 4
  store float %243, float* %tbk, align 4
  %244 = load i32*, i32** %Mpjpt, align 8
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %tbki, align 4
  %246 = load i32, i32* %j, align 4
  %sub250 = sub nsw i32 %246, 1
  store i32 %sub250, i32* %tbkj, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.249, %if.end.246
  %247 = load float*, float** %prept, align 8
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %Mjpt, align 8
  %250 = load float, float* %249, align 4
  %cmp252 = fcmp ogt float %248, %250
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %if.end.251
  %251 = load float*, float** %prept, align 8
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %Mjpt, align 8
  store float %252, float* %253, align 4
  %254 = load i32, i32* %i, align 4
  %sub255 = sub nsw i32 %254, 1
  %255 = load i32*, i32** %Mpjpt, align 8
  store i32 %sub255, i32* %255, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %if.end.251
  %256 = load float*, float** %prept, align 8
  %257 = load float, float* %256, align 4
  %258 = load float, float* @genG__align11.Mi, align 4
  %cmp257 = fcmp ogt float %257, %258
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.end.256
  %259 = load float*, float** %prept, align 8
  %260 = load float, float* %259, align 4
  store float %260, float* @genG__align11.Mi, align 4
  %261 = load i32, i32* %j, align 4
  %sub260 = sub nsw i32 %261, 1
  store i32 %sub260, i32* @genG__align11.Mpi, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.end.256
  %262 = load float, float* %wm, align 4
  %263 = load float*, float** %curpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %263, i32 1
  store float* %incdec.ptr, float** %curpt, align 8
  %264 = load float, float* %263, align 4
  %add262 = fadd float %264, %262
  store float %add262, float* %263, align 4
  %265 = load i32*, i32** %ijpipt, align 8
  %incdec.ptr263 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %incdec.ptr263, i32** %ijpipt, align 8
  %266 = load i32*, i32** %ijpjpt, align 8
  %incdec.ptr264 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %incdec.ptr264, i32** %ijpjpt, align 8
  %267 = load float*, float** %mjpt, align 8
  %incdec.ptr265 = getelementptr inbounds float, float* %267, i32 1
  store float* %incdec.ptr265, float** %mjpt, align 8
  %268 = load float*, float** %Mjpt, align 8
  %incdec.ptr266 = getelementptr inbounds float, float* %268, i32 1
  store float* %incdec.ptr266, float** %Mjpt, align 8
  %269 = load float*, float** %prept, align 8
  %incdec.ptr267 = getelementptr inbounds float, float* %269, i32 1
  store float* %incdec.ptr267, float** %prept, align 8
  %270 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr268 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %incdec.ptr268, i32** %mpjpt, align 8
  %271 = load i32*, i32** %Mpjpt, align 8
  %incdec.ptr269 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %incdec.ptr269, i32** %Mpjpt, align 8
  br label %for.inc.270

for.inc.270:                                      ; preds = %if.end.261
  %272 = load i32, i32* %j, align 4
  %inc271 = add nsw i32 %272, 1
  store i32 %inc271, i32* %j, align 4
  br label %for.cond.205

for.end.272:                                      ; preds = %for.cond.205
  %273 = load i32, i32* %lgth2, align 4
  %sub273 = sub nsw i32 %273, 1
  %idxprom274 = sext i32 %sub273 to i64
  %274 = load float*, float** %currentw, align 8
  %arrayidx275 = getelementptr inbounds float, float* %274, i64 %idxprom274
  %275 = load float, float* %arrayidx275, align 4
  %276 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %276 to i64
  %277 = load float*, float** @genG__align11.lastverticalw, align 8
  %arrayidx277 = getelementptr inbounds float, float* %277, i64 %idxprom276
  store float %275, float* %arrayidx277, align 4
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.end.272
  %278 = load i32, i32* %i, align 4
  %inc279 = add nsw i32 %278, 1
  store i32 %inc279, i32* %i, align 4
  br label %for.cond.182

for.end.280:                                      ; preds = %for.cond.182
  %279 = load float*, float** %currentw, align 8
  %280 = load float*, float** @genG__align11.lastverticalw, align 8
  %281 = load i8**, i8*** %seq1.addr, align 8
  %282 = load i8**, i8*** %seq2.addr, align 8
  %283 = load i8**, i8*** @genG__align11.mseq1, align 8
  %284 = load i8**, i8*** @genG__align11.mseq2, align 8
  %285 = load float**, float*** @genG__align11.cpmx1, align 8
  %286 = load float**, float*** @genG__align11.cpmx2, align 8
  %287 = load i32**, i32*** @genG__align11.ijpi, align 8
  %288 = load i32**, i32*** @genG__align11.ijpj, align 8
  %call281 = call float @genGtracking(float* %279, float* %280, i8** %281, i8** %282, i8** %283, i8** %284, float** %285, float** %286, i32** %287, i32** %288)
  %289 = load i8**, i8*** @genG__align11.mseq1, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %289, i64 0
  %290 = load i8*, i8** %arrayidx282, align 8
  %call283 = call i64 @strlen(i8* %290) #5
  %conv284 = trunc i64 %call283 to i32
  store i32 %conv284, i32* %resultlen, align 4
  %291 = load i32, i32* %alloclen.addr, align 4
  %292 = load i32, i32* %resultlen, align 4
  %cmp285 = icmp slt i32 %291, %292
  br i1 %cmp285, label %if.then.290, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %for.end.280
  %293 = load i32, i32* %resultlen, align 4
  %cmp288 = icmp sgt i32 %293, 5000000
  br i1 %cmp288, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %lor.lhs.false.287, %for.end.280
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %295 = load i32, i32* %alloclen.addr, align 4
  %296 = load i32, i32* %resultlen, align 4
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %295, i32 %296, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.290, %lor.lhs.false.287
  %297 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx293 = getelementptr inbounds i8*, i8** %297, i64 0
  %298 = load i8*, i8** %arrayidx293, align 8
  %299 = load i8**, i8*** @genG__align11.mseq1, align 8
  %arrayidx294 = getelementptr inbounds i8*, i8** %299, i64 0
  %300 = load i8*, i8** %arrayidx294, align 8
  %call295 = call i8* @strcpy(i8* %298, i8* %300) #4
  %301 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx296 = getelementptr inbounds i8*, i8** %301, i64 0
  %302 = load i8*, i8** %arrayidx296, align 8
  %303 = load i8**, i8*** @genG__align11.mseq2, align 8
  %arrayidx297 = getelementptr inbounds i8*, i8** %303, i64 0
  %304 = load i8*, i8** %arrayidx297, align 8
  %call298 = call i8* @strcpy(i8* %302, i8* %304) #4
  %305 = load float, float* %wm, align 4
  ret float %305
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
define internal float @genGtracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijpi, i32** %ijpj) #0 {
entry:
  %lasthorizontalw.addr = alloca float*, align 8
  %lastverticalw.addr = alloca float*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ijpi.addr = alloca i32**, align 8
  %ijpj.addr = alloca i32**, align 8
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
  store i32** %ijpi, i32*** %ijpi.addr, align 8
  store i32** %ijpj, i32*** %ijpj.addr, align 8
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @genGtracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
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
  %idxprom = sext i32 %7 to i64
  %8 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %8, i64 %idxprom
  %9 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 -1, i32* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %11, i64 %idxprom7
  %12 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 -1, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.end
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %lgth2, align 4
  %add11 = add nsw i32 %15, 1
  %cmp12 = icmp slt i32 %14, %add11
  br i1 %cmp12, label %for.body.14, label %for.end.23

for.body.14:                                      ; preds = %for.cond.10
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %17, i64 0
  %18 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  store i32 -1, i32* %arrayidx17, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %20, i64 0
  %21 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 %idxprom18
  store i32 -1, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.14
  %22 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %23 = load i32, i32* %lgth1, align 4
  %24 = load i32, i32* %lgth2, align 4
  %add24 = add nsw i32 %23, %24
  %25 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx25, align 8
  %idx.ext = sext i32 %add24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx25, align 8
  %27 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx26, align 8
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %lgth1, align 4
  %30 = load i32, i32* %lgth2, align 4
  %add27 = add nsw i32 %29, %30
  %31 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx28, align 8
  %idx.ext29 = sext i32 %add27 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %32, i64 %idx.ext29
  store i8* %add.ptr30, i8** %arrayidx28, align 8
  %33 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx31, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %lgth1, align 4
  store i32 %35, i32* %iin, align 4
  %36 = load i32, i32* %lgth2, align 4
  store i32 %36, i32* %jin, align 4
  %37 = load i32, i32* %lgth1, align 4
  %38 = load i32, i32* %lgth2, align 4
  %add32 = add nsw i32 %37, %38
  %add33 = add nsw i32 %add32, 1
  store i32 %add33, i32* %limk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.85, %for.end.23
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %limk, align 4
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %for.body.37, label %for.end.87

for.body.37:                                      ; preds = %for.cond.34
  %41 = load i32, i32* %jin, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load i32, i32* %iin, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %43, i64 %idxprom39
  %44 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %44, i64 %idxprom38
  %45 = load i32, i32* %arrayidx41, align 4
  store i32 %45, i32* %ifi, align 4
  %46 = load i32, i32* %jin, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load i32, i32* %iin, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %48, i64 %idxprom43
  %49 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %49, i64 %idxprom42
  %50 = load i32, i32* %arrayidx45, align 4
  store i32 %50, i32* %jfi, align 4
  %51 = load i32, i32* %iin, align 4
  %52 = load i32, i32* %ifi, align 4
  %sub = sub nsw i32 %51, %52
  store i32 %sub, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.37
  %53 = load i32, i32* %l, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load i32, i32* %ifi, align 4
  %55 = load i32, i32* %l, align 4
  %add46 = add nsw i32 %54, %55
  %idxprom47 = sext i32 %add46 to i64
  %56 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %57, i64 %idxprom47
  %58 = load i8, i8* %arrayidx49, align 1
  %59 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx50, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx50, align 8
  store i8 %58, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %61 = load i8, i8* %arraydecay, align 1
  %62 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %62, i64 0
  %63 = load i8*, i8** %arrayidx51, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %incdec.ptr52, i8** %arrayidx51, align 8
  store i8 %61, i8* %incdec.ptr52, align 1
  %64 = load i32, i32* %k, align 4
  %inc53 = add nsw i32 %64, 1
  store i32 %inc53, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load i32, i32* %jin, align 4
  %66 = load i32, i32* %jfi, align 4
  %sub54 = sub nsw i32 %65, %66
  store i32 %sub54, i32* %l, align 4
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.58, %while.end
  %67 = load i32, i32* %l, align 4
  %dec56 = add nsw i32 %67, -1
  store i32 %dec56, i32* %l, align 4
  %tobool57 = icmp ne i32 %dec56, 0
  br i1 %tobool57, label %while.body.58, label %while.end.69

while.body.58:                                    ; preds = %while.cond.55
  %arraydecay59 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %68 = load i8, i8* %arraydecay59, align 1
  %69 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %69, i64 0
  %70 = load i8*, i8** %arrayidx60, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %incdec.ptr61, i8** %arrayidx60, align 8
  store i8 %68, i8* %incdec.ptr61, align 1
  %71 = load i32, i32* %jfi, align 4
  %72 = load i32, i32* %l, align 4
  %add62 = add nsw i32 %71, %72
  %idxprom63 = sext i32 %add62 to i64
  %73 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %74, i64 %idxprom63
  %75 = load i8, i8* %arrayidx65, align 1
  %76 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %76, i64 0
  %77 = load i8*, i8** %arrayidx66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %incdec.ptr67, i8** %arrayidx66, align 8
  store i8 %75, i8* %incdec.ptr67, align 1
  %78 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %78, 1
  store i32 %inc68, i32* %k, align 4
  br label %while.cond.55

while.end.69:                                     ; preds = %while.cond.55
  %79 = load i32, i32* %iin, align 4
  %cmp70 = icmp sle i32 %79, 0
  br i1 %cmp70, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.69
  %80 = load i32, i32* %jin, align 4
  %cmp72 = icmp sle i32 %80, 0
  br i1 %cmp72, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end.69
  br label %for.end.87

if.end:                                           ; preds = %lor.lhs.false
  %81 = load i32, i32* %ifi, align 4
  %idxprom74 = sext i32 %81 to i64
  %82 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %82, i64 0
  %83 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %83, i64 %idxprom74
  %84 = load i8, i8* %arrayidx76, align 1
  %85 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %85, i64 0
  %86 = load i8*, i8** %arrayidx77, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %incdec.ptr78, i8** %arrayidx77, align 8
  store i8 %84, i8* %incdec.ptr78, align 1
  %87 = load i32, i32* %jfi, align 4
  %idxprom79 = sext i32 %87 to i64
  %88 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %88, i64 0
  %89 = load i8*, i8** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %89, i64 %idxprom79
  %90 = load i8, i8* %arrayidx81, align 1
  %91 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %91, i64 0
  %92 = load i8*, i8** %arrayidx82, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %incdec.ptr83, i8** %arrayidx82, align 8
  store i8 %90, i8* %incdec.ptr83, align 1
  %93 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %93, 1
  store i32 %inc84, i32* %k, align 4
  %94 = load i32, i32* %ifi, align 4
  store i32 %94, i32* %iin, align 4
  %95 = load i32, i32* %jfi, align 4
  store i32 %95, i32* %jin, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end
  %96 = load i32, i32* %k, align 4
  %inc86 = add nsw i32 %96, 1
  store i32 %inc86, i32* %k, align 4
  br label %for.cond.34

for.end.87:                                       ; preds = %if.then, %for.cond.34
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
