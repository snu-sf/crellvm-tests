; ModuleID = './MultiSource.Benchmarks.mafft/7.SAalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Aalign.mi = internal global float 0.000000e+00, align 4
@Aalign.m = internal global float* null, align 8
@Aalign.ijp = internal global i32** null, align 8
@Aalign.mpi = internal global i32 0, align 4
@Aalign.mp = internal global i32* null, align 8
@Aalign.currentw = internal global float* null, align 8
@Aalign.previousw = internal global float* null, align 8
@Aalign.match = internal global float* null, align 8
@Aalign.initverticalw = internal global float* null, align 8
@Aalign.lastverticalw = internal global float* null, align 8
@Aalign.mseq1 = internal global i8** null, align 8
@Aalign.mseq2 = internal global i8** null, align 8
@Aalign.mseq = internal global i8** null, align 8
@Aalign.cpmx1 = internal global float** null, align 8
@Aalign.cpmx2 = internal global float** null, align 8
@Aalign.intwork = internal global i32** null, align 8
@Aalign.floatwork = internal global float** null, align 8
@Aalign.orlgth1 = internal global i32 0, align 4
@Aalign.orlgth2 = internal global i32 0, align 4
@njob = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"\0Atrying to allocate (%d+%d)xn matrices ... \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"succeeded\0A\00", align 1
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\0A\0Atrying to allocate %dx%d matrices ... \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"succeeded\0A\0A\00", align 1
@outgap = external global i32, align 4
@penalty = external global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@n_dis = external global [26 x [26 x i32]], align 16
@Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define float @Aalign(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %resultlen = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %x = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll199 = alloca i32, align 4
  %ll2100 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @Aalign.orlgth1, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @njob, align 4
  %call = call i8** @AllocateCharMtx(i32 %1, i32 1)
  store i8** %call, i8*** @Aalign.mseq1, align 8
  %2 = load i32, i32* @njob, align 4
  %call1 = call i8** @AllocateCharMtx(i32 %2, i32 1)
  store i8** %call1, i8*** @Aalign.mseq2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %lgth1, align 4
  %5 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth2, align 4
  %7 = load i32, i32* %lgth1, align 4
  %8 = load i32, i32* @Aalign.orlgth1, align 4
  %cmp6 = icmp sgt i32 %7, %8
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %lgth2, align 4
  %10 = load i32, i32* @Aalign.orlgth2, align 4
  %cmp8 = icmp sgt i32 %9, %10
  br i1 %cmp8, label %if.then.10, label %if.end.75

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %11 = load i32, i32* @Aalign.orlgth1, align 4
  %cmp11 = icmp sgt i32 %11, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.10
  %12 = load i32, i32* @Aalign.orlgth2, align 4
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %13 = load float*, float** @Aalign.currentw, align 8
  call void @FreeFloatVec(float* %13)
  %14 = load float*, float** @Aalign.previousw, align 8
  call void @FreeFloatVec(float* %14)
  %15 = load float*, float** @Aalign.match, align 8
  call void @FreeFloatVec(float* %15)
  %16 = load float*, float** @Aalign.initverticalw, align 8
  call void @FreeFloatVec(float* %16)
  %17 = load float*, float** @Aalign.lastverticalw, align 8
  call void @FreeFloatVec(float* %17)
  %18 = load float*, float** @Aalign.m, align 8
  call void @FreeFloatVec(float* %18)
  %19 = load i32*, i32** @Aalign.mp, align 8
  call void @FreeIntVec(i32* %19)
  %20 = load i8**, i8*** @Aalign.mseq, align 8
  call void @FreeCharMtx(i8** %20)
  %21 = load float**, float*** @Aalign.cpmx1, align 8
  call void @FreeFloatMtx(float** %21)
  %22 = load float**, float*** @Aalign.cpmx2, align 8
  call void @FreeFloatMtx(float** %22)
  %23 = load float**, float*** @Aalign.floatwork, align 8
  call void @FreeFloatMtx(float** %23)
  %24 = load i32**, i32*** @Aalign.intwork, align 8
  call void @FreeIntMtx(i32** %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.10
  %25 = load i32, i32* %lgth1, align 4
  %conv17 = sitofp i32 %25 to double
  %mul = fmul double 1.100000e+00, %conv17
  %conv18 = fptosi double %mul to i32
  %26 = load i32, i32* @Aalign.orlgth1, align 4
  %cmp19 = icmp sgt i32 %conv18, %26
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %27 = load i32, i32* %lgth1, align 4
  %conv21 = sitofp i32 %27 to double
  %mul22 = fmul double 1.100000e+00, %conv21
  %conv23 = fptosi double %mul22 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %28 = load i32, i32* @Aalign.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %28, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %29 = load i32, i32* %lgth2, align 4
  %conv24 = sitofp i32 %29 to double
  %mul25 = fmul double 1.100000e+00, %conv24
  %conv26 = fptosi double %mul25 to i32
  %30 = load i32, i32* @Aalign.orlgth2, align 4
  %cmp27 = icmp sgt i32 %conv26, %30
  br i1 %cmp27, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %cond.end
  %31 = load i32, i32* %lgth2, align 4
  %conv30 = sitofp i32 %31 to double
  %mul31 = fmul double 1.100000e+00, %conv30
  %conv32 = fptosi double %mul31 to i32
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end
  %32 = load i32, i32* @Aalign.orlgth2, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.29
  %cond35 = phi i32 [ %conv32, %cond.true.29 ], [ %32, %cond.false.33 ]
  %add36 = add nsw i32 %cond35, 100
  store i32 %add36, i32* %ll2, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i32, i32* %ll1, align 4
  %35 = load i32, i32* %ll2, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 %34, i32 %35)
  %36 = load i32, i32* %ll2, align 4
  %add38 = add nsw i32 %36, 2
  %call39 = call float* @AllocateFloatVec(i32 %add38)
  store float* %call39, float** @Aalign.currentw, align 8
  %37 = load i32, i32* %ll2, align 4
  %add40 = add nsw i32 %37, 2
  %call41 = call float* @AllocateFloatVec(i32 %add40)
  store float* %call41, float** @Aalign.previousw, align 8
  %38 = load i32, i32* %ll2, align 4
  %add42 = add nsw i32 %38, 2
  %call43 = call float* @AllocateFloatVec(i32 %add42)
  store float* %call43, float** @Aalign.match, align 8
  %39 = load i32, i32* %ll1, align 4
  %add44 = add nsw i32 %39, 2
  %call45 = call float* @AllocateFloatVec(i32 %add44)
  store float* %call45, float** @Aalign.initverticalw, align 8
  %40 = load i32, i32* %ll1, align 4
  %add46 = add nsw i32 %40, 2
  %call47 = call float* @AllocateFloatVec(i32 %add46)
  store float* %call47, float** @Aalign.lastverticalw, align 8
  %41 = load i32, i32* %ll2, align 4
  %add48 = add nsw i32 %41, 2
  %call49 = call float* @AllocateFloatVec(i32 %add48)
  store float* %call49, float** @Aalign.m, align 8
  %42 = load i32, i32* %ll2, align 4
  %add50 = add nsw i32 %42, 2
  %call51 = call i32* @AllocateIntVec(i32 %add50)
  store i32* %call51, i32** @Aalign.mp, align 8
  %43 = load i32, i32* @njob, align 4
  %44 = load i32, i32* %ll1, align 4
  %45 = load i32, i32* %ll2, align 4
  %add52 = add nsw i32 %44, %45
  %call53 = call i8** @AllocateCharMtx(i32 %43, i32 %add52)
  store i8** %call53, i8*** @Aalign.mseq, align 8
  %46 = load i32, i32* %ll1, align 4
  %add54 = add nsw i32 %46, 2
  %call55 = call float** @AllocateFloatMtx(i32 26, i32 %add54)
  store float** %call55, float*** @Aalign.cpmx1, align 8
  %47 = load i32, i32* %ll2, align 4
  %add56 = add nsw i32 %47, 2
  %call57 = call float** @AllocateFloatMtx(i32 26, i32 %add56)
  store float** %call57, float*** @Aalign.cpmx2, align 8
  %48 = load i32, i32* %ll1, align 4
  %49 = load i32, i32* %ll2, align 4
  %cmp58 = icmp sgt i32 %48, %49
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.34
  %50 = load i32, i32* %ll1, align 4
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.34
  %51 = load i32, i32* %ll2, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi i32 [ %50, %cond.true.60 ], [ %51, %cond.false.61 ]
  %add64 = add nsw i32 %cond63, 2
  %call65 = call float** @AllocateFloatMtx(i32 26, i32 %add64)
  store float** %call65, float*** @Aalign.floatwork, align 8
  %52 = load i32, i32* %ll1, align 4
  %53 = load i32, i32* %ll2, align 4
  %cmp66 = icmp sgt i32 %52, %53
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.end.62
  %54 = load i32, i32* %ll1, align 4
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.62
  %55 = load i32, i32* %ll2, align 4
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.68
  %cond71 = phi i32 [ %54, %cond.true.68 ], [ %55, %cond.false.69 ]
  %add72 = add nsw i32 %cond71, 2
  %call73 = call i32** @AllocateIntMtx(i32 26, i32 %add72)
  store i32** %call73, i32*** @Aalign.intwork, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %57 = load i32, i32* %ll1, align 4
  store i32 %57, i32* @Aalign.orlgth1, align 4
  %58 = load i32, i32* %ll2, align 4
  store i32 %58, i32* @Aalign.orlgth2, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.70, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.75
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %icyc.addr, align 4
  %cmp76 = icmp slt i32 %59, %60
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %i, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load i8**, i8*** @Aalign.mseq, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %62, i64 %idxprom
  %63 = load i8*, i8** %arrayidx78, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load i8**, i8*** @Aalign.mseq1, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %65, i64 %idxprom79
  store i8* %63, i8** %arrayidx80, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.90, %for.end
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %jcyc.addr, align 4
  %cmp82 = icmp slt i32 %67, %68
  br i1 %cmp82, label %for.body.84, label %for.end.92

for.body.84:                                      ; preds = %for.cond.81
  %69 = load i32, i32* %icyc.addr, align 4
  %70 = load i32, i32* %j, align 4
  %add85 = add nsw i32 %69, %70
  %idxprom86 = sext i32 %add85 to i64
  %71 = load i8**, i8*** @Aalign.mseq, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %71, i64 %idxprom86
  %72 = load i8*, i8** %arrayidx87, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load i8**, i8*** @Aalign.mseq2, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %74, i64 %idxprom88
  store i8* %72, i8** %arrayidx89, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.84
  %75 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %75, 1
  store i32 %inc91, i32* %j, align 4
  br label %for.cond.81

for.end.92:                                       ; preds = %for.cond.81
  %76 = load i32, i32* @Aalign.orlgth1, align 4
  %77 = load i32, i32* @commonAlloc1, align 4
  %cmp93 = icmp sgt i32 %76, %77
  br i1 %cmp93, label %if.then.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %for.end.92
  %78 = load i32, i32* @Aalign.orlgth2, align 4
  %79 = load i32, i32* @commonAlloc2, align 4
  %cmp96 = icmp sgt i32 %78, %79
  br i1 %cmp96, label %if.then.98, label %if.end.124

if.then.98:                                       ; preds = %lor.lhs.false.95, %for.end.92
  %80 = load i32, i32* @commonAlloc1, align 4
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %land.lhs.true.101, label %if.end.104

land.lhs.true.101:                                ; preds = %if.then.98
  %81 = load i32, i32* @commonAlloc2, align 4
  %tobool102 = icmp ne i32 %81, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.101
  %82 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %82)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.101, %if.then.98
  %83 = load i32, i32* @Aalign.orlgth1, align 4
  %84 = load i32, i32* @commonAlloc1, align 4
  %cmp105 = icmp sgt i32 %83, %84
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %if.end.104
  %85 = load i32, i32* @Aalign.orlgth1, align 4
  br label %cond.end.109

cond.false.108:                                   ; preds = %if.end.104
  %86 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ %85, %cond.true.107 ], [ %86, %cond.false.108 ]
  store i32 %cond110, i32* %ll199, align 4
  %87 = load i32, i32* @Aalign.orlgth2, align 4
  %88 = load i32, i32* @commonAlloc2, align 4
  %cmp111 = icmp sgt i32 %87, %88
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.109
  %89 = load i32, i32* @Aalign.orlgth2, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.109
  %90 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ %89, %cond.true.113 ], [ %90, %cond.false.114 ]
  store i32 %cond116, i32* %ll2100, align 4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %92 = load i32, i32* %ll199, align 4
  %add117 = add nsw i32 %92, 1
  %93 = load i32, i32* %ll2100, align 4
  %add118 = add nsw i32 %93, 1
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %add117, i32 %add118)
  %94 = load i32, i32* %ll199, align 4
  %add120 = add nsw i32 %94, 10
  %95 = load i32, i32* %ll2100, align 4
  %add121 = add nsw i32 %95, 10
  %call122 = call i32** @AllocateIntMtx(i32 %add120, i32 %add121)
  store i32** %call122, i32*** @commonIP, align 8
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %97 = load i32, i32* %ll199, align 4
  store i32 %97, i32* @commonAlloc1, align 4
  %98 = load i32, i32* %ll2100, align 4
  store i32 %98, i32* @commonAlloc2, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %cond.end.115, %lor.lhs.false.95
  %99 = load i32**, i32*** @commonIP, align 8
  store i32** %99, i32*** @Aalign.ijp, align 8
  %100 = load i8**, i8*** %seq1.addr, align 8
  %101 = load float**, float*** @Aalign.cpmx1, align 8
  %102 = load double*, double** %eff1.addr, align 8
  %103 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %103, i64 0
  %104 = load i8*, i8** %arrayidx125, align 8
  %call126 = call i64 @strlen(i8* %104) #5
  %conv127 = trunc i64 %call126 to i32
  %105 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_calc(i8** %100, float** %101, double* %102, i32 %conv127, i32 %105)
  %106 = load i8**, i8*** %seq2.addr, align 8
  %107 = load float**, float*** @Aalign.cpmx2, align 8
  %108 = load double*, double** %eff2.addr, align 8
  %109 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %109, i64 0
  %110 = load i8*, i8** %arrayidx128, align 8
  %call129 = call i64 @strlen(i8* %110) #5
  %conv130 = trunc i64 %call129 to i32
  %111 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_calc(i8** %106, float** %107, double* %108, i32 %conv130, i32 %111)
  %112 = load float*, float** @Aalign.initverticalw, align 8
  %113 = load float**, float*** @Aalign.cpmx2, align 8
  %114 = load float**, float*** @Aalign.cpmx1, align 8
  %115 = load i32, i32* %lgth1, align 4
  %116 = load float**, float*** @Aalign.floatwork, align 8
  %117 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* %112, float** %113, float** %114, i32 0, i32 %115, float** %116, i32** %117, i32 1)
  %118 = load float*, float** @Aalign.currentw, align 8
  %119 = load float**, float*** @Aalign.cpmx1, align 8
  %120 = load float**, float*** @Aalign.cpmx2, align 8
  %121 = load i32, i32* %lgth2, align 4
  %122 = load float**, float*** @Aalign.floatwork, align 8
  %123 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* %118, float** %119, float** %120, i32 0, i32 %121, float** %122, i32** %123, i32 1)
  %124 = load i32, i32* @outgap, align 4
  %cmp131 = icmp eq i32 %124, 1
  br i1 %cmp131, label %if.then.133, label %if.end.164

if.then.133:                                      ; preds = %if.end.124
  store i32 1, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.146, %if.then.133
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %lgth1, align 4
  %add135 = add nsw i32 %126, 1
  %cmp136 = icmp slt i32 %125, %add135
  br i1 %cmp136, label %for.body.138, label %for.end.148

for.body.138:                                     ; preds = %for.cond.134
  %127 = load i32, i32* @penalty, align 4
  %conv139 = sitofp i32 %127 to double
  %mul140 = fmul double %conv139, 5.000000e-01
  %128 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %128 to i64
  %129 = load float*, float** @Aalign.initverticalw, align 8
  %arrayidx142 = getelementptr inbounds float, float* %129, i64 %idxprom141
  %130 = load float, float* %arrayidx142, align 4
  %conv143 = fpext float %130 to double
  %add144 = fadd double %conv143, %mul140
  %conv145 = fptrunc double %add144 to float
  store float %conv145, float* %arrayidx142, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.138
  %131 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %131, 1
  store i32 %inc147, i32* %i, align 4
  br label %for.cond.134

for.end.148:                                      ; preds = %for.cond.134
  store i32 1, i32* %j, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.161, %for.end.148
  %132 = load i32, i32* %j, align 4
  %133 = load i32, i32* %lgth2, align 4
  %add150 = add nsw i32 %133, 1
  %cmp151 = icmp slt i32 %132, %add150
  br i1 %cmp151, label %for.body.153, label %for.end.163

for.body.153:                                     ; preds = %for.cond.149
  %134 = load i32, i32* @penalty, align 4
  %conv154 = sitofp i32 %134 to double
  %mul155 = fmul double %conv154, 5.000000e-01
  %135 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %135 to i64
  %136 = load float*, float** @Aalign.currentw, align 8
  %arrayidx157 = getelementptr inbounds float, float* %136, i64 %idxprom156
  %137 = load float, float* %arrayidx157, align 4
  %conv158 = fpext float %137 to double
  %add159 = fadd double %conv158, %mul155
  %conv160 = fptrunc double %add159 to float
  store float %conv160, float* %arrayidx157, align 4
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.153
  %138 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %138, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.149

for.end.163:                                      ; preds = %for.cond.149
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.163, %if.end.124
  store i32 0, i32* %j, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.181, %if.end.164
  %139 = load i32, i32* %j, align 4
  %140 = load i32, i32* %lgth2, align 4
  %add166 = add nsw i32 %140, 1
  %cmp167 = icmp slt i32 %139, %add166
  br i1 %cmp167, label %for.body.169, label %for.end.183

for.body.169:                                     ; preds = %for.cond.165
  %141 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %141, 1
  %idxprom170 = sext i32 %sub to i64
  %142 = load float*, float** @Aalign.currentw, align 8
  %arrayidx171 = getelementptr inbounds float, float* %142, i64 %idxprom170
  %143 = load float, float* %arrayidx171, align 4
  %conv172 = fpext float %143 to double
  %144 = load i32, i32* @penalty, align 4
  %conv173 = sitofp i32 %144 to double
  %mul174 = fmul double %conv173, 5.000000e-01
  %add175 = fadd double %conv172, %mul174
  %conv176 = fptrunc double %add175 to float
  %145 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %145 to i64
  %146 = load float*, float** @Aalign.m, align 8
  %arrayidx178 = getelementptr inbounds float, float* %146, i64 %idxprom177
  store float %conv176, float* %arrayidx178, align 4
  %147 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %147 to i64
  %148 = load i32*, i32** @Aalign.mp, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %148, i64 %idxprom179
  store i32 0, i32* %arrayidx180, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.169
  %149 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %149, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.165

for.end.183:                                      ; preds = %for.cond.165
  %150 = load i32, i32* %lgth2, align 4
  %sub184 = sub nsw i32 %150, 1
  %idxprom185 = sext i32 %sub184 to i64
  %151 = load float*, float** @Aalign.currentw, align 8
  %arrayidx186 = getelementptr inbounds float, float* %151, i64 %idxprom185
  %152 = load float, float* %arrayidx186, align 4
  %153 = load float*, float** @Aalign.lastverticalw, align 8
  %arrayidx187 = getelementptr inbounds float, float* %153, i64 0
  store float %152, float* %arrayidx187, align 4
  %154 = load i32, i32* @outgap, align 4
  %tobool188 = icmp ne i32 %154, 0
  br i1 %tobool188, label %if.then.189, label %if.else

if.then.189:                                      ; preds = %for.end.183
  %155 = load i32, i32* %lgth1, align 4
  %add190 = add nsw i32 %155, 1
  store i32 %add190, i32* %lasti, align 4
  br label %if.end.191

if.else:                                          ; preds = %for.end.183
  %156 = load i32, i32* %lgth1, align 4
  store i32 %156, i32* %lasti, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else, %if.then.189
  store i32 1, i32* %i, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.294, %if.end.191
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %lasti, align 4
  %cmp193 = icmp slt i32 %157, %158
  br i1 %cmp193, label %for.body.195, label %for.end.296

for.body.195:                                     ; preds = %for.cond.192
  %159 = load float*, float** @Aalign.previousw, align 8
  %160 = load float*, float** @Aalign.currentw, align 8
  %161 = load i32, i32* %lgth2, align 4
  %add196 = add nsw i32 %161, 1
  call void @floatncpy(float* %159, float* %160, i32 %add196)
  %162 = load i32, i32* %i, align 4
  %sub197 = sub nsw i32 %162, 1
  %idxprom198 = sext i32 %sub197 to i64
  %163 = load float*, float** @Aalign.initverticalw, align 8
  %arrayidx199 = getelementptr inbounds float, float* %163, i64 %idxprom198
  %164 = load float, float* %arrayidx199, align 4
  %165 = load float*, float** @Aalign.previousw, align 8
  %arrayidx200 = getelementptr inbounds float, float* %165, i64 0
  store float %164, float* %arrayidx200, align 4
  %166 = load float*, float** @Aalign.currentw, align 8
  %167 = load float**, float*** @Aalign.cpmx1, align 8
  %168 = load float**, float*** @Aalign.cpmx2, align 8
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %lgth2, align 4
  %171 = load float**, float*** @Aalign.floatwork, align 8
  %172 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* %166, float** %167, float** %168, i32 %169, i32 %170, float** %171, i32** %172, i32 0)
  %173 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %173 to i64
  %174 = load float*, float** @Aalign.initverticalw, align 8
  %arrayidx202 = getelementptr inbounds float, float* %174, i64 %idxprom201
  %175 = load float, float* %arrayidx202, align 4
  %176 = load float*, float** @Aalign.currentw, align 8
  %arrayidx203 = getelementptr inbounds float, float* %176, i64 0
  store float %175, float* %arrayidx203, align 4
  %177 = load float*, float** @Aalign.previousw, align 8
  %arrayidx204 = getelementptr inbounds float, float* %177, i64 0
  %178 = load float, float* %arrayidx204, align 4
  %conv205 = fpext float %178 to double
  %179 = load i32, i32* @penalty, align 4
  %conv206 = sitofp i32 %179 to double
  %mul207 = fmul double %conv206, 5.000000e-01
  %add208 = fadd double %conv205, %mul207
  %conv209 = fptrunc double %add208 to float
  store float %conv209, float* @Aalign.mi, align 4
  store i32 0, i32* @Aalign.mpi, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.286, %for.body.195
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %lgth2, align 4
  %add211 = add nsw i32 %181, 1
  %cmp212 = icmp slt i32 %180, %add211
  br i1 %cmp212, label %for.body.214, label %for.end.288

for.body.214:                                     ; preds = %for.cond.210
  %182 = load i32, i32* %j, align 4
  %sub215 = sub nsw i32 %182, 1
  %idxprom216 = sext i32 %sub215 to i64
  %183 = load float*, float** @Aalign.previousw, align 8
  %arrayidx217 = getelementptr inbounds float, float* %183, i64 %idxprom216
  %184 = load float, float* %arrayidx217, align 4
  store float %184, float* %wm, align 4
  %185 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %185 to i64
  %186 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %186 to i64
  %187 = load i32**, i32*** @Aalign.ijp, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %187, i64 %idxprom219
  %188 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %188, i64 %idxprom218
  store i32 0, i32* %arrayidx221, align 4
  %189 = load i32, i32* @penalty, align 4
  %conv222 = sitofp i32 %189 to double
  %mul223 = fmul double %conv222, 5.000000e-01
  %conv224 = fptrunc double %mul223 to float
  store float %conv224, float* %g, align 4
  %190 = load float, float* @Aalign.mi, align 4
  %191 = load float, float* %g, align 4
  %add225 = fadd float %190, %191
  store float %add225, float* %x, align 4
  %192 = load float, float* %x, align 4
  %193 = load float, float* %wm, align 4
  %cmp226 = fcmp ogt float %192, %193
  br i1 %cmp226, label %if.then.228, label %if.end.235

if.then.228:                                      ; preds = %for.body.214
  %194 = load float, float* %x, align 4
  store float %194, float* %wm, align 4
  %195 = load i32, i32* %j, align 4
  %196 = load i32, i32* @Aalign.mpi, align 4
  %sub229 = sub nsw i32 %195, %196
  %sub230 = sub nsw i32 0, %sub229
  %197 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %197 to i64
  %198 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %198 to i64
  %199 = load i32**, i32*** @Aalign.ijp, align 8
  %arrayidx233 = getelementptr inbounds i32*, i32** %199, i64 %idxprom232
  %200 = load i32*, i32** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %200, i64 %idxprom231
  store i32 %sub230, i32* %arrayidx234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.228, %for.body.214
  %201 = load i32, i32* @penalty, align 4
  %conv236 = sitofp i32 %201 to double
  %mul237 = fmul double %conv236, 5.000000e-01
  %conv238 = fptrunc double %mul237 to float
  store float %conv238, float* %g, align 4
  %202 = load i32, i32* %j, align 4
  %sub239 = sub nsw i32 %202, 1
  %idxprom240 = sext i32 %sub239 to i64
  %203 = load float*, float** @Aalign.previousw, align 8
  %arrayidx241 = getelementptr inbounds float, float* %203, i64 %idxprom240
  %204 = load float, float* %arrayidx241, align 4
  %205 = load float, float* %g, align 4
  %add242 = fadd float %204, %205
  store float %add242, float* %x, align 4
  %206 = load float, float* @Aalign.mi, align 4
  %207 = load float, float* %x, align 4
  %cmp243 = fcmp ole float %206, %207
  br i1 %cmp243, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.end.235
  %208 = load float, float* %x, align 4
  store float %208, float* @Aalign.mi, align 4
  %209 = load i32, i32* %j, align 4
  %sub246 = sub nsw i32 %209, 1
  store i32 %sub246, i32* @Aalign.mpi, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.end.235
  %210 = load i32, i32* @penalty, align 4
  %conv248 = sitofp i32 %210 to double
  %mul249 = fmul double %conv248, 5.000000e-01
  %conv250 = fptrunc double %mul249 to float
  store float %conv250, float* %g, align 4
  %211 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %211 to i64
  %212 = load float*, float** @Aalign.m, align 8
  %arrayidx252 = getelementptr inbounds float, float* %212, i64 %idxprom251
  %213 = load float, float* %arrayidx252, align 4
  %214 = load float, float* %g, align 4
  %add253 = fadd float %213, %214
  store float %add253, float* %x, align 4
  %215 = load float, float* %x, align 4
  %216 = load float, float* %wm, align 4
  %cmp254 = fcmp ogt float %215, %216
  br i1 %cmp254, label %if.then.256, label %if.end.264

if.then.256:                                      ; preds = %if.end.247
  %217 = load float, float* %x, align 4
  store float %217, float* %wm, align 4
  %218 = load i32, i32* %i, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom257 = sext i32 %219 to i64
  %220 = load i32*, i32** @Aalign.mp, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %220, i64 %idxprom257
  %221 = load i32, i32* %arrayidx258, align 4
  %sub259 = sub nsw i32 %218, %221
  %222 = load i32, i32* %j, align 4
  %idxprom260 = sext i32 %222 to i64
  %223 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %223 to i64
  %224 = load i32**, i32*** @Aalign.ijp, align 8
  %arrayidx262 = getelementptr inbounds i32*, i32** %224, i64 %idxprom261
  %225 = load i32*, i32** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %225, i64 %idxprom260
  store i32 %sub259, i32* %arrayidx263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.256, %if.end.247
  %226 = load i32, i32* @penalty, align 4
  %conv265 = sitofp i32 %226 to double
  %mul266 = fmul double %conv265, 5.000000e-01
  %conv267 = fptrunc double %mul266 to float
  store float %conv267, float* %g, align 4
  %227 = load i32, i32* %j, align 4
  %sub268 = sub nsw i32 %227, 1
  %idxprom269 = sext i32 %sub268 to i64
  %228 = load float*, float** @Aalign.previousw, align 8
  %arrayidx270 = getelementptr inbounds float, float* %228, i64 %idxprom269
  %229 = load float, float* %arrayidx270, align 4
  %230 = load float, float* %g, align 4
  %add271 = fadd float %229, %230
  store float %add271, float* %x, align 4
  %231 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %231 to i64
  %232 = load float*, float** @Aalign.m, align 8
  %arrayidx273 = getelementptr inbounds float, float* %232, i64 %idxprom272
  %233 = load float, float* %arrayidx273, align 4
  %234 = load float, float* %x, align 4
  %cmp274 = fcmp ole float %233, %234
  br i1 %cmp274, label %if.then.276, label %if.end.282

if.then.276:                                      ; preds = %if.end.264
  %235 = load float, float* %x, align 4
  %236 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %236 to i64
  %237 = load float*, float** @Aalign.m, align 8
  %arrayidx278 = getelementptr inbounds float, float* %237, i64 %idxprom277
  store float %235, float* %arrayidx278, align 4
  %238 = load i32, i32* %i, align 4
  %sub279 = sub nsw i32 %238, 1
  %239 = load i32, i32* %j, align 4
  %idxprom280 = sext i32 %239 to i64
  %240 = load i32*, i32** @Aalign.mp, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %240, i64 %idxprom280
  store i32 %sub279, i32* %arrayidx281, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.276, %if.end.264
  %241 = load float, float* %wm, align 4
  %242 = load i32, i32* %j, align 4
  %idxprom283 = sext i32 %242 to i64
  %243 = load float*, float** @Aalign.currentw, align 8
  %arrayidx284 = getelementptr inbounds float, float* %243, i64 %idxprom283
  %244 = load float, float* %arrayidx284, align 4
  %add285 = fadd float %244, %241
  store float %add285, float* %arrayidx284, align 4
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.282
  %245 = load i32, i32* %j, align 4
  %inc287 = add nsw i32 %245, 1
  store i32 %inc287, i32* %j, align 4
  br label %for.cond.210

for.end.288:                                      ; preds = %for.cond.210
  %246 = load i32, i32* %lgth2, align 4
  %sub289 = sub nsw i32 %246, 1
  %idxprom290 = sext i32 %sub289 to i64
  %247 = load float*, float** @Aalign.currentw, align 8
  %arrayidx291 = getelementptr inbounds float, float* %247, i64 %idxprom290
  %248 = load float, float* %arrayidx291, align 4
  %249 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %249 to i64
  %250 = load float*, float** @Aalign.lastverticalw, align 8
  %arrayidx293 = getelementptr inbounds float, float* %250, i64 %idxprom292
  store float %248, float* %arrayidx293, align 4
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.end.288
  %251 = load i32, i32* %i, align 4
  %inc295 = add nsw i32 %251, 1
  store i32 %inc295, i32* %i, align 4
  br label %for.cond.192

for.end.296:                                      ; preds = %for.cond.192
  %252 = load float*, float** @Aalign.currentw, align 8
  %253 = load float*, float** @Aalign.lastverticalw, align 8
  %254 = load i8**, i8*** %seq1.addr, align 8
  %255 = load i8**, i8*** %seq2.addr, align 8
  %256 = load i8**, i8*** @Aalign.mseq1, align 8
  %257 = load i8**, i8*** @Aalign.mseq2, align 8
  %258 = load float**, float*** @Aalign.cpmx1, align 8
  %259 = load float**, float*** @Aalign.cpmx2, align 8
  %260 = load i32**, i32*** @Aalign.ijp, align 8
  %261 = load i32, i32* %icyc.addr, align 4
  %262 = load i32, i32* %jcyc.addr, align 4
  %call297 = call float @Atracking(float* %252, float* %253, i8** %254, i8** %255, i8** %256, i8** %257, float** %258, float** %259, i32** %260, i32 %261, i32 %262)
  %263 = load i8**, i8*** @Aalign.mseq1, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %263, i64 0
  %264 = load i8*, i8** %arrayidx298, align 8
  %call299 = call i64 @strlen(i8* %264) #5
  %conv300 = trunc i64 %call299 to i32
  store i32 %conv300, i32* %resultlen, align 4
  %265 = load i32, i32* %alloclen.addr, align 4
  %266 = load i32, i32* %resultlen, align 4
  %cmp301 = icmp slt i32 %265, %266
  br i1 %cmp301, label %if.then.306, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %for.end.296
  %267 = load i32, i32* %resultlen, align 4
  %cmp304 = icmp sgt i32 %267, 5000000
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %lor.lhs.false.303, %for.end.296
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %269 = load i32, i32* %alloclen.addr, align 4
  %270 = load i32, i32* %resultlen, align 4
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %268, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %269, i32 %270, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %lor.lhs.false.303
  store i32 0, i32* %i, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.318, %if.end.308
  %271 = load i32, i32* %i, align 4
  %272 = load i32, i32* %icyc.addr, align 4
  %cmp310 = icmp slt i32 %271, %272
  br i1 %cmp310, label %for.body.312, label %for.end.320

for.body.312:                                     ; preds = %for.cond.309
  %273 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %273 to i64
  %274 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx314 = getelementptr inbounds i8*, i8** %274, i64 %idxprom313
  %275 = load i8*, i8** %arrayidx314, align 8
  %276 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %276 to i64
  %277 = load i8**, i8*** @Aalign.mseq1, align 8
  %arrayidx316 = getelementptr inbounds i8*, i8** %277, i64 %idxprom315
  %278 = load i8*, i8** %arrayidx316, align 8
  %call317 = call i8* @strcpy(i8* %275, i8* %278) #4
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.312
  %279 = load i32, i32* %i, align 4
  %inc319 = add nsw i32 %279, 1
  store i32 %inc319, i32* %i, align 4
  br label %for.cond.309

for.end.320:                                      ; preds = %for.cond.309
  store i32 0, i32* %j, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.330, %for.end.320
  %280 = load i32, i32* %j, align 4
  %281 = load i32, i32* %jcyc.addr, align 4
  %cmp322 = icmp slt i32 %280, %281
  br i1 %cmp322, label %for.body.324, label %for.end.332

for.body.324:                                     ; preds = %for.cond.321
  %282 = load i32, i32* %j, align 4
  %idxprom325 = sext i32 %282 to i64
  %283 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx326 = getelementptr inbounds i8*, i8** %283, i64 %idxprom325
  %284 = load i8*, i8** %arrayidx326, align 8
  %285 = load i32, i32* %j, align 4
  %idxprom327 = sext i32 %285 to i64
  %286 = load i8**, i8*** @Aalign.mseq2, align 8
  %arrayidx328 = getelementptr inbounds i8*, i8** %286, i64 %idxprom327
  %287 = load i8*, i8** %arrayidx328, align 8
  %call329 = call i8* @strcpy(i8* %284, i8* %287) #4
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.body.324
  %288 = load i32, i32* %j, align 4
  %inc331 = add nsw i32 %288, 1
  store i32 %inc331, i32* %j, align 4
  br label %for.cond.321

for.end.332:                                      ; preds = %for.cond.321
  %289 = load float, float* %wm, align 4
  ret float %289
}

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @FreeFloatVec(float*) #1

declare void @FreeIntVec(i32*) #1

declare void @FreeCharMtx(i8**) #1

declare void @FreeFloatMtx(float**) #1

declare void @FreeIntMtx(i32**) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare float* @AllocateFloatVec(i32) #1

declare i32* @AllocateIntVec(i32) #1

declare float** @AllocateFloatMtx(i32, i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

declare void @cpmx_calc(i8**, float**, double*, i32, i32) #1

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
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %scarr = alloca [26 x float], align 16
  %cpmxpd = alloca float**, align 8
  %cpmxpdn = alloca i32**, align 8
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
  store i32 0, i32* %count, align 4
  %2 = load i32, i32* %initialize.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
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
  %16 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load i32, i32* %count, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load float**, float*** %cpmxpd, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %18, i64 %idxprom13
  %19 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %19, i64 %idxprom12
  store float %15, float* %arrayidx15, align 4
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32, i32* %count, align 4
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
  %27 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %count, align 4
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
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.body.31
  %34 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %34, 26
  br i1 %cmp35, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx39, i32 0, i64 %idxprom37
  %37 = load i32, i32* %arrayidx40, align 4
  %conv = sitofp i32 %37 to float
  %38 = load i32, i32* %i1.addr, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load float**, float*** %cpmx1.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %40, i64 %idxprom42
  %41 = load float*, float** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %41, i64 %idxprom41
  %42 = load float, float* %arrayidx44, align 4
  %mul = fmul float %conv, %42
  %43 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom45
  %44 = load float, float* %arrayidx46, align 4
  %add = fadd float %44, %mul
  store float %add, float* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.36
  %45 = load i32, i32* %k, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %k, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %46 = load i32, i32* %l, align 4
  %inc51 = add nsw i32 %46, 1
  store i32 %inc51, i32* %l, align 4
  br label %for.cond.29

for.end.52:                                       ; preds = %for.cond.29
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.84, %for.end.52
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %lgth2.addr, align 4
  %cmp54 = icmp slt i32 %47, %48
  br i1 %cmp54, label %for.body.56, label %for.end.86

for.body.56:                                      ; preds = %for.cond.53
  %49 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %49 to i64
  %50 = load float*, float** %match.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %50, i64 %idxprom57
  store float 0.000000e+00, float* %arrayidx58, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.81, %for.body.56
  %51 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %52 to i64
  %53 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %53, i64 %idxprom61
  %54 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %54, i64 %idxprom60
  %55 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %55, -1
  br i1 %cmp64, label %for.body.66, label %for.end.83

for.body.66:                                      ; preds = %for.cond.59
  %56 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %56 to i64
  %57 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %57 to i64
  %58 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %58, i64 %idxprom68
  %59 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %59, i64 %idxprom67
  %60 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom71
  %61 = load float, float* %arrayidx72, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %62 to i64
  %63 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load float**, float*** %cpmxpd, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %64, i64 %idxprom74
  %65 = load float*, float** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds float, float* %65, i64 %idxprom73
  %66 = load float, float* %arrayidx76, align 4
  %mul77 = fmul float %61, %66
  %67 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %67 to i64
  %68 = load float*, float** %match.addr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %68, i64 %idxprom78
  %69 = load float, float* %arrayidx79, align 4
  %add80 = fadd float %69, %mul77
  store float %add80, float* %arrayidx79, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.66
  %70 = load i32, i32* %k, align 4
  %inc82 = add nsw i32 %70, 1
  store i32 %inc82, i32* %k, align 4
  br label %for.cond.59

for.end.83:                                       ; preds = %for.cond.59
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %71 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %71, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond.53

for.end.86:                                       ; preds = %for.cond.53
  ret void
}

declare void @floatncpy(float*, float*, i32) #1

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
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %iin = alloca i32, align 4
  %jin = alloca i32, align 4
  %ifi = alloca i32, align 4
  %jfi = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
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
  store i32 0, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.223, %for.end.91
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %lgth1, align 4
  %84 = load i32, i32* %lgth2, align 4
  %add93 = add nsw i32 %83, %84
  %cmp94 = icmp sle i32 %82, %add93
  br i1 %cmp94, label %for.body.96, label %for.end.225

for.body.96:                                      ; preds = %for.cond.92
  %85 = load i32, i32* %jin, align 4
  %idxprom97 = sext i32 %85 to i64
  %86 = load i32, i32* %iin, align 4
  %idxprom98 = sext i32 %86 to i64
  %87 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %87, i64 %idxprom98
  %88 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %88, i64 %idxprom97
  %89 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp slt i32 %89, 0
  br i1 %cmp101, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %for.body.96
  %90 = load i32, i32* %iin, align 4
  %sub104 = sub nsw i32 %90, 1
  store i32 %sub104, i32* %ifi, align 4
  %91 = load i32, i32* %jin, align 4
  %92 = load i32, i32* %jin, align 4
  %idxprom105 = sext i32 %92 to i64
  %93 = load i32, i32* %iin, align 4
  %idxprom106 = sext i32 %93 to i64
  %94 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %94, i64 %idxprom106
  %95 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %95, i64 %idxprom105
  %96 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %91, %96
  store i32 %add109, i32* %jfi, align 4
  br label %if.end.128

if.else.110:                                      ; preds = %for.body.96
  %97 = load i32, i32* %jin, align 4
  %idxprom111 = sext i32 %97 to i64
  %98 = load i32, i32* %iin, align 4
  %idxprom112 = sext i32 %98 to i64
  %99 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %99, i64 %idxprom112
  %100 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %100, i64 %idxprom111
  %101 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp sgt i32 %101, 0
  br i1 %cmp115, label %if.then.117, label %if.else.124

if.then.117:                                      ; preds = %if.else.110
  %102 = load i32, i32* %iin, align 4
  %103 = load i32, i32* %jin, align 4
  %idxprom118 = sext i32 %103 to i64
  %104 = load i32, i32* %iin, align 4
  %idxprom119 = sext i32 %104 to i64
  %105 = load i32**, i32*** %ijp.addr, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %105, i64 %idxprom119
  %106 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %106, i64 %idxprom118
  %107 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %102, %107
  store i32 %sub122, i32* %ifi, align 4
  %108 = load i32, i32* %jin, align 4
  %sub123 = sub nsw i32 %108, 1
  store i32 %sub123, i32* %jfi, align 4
  br label %if.end.127

if.else.124:                                      ; preds = %if.else.110
  %109 = load i32, i32* %iin, align 4
  %sub125 = sub nsw i32 %109, 1
  store i32 %sub125, i32* %ifi, align 4
  %110 = load i32, i32* %jin, align 4
  %sub126 = sub nsw i32 %110, 1
  store i32 %sub126, i32* %jfi, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.117
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.103
  %111 = load i32, i32* %iin, align 4
  %112 = load i32, i32* %ifi, align 4
  %sub129 = sub nsw i32 %111, %112
  store i32 %sub129, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.153, %if.end.128
  %113 = load i32, i32* %l, align 4
  %dec = add nsw i32 %113, -1
  store i32 %dec, i32* %l, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.141, %while.body
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %icyc.addr, align 4
  %cmp131 = icmp slt i32 %114, %115
  br i1 %cmp131, label %for.body.133, label %for.end.143

for.body.133:                                     ; preds = %for.cond.130
  %116 = load i32, i32* %ifi, align 4
  %117 = load i32, i32* %l, align 4
  %add134 = add nsw i32 %116, %117
  %idxprom135 = sext i32 %add134 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %118 to i64
  %119 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %119, i64 %idxprom136
  %120 = load i8*, i8** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %120, i64 %idxprom135
  %121 = load i8, i8* %arrayidx138, align 1
  %122 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %122 to i64
  %123 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8*, i8** %123, i64 %idxprom139
  %124 = load i8*, i8** %arrayidx140, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %incdec.ptr, i8** %arrayidx140, align 8
  store i8 %121, i8* %incdec.ptr, align 1
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.133
  %125 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %125, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.130

for.end.143:                                      ; preds = %for.cond.130
  store i32 0, i32* %j, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.151, %for.end.143
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %jcyc.addr, align 4
  %cmp145 = icmp slt i32 %126, %127
  br i1 %cmp145, label %for.body.147, label %for.end.153

for.body.147:                                     ; preds = %for.cond.144
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %128 = load i8, i8* %arraydecay, align 1
  %129 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %129 to i64
  %130 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %130, i64 %idxprom148
  %131 = load i8*, i8** %arrayidx149, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %incdec.ptr150, i8** %arrayidx149, align 8
  store i8 %128, i8* %incdec.ptr150, align 1
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.147
  %132 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %132, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.144

for.end.153:                                      ; preds = %for.cond.144
  %133 = load i32, i32* %k, align 4
  %inc154 = add nsw i32 %133, 1
  store i32 %inc154, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %134 = load i32, i32* %jin, align 4
  %135 = load i32, i32* %jfi, align 4
  %sub155 = sub nsw i32 %134, %135
  store i32 %sub155, i32* %l, align 4
  br label %while.cond.156

while.cond.156:                                   ; preds = %for.end.185, %while.end
  %136 = load i32, i32* %l, align 4
  %dec157 = add nsw i32 %136, -1
  store i32 %dec157, i32* %l, align 4
  %tobool158 = icmp ne i32 %dec157, 0
  br i1 %tobool158, label %while.body.159, label %while.end.187

while.body.159:                                   ; preds = %while.cond.156
  store i32 0, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.168, %while.body.159
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %icyc.addr, align 4
  %cmp161 = icmp slt i32 %137, %138
  br i1 %cmp161, label %for.body.163, label %for.end.170

for.body.163:                                     ; preds = %for.cond.160
  %arraydecay164 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %139 = load i8, i8* %arraydecay164, align 1
  %140 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %140 to i64
  %141 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %141, i64 %idxprom165
  %142 = load i8*, i8** %arrayidx166, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %incdec.ptr167, i8** %arrayidx166, align 8
  store i8 %139, i8* %incdec.ptr167, align 1
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.163
  %143 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %143, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.160

for.end.170:                                      ; preds = %for.cond.160
  store i32 0, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.183, %for.end.170
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* %jcyc.addr, align 4
  %cmp172 = icmp slt i32 %144, %145
  br i1 %cmp172, label %for.body.174, label %for.end.185

for.body.174:                                     ; preds = %for.cond.171
  %146 = load i32, i32* %jfi, align 4
  %147 = load i32, i32* %l, align 4
  %add175 = add nsw i32 %146, %147
  %idxprom176 = sext i32 %add175 to i64
  %148 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %148 to i64
  %149 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %149, i64 %idxprom177
  %150 = load i8*, i8** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %150, i64 %idxprom176
  %151 = load i8, i8* %arrayidx179, align 1
  %152 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %152 to i64
  %153 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %153, i64 %idxprom180
  %154 = load i8*, i8** %arrayidx181, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %incdec.ptr182, i8** %arrayidx181, align 8
  store i8 %151, i8* %incdec.ptr182, align 1
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.174
  %155 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %155, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.171

for.end.185:                                      ; preds = %for.cond.171
  %156 = load i32, i32* %k, align 4
  %inc186 = add nsw i32 %156, 1
  store i32 %inc186, i32* %k, align 4
  br label %while.cond.156

while.end.187:                                    ; preds = %while.cond.156
  %157 = load i32, i32* %iin, align 4
  %cmp188 = icmp sle i32 %157, 0
  br i1 %cmp188, label %if.then.192, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.187
  %158 = load i32, i32* %jin, align 4
  %cmp190 = icmp sle i32 %158, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %lor.lhs.false, %while.end.187
  br label %for.end.225

if.end.193:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.205, %if.end.193
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %icyc.addr, align 4
  %cmp195 = icmp slt i32 %159, %160
  br i1 %cmp195, label %for.body.197, label %for.end.207

for.body.197:                                     ; preds = %for.cond.194
  %161 = load i32, i32* %ifi, align 4
  %idxprom198 = sext i32 %161 to i64
  %162 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %162 to i64
  %163 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %163, i64 %idxprom199
  %164 = load i8*, i8** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %164, i64 %idxprom198
  %165 = load i8, i8* %arrayidx201, align 1
  %166 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %166 to i64
  %167 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx203 = getelementptr inbounds i8*, i8** %167, i64 %idxprom202
  %168 = load i8*, i8** %arrayidx203, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %incdec.ptr204, i8** %arrayidx203, align 8
  store i8 %165, i8* %incdec.ptr204, align 1
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.197
  %169 = load i32, i32* %i, align 4
  %inc206 = add nsw i32 %169, 1
  store i32 %inc206, i32* %i, align 4
  br label %for.cond.194

for.end.207:                                      ; preds = %for.cond.194
  store i32 0, i32* %j, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.219, %for.end.207
  %170 = load i32, i32* %j, align 4
  %171 = load i32, i32* %jcyc.addr, align 4
  %cmp209 = icmp slt i32 %170, %171
  br i1 %cmp209, label %for.body.211, label %for.end.221

for.body.211:                                     ; preds = %for.cond.208
  %172 = load i32, i32* %jfi, align 4
  %idxprom212 = sext i32 %172 to i64
  %173 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %173 to i64
  %174 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx214 = getelementptr inbounds i8*, i8** %174, i64 %idxprom213
  %175 = load i8*, i8** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %175, i64 %idxprom212
  %176 = load i8, i8* %arrayidx215, align 1
  %177 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %177 to i64
  %178 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %178, i64 %idxprom216
  %179 = load i8*, i8** %arrayidx217, align 8
  %incdec.ptr218 = getelementptr inbounds i8, i8* %179, i32 -1
  store i8* %incdec.ptr218, i8** %arrayidx217, align 8
  store i8 %176, i8* %incdec.ptr218, align 1
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.211
  %180 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %180, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.208

for.end.221:                                      ; preds = %for.cond.208
  %181 = load i32, i32* %k, align 4
  %inc222 = add nsw i32 %181, 1
  store i32 %inc222, i32* %k, align 4
  %182 = load i32, i32* %ifi, align 4
  store i32 %182, i32* %iin, align 4
  %183 = load i32, i32* %jfi, align 4
  store i32 %183, i32* %jin, align 4
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.end.221
  %184 = load i32, i32* %k, align 4
  %inc224 = add nsw i32 %184, 1
  store i32 %inc224, i32* %k, align 4
  br label %for.cond.92

for.end.225:                                      ; preds = %if.then.192, %for.cond.92
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
