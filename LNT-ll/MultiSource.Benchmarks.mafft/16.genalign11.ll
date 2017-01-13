; ModuleID = './MultiSource.Benchmarks.mafft/16.genalign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@genL__align11.mi = internal global float 0.000000e+00, align 4
@genL__align11.m = internal global float* null, align 8
@genL__align11.Mi = internal global float 0.000000e+00, align 4
@genL__align11.largeM = internal global float* null, align 8
@genL__align11.ijpi = internal global i32** null, align 8
@genL__align11.ijpj = internal global i32** null, align 8
@genL__align11.mpi = internal global i32 0, align 4
@genL__align11.mp = internal global i32* null, align 8
@genL__align11.Mpi = internal global i32 0, align 4
@genL__align11.Mp = internal global i32* null, align 8
@genL__align11.w1 = internal global float* null, align 8
@genL__align11.w2 = internal global float* null, align 8
@genL__align11.match = internal global float* null, align 8
@genL__align11.initverticalw = internal global float* null, align 8
@genL__align11.lastverticalw = internal global float* null, align 8
@genL__align11.mseq1 = internal global i8** null, align 8
@genL__align11.mseq2 = internal global i8** null, align 8
@genL__align11.mseq = internal global i8** null, align 8
@genL__align11.cpmx1 = internal global float** null, align 8
@genL__align11.cpmx2 = internal global float** null, align 8
@genL__align11.intwork = internal global i32** null, align 8
@genL__align11.floatwork = internal global float** null, align 8
@genL__align11.orlgth1 = internal global i32 0, align 4
@genL__align11.orlgth2 = internal global i32 0, align 4
@penalty = external global i32, align 4
@penalty_OP = external global i32, align 4
@penalty_ex = external global i32, align 4
@offset = external global i32, align 4
@njob = external global i32, align 4
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@commonJP = external global i32**, align 8
@localstop = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@gentracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @genL__align11(i8** %seq1, i8** %seq2, i32 %alloclen, i32* %off1pt, i32* %off2pt) #0 {
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
  %ijpipt = alloca i32*, align 8
  %ijpjpt = alloca i32*, align 8
  %mjpt = alloca float*, align 8
  %Mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %Mpjpt = alloca i32*, align 8
  %maxwm = alloca float, align 4
  %tbk = alloca float, align 4
  %tbki = alloca i32, align 4
  %tbkj = alloca i32, align 4
  %endali = alloca i32, align 4
  %endalj = alloca i32, align 4
  %fpenalty = alloca float, align 4
  %fpenalty_OP = alloca float, align 4
  %fpenalty_ex = alloca float, align 4
  %foffset = alloca float, align 4
  %localthr = alloca float, align 4
  %localthr2 = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll196 = alloca i32, align 4
  %ll297 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %off1pt, i32** %off1pt.addr, align 8
  store i32* %off2pt, i32** %off2pt.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i32, i32* @penalty_OP, align 4
  %conv1 = sitofp i32 %1 to float
  store float %conv1, float* %fpenalty_OP, align 4
  %2 = load i32, i32* @penalty_ex, align 4
  %conv2 = sitofp i32 %2 to float
  store float %conv2, float* %fpenalty_ex, align 4
  %3 = load i32, i32* @offset, align 4
  %conv3 = sitofp i32 %3 to float
  store float %conv3, float* %foffset, align 4
  %4 = load float, float* %foffset, align 4
  %sub = fsub float -0.000000e+00, %4
  store float %sub, float* %localthr, align 4
  %5 = load float, float* %foffset, align 4
  %sub4 = fsub float -0.000000e+00, %5
  store float %sub4, float* %localthr2, align 4
  %6 = load i32, i32* @genL__align11.orlgth1, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %7, i32 0)
  store i8** %call, i8*** @genL__align11.mseq1, align 8
  %8 = load i32, i32* @njob, align 4
  %call6 = call i8** @AllocateCharMtx(i32 %8, i32 0)
  store i8** %call6, i8*** @genL__align11.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8
  %call7 = call i64 @strlen(i8* %10) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %lgth1, align 4
  %11 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i64 @strlen(i8* %12) #5
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %lgth2, align 4
  %13 = load i32, i32* %lgth1, align 4
  %14 = load i32, i32* @genL__align11.orlgth1, align 4
  %cmp12 = icmp sgt i32 %13, %14
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %lgth2, align 4
  %16 = load i32, i32* @genL__align11.orlgth2, align 4
  %cmp14 = icmp sgt i32 %15, %16
  br i1 %cmp14, label %if.then.16, label %if.end.85

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %17 = load i32, i32* @genL__align11.orlgth1, align 4
  %cmp17 = icmp sgt i32 %17, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.16
  %18 = load i32, i32* @genL__align11.orlgth2, align 4
  %cmp19 = icmp sgt i32 %18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %19 = load float*, float** @genL__align11.w1, align 8
  call void @FreeFloatVec(float* %19)
  %20 = load float*, float** @genL__align11.w2, align 8
  call void @FreeFloatVec(float* %20)
  %21 = load float*, float** @genL__align11.match, align 8
  call void @FreeFloatVec(float* %21)
  %22 = load float*, float** @genL__align11.initverticalw, align 8
  call void @FreeFloatVec(float* %22)
  %23 = load float*, float** @genL__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* %23)
  %24 = load float*, float** @genL__align11.m, align 8
  call void @FreeFloatVec(float* %24)
  %25 = load i32*, i32** @genL__align11.mp, align 8
  call void @FreeIntVec(i32* %25)
  %26 = load float*, float** @genL__align11.largeM, align 8
  call void @FreeFloatVec(float* %26)
  %27 = load i32*, i32** @genL__align11.Mp, align 8
  call void @FreeIntVec(i32* %27)
  %28 = load i8**, i8*** @genL__align11.mseq, align 8
  call void @FreeCharMtx(i8** %28)
  %29 = load float**, float*** @genL__align11.cpmx1, align 8
  call void @FreeFloatMtx(float** %29)
  %30 = load float**, float*** @genL__align11.cpmx2, align 8
  call void @FreeFloatMtx(float** %30)
  %31 = load float**, float*** @genL__align11.floatwork, align 8
  call void @FreeFloatMtx(float** %31)
  %32 = load i32**, i32*** @genL__align11.intwork, align 8
  call void @FreeIntMtx(i32** %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.then.16
  %33 = load i32, i32* %lgth1, align 4
  %conv23 = sitofp i32 %33 to double
  %mul = fmul double 1.300000e+00, %conv23
  %conv24 = fptosi double %mul to i32
  %34 = load i32, i32* @genL__align11.orlgth1, align 4
  %cmp25 = icmp sgt i32 %conv24, %34
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.22
  %35 = load i32, i32* %lgth1, align 4
  %conv27 = sitofp i32 %35 to double
  %mul28 = fmul double 1.300000e+00, %conv27
  %conv29 = fptosi double %mul28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.22
  %36 = load i32, i32* @genL__align11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv29, %cond.true ], [ %36, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %37 = load i32, i32* %lgth2, align 4
  %conv30 = sitofp i32 %37 to double
  %mul31 = fmul double 1.300000e+00, %conv30
  %conv32 = fptosi double %mul31 to i32
  %38 = load i32, i32* @genL__align11.orlgth2, align 4
  %cmp33 = icmp sgt i32 %conv32, %38
  br i1 %cmp33, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.end
  %39 = load i32, i32* %lgth2, align 4
  %conv36 = sitofp i32 %39 to double
  %mul37 = fmul double 1.300000e+00, %conv36
  %conv38 = fptosi double %mul37 to i32
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end
  %40 = load i32, i32* @genL__align11.orlgth2, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.35
  %cond41 = phi i32 [ %conv38, %cond.true.35 ], [ %40, %cond.false.39 ]
  %add42 = add nsw i32 %cond41, 100
  store i32 %add42, i32* %ll2, align 4
  %41 = load i32, i32* %ll2, align 4
  %add43 = add nsw i32 %41, 2
  %call44 = call float* @AllocateFloatVec(i32 %add43)
  store float* %call44, float** @genL__align11.w1, align 8
  %42 = load i32, i32* %ll2, align 4
  %add45 = add nsw i32 %42, 2
  %call46 = call float* @AllocateFloatVec(i32 %add45)
  store float* %call46, float** @genL__align11.w2, align 8
  %43 = load i32, i32* %ll2, align 4
  %add47 = add nsw i32 %43, 2
  %call48 = call float* @AllocateFloatVec(i32 %add47)
  store float* %call48, float** @genL__align11.match, align 8
  %44 = load i32, i32* %ll1, align 4
  %add49 = add nsw i32 %44, 2
  %call50 = call float* @AllocateFloatVec(i32 %add49)
  store float* %call50, float** @genL__align11.initverticalw, align 8
  %45 = load i32, i32* %ll1, align 4
  %add51 = add nsw i32 %45, 2
  %call52 = call float* @AllocateFloatVec(i32 %add51)
  store float* %call52, float** @genL__align11.lastverticalw, align 8
  %46 = load i32, i32* %ll2, align 4
  %add53 = add nsw i32 %46, 2
  %call54 = call float* @AllocateFloatVec(i32 %add53)
  store float* %call54, float** @genL__align11.m, align 8
  %47 = load i32, i32* %ll2, align 4
  %add55 = add nsw i32 %47, 2
  %call56 = call i32* @AllocateIntVec(i32 %add55)
  store i32* %call56, i32** @genL__align11.mp, align 8
  %48 = load i32, i32* %ll2, align 4
  %add57 = add nsw i32 %48, 2
  %call58 = call float* @AllocateFloatVec(i32 %add57)
  store float* %call58, float** @genL__align11.largeM, align 8
  %49 = load i32, i32* %ll2, align 4
  %add59 = add nsw i32 %49, 2
  %call60 = call i32* @AllocateIntVec(i32 %add59)
  store i32* %call60, i32** @genL__align11.Mp, align 8
  %50 = load i32, i32* @njob, align 4
  %51 = load i32, i32* %ll1, align 4
  %52 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %51, %52
  %call62 = call i8** @AllocateCharMtx(i32 %50, i32 %add61)
  store i8** %call62, i8*** @genL__align11.mseq, align 8
  %53 = load i32, i32* %ll1, align 4
  %add63 = add nsw i32 %53, 2
  %call64 = call float** @AllocateFloatMtx(i32 26, i32 %add63)
  store float** %call64, float*** @genL__align11.cpmx1, align 8
  %54 = load i32, i32* %ll2, align 4
  %add65 = add nsw i32 %54, 2
  %call66 = call float** @AllocateFloatMtx(i32 26, i32 %add65)
  store float** %call66, float*** @genL__align11.cpmx2, align 8
  %55 = load i32, i32* %ll1, align 4
  %56 = load i32, i32* %ll2, align 4
  %cmp67 = icmp sgt i32 %55, %56
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.40
  %57 = load i32, i32* %ll1, align 4
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.end.40
  %58 = load i32, i32* %ll2, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi i32 [ %57, %cond.true.69 ], [ %58, %cond.false.70 ]
  %add73 = add nsw i32 %cond72, 2
  %call74 = call float** @AllocateFloatMtx(i32 26, i32 %add73)
  store float** %call74, float*** @genL__align11.floatwork, align 8
  %59 = load i32, i32* %ll1, align 4
  %60 = load i32, i32* %ll2, align 4
  %cmp75 = icmp sgt i32 %59, %60
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.71
  %61 = load i32, i32* %ll1, align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.end.71
  %62 = load i32, i32* %ll2, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %61, %cond.true.77 ], [ %62, %cond.false.78 ]
  %add81 = add nsw i32 %cond80, 2
  %call82 = call i32** @AllocateIntMtx(i32 26, i32 %add81)
  store i32** %call82, i32*** @genL__align11.intwork, align 8
  %63 = load i32, i32* %ll1, align 4
  %sub83 = sub nsw i32 %63, 100
  store i32 %sub83, i32* @genL__align11.orlgth1, align 4
  %64 = load i32, i32* %ll2, align 4
  %sub84 = sub nsw i32 %64, 100
  store i32 %sub84, i32* @genL__align11.orlgth2, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %cond.end.79, %lor.lhs.false
  %65 = load i8**, i8*** @genL__align11.mseq, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %65, i64 0
  %66 = load i8*, i8** %arrayidx86, align 8
  %67 = load i8**, i8*** @genL__align11.mseq1, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %66, i8** %arrayidx87, align 8
  %68 = load i8**, i8*** @genL__align11.mseq, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %68, i64 1
  %69 = load i8*, i8** %arrayidx88, align 8
  %70 = load i8**, i8*** @genL__align11.mseq2, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %69, i8** %arrayidx89, align 8
  %71 = load i32, i32* @genL__align11.orlgth1, align 4
  %72 = load i32, i32* @commonAlloc1, align 4
  %cmp90 = icmp sgt i32 %71, %72
  br i1 %cmp90, label %if.then.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.end.85
  %73 = load i32, i32* @genL__align11.orlgth2, align 4
  %74 = load i32, i32* @commonAlloc2, align 4
  %cmp93 = icmp sgt i32 %73, %74
  br i1 %cmp93, label %if.then.95, label %if.end.120

if.then.95:                                       ; preds = %lor.lhs.false.92, %if.end.85
  %75 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %75, 0
  br i1 %tobool, label %land.lhs.true.98, label %if.end.101

land.lhs.true.98:                                 ; preds = %if.then.95
  %76 = load i32, i32* @commonAlloc2, align 4
  %tobool99 = icmp ne i32 %76, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.98
  %77 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %77)
  %78 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** %78)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %land.lhs.true.98, %if.then.95
  %79 = load i32, i32* @genL__align11.orlgth1, align 4
  %80 = load i32, i32* @commonAlloc1, align 4
  %cmp102 = icmp sgt i32 %79, %80
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %if.end.101
  %81 = load i32, i32* @genL__align11.orlgth1, align 4
  br label %cond.end.106

cond.false.105:                                   ; preds = %if.end.101
  %82 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ %81, %cond.true.104 ], [ %82, %cond.false.105 ]
  store i32 %cond107, i32* %ll196, align 4
  %83 = load i32, i32* @genL__align11.orlgth2, align 4
  %84 = load i32, i32* @commonAlloc2, align 4
  %cmp108 = icmp sgt i32 %83, %84
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.end.106
  %85 = load i32, i32* @genL__align11.orlgth2, align 4
  br label %cond.end.112

cond.false.111:                                   ; preds = %cond.end.106
  %86 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.110
  %cond113 = phi i32 [ %85, %cond.true.110 ], [ %86, %cond.false.111 ]
  store i32 %cond113, i32* %ll297, align 4
  %87 = load i32, i32* %ll196, align 4
  %add114 = add nsw i32 %87, 10
  %88 = load i32, i32* %ll297, align 4
  %add115 = add nsw i32 %88, 10
  %call116 = call i32** @AllocateIntMtx(i32 %add114, i32 %add115)
  store i32** %call116, i32*** @commonIP, align 8
  %89 = load i32, i32* %ll196, align 4
  %add117 = add nsw i32 %89, 10
  %90 = load i32, i32* %ll297, align 4
  %add118 = add nsw i32 %90, 10
  %call119 = call i32** @AllocateIntMtx(i32 %add117, i32 %add118)
  store i32** %call119, i32*** @commonJP, align 8
  %91 = load i32, i32* %ll196, align 4
  store i32 %91, i32* @commonAlloc1, align 4
  %92 = load i32, i32* %ll297, align 4
  store i32 %92, i32* @commonAlloc2, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.112, %lor.lhs.false.92
  %93 = load i32**, i32*** @commonIP, align 8
  store i32** %93, i32*** @genL__align11.ijpi, align 8
  %94 = load i32**, i32*** @commonJP, align 8
  store i32** %94, i32*** @genL__align11.ijpj, align 8
  %95 = load float*, float** @genL__align11.w1, align 8
  store float* %95, float** %currentw, align 8
  %96 = load float*, float** @genL__align11.w2, align 8
  store float* %96, float** %previousw, align 8
  %97 = load float*, float** @genL__align11.initverticalw, align 8
  %98 = load i8**, i8*** %seq2.addr, align 8
  %99 = load i8**, i8*** %seq1.addr, align 8
  %100 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %97, i8** %98, i8** %99, i32 0, i32 %100)
  %101 = load float*, float** %currentw, align 8
  %102 = load i8**, i8*** %seq1.addr, align 8
  %103 = load i8**, i8*** %seq2.addr, align 8
  %104 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %101, i8** %102, i8** %103, i32 0, i32 %104)
  %105 = load i32, i32* %lgth2, align 4
  %add121 = add nsw i32 %105, 1
  store i32 %add121, i32* %lasti, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.120
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %lasti, align 4
  %cmp122 = icmp slt i32 %106, %107
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load i32, i32* %j, align 4
  %sub124 = sub nsw i32 %108, 1
  %idxprom = sext i32 %sub124 to i64
  %109 = load float*, float** %currentw, align 8
  %arrayidx125 = getelementptr inbounds float, float* %109, i64 %idxprom
  %110 = load float, float* %arrayidx125, align 4
  %111 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %111 to i64
  %112 = load float*, float** @genL__align11.m, align 8
  %arrayidx127 = getelementptr inbounds float, float* %112, i64 %idxprom126
  store float %110, float* %arrayidx127, align 4
  %113 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %113 to i64
  %114 = load i32*, i32** @genL__align11.mp, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %114, i64 %idxprom128
  store i32 0, i32* %arrayidx129, align 4
  %115 = load i32, i32* %j, align 4
  %sub130 = sub nsw i32 %115, 1
  %idxprom131 = sext i32 %sub130 to i64
  %116 = load float*, float** %currentw, align 8
  %arrayidx132 = getelementptr inbounds float, float* %116, i64 %idxprom131
  %117 = load float, float* %arrayidx132, align 4
  %118 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %118 to i64
  %119 = load float*, float** @genL__align11.largeM, align 8
  %arrayidx134 = getelementptr inbounds float, float* %119, i64 %idxprom133
  store float %117, float* %arrayidx134, align 4
  %120 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %120 to i64
  %121 = load i32*, i32** @genL__align11.Mp, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %121, i64 %idxprom135
  store i32 0, i32* %arrayidx136, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %122 = load i32, i32* %j, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %123 = load i32, i32* %lgth2, align 4
  %sub137 = sub nsw i32 %123, 1
  %idxprom138 = sext i32 %sub137 to i64
  %124 = load float*, float** %currentw, align 8
  %arrayidx139 = getelementptr inbounds float, float* %124, i64 %idxprom138
  %125 = load float, float* %arrayidx139, align 4
  %126 = load float*, float** @genL__align11.lastverticalw, align 8
  %arrayidx140 = getelementptr inbounds float, float* %126, i64 0
  store float %125, float* %arrayidx140, align 4
  %127 = load i32, i32* %lgth1, align 4
  %128 = load i32, i32* %lgth2, align 4
  %add141 = add nsw i32 %127, %128
  %add142 = add nsw i32 %add141, 1
  store i32 %add142, i32* @localstop, align 4
  store float -1.000000e+09, float* %maxwm, align 4
  store i32 0, i32* %endalj, align 4
  store i32 0, i32* %endali, align 4
  %129 = load i32, i32* %lgth1, align 4
  %add143 = add nsw i32 %129, 1
  store i32 %add143, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.246, %for.end
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %lasti, align 4
  %cmp145 = icmp slt i32 %130, %131
  br i1 %cmp145, label %for.body.147, label %for.end.248

for.body.147:                                     ; preds = %for.cond.144
  %132 = load float*, float** %previousw, align 8
  store float* %132, float** %wtmp, align 8
  %133 = load float*, float** %currentw, align 8
  store float* %133, float** %previousw, align 8
  %134 = load float*, float** %wtmp, align 8
  store float* %134, float** %currentw, align 8
  %135 = load i32, i32* %i, align 4
  %sub148 = sub nsw i32 %135, 1
  %idxprom149 = sext i32 %sub148 to i64
  %136 = load float*, float** @genL__align11.initverticalw, align 8
  %arrayidx150 = getelementptr inbounds float, float* %136, i64 %idxprom149
  %137 = load float, float* %arrayidx150, align 4
  %138 = load float*, float** %previousw, align 8
  %arrayidx151 = getelementptr inbounds float, float* %138, i64 0
  store float %137, float* %arrayidx151, align 4
  %139 = load float*, float** %currentw, align 8
  %140 = load i8**, i8*** %seq1.addr, align 8
  %141 = load i8**, i8*** %seq2.addr, align 8
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %139, i8** %140, i8** %141, i32 %142, i32 %143)
  %144 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %144 to i64
  %145 = load float*, float** @genL__align11.initverticalw, align 8
  %arrayidx153 = getelementptr inbounds float, float* %145, i64 %idxprom152
  %146 = load float, float* %arrayidx153, align 4
  %147 = load float*, float** %currentw, align 8
  %arrayidx154 = getelementptr inbounds float, float* %147, i64 0
  store float %146, float* %arrayidx154, align 4
  %148 = load float*, float** %previousw, align 8
  %arrayidx155 = getelementptr inbounds float, float* %148, i64 0
  %149 = load float, float* %arrayidx155, align 4
  store float %149, float* @genL__align11.mi, align 4
  store i32 0, i32* @genL__align11.mpi, align 4
  %150 = load float*, float** %previousw, align 8
  %arrayidx156 = getelementptr inbounds float, float* %150, i64 0
  %151 = load float, float* %arrayidx156, align 4
  store float %151, float* @genL__align11.Mi, align 4
  store i32 0, i32* @genL__align11.Mpi, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %152 to i64
  %153 = load i32**, i32*** @genL__align11.ijpi, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %153, i64 %idxprom157
  %154 = load i32*, i32** %arrayidx158, align 8
  %add.ptr = getelementptr inbounds i32, i32* %154, i64 1
  store i32* %add.ptr, i32** %ijpipt, align 8
  %155 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %155 to i64
  %156 = load i32**, i32*** @genL__align11.ijpj, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %156, i64 %idxprom159
  %157 = load i32*, i32** %arrayidx160, align 8
  %add.ptr161 = getelementptr inbounds i32, i32* %157, i64 1
  store i32* %add.ptr161, i32** %ijpjpt, align 8
  %158 = load float*, float** @genL__align11.m, align 8
  %add.ptr162 = getelementptr inbounds float, float* %158, i64 1
  store float* %add.ptr162, float** %mjpt, align 8
  %159 = load float*, float** @genL__align11.largeM, align 8
  %add.ptr163 = getelementptr inbounds float, float* %159, i64 1
  store float* %add.ptr163, float** %Mjpt, align 8
  %160 = load float*, float** %previousw, align 8
  store float* %160, float** %prept, align 8
  %161 = load float*, float** %currentw, align 8
  %add.ptr164 = getelementptr inbounds float, float* %161, i64 1
  store float* %add.ptr164, float** %curpt, align 8
  %162 = load i32*, i32** @genL__align11.mp, align 8
  %add.ptr165 = getelementptr inbounds i32, i32* %162, i64 1
  store i32* %add.ptr165, i32** %mpjpt, align 8
  %163 = load i32*, i32** @genL__align11.Mp, align 8
  %add.ptr166 = getelementptr inbounds i32, i32* %163, i64 1
  store i32* %add.ptr166, i32** %Mpjpt, align 8
  store float 0xC12E847FC0000000, float* %tbk, align 4
  store i32 0, i32* %tbki, align 4
  store i32 0, i32* %tbkj, align 4
  %164 = load i32, i32* %lgth2, align 4
  %add167 = add nsw i32 %164, 1
  store i32 %add167, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.238, %for.body.147
  %165 = load i32, i32* %j, align 4
  %166 = load i32, i32* %lastj, align 4
  %cmp169 = icmp slt i32 %165, %166
  br i1 %cmp169, label %for.body.171, label %for.end.240

for.body.171:                                     ; preds = %for.cond.168
  %167 = load float*, float** %prept, align 8
  %168 = load float, float* %167, align 4
  store float %168, float* %wm, align 4
  %169 = load i32, i32* %i, align 4
  %sub172 = sub nsw i32 %169, 1
  %170 = load i32*, i32** %ijpipt, align 8
  store i32 %sub172, i32* %170, align 4
  %171 = load i32, i32* %j, align 4
  %sub173 = sub nsw i32 %171, 1
  %172 = load i32*, i32** %ijpjpt, align 8
  store i32 %sub173, i32* %172, align 4
  %173 = load float, float* @genL__align11.mi, align 4
  %174 = load float, float* %fpenalty, align 4
  %add174 = fadd float %173, %174
  store float %add174, float* %g, align 4
  %175 = load float, float* %g, align 4
  %176 = load float, float* %wm, align 4
  %cmp175 = fcmp ogt float %175, %176
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %for.body.171
  %177 = load float, float* %g, align 4
  store float %177, float* %wm, align 4
  %178 = load i32, i32* @genL__align11.mpi, align 4
  %179 = load i32*, i32** %ijpjpt, align 8
  store i32 %178, i32* %179, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %for.body.171
  %180 = load float*, float** %prept, align 8
  %181 = load float, float* %180, align 4
  store float %181, float* %g, align 4
  %182 = load float, float* %g, align 4
  %183 = load float, float* @genL__align11.mi, align 4
  %cmp179 = fcmp ogt float %182, %183
  br i1 %cmp179, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.end.178
  %184 = load float, float* %g, align 4
  store float %184, float* @genL__align11.mi, align 4
  %185 = load i32, i32* %j, align 4
  %sub182 = sub nsw i32 %185, 1
  store i32 %sub182, i32* @genL__align11.mpi, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.end.178
  %186 = load float, float* %fpenalty_ex, align 4
  %187 = load float, float* @genL__align11.mi, align 4
  %add184 = fadd float %187, %186
  store float %add184, float* @genL__align11.mi, align 4
  %188 = load float*, float** %mjpt, align 8
  %189 = load float, float* %188, align 4
  %190 = load float, float* %fpenalty, align 4
  %add185 = fadd float %189, %190
  store float %add185, float* %g, align 4
  %191 = load float, float* %g, align 4
  %192 = load float, float* %wm, align 4
  %cmp186 = fcmp ogt float %191, %192
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %if.end.183
  %193 = load float, float* %g, align 4
  store float %193, float* %wm, align 4
  %194 = load i32*, i32** %mpjpt, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %ijpipt, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %j, align 4
  %sub189 = sub nsw i32 %197, 1
  %198 = load i32*, i32** %ijpjpt, align 8
  store i32 %sub189, i32* %198, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %if.end.183
  %199 = load float*, float** %prept, align 8
  %200 = load float, float* %199, align 4
  store float %200, float* %g, align 4
  %201 = load float, float* %g, align 4
  %202 = load float*, float** %mjpt, align 8
  %203 = load float, float* %202, align 4
  %cmp191 = fcmp ogt float %201, %203
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.end.190
  %204 = load float, float* %g, align 4
  %205 = load float*, float** %mjpt, align 8
  store float %204, float* %205, align 4
  %206 = load i32, i32* %i, align 4
  %sub194 = sub nsw i32 %206, 1
  %207 = load i32*, i32** %mpjpt, align 8
  store i32 %sub194, i32* %207, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %if.end.190
  %208 = load float, float* %fpenalty_ex, align 4
  %209 = load float*, float** %mjpt, align 8
  %210 = load float, float* %209, align 4
  %add196 = fadd float %210, %208
  store float %add196, float* %209, align 4
  %211 = load float, float* %tbk, align 4
  %212 = load float, float* %fpenalty_OP, align 4
  %add197 = fadd float %211, %212
  store float %add197, float* %g, align 4
  %213 = load float, float* %g, align 4
  %214 = load float, float* %wm, align 4
  %cmp198 = fcmp ogt float %213, %214
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.195
  %215 = load float, float* %g, align 4
  store float %215, float* %wm, align 4
  %216 = load i32, i32* %tbki, align 4
  %217 = load i32*, i32** %ijpipt, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %tbkj, align 4
  %219 = load i32*, i32** %ijpjpt, align 8
  store i32 %218, i32* %219, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.195
  %220 = load float, float* @genL__align11.Mi, align 4
  %221 = load float, float* %tbk, align 4
  %cmp202 = fcmp ogt float %220, %221
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.end.201
  %222 = load float, float* @genL__align11.Mi, align 4
  store float %222, float* %tbk, align 4
  %223 = load i32, i32* %i, align 4
  %sub205 = sub nsw i32 %223, 1
  store i32 %sub205, i32* %tbki, align 4
  %224 = load i32, i32* @genL__align11.Mpi, align 4
  store i32 %224, i32* %tbkj, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %if.end.201
  %225 = load float*, float** %Mjpt, align 8
  %226 = load float, float* %225, align 4
  %227 = load float, float* %tbk, align 4
  %cmp207 = fcmp ogt float %226, %227
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.206
  %228 = load float*, float** %Mjpt, align 8
  %229 = load float, float* %228, align 4
  store float %229, float* %tbk, align 4
  %230 = load i32*, i32** %Mpjpt, align 8
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %tbki, align 4
  %232 = load i32, i32* %j, align 4
  %sub210 = sub nsw i32 %232, 1
  store i32 %sub210, i32* %tbkj, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.end.206
  %233 = load float*, float** %prept, align 8
  %234 = load float, float* %233, align 4
  %235 = load float*, float** %Mjpt, align 8
  %236 = load float, float* %235, align 4
  %cmp212 = fcmp ogt float %234, %236
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.end.211
  %237 = load float*, float** %prept, align 8
  %238 = load float, float* %237, align 4
  %239 = load float*, float** %Mjpt, align 8
  store float %238, float* %239, align 4
  %240 = load i32, i32* %i, align 4
  %sub215 = sub nsw i32 %240, 1
  %241 = load i32*, i32** %Mpjpt, align 8
  store i32 %sub215, i32* %241, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %if.end.211
  %242 = load float*, float** %prept, align 8
  %243 = load float, float* %242, align 4
  %244 = load float, float* @genL__align11.Mi, align 4
  %cmp217 = fcmp ogt float %243, %244
  br i1 %cmp217, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.216
  %245 = load float*, float** %prept, align 8
  %246 = load float, float* %245, align 4
  store float %246, float* @genL__align11.Mi, align 4
  %247 = load i32, i32* %j, align 4
  %sub220 = sub nsw i32 %247, 1
  store i32 %sub220, i32* @genL__align11.Mpi, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.216
  %248 = load float, float* %maxwm, align 4
  %249 = load float, float* %wm, align 4
  %cmp222 = fcmp olt float %248, %249
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.221
  %250 = load float, float* %wm, align 4
  store float %250, float* %maxwm, align 4
  %251 = load i32, i32* %i, align 4
  store i32 %251, i32* %endali, align 4
  %252 = load i32, i32* %j, align 4
  store i32 %252, i32* %endalj, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.221
  %253 = load float, float* %wm, align 4
  %254 = load float, float* %localthr, align 4
  %cmp226 = fcmp olt float %253, %254
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.225
  %255 = load i32, i32* @localstop, align 4
  %256 = load i32*, i32** %ijpipt, align 8
  store i32 %255, i32* %256, align 4
  %257 = load float, float* %localthr2, align 4
  store float %257, float* %wm, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %if.end.225
  %258 = load float, float* %wm, align 4
  %259 = load float*, float** %curpt, align 8
  %260 = load float, float* %259, align 4
  %add230 = fadd float %260, %258
  store float %add230, float* %259, align 4
  %261 = load i32*, i32** %ijpipt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %incdec.ptr, i32** %ijpipt, align 8
  %262 = load i32*, i32** %ijpjpt, align 8
  %incdec.ptr231 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %incdec.ptr231, i32** %ijpjpt, align 8
  %263 = load float*, float** %mjpt, align 8
  %incdec.ptr232 = getelementptr inbounds float, float* %263, i32 1
  store float* %incdec.ptr232, float** %mjpt, align 8
  %264 = load float*, float** %Mjpt, align 8
  %incdec.ptr233 = getelementptr inbounds float, float* %264, i32 1
  store float* %incdec.ptr233, float** %Mjpt, align 8
  %265 = load float*, float** %prept, align 8
  %incdec.ptr234 = getelementptr inbounds float, float* %265, i32 1
  store float* %incdec.ptr234, float** %prept, align 8
  %266 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr235 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %incdec.ptr235, i32** %mpjpt, align 8
  %267 = load i32*, i32** %Mpjpt, align 8
  %incdec.ptr236 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %incdec.ptr236, i32** %Mpjpt, align 8
  %268 = load float*, float** %curpt, align 8
  %incdec.ptr237 = getelementptr inbounds float, float* %268, i32 1
  store float* %incdec.ptr237, float** %curpt, align 8
  br label %for.inc.238

for.inc.238:                                      ; preds = %if.end.229
  %269 = load i32, i32* %j, align 4
  %inc239 = add nsw i32 %269, 1
  store i32 %inc239, i32* %j, align 4
  br label %for.cond.168

for.end.240:                                      ; preds = %for.cond.168
  %270 = load i32, i32* %lgth2, align 4
  %sub241 = sub nsw i32 %270, 1
  %idxprom242 = sext i32 %sub241 to i64
  %271 = load float*, float** %currentw, align 8
  %arrayidx243 = getelementptr inbounds float, float* %271, i64 %idxprom242
  %272 = load float, float* %arrayidx243, align 4
  %273 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %273 to i64
  %274 = load float*, float** @genL__align11.lastverticalw, align 8
  %arrayidx245 = getelementptr inbounds float, float* %274, i64 %idxprom244
  store float %272, float* %arrayidx245, align 4
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.end.240
  %275 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %275, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.144

for.end.248:                                      ; preds = %for.cond.144
  %276 = load i32, i32* %endalj, align 4
  %idxprom249 = sext i32 %276 to i64
  %277 = load i32, i32* %endali, align 4
  %idxprom250 = sext i32 %277 to i64
  %278 = load i32**, i32*** @genL__align11.ijpi, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %278, i64 %idxprom250
  %279 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %279, i64 %idxprom249
  %280 = load i32, i32* %arrayidx252, align 4
  %281 = load i32, i32* @localstop, align 4
  %cmp253 = icmp eq i32 %280, %281
  br i1 %cmp253, label %if.then.255, label %if.end.260

if.then.255:                                      ; preds = %for.end.248
  %282 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %282, i64 0
  %283 = load i8*, i8** %arrayidx256, align 8
  %call257 = call i8* @strcpy(i8* %283, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %284 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx258 = getelementptr inbounds i8*, i8** %284, i64 0
  %285 = load i8*, i8** %arrayidx258, align 8
  %call259 = call i8* @strcpy(i8* %285, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %286 = load i32*, i32** %off2pt.addr, align 8
  store i32 0, i32* %286, align 4
  %287 = load i32*, i32** %off1pt.addr, align 8
  store i32 0, i32* %287, align 4
  store float 0.000000e+00, float* %retval
  br label %return

if.end.260:                                       ; preds = %for.end.248
  %288 = load float*, float** %currentw, align 8
  %289 = load float*, float** @genL__align11.lastverticalw, align 8
  %290 = load i8**, i8*** %seq1.addr, align 8
  %291 = load i8**, i8*** %seq2.addr, align 8
  %292 = load i8**, i8*** @genL__align11.mseq1, align 8
  %293 = load i8**, i8*** @genL__align11.mseq2, align 8
  %294 = load float**, float*** @genL__align11.cpmx1, align 8
  %295 = load float**, float*** @genL__align11.cpmx2, align 8
  %296 = load i32**, i32*** @genL__align11.ijpi, align 8
  %297 = load i32**, i32*** @genL__align11.ijpj, align 8
  %298 = load i32*, i32** %off1pt.addr, align 8
  %299 = load i32*, i32** %off2pt.addr, align 8
  %300 = load i32, i32* %endali, align 4
  %301 = load i32, i32* %endalj, align 4
  %call261 = call float @gentracking(float* %288, float* %289, i8** %290, i8** %291, i8** %292, i8** %293, float** %294, float** %295, i32** %296, i32** %297, i32* %298, i32* %299, i32 %300, i32 %301)
  %302 = load i8**, i8*** @genL__align11.mseq1, align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %302, i64 0
  %303 = load i8*, i8** %arrayidx262, align 8
  %call263 = call i64 @strlen(i8* %303) #5
  %conv264 = trunc i64 %call263 to i32
  store i32 %conv264, i32* %resultlen, align 4
  %304 = load i32, i32* %alloclen.addr, align 4
  %305 = load i32, i32* %resultlen, align 4
  %cmp265 = icmp slt i32 %304, %305
  br i1 %cmp265, label %if.then.270, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %if.end.260
  %306 = load i32, i32* %resultlen, align 4
  %cmp268 = icmp sgt i32 %306, 5000000
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %lor.lhs.false.267, %if.end.260
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %308 = load i32, i32* %alloclen.addr, align 4
  %309 = load i32, i32* %resultlen, align 4
  %call271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 %308, i32 %309, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %lor.lhs.false.267
  %310 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx273 = getelementptr inbounds i8*, i8** %310, i64 0
  %311 = load i8*, i8** %arrayidx273, align 8
  %312 = load i8**, i8*** @genL__align11.mseq1, align 8
  %arrayidx274 = getelementptr inbounds i8*, i8** %312, i64 0
  %313 = load i8*, i8** %arrayidx274, align 8
  %call275 = call i8* @strcpy(i8* %311, i8* %313) #4
  %314 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx276 = getelementptr inbounds i8*, i8** %314, i64 0
  %315 = load i8*, i8** %arrayidx276, align 8
  %316 = load i8**, i8*** @genL__align11.mseq2, align 8
  %arrayidx277 = getelementptr inbounds i8*, i8** %316, i64 0
  %317 = load i8*, i8** %arrayidx277, align 8
  %call278 = call i8* @strcpy(i8* %315, i8* %317) #4
  %318 = load float, float* %maxwm, align 4
  store float %318, float* %retval
  br label %return

return:                                           ; preds = %if.end.272, %if.then.255
  %319 = load float, float* %retval
  ret float %319
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

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal float @gentracking(float* %lasthorizontalw, float* %lastverticalw, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijpi, i32** %ijpj, i32* %off1pt, i32* %off2pt, i32 %endi, i32 %endj) #0 {
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
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32** %ijpi, i32*** %ijpi.addr, align 8
  store i32** %ijpj, i32*** %ijpj.addr, align 8
  store i32* %off1pt, i32** %off1pt.addr, align 8
  store i32* %off2pt, i32** %off2pt.addr, align 8
  store i32 %endi, i32* %endi.addr, align 4
  store i32 %endj, i32* %endj.addr, align 4
  store i32 0, i32* %ifi, align 4
  store i32 0, i32* %jfi, align 4
  %0 = bitcast [2 x i8]* %gap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @gentracking.gap, i32 0, i32 0), i64 2, i32 1, i1 false)
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
  %9 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %arrayidx6, align 4
  %11 = load i32, i32* @localstop, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %13, i64 %idxprom7
  %14 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.end
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %lgth2, align 4
  %add11 = add nsw i32 %17, 1
  %cmp12 = icmp slt i32 %16, %add11
  br i1 %cmp12, label %for.body.14, label %for.end.23

for.body.14:                                      ; preds = %for.cond.10
  %18 = load i32, i32* @localstop, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %20, i64 0
  %21 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  store i32 %18, i32* %arrayidx17, align 4
  %22 = load i32, i32* @localstop, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %24, i64 0
  %25 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 %idxprom18
  store i32 %22, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.14
  %26 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %27 = load i32, i32* %lgth1, align 4
  %28 = load i32, i32* %lgth2, align 4
  %add24 = add nsw i32 %27, %28
  %29 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx25, align 8
  %idx.ext = sext i32 %add24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx25, align 8
  %31 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx26, align 8
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* %lgth1, align 4
  %34 = load i32, i32* %lgth2, align 4
  %add27 = add nsw i32 %33, %34
  %35 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx28, align 8
  %idx.ext29 = sext i32 %add27 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %36, i64 %idx.ext29
  store i8* %add.ptr30, i8** %arrayidx28, align 8
  %37 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx31, align 8
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %endi.addr, align 4
  store i32 %39, i32* %iin, align 4
  %40 = load i32, i32* %endj.addr, align 4
  store i32 %40, i32* %jin, align 4
  %41 = load i32, i32* %lgth1, align 4
  %42 = load i32, i32* %lgth2, align 4
  %add32 = add nsw i32 %41, %42
  store i32 %add32, i32* %limk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.100, %for.end.23
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %limk, align 4
  %cmp34 = icmp sle i32 %43, %44
  br i1 %cmp34, label %for.body.36, label %for.end.102

for.body.36:                                      ; preds = %for.cond.33
  %45 = load i32, i32* %jin, align 4
  %idxprom37 = sext i32 %45 to i64
  %46 = load i32, i32* %iin, align 4
  %idxprom38 = sext i32 %46 to i64
  %47 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %47, i64 %idxprom38
  %48 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %48, i64 %idxprom37
  %49 = load i32, i32* %arrayidx40, align 4
  store i32 %49, i32* %ifi, align 4
  %50 = load i32, i32* %jin, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32, i32* %iin, align 4
  %idxprom42 = sext i32 %51 to i64
  %52 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %52, i64 %idxprom42
  %53 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %53, i64 %idxprom41
  %54 = load i32, i32* %arrayidx44, align 4
  store i32 %54, i32* %jfi, align 4
  %55 = load i32, i32* %iin, align 4
  %56 = load i32, i32* %ifi, align 4
  %sub = sub nsw i32 %55, %56
  store i32 %sub, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.36
  %57 = load i32, i32* %l, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i32, i32* %ifi, align 4
  %59 = load i32, i32* %l, align 4
  %add45 = add nsw i32 %58, %59
  %idxprom46 = sext i32 %add45 to i64
  %60 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %60, i64 0
  %61 = load i8*, i8** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %61, i64 %idxprom46
  %62 = load i8, i8* %arrayidx48, align 1
  %63 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %63, i64 0
  %64 = load i8*, i8** %arrayidx49, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx49, align 8
  store i8 %62, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %65 = load i8, i8* %arraydecay, align 1
  %66 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %66, i64 0
  %67 = load i8*, i8** %arrayidx50, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr51, i8** %arrayidx50, align 8
  store i8 %65, i8* %incdec.ptr51, align 1
  %68 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %68, 1
  store i32 %inc52, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load i32, i32* %jin, align 4
  %70 = load i32, i32* %jfi, align 4
  %sub53 = sub nsw i32 %69, %70
  store i32 %sub53, i32* %l, align 4
  br label %while.cond.54

while.cond.54:                                    ; preds = %while.body.57, %while.end
  %71 = load i32, i32* %l, align 4
  %dec55 = add nsw i32 %71, -1
  store i32 %dec55, i32* %l, align 4
  %tobool56 = icmp ne i32 %dec55, 0
  br i1 %tobool56, label %while.body.57, label %while.end.68

while.body.57:                                    ; preds = %while.cond.54
  %arraydecay58 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %72 = load i8, i8* %arraydecay58, align 1
  %73 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx59, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr60, i8** %arrayidx59, align 8
  store i8 %72, i8* %incdec.ptr60, align 1
  %75 = load i32, i32* %jfi, align 4
  %76 = load i32, i32* %l, align 4
  %add61 = add nsw i32 %75, %76
  %idxprom62 = sext i32 %add61 to i64
  %77 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %77, i64 0
  %78 = load i8*, i8** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %78, i64 %idxprom62
  %79 = load i8, i8* %arrayidx64, align 1
  %80 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %80, i64 0
  %81 = load i8*, i8** %arrayidx65, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %incdec.ptr66, i8** %arrayidx65, align 8
  store i8 %79, i8* %incdec.ptr66, align 1
  %82 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %82, 1
  store i32 %inc67, i32* %k, align 4
  br label %while.cond.54

while.end.68:                                     ; preds = %while.cond.54
  %83 = load i32, i32* %iin, align 4
  %cmp69 = icmp sle i32 %83, 0
  br i1 %cmp69, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.68
  %84 = load i32, i32* %jin, align 4
  %cmp71 = icmp sle i32 %84, 0
  br i1 %cmp71, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end.68
  br label %for.end.102

if.end:                                           ; preds = %lor.lhs.false
  %85 = load i32, i32* %ifi, align 4
  %idxprom73 = sext i32 %85 to i64
  %86 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %86, i64 0
  %87 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %87, i64 %idxprom73
  %88 = load i8, i8* %arrayidx75, align 1
  %89 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %89, i64 0
  %90 = load i8*, i8** %arrayidx76, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %incdec.ptr77, i8** %arrayidx76, align 8
  store i8 %88, i8* %incdec.ptr77, align 1
  %91 = load i32, i32* %jfi, align 4
  %idxprom78 = sext i32 %91 to i64
  %92 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %92, i64 0
  %93 = load i8*, i8** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %93, i64 %idxprom78
  %94 = load i8, i8* %arrayidx80, align 1
  %95 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %95, i64 0
  %96 = load i8*, i8** %arrayidx81, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %incdec.ptr82, i8** %arrayidx81, align 8
  store i8 %94, i8* %incdec.ptr82, align 1
  %97 = load i32, i32* %jfi, align 4
  %idxprom83 = sext i32 %97 to i64
  %98 = load i32, i32* %ifi, align 4
  %idxprom84 = sext i32 %98 to i64
  %99 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %99, i64 %idxprom84
  %100 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %100, i64 %idxprom83
  %101 = load i32, i32* %arrayidx86, align 4
  %102 = load i32, i32* @localstop, align 4
  %cmp87 = icmp eq i32 %101, %102
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end
  br label %for.end.102

if.end.90:                                        ; preds = %if.end
  %103 = load i32, i32* %jfi, align 4
  %idxprom91 = sext i32 %103 to i64
  %104 = load i32, i32* %ifi, align 4
  %idxprom92 = sext i32 %104 to i64
  %105 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %105, i64 %idxprom92
  %106 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %106, i64 %idxprom91
  %107 = load i32, i32* %arrayidx94, align 4
  %108 = load i32, i32* @localstop, align 4
  %cmp95 = icmp eq i32 %107, %108
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.90
  br label %for.end.102

if.end.98:                                        ; preds = %if.end.90
  %109 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %109, 1
  store i32 %inc99, i32* %k, align 4
  %110 = load i32, i32* %ifi, align 4
  store i32 %110, i32* %iin, align 4
  %111 = load i32, i32* %jfi, align 4
  store i32 %111, i32* %jin, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.98
  %112 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %112, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond.33

for.end.102:                                      ; preds = %if.then.97, %if.then.89, %if.then, %for.cond.33
  %113 = load i32, i32* %ifi, align 4
  %cmp103 = icmp eq i32 %113, -1
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %for.end.102
  %114 = load i32*, i32** %off1pt.addr, align 8
  store i32 0, i32* %114, align 4
  br label %if.end.106

if.else:                                          ; preds = %for.end.102
  %115 = load i32, i32* %ifi, align 4
  %116 = load i32*, i32** %off1pt.addr, align 8
  store i32 %115, i32* %116, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %if.then.105
  %117 = load i32, i32* %jfi, align 4
  %cmp107 = icmp eq i32 %117, -1
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %if.end.106
  %118 = load i32*, i32** %off2pt.addr, align 8
  store i32 0, i32* %118, align 4
  br label %if.end.111

if.else.110:                                      ; preds = %if.end.106
  %119 = load i32, i32* %jfi, align 4
  %120 = load i32*, i32** %off2pt.addr, align 8
  store i32 %119, i32* %120, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.109
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
