; ModuleID = './MultiSource.Benchmarks.mafft/4.suboptalign11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._shuryoten = type { i32, i32, float, %struct._shuryoten*, %struct._shuryoten* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@suboptalign11.used = internal global i32** null, align 8
@suboptalign11.mi = internal global float 0.000000e+00, align 4
@suboptalign11.m = internal global float* null, align 8
@suboptalign11.Mi = internal global float 0.000000e+00, align 4
@suboptalign11.largeM = internal global float* null, align 8
@suboptalign11.ijpi = internal global i32** null, align 8
@suboptalign11.ijpj = internal global i32** null, align 8
@suboptalign11.mpi = internal global i32 0, align 4
@suboptalign11.mp = internal global i32* null, align 8
@suboptalign11.Mpi = internal global i32 0, align 4
@suboptalign11.Mp = internal global i32* null, align 8
@suboptalign11.w1 = internal global float* null, align 8
@suboptalign11.w2 = internal global float* null, align 8
@suboptalign11.initverticalw = internal global float* null, align 8
@suboptalign11.lastverticalw = internal global float* null, align 8
@suboptalign11.mseq1 = internal global i8** null, align 8
@suboptalign11.mseq2 = internal global i8** null, align 8
@suboptalign11.cpmx1 = internal global float** null, align 8
@suboptalign11.cpmx2 = internal global float** null, align 8
@suboptalign11.intwork = internal global i32** null, align 8
@suboptalign11.floatwork = internal global float** null, align 8
@suboptalign11.orlgth1 = internal global i32 0, align 4
@suboptalign11.orlgth2 = internal global i32 0, align 4
@penalty = external global i32, align 4
@penalty_OP = external global i32, align 4
@penalty_ex = external global i32, align 4
@offset = external global i32, align 4
@suboptalign11.shuryo = internal global %struct._shuryoten* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"in suboptalign11\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.3\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.4\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.5\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.6\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.7\0A\00", align 1
@njob = external global i32, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 2\0A\00", align 1
@commonAlloc1 = external global i32, align 4
@commonAlloc2 = external global i32, align 4
@commonIP = external global i32**, align 8
@commonJP = external global i32**, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 3\0A\00", align 1
@localstop = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"shuryo[%d].i,j,wm = %d,%d,%f\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"maxwm = %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"endali = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"endalj = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"k=%d, shuryo[k].i,j,wm=%d,%d,%f go\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external global [128 x [128 x i32]], align 16
@gentracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1
@gentracking.res1 = internal global i8* null, align 8
@gentracking.res2 = internal global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"mseq1=%s\0Amseq2=%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @suboptalign11(i8** %seq1, i8** %seq2, i32 %alloclen, i32* %off1pt, i32* %off2pt, %struct._LocalHom* %lhmpt) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %alloclen.addr = alloca i32, align 4
  %off1pt.addr = alloca i32*, align 8
  %off2pt.addr = alloca i32*, align 8
  %lhmpt.addr = alloca %struct._LocalHom*, align 8
  %k = alloca i32, align 4
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
  %numshuryo = alloca i32, align 4
  %minshuryowm = alloca float, align 4
  %minshuryopos = alloca i32, align 4
  %resf = alloca float, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %ll1112 = alloca i32, align 4
  %ll2113 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i32* %off1pt, i32** %off1pt.addr, align 8
  store i32* %off2pt, i32** %off2pt.addr, align 8
  store %struct._LocalHom* %lhmpt, %struct._LocalHom** %lhmpt.addr, align 8
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
  store float 0.000000e+00, float* %minshuryowm, align 4
  store i32 0, i32* %minshuryopos, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %tobool = icmp ne %struct._shuryoten* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noalias i8* @calloc(i64 100, i64 32) #4
  %8 = bitcast i8* %call5 to %struct._shuryoten*
  store %struct._shuryoten* %8, %struct._shuryoten** @suboptalign11.shuryo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %11, i64 %idxprom
  %i7 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %i7, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx9 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %13, i64 %idxprom8
  %j10 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx9, i32 0, i32 1
  store i32 -1, i32* %j10, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx12 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %15, i64 %idxprom11
  %wm13 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx12, i32 0, i32 2
  store float 0.000000e+00, float* %wm13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %numshuryo, align 4
  %17 = load i32, i32* @suboptalign11.orlgth1, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.end
  %18 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i64 @strlen(i8* %19) #5
  %conv20 = trunc i64 %call19 to i32
  store i32 %conv20, i32* %lgth1, align 4
  %20 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i64 @strlen(i8* %21) #5
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %lgth2, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  %23 = load i32, i32* %lgth1, align 4
  %24 = load i32, i32* @suboptalign11.orlgth1, align 4
  %cmp25 = icmp sgt i32 %23, %24
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %25 = load i32, i32* %lgth2, align 4
  %26 = load i32, i32* @suboptalign11.orlgth2, align 4
  %cmp27 = icmp sgt i32 %25, %26
  br i1 %cmp27, label %if.then.29, label %if.end.103

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.17
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %28 = load i32, i32* @suboptalign11.orlgth1, align 4
  %cmp31 = icmp sgt i32 %28, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.then.29
  %29 = load i32, i32* @suboptalign11.orlgth2, align 4
  %cmp33 = icmp sgt i32 %29, 0
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %land.lhs.true
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %31 = load float*, float** @suboptalign11.w1, align 8
  call void @FreeFloatVec(float* %31)
  %32 = load float*, float** @suboptalign11.w2, align 8
  call void @FreeFloatVec(float* %32)
  %33 = load float*, float** @suboptalign11.initverticalw, align 8
  call void @FreeFloatVec(float* %33)
  %34 = load float*, float** @suboptalign11.lastverticalw, align 8
  call void @FreeFloatVec(float* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %36 = load float*, float** @suboptalign11.m, align 8
  call void @FreeFloatVec(float* %36)
  %37 = load i32*, i32** @suboptalign11.mp, align 8
  call void @FreeIntVec(i32* %37)
  %38 = load float*, float** @suboptalign11.largeM, align 8
  call void @FreeFloatVec(float* %38)
  %39 = load i32*, i32** @suboptalign11.Mp, align 8
  call void @FreeIntVec(i32* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  %41 = load float**, float*** @suboptalign11.cpmx1, align 8
  call void @FreeFloatMtx(float** %41)
  %42 = load float**, float*** @suboptalign11.cpmx2, align 8
  call void @FreeFloatMtx(float** %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  %44 = load float**, float*** @suboptalign11.floatwork, align 8
  call void @FreeFloatMtx(float** %44)
  %45 = load i32**, i32*** @suboptalign11.intwork, align 8
  call void @FreeIntMtx(i32** %45)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %land.lhs.true, %if.then.29
  %46 = load i32, i32* %lgth1, align 4
  %conv41 = sitofp i32 %46 to double
  %mul = fmul double 1.300000e+00, %conv41
  %conv42 = fptosi double %mul to i32
  %47 = load i32, i32* @suboptalign11.orlgth1, align 4
  %cmp43 = icmp sgt i32 %conv42, %47
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %48 = load i32, i32* %lgth1, align 4
  %conv45 = sitofp i32 %48 to double
  %mul46 = fmul double 1.300000e+00, %conv45
  %conv47 = fptosi double %mul46 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %49 = load i32, i32* @suboptalign11.orlgth1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv47, %cond.true ], [ %49, %cond.false ]
  %add = add nsw i32 %cond, 100
  store i32 %add, i32* %ll1, align 4
  %50 = load i32, i32* %lgth2, align 4
  %conv48 = sitofp i32 %50 to double
  %mul49 = fmul double 1.300000e+00, %conv48
  %conv50 = fptosi double %mul49 to i32
  %51 = load i32, i32* @suboptalign11.orlgth2, align 4
  %cmp51 = icmp sgt i32 %conv50, %51
  br i1 %cmp51, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.end
  %52 = load i32, i32* %lgth2, align 4
  %conv54 = sitofp i32 %52 to double
  %mul55 = fmul double 1.300000e+00, %conv54
  %conv56 = fptosi double %mul55 to i32
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.end
  %53 = load i32, i32* @suboptalign11.orlgth2, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.53
  %cond59 = phi i32 [ %conv56, %cond.true.53 ], [ %53, %cond.false.57 ]
  %add60 = add nsw i32 %cond59, 100
  store i32 %add60, i32* %ll2, align 4
  %54 = load i32, i32* %ll2, align 4
  %add61 = add nsw i32 %54, 2
  %call62 = call float* @AllocateFloatVec(i32 %add61)
  store float* %call62, float** @suboptalign11.w1, align 8
  %55 = load i32, i32* %ll2, align 4
  %add63 = add nsw i32 %55, 2
  %call64 = call float* @AllocateFloatVec(i32 %add63)
  store float* %call64, float** @suboptalign11.w2, align 8
  %56 = load i32, i32* %ll1, align 4
  %add65 = add nsw i32 %56, 2
  %call66 = call float* @AllocateFloatVec(i32 %add65)
  store float* %call66, float** @suboptalign11.initverticalw, align 8
  %57 = load i32, i32* %ll1, align 4
  %add67 = add nsw i32 %57, 2
  %call68 = call float* @AllocateFloatVec(i32 %add67)
  store float* %call68, float** @suboptalign11.lastverticalw, align 8
  %58 = load i32, i32* %ll2, align 4
  %add69 = add nsw i32 %58, 2
  %call70 = call float* @AllocateFloatVec(i32 %add69)
  store float* %call70, float** @suboptalign11.m, align 8
  %59 = load i32, i32* %ll2, align 4
  %add71 = add nsw i32 %59, 2
  %call72 = call i32* @AllocateIntVec(i32 %add71)
  store i32* %call72, i32** @suboptalign11.mp, align 8
  %60 = load i32, i32* %ll2, align 4
  %add73 = add nsw i32 %60, 2
  %call74 = call float* @AllocateFloatVec(i32 %add73)
  store float* %call74, float** @suboptalign11.largeM, align 8
  %61 = load i32, i32* %ll2, align 4
  %add75 = add nsw i32 %61, 2
  %call76 = call i32* @AllocateIntVec(i32 %add75)
  store i32* %call76, i32** @suboptalign11.Mp, align 8
  %62 = load i32, i32* %ll1, align 4
  %add77 = add nsw i32 %62, 2
  %call78 = call float** @AllocateFloatMtx(i32 26, i32 %add77)
  store float** %call78, float*** @suboptalign11.cpmx1, align 8
  %63 = load i32, i32* %ll2, align 4
  %add79 = add nsw i32 %63, 2
  %call80 = call float** @AllocateFloatMtx(i32 26, i32 %add79)
  store float** %call80, float*** @suboptalign11.cpmx2, align 8
  %64 = load i32, i32* %ll1, align 4
  %65 = load i32, i32* %ll2, align 4
  %cmp81 = icmp sgt i32 %64, %65
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end.58
  %66 = load i32, i32* %ll1, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.58
  %67 = load i32, i32* %ll2, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %66, %cond.true.83 ], [ %67, %cond.false.84 ]
  %add87 = add nsw i32 %cond86, 2
  %call88 = call float** @AllocateFloatMtx(i32 26, i32 %add87)
  store float** %call88, float*** @suboptalign11.floatwork, align 8
  %68 = load i32, i32* %ll1, align 4
  %69 = load i32, i32* %ll2, align 4
  %cmp89 = icmp sgt i32 %68, %69
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end.85
  %70 = load i32, i32* %ll1, align 4
  br label %cond.end.93

cond.false.92:                                    ; preds = %cond.end.85
  %71 = load i32, i32* %ll2, align 4
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.92, %cond.true.91
  %cond94 = phi i32 [ %70, %cond.true.91 ], [ %71, %cond.false.92 ]
  %add95 = add nsw i32 %cond94, 2
  %call96 = call i32** @AllocateIntMtx(i32 26, i32 %add95)
  store i32** %call96, i32*** @suboptalign11.intwork, align 8
  %72 = load i32, i32* @njob, align 4
  %73 = load i32, i32* %ll1, align 4
  %74 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %73, %74
  %call98 = call i8** @AllocateCharMtx(i32 %72, i32 %add97)
  store i8** %call98, i8*** @suboptalign11.mseq1, align 8
  %75 = load i32, i32* @njob, align 4
  %76 = load i32, i32* %ll1, align 4
  %77 = load i32, i32* %ll2, align 4
  %add99 = add nsw i32 %76, %77
  %call100 = call i8** @AllocateCharMtx(i32 %75, i32 %add99)
  store i8** %call100, i8*** @suboptalign11.mseq2, align 8
  %78 = load i32, i32* %ll1, align 4
  %sub101 = sub nsw i32 %78, 100
  store i32 %sub101, i32* @suboptalign11.orlgth1, align 4
  %79 = load i32, i32* %ll2, align 4
  %sub102 = sub nsw i32 %79, 100
  store i32 %sub102, i32* @suboptalign11.orlgth2, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.93, %lor.lhs.false
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %82 = load i32, i32* @suboptalign11.orlgth1, align 4
  %83 = load i32, i32* @commonAlloc1, align 4
  %cmp106 = icmp sgt i32 %82, %83
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.end.103
  %84 = load i32, i32* @suboptalign11.orlgth2, align 4
  %85 = load i32, i32* @commonAlloc2, align 4
  %cmp109 = icmp sgt i32 %84, %85
  br i1 %cmp109, label %if.then.111, label %if.end.140

if.then.111:                                      ; preds = %lor.lhs.false.108, %if.end.103
  %86 = load i32, i32* @commonAlloc1, align 4
  %tobool114 = icmp ne i32 %86, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.118

land.lhs.true.115:                                ; preds = %if.then.111
  %87 = load i32, i32* @commonAlloc2, align 4
  %tobool116 = icmp ne i32 %87, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.115
  %88 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** %88)
  %89 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** %89)
  %90 = load i32**, i32*** @suboptalign11.used, align 8
  call void @FreeIntMtx(i32** %90)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %land.lhs.true.115, %if.then.111
  %91 = load i32, i32* @suboptalign11.orlgth1, align 4
  %92 = load i32, i32* @commonAlloc1, align 4
  %cmp119 = icmp sgt i32 %91, %92
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %if.end.118
  %93 = load i32, i32* @suboptalign11.orlgth1, align 4
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.end.118
  %94 = load i32, i32* @commonAlloc1, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi i32 [ %93, %cond.true.121 ], [ %94, %cond.false.122 ]
  store i32 %cond124, i32* %ll1112, align 4
  %95 = load i32, i32* @suboptalign11.orlgth2, align 4
  %96 = load i32, i32* @commonAlloc2, align 4
  %cmp125 = icmp sgt i32 %95, %96
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.end.123
  %97 = load i32, i32* @suboptalign11.orlgth2, align 4
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.end.123
  %98 = load i32, i32* @commonAlloc2, align 4
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %97, %cond.true.127 ], [ %98, %cond.false.128 ]
  store i32 %cond130, i32* %ll2113, align 4
  %99 = load i32, i32* %ll1112, align 4
  %add131 = add nsw i32 %99, 10
  %100 = load i32, i32* %ll2113, align 4
  %add132 = add nsw i32 %100, 10
  %call133 = call i32** @AllocateIntMtx(i32 %add131, i32 %add132)
  store i32** %call133, i32*** @suboptalign11.used, align 8
  %101 = load i32, i32* %ll1112, align 4
  %add134 = add nsw i32 %101, 10
  %102 = load i32, i32* %ll2113, align 4
  %add135 = add nsw i32 %102, 10
  %call136 = call i32** @AllocateIntMtx(i32 %add134, i32 %add135)
  store i32** %call136, i32*** @commonIP, align 8
  %103 = load i32, i32* %ll1112, align 4
  %add137 = add nsw i32 %103, 10
  %104 = load i32, i32* %ll2113, align 4
  %add138 = add nsw i32 %104, 10
  %call139 = call i32** @AllocateIntMtx(i32 %add137, i32 %add138)
  store i32** %call139, i32*** @commonJP, align 8
  %105 = load i32, i32* %ll1112, align 4
  store i32 %105, i32* @commonAlloc1, align 4
  %106 = load i32, i32* %ll2113, align 4
  store i32 %106, i32* @commonAlloc2, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.129, %lor.lhs.false.108
  %107 = load i32**, i32*** @commonIP, align 8
  store i32** %107, i32*** @suboptalign11.ijpi, align 8
  %108 = load i32**, i32*** @commonJP, align 8
  store i32** %108, i32*** @suboptalign11.ijpj, align 8
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  %110 = load float*, float** @suboptalign11.w1, align 8
  store float* %110, float** %currentw, align 8
  %111 = load float*, float** @suboptalign11.w2, align 8
  store float* %111, float** %previousw, align 8
  %112 = load float*, float** @suboptalign11.initverticalw, align 8
  %113 = load i8**, i8*** %seq2.addr, align 8
  %114 = load i8**, i8*** %seq1.addr, align 8
  %115 = load i32, i32* %lgth1, align 4
  call void @match_calc(float* %112, i8** %113, i8** %114, i32 0, i32 %115)
  %116 = load float*, float** %currentw, align 8
  %117 = load i8**, i8*** %seq1.addr, align 8
  %118 = load i8**, i8*** %seq2.addr, align 8
  %119 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %116, i8** %117, i8** %118, i32 0, i32 %119)
  %120 = load i32, i32* %lgth2, align 4
  %add142 = add nsw i32 %120, 1
  store i32 %add142, i32* %lasti, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.161, %if.end.140
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %lasti, align 4
  %cmp144 = icmp slt i32 %121, %122
  br i1 %cmp144, label %for.body.146, label %for.end.163

for.body.146:                                     ; preds = %for.cond.143
  %123 = load i32, i32* %j, align 4
  %sub147 = sub nsw i32 %123, 1
  %idxprom148 = sext i32 %sub147 to i64
  %124 = load float*, float** %currentw, align 8
  %arrayidx149 = getelementptr inbounds float, float* %124, i64 %idxprom148
  %125 = load float, float* %arrayidx149, align 4
  %126 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %126 to i64
  %127 = load float*, float** @suboptalign11.m, align 8
  %arrayidx151 = getelementptr inbounds float, float* %127, i64 %idxprom150
  store float %125, float* %arrayidx151, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %128 to i64
  %129 = load i32*, i32** @suboptalign11.mp, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %129, i64 %idxprom152
  store i32 0, i32* %arrayidx153, align 4
  %130 = load i32, i32* %j, align 4
  %sub154 = sub nsw i32 %130, 1
  %idxprom155 = sext i32 %sub154 to i64
  %131 = load float*, float** %currentw, align 8
  %arrayidx156 = getelementptr inbounds float, float* %131, i64 %idxprom155
  %132 = load float, float* %arrayidx156, align 4
  %133 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %133 to i64
  %134 = load float*, float** @suboptalign11.largeM, align 8
  %arrayidx158 = getelementptr inbounds float, float* %134, i64 %idxprom157
  store float %132, float* %arrayidx158, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %135 to i64
  %136 = load i32*, i32** @suboptalign11.Mp, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %136, i64 %idxprom159
  store i32 0, i32* %arrayidx160, align 4
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.146
  %137 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %137, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.143

for.end.163:                                      ; preds = %for.cond.143
  %138 = load i32, i32* %lgth2, align 4
  %sub164 = sub nsw i32 %138, 1
  %idxprom165 = sext i32 %sub164 to i64
  %139 = load float*, float** %currentw, align 8
  %arrayidx166 = getelementptr inbounds float, float* %139, i64 %idxprom165
  %140 = load float, float* %arrayidx166, align 4
  %141 = load float*, float** @suboptalign11.lastverticalw, align 8
  %arrayidx167 = getelementptr inbounds float, float* %141, i64 0
  store float %140, float* %arrayidx167, align 4
  %142 = load i32, i32* %lgth1, align 4
  %143 = load i32, i32* %lgth2, align 4
  %add168 = add nsw i32 %142, %143
  %add169 = add nsw i32 %add168, 1
  store i32 %add169, i32* @localstop, align 4
  store float 0xC08F3F3340000000, float* %maxwm, align 4
  store i32 0, i32* %endalj, align 4
  store i32 0, i32* %endali, align 4
  %144 = load i32, i32* %lgth1, align 4
  %add170 = add nsw i32 %144, 1
  store i32 %add170, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.320, %for.end.163
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %lasti, align 4
  %cmp172 = icmp slt i32 %145, %146
  br i1 %cmp172, label %for.body.174, label %for.end.322

for.body.174:                                     ; preds = %for.cond.171
  %147 = load float*, float** %previousw, align 8
  store float* %147, float** %wtmp, align 8
  %148 = load float*, float** %currentw, align 8
  store float* %148, float** %previousw, align 8
  %149 = load float*, float** %wtmp, align 8
  store float* %149, float** %currentw, align 8
  %150 = load i32, i32* %i, align 4
  %sub175 = sub nsw i32 %150, 1
  %idxprom176 = sext i32 %sub175 to i64
  %151 = load float*, float** @suboptalign11.initverticalw, align 8
  %arrayidx177 = getelementptr inbounds float, float* %151, i64 %idxprom176
  %152 = load float, float* %arrayidx177, align 4
  %153 = load float*, float** %previousw, align 8
  %arrayidx178 = getelementptr inbounds float, float* %153, i64 0
  store float %152, float* %arrayidx178, align 4
  %154 = load float*, float** %currentw, align 8
  %155 = load i8**, i8*** %seq1.addr, align 8
  %156 = load i8**, i8*** %seq2.addr, align 8
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %lgth2, align 4
  call void @match_calc(float* %154, i8** %155, i8** %156, i32 %157, i32 %158)
  %159 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %159 to i64
  %160 = load float*, float** @suboptalign11.initverticalw, align 8
  %arrayidx180 = getelementptr inbounds float, float* %160, i64 %idxprom179
  %161 = load float, float* %arrayidx180, align 4
  %162 = load float*, float** %currentw, align 8
  %arrayidx181 = getelementptr inbounds float, float* %162, i64 0
  store float %161, float* %arrayidx181, align 4
  %163 = load float*, float** %previousw, align 8
  %arrayidx182 = getelementptr inbounds float, float* %163, i64 0
  %164 = load float, float* %arrayidx182, align 4
  store float %164, float* @suboptalign11.mi, align 4
  store i32 0, i32* @suboptalign11.mpi, align 4
  %165 = load float*, float** %previousw, align 8
  %arrayidx183 = getelementptr inbounds float, float* %165, i64 0
  %166 = load float, float* %arrayidx183, align 4
  store float %166, float* @suboptalign11.Mi, align 4
  store i32 0, i32* @suboptalign11.Mpi, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %167 to i64
  %168 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %168, i64 %idxprom184
  %169 = load i32*, i32** %arrayidx185, align 8
  %add.ptr = getelementptr inbounds i32, i32* %169, i64 1
  store i32* %add.ptr, i32** %ijpipt, align 8
  %170 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %170 to i64
  %171 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %171, i64 %idxprom186
  %172 = load i32*, i32** %arrayidx187, align 8
  %add.ptr188 = getelementptr inbounds i32, i32* %172, i64 1
  store i32* %add.ptr188, i32** %ijpjpt, align 8
  %173 = load float*, float** @suboptalign11.m, align 8
  %add.ptr189 = getelementptr inbounds float, float* %173, i64 1
  store float* %add.ptr189, float** %mjpt, align 8
  %174 = load float*, float** @suboptalign11.largeM, align 8
  %add.ptr190 = getelementptr inbounds float, float* %174, i64 1
  store float* %add.ptr190, float** %Mjpt, align 8
  %175 = load float*, float** %previousw, align 8
  store float* %175, float** %prept, align 8
  %176 = load float*, float** %currentw, align 8
  %add.ptr191 = getelementptr inbounds float, float* %176, i64 1
  store float* %add.ptr191, float** %curpt, align 8
  %177 = load i32*, i32** @suboptalign11.mp, align 8
  %add.ptr192 = getelementptr inbounds i32, i32* %177, i64 1
  store i32* %add.ptr192, i32** %mpjpt, align 8
  %178 = load i32*, i32** @suboptalign11.Mp, align 8
  %add.ptr193 = getelementptr inbounds i32, i32* %178, i64 1
  store i32* %add.ptr193, i32** %Mpjpt, align 8
  store float 0xC12E847FC0000000, float* %tbk, align 4
  store i32 0, i32* %tbki, align 4
  store i32 0, i32* %tbkj, align 4
  %179 = load i32, i32* %lgth2, align 4
  %add194 = add nsw i32 %179, 1
  store i32 %add194, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.312, %for.body.174
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %lastj, align 4
  %cmp196 = icmp slt i32 %180, %181
  br i1 %cmp196, label %for.body.198, label %for.end.314

for.body.198:                                     ; preds = %for.cond.195
  %182 = load float*, float** %prept, align 8
  %183 = load float, float* %182, align 4
  store float %183, float* %wm, align 4
  %184 = load i32, i32* %i, align 4
  %sub199 = sub nsw i32 %184, 1
  %185 = load i32*, i32** %ijpipt, align 8
  store i32 %sub199, i32* %185, align 4
  %186 = load i32, i32* %j, align 4
  %sub200 = sub nsw i32 %186, 1
  %187 = load i32*, i32** %ijpjpt, align 8
  store i32 %sub200, i32* %187, align 4
  %188 = load float, float* @suboptalign11.mi, align 4
  %189 = load float, float* %fpenalty, align 4
  %add201 = fadd float %188, %189
  store float %add201, float* %g, align 4
  %190 = load float, float* %g, align 4
  %191 = load float, float* %wm, align 4
  %cmp202 = fcmp ogt float %190, %191
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %for.body.198
  %192 = load float, float* %g, align 4
  store float %192, float* %wm, align 4
  %193 = load i32, i32* @suboptalign11.mpi, align 4
  %194 = load i32*, i32** %ijpjpt, align 8
  store i32 %193, i32* %194, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %for.body.198
  %195 = load float*, float** %prept, align 8
  %196 = load float, float* %195, align 4
  store float %196, float* %g, align 4
  %197 = load float, float* %g, align 4
  %198 = load float, float* @suboptalign11.mi, align 4
  %cmp206 = fcmp ogt float %197, %198
  br i1 %cmp206, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.end.205
  %199 = load float, float* %g, align 4
  store float %199, float* @suboptalign11.mi, align 4
  %200 = load i32, i32* %j, align 4
  %sub209 = sub nsw i32 %200, 1
  store i32 %sub209, i32* @suboptalign11.mpi, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.end.205
  %201 = load float, float* %fpenalty_ex, align 4
  %202 = load float, float* @suboptalign11.mi, align 4
  %add211 = fadd float %202, %201
  store float %add211, float* @suboptalign11.mi, align 4
  %203 = load float*, float** %mjpt, align 8
  %204 = load float, float* %203, align 4
  %205 = load float, float* %fpenalty, align 4
  %add212 = fadd float %204, %205
  store float %add212, float* %g, align 4
  %206 = load float, float* %g, align 4
  %207 = load float, float* %wm, align 4
  %cmp213 = fcmp ogt float %206, %207
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.210
  %208 = load float, float* %g, align 4
  store float %208, float* %wm, align 4
  %209 = load i32*, i32** %mpjpt, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %ijpipt, align 8
  store i32 %210, i32* %211, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.end.210
  %212 = load float*, float** %prept, align 8
  %213 = load float, float* %212, align 4
  store float %213, float* %g, align 4
  %214 = load float, float* %g, align 4
  %215 = load float*, float** %mjpt, align 8
  %216 = load float, float* %215, align 4
  %cmp217 = fcmp ogt float %214, %216
  br i1 %cmp217, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.216
  %217 = load float, float* %g, align 4
  %218 = load float*, float** %mjpt, align 8
  store float %217, float* %218, align 4
  %219 = load i32, i32* %i, align 4
  %sub220 = sub nsw i32 %219, 1
  %220 = load i32*, i32** %mpjpt, align 8
  store i32 %sub220, i32* %220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.216
  %221 = load float, float* %fpenalty_ex, align 4
  %222 = load float*, float** %mjpt, align 8
  %223 = load float, float* %222, align 4
  %add222 = fadd float %223, %221
  store float %add222, float* %222, align 4
  %224 = load float, float* %tbk, align 4
  %225 = load float, float* %fpenalty_OP, align 4
  %add223 = fadd float %224, %225
  store float %add223, float* %g, align 4
  %226 = load float, float* %g, align 4
  %227 = load float, float* %wm, align 4
  %cmp224 = fcmp ogt float %226, %227
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.221
  %228 = load float, float* %g, align 4
  store float %228, float* %wm, align 4
  %229 = load i32, i32* %tbki, align 4
  %230 = load i32*, i32** %ijpipt, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %tbkj, align 4
  %232 = load i32*, i32** %ijpjpt, align 8
  store i32 %231, i32* %232, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %if.end.221
  %233 = load float, float* @suboptalign11.Mi, align 4
  store float %233, float* %g, align 4
  %234 = load float, float* %g, align 4
  %235 = load float, float* %tbk, align 4
  %cmp228 = fcmp ogt float %234, %235
  br i1 %cmp228, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %if.end.227
  %236 = load float, float* %g, align 4
  store float %236, float* %tbk, align 4
  %237 = load i32, i32* %i, align 4
  %sub231 = sub nsw i32 %237, 1
  store i32 %sub231, i32* %tbki, align 4
  %238 = load i32, i32* @suboptalign11.Mpi, align 4
  store i32 %238, i32* %tbkj, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.230, %if.end.227
  %239 = load float*, float** %Mjpt, align 8
  %240 = load float, float* %239, align 4
  store float %240, float* %g, align 4
  %241 = load float, float* %g, align 4
  %242 = load float, float* %tbk, align 4
  %cmp233 = fcmp ogt float %241, %242
  br i1 %cmp233, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.end.232
  %243 = load float, float* %g, align 4
  store float %243, float* %tbk, align 4
  %244 = load i32*, i32** %Mpjpt, align 8
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %tbki, align 4
  %246 = load i32, i32* %j, align 4
  %sub236 = sub nsw i32 %246, 1
  store i32 %sub236, i32* %tbkj, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.end.232
  %247 = load float*, float** %prept, align 8
  %248 = load float, float* %247, align 4
  store float %248, float* %g, align 4
  %249 = load float, float* %g, align 4
  %250 = load float*, float** %Mjpt, align 8
  %251 = load float, float* %250, align 4
  %cmp238 = fcmp ogt float %249, %251
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %if.end.237
  %252 = load float, float* %g, align 4
  %253 = load float*, float** %Mjpt, align 8
  store float %252, float* %253, align 4
  %254 = load i32, i32* %i, align 4
  %sub241 = sub nsw i32 %254, 1
  %255 = load i32*, i32** %Mpjpt, align 8
  store i32 %sub241, i32* %255, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %if.end.237
  %256 = load float*, float** %prept, align 8
  %257 = load float, float* %256, align 4
  store float %257, float* %g, align 4
  %258 = load float, float* %g, align 4
  %259 = load float, float* @suboptalign11.Mi, align 4
  %cmp243 = fcmp ogt float %258, %259
  br i1 %cmp243, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.end.242
  %260 = load float, float* %g, align 4
  store float %260, float* @suboptalign11.Mi, align 4
  %261 = load i32, i32* %j, align 4
  %sub246 = sub nsw i32 %261, 1
  store i32 %sub246, i32* @suboptalign11.Mpi, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.end.242
  %262 = load float, float* %maxwm, align 4
  %263 = load float, float* %wm, align 4
  %cmp248 = fcmp olt float %262, %263
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.247
  %264 = load float, float* %wm, align 4
  store float %264, float* %maxwm, align 4
  %265 = load i32, i32* %i, align 4
  store i32 %265, i32* %endali, align 4
  %266 = load i32, i32* %j, align 4
  store i32 %266, i32* %endalj, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.250, %if.end.247
  %267 = load i32, i32* %numshuryo, align 4
  %cmp252 = icmp slt i32 %267, 100
  br i1 %cmp252, label %if.then.254, label %if.else

if.then.254:                                      ; preds = %if.end.251
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* %numshuryo, align 4
  %idxprom255 = sext i32 %269 to i64
  %270 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx256 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %270, i64 %idxprom255
  %i257 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx256, i32 0, i32 0
  store i32 %268, i32* %i257, align 4
  %271 = load i32, i32* %j, align 4
  %272 = load i32, i32* %numshuryo, align 4
  %idxprom258 = sext i32 %272 to i64
  %273 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx259 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %273, i64 %idxprom258
  %j260 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx259, i32 0, i32 1
  store i32 %271, i32* %j260, align 4
  %274 = load float, float* %wm, align 4
  %275 = load i32, i32* %numshuryo, align 4
  %idxprom261 = sext i32 %275 to i64
  %276 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx262 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %276, i64 %idxprom261
  %wm263 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx262, i32 0, i32 2
  store float %274, float* %wm263, align 4
  %277 = load float, float* %minshuryowm, align 4
  %278 = load float, float* %wm, align 4
  %cmp264 = fcmp ogt float %277, %278
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.then.254
  %279 = load float, float* %wm, align 4
  store float %279, float* %minshuryowm, align 4
  %280 = load i32, i32* %numshuryo, align 4
  store i32 %280, i32* %minshuryopos, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.then.254
  %281 = load i32, i32* %numshuryo, align 4
  %inc268 = add nsw i32 %281, 1
  store i32 %inc268, i32* %numshuryo, align 4
  br label %if.end.299

if.else:                                          ; preds = %if.end.251
  %282 = load float, float* %wm, align 4
  %283 = load float, float* %minshuryowm, align 4
  %cmp269 = fcmp ogt float %282, %283
  br i1 %cmp269, label %if.then.271, label %if.end.298

if.then.271:                                      ; preds = %if.else
  %284 = load i32, i32* %i, align 4
  %285 = load i32, i32* %minshuryopos, align 4
  %idxprom272 = sext i32 %285 to i64
  %286 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx273 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %286, i64 %idxprom272
  %i274 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx273, i32 0, i32 0
  store i32 %284, i32* %i274, align 4
  %287 = load i32, i32* %j, align 4
  %288 = load i32, i32* %minshuryopos, align 4
  %idxprom275 = sext i32 %288 to i64
  %289 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx276 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %289, i64 %idxprom275
  %j277 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx276, i32 0, i32 1
  store i32 %287, i32* %j277, align 4
  %290 = load float, float* %wm, align 4
  %291 = load i32, i32* %minshuryopos, align 4
  %idxprom278 = sext i32 %291 to i64
  %292 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx279 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %292, i64 %idxprom278
  %wm280 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx279, i32 0, i32 2
  store float %290, float* %wm280, align 4
  %293 = load float, float* %wm, align 4
  store float %293, float* %minshuryowm, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.281

for.cond.281:                                     ; preds = %for.inc.295, %if.then.271
  %294 = load i32, i32* %k, align 4
  %cmp282 = icmp slt i32 %294, 100
  br i1 %cmp282, label %for.body.284, label %for.end.297

for.body.284:                                     ; preds = %for.cond.281
  %295 = load i32, i32* %k, align 4
  %idxprom285 = sext i32 %295 to i64
  %296 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx286 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %296, i64 %idxprom285
  %wm287 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx286, i32 0, i32 2
  %297 = load float, float* %wm287, align 4
  %298 = load float, float* %minshuryowm, align 4
  %cmp288 = fcmp olt float %297, %298
  br i1 %cmp288, label %if.then.290, label %if.end.294

if.then.290:                                      ; preds = %for.body.284
  %299 = load i32, i32* %k, align 4
  %idxprom291 = sext i32 %299 to i64
  %300 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx292 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %300, i64 %idxprom291
  %wm293 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx292, i32 0, i32 2
  %301 = load float, float* %wm293, align 4
  store float %301, float* %minshuryowm, align 4
  %302 = load i32, i32* %k, align 4
  store i32 %302, i32* %minshuryopos, align 4
  br label %for.end.297

if.end.294:                                       ; preds = %for.body.284
  br label %for.inc.295

for.inc.295:                                      ; preds = %if.end.294
  %303 = load i32, i32* %k, align 4
  %inc296 = add nsw i32 %303, 1
  store i32 %inc296, i32* %k, align 4
  br label %for.cond.281

for.end.297:                                      ; preds = %if.then.290, %for.cond.281
  br label %if.end.298

if.end.298:                                       ; preds = %for.end.297, %if.else
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.267
  %304 = load float, float* %wm, align 4
  %305 = load float, float* %localthr, align 4
  %cmp300 = fcmp olt float %304, %305
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.299
  %306 = load i32, i32* @localstop, align 4
  %307 = load i32*, i32** %ijpipt, align 8
  store i32 %306, i32* %307, align 4
  %308 = load float, float* %localthr2, align 4
  store float %308, float* %wm, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.end.299
  %309 = load float, float* %wm, align 4
  %310 = load float*, float** %curpt, align 8
  %311 = load float, float* %310, align 4
  %add304 = fadd float %311, %309
  store float %add304, float* %310, align 4
  %312 = load i32*, i32** %ijpipt, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %incdec.ptr, i32** %ijpipt, align 8
  %313 = load i32*, i32** %ijpjpt, align 8
  %incdec.ptr305 = getelementptr inbounds i32, i32* %313, i32 1
  store i32* %incdec.ptr305, i32** %ijpjpt, align 8
  %314 = load float*, float** %mjpt, align 8
  %incdec.ptr306 = getelementptr inbounds float, float* %314, i32 1
  store float* %incdec.ptr306, float** %mjpt, align 8
  %315 = load float*, float** %Mjpt, align 8
  %incdec.ptr307 = getelementptr inbounds float, float* %315, i32 1
  store float* %incdec.ptr307, float** %Mjpt, align 8
  %316 = load float*, float** %prept, align 8
  %incdec.ptr308 = getelementptr inbounds float, float* %316, i32 1
  store float* %incdec.ptr308, float** %prept, align 8
  %317 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr309 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %incdec.ptr309, i32** %mpjpt, align 8
  %318 = load i32*, i32** %Mpjpt, align 8
  %incdec.ptr310 = getelementptr inbounds i32, i32* %318, i32 1
  store i32* %incdec.ptr310, i32** %Mpjpt, align 8
  %319 = load float*, float** %curpt, align 8
  %incdec.ptr311 = getelementptr inbounds float, float* %319, i32 1
  store float* %incdec.ptr311, float** %curpt, align 8
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.303
  %320 = load i32, i32* %j, align 4
  %inc313 = add nsw i32 %320, 1
  store i32 %inc313, i32* %j, align 4
  br label %for.cond.195

for.end.314:                                      ; preds = %for.cond.195
  %321 = load i32, i32* %lgth2, align 4
  %sub315 = sub nsw i32 %321, 1
  %idxprom316 = sext i32 %sub315 to i64
  %322 = load float*, float** %currentw, align 8
  %arrayidx317 = getelementptr inbounds float, float* %322, i64 %idxprom316
  %323 = load float, float* %arrayidx317, align 4
  %324 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %324 to i64
  %325 = load float*, float** @suboptalign11.lastverticalw, align 8
  %arrayidx319 = getelementptr inbounds float, float* %325, i64 %idxprom318
  store float %323, float* %arrayidx319, align 4
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end.314
  %326 = load i32, i32* %i, align 4
  %inc321 = add nsw i32 %326, 1
  store i32 %inc321, i32* %i, align 4
  br label %for.cond.171

for.end.322:                                      ; preds = %for.cond.171
  store i32 0, i32* %k, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.338, %for.end.322
  %327 = load i32, i32* %k, align 4
  %cmp324 = icmp slt i32 %327, 100
  br i1 %cmp324, label %for.body.326, label %for.end.340

for.body.326:                                     ; preds = %for.cond.323
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %329 = load i32, i32* %k, align 4
  %330 = load i32, i32* %k, align 4
  %idxprom327 = sext i32 %330 to i64
  %331 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx328 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %331, i64 %idxprom327
  %i329 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx328, i32 0, i32 0
  %332 = load i32, i32* %i329, align 4
  %333 = load i32, i32* %k, align 4
  %idxprom330 = sext i32 %333 to i64
  %334 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx331 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %334, i64 %idxprom330
  %j332 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx331, i32 0, i32 1
  %335 = load i32, i32* %j332, align 4
  %336 = load i32, i32* %k, align 4
  %idxprom333 = sext i32 %336 to i64
  %337 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx334 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %337, i64 %idxprom333
  %wm335 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx334, i32 0, i32 2
  %338 = load float, float* %wm335, align 4
  %conv336 = fpext float %338 to double
  %call337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %329, i32 %332, i32 %335, double %conv336)
  br label %for.inc.338

for.inc.338:                                      ; preds = %for.body.326
  %339 = load i32, i32* %k, align 4
  %inc339 = add nsw i32 %339, 1
  store i32 %inc339, i32* %k, align 4
  br label %for.cond.323

for.end.340:                                      ; preds = %for.cond.323
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %341 = load float, float* %maxwm, align 4
  %conv341 = fpext float %341 to double
  %call342 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), double %conv341)
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %343 = load i32, i32* %endali, align 4
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 %343)
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %345 = load i32, i32* %endalj, align 4
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 %345)
  %346 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %347 = bitcast %struct._shuryoten* %346 to i8*
  call void @qsort(i8* %347, i64 100, i64 32, i32 (i8*, i8*)* bitcast (i32 (%struct._shuryoten*, %struct._shuryoten*)* @compshuryo to i32 (i8*, i8*)*))
  store i32 0, i32* %k, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.360, %for.end.340
  %348 = load i32, i32* %k, align 4
  %cmp346 = icmp slt i32 %348, 100
  br i1 %cmp346, label %for.body.348, label %for.end.362

for.body.348:                                     ; preds = %for.cond.345
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %350 = load i32, i32* %k, align 4
  %351 = load i32, i32* %k, align 4
  %idxprom349 = sext i32 %351 to i64
  %352 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx350 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %352, i64 %idxprom349
  %i351 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx350, i32 0, i32 0
  %353 = load i32, i32* %i351, align 4
  %354 = load i32, i32* %k, align 4
  %idxprom352 = sext i32 %354 to i64
  %355 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx353 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %355, i64 %idxprom352
  %j354 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx353, i32 0, i32 1
  %356 = load i32, i32* %j354, align 4
  %357 = load i32, i32* %k, align 4
  %idxprom355 = sext i32 %357 to i64
  %358 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx356 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %358, i64 %idxprom355
  %wm357 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx356, i32 0, i32 2
  %359 = load float, float* %wm357, align 4
  %conv358 = fpext float %359 to double
  %call359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %349, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %350, i32 %353, i32 %356, double %conv358)
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.body.348
  %360 = load i32, i32* %k, align 4
  %inc361 = add nsw i32 %360, 1
  store i32 %inc361, i32* %k, align 4
  br label %for.cond.345

for.end.362:                                      ; preds = %for.cond.345
  %361 = load i32, i32* %lgth1, align 4
  %add363 = add nsw i32 %361, 1
  store i32 %add363, i32* %lasti, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.374, %for.end.362
  %362 = load i32, i32* %i, align 4
  %363 = load i32, i32* %lasti, align 4
  %cmp365 = icmp slt i32 %362, %363
  br i1 %cmp365, label %for.body.367, label %for.end.376

for.body.367:                                     ; preds = %for.cond.364
  %364 = load i32, i32* @localstop, align 4
  %365 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %365 to i64
  %366 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %arrayidx369 = getelementptr inbounds i32*, i32** %366, i64 %idxprom368
  %367 = load i32*, i32** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %367, i64 0
  store i32 %364, i32* %arrayidx370, align 4
  %368 = load i32, i32* @localstop, align 4
  %369 = load i32, i32* %i, align 4
  %idxprom371 = sext i32 %369 to i64
  %370 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %arrayidx372 = getelementptr inbounds i32*, i32** %370, i64 %idxprom371
  %371 = load i32*, i32** %arrayidx372, align 8
  %arrayidx373 = getelementptr inbounds i32, i32* %371, i64 0
  store i32 %368, i32* %arrayidx373, align 4
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.367
  %372 = load i32, i32* %i, align 4
  %inc375 = add nsw i32 %372, 1
  store i32 %inc375, i32* %i, align 4
  br label %for.cond.364

for.end.376:                                      ; preds = %for.cond.364
  %373 = load i32, i32* %lgth2, align 4
  %add377 = add nsw i32 %373, 1
  store i32 %add377, i32* %lastj, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.388, %for.end.376
  %374 = load i32, i32* %j, align 4
  %375 = load i32, i32* %lastj, align 4
  %cmp379 = icmp slt i32 %374, %375
  br i1 %cmp379, label %for.body.381, label %for.end.390

for.body.381:                                     ; preds = %for.cond.378
  %376 = load i32, i32* @localstop, align 4
  %377 = load i32, i32* %j, align 4
  %idxprom382 = sext i32 %377 to i64
  %378 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %arrayidx383 = getelementptr inbounds i32*, i32** %378, i64 0
  %379 = load i32*, i32** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %379, i64 %idxprom382
  store i32 %376, i32* %arrayidx384, align 4
  %380 = load i32, i32* @localstop, align 4
  %381 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %381 to i64
  %382 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %arrayidx386 = getelementptr inbounds i32*, i32** %382, i64 0
  %383 = load i32*, i32** %arrayidx386, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %383, i64 %idxprom385
  store i32 %380, i32* %arrayidx387, align 4
  br label %for.inc.388

for.inc.388:                                      ; preds = %for.body.381
  %384 = load i32, i32* %j, align 4
  %inc389 = add nsw i32 %384, 1
  store i32 %inc389, i32* %j, align 4
  br label %for.cond.378

for.end.390:                                      ; preds = %for.cond.378
  store i32 0, i32* %i, align 4
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc.406, %for.end.390
  %385 = load i32, i32* %i, align 4
  %386 = load i32, i32* %lasti, align 4
  %cmp392 = icmp slt i32 %385, %386
  br i1 %cmp392, label %for.body.394, label %for.end.408

for.body.394:                                     ; preds = %for.cond.391
  store i32 0, i32* %j, align 4
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.403, %for.body.394
  %387 = load i32, i32* %j, align 4
  %388 = load i32, i32* %lastj, align 4
  %cmp396 = icmp slt i32 %387, %388
  br i1 %cmp396, label %for.body.398, label %for.end.405

for.body.398:                                     ; preds = %for.cond.395
  %389 = load i32, i32* %j, align 4
  %idxprom399 = sext i32 %389 to i64
  %390 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %390 to i64
  %391 = load i32**, i32*** @suboptalign11.used, align 8
  %arrayidx401 = getelementptr inbounds i32*, i32** %391, i64 %idxprom400
  %392 = load i32*, i32** %arrayidx401, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %392, i64 %idxprom399
  store i32 0, i32* %arrayidx402, align 4
  br label %for.inc.403

for.inc.403:                                      ; preds = %for.body.398
  %393 = load i32, i32* %j, align 4
  %inc404 = add nsw i32 %393, 1
  store i32 %inc404, i32* %j, align 4
  br label %for.cond.395

for.end.405:                                      ; preds = %for.cond.395
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.end.405
  %394 = load i32, i32* %i, align 4
  %inc407 = add nsw i32 %394, 1
  store i32 %inc407, i32* %i, align 4
  br label %for.cond.391

for.end.408:                                      ; preds = %for.cond.391
  store i32 0, i32* %k, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.457, %for.end.408
  %395 = load i32, i32* %k, align 4
  %396 = load i32, i32* %numshuryo, align 4
  %cmp410 = icmp slt i32 %395, %396
  br i1 %cmp410, label %for.body.412, label %for.end.459

for.body.412:                                     ; preds = %for.cond.409
  %397 = load i32, i32* %k, align 4
  %idxprom413 = sext i32 %397 to i64
  %398 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx414 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %398, i64 %idxprom413
  %wm415 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx414, i32 0, i32 2
  %399 = load float, float* %wm415, align 4
  %conv416 = fpext float %399 to double
  %400 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx417 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %400, i64 0
  %wm418 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx417, i32 0, i32 2
  %401 = load float, float* %wm418, align 4
  %conv419 = fpext float %401 to double
  %mul420 = fmul double %conv419, 3.000000e-01
  %cmp421 = fcmp olt double %conv416, %mul420
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %for.body.412
  br label %for.end.459

if.end.424:                                       ; preds = %for.body.412
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %403 = load i32, i32* %k, align 4
  %404 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %404 to i64
  %405 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx426 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %405, i64 %idxprom425
  %i427 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx426, i32 0, i32 0
  %406 = load i32, i32* %i427, align 4
  %407 = load i32, i32* %k, align 4
  %idxprom428 = sext i32 %407 to i64
  %408 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx429 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %408, i64 %idxprom428
  %j430 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx429, i32 0, i32 1
  %409 = load i32, i32* %j430, align 4
  %410 = load i32, i32* %k, align 4
  %idxprom431 = sext i32 %410 to i64
  %411 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx432 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %411, i64 %idxprom431
  %wm433 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx432, i32 0, i32 2
  %412 = load float, float* %wm433, align 4
  %conv434 = fpext float %412 to double
  %call435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 %403, i32 %406, i32 %409, double %conv434)
  %413 = load i32**, i32*** @suboptalign11.used, align 8
  %414 = load i8**, i8*** %seq1.addr, align 8
  %415 = load i8**, i8*** %seq2.addr, align 8
  %416 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %417 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %418 = load float**, float*** @suboptalign11.cpmx1, align 8
  %419 = load float**, float*** @suboptalign11.cpmx2, align 8
  %420 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %421 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %422 = load i32*, i32** %off1pt.addr, align 8
  %423 = load i32*, i32** %off2pt.addr, align 8
  %424 = load i32, i32* %k, align 4
  %idxprom436 = sext i32 %424 to i64
  %425 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx437 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %425, i64 %idxprom436
  %i438 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx437, i32 0, i32 0
  %426 = load i32, i32* %i438, align 4
  %427 = load i32, i32* %k, align 4
  %idxprom439 = sext i32 %427 to i64
  %428 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx440 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %428, i64 %idxprom439
  %j441 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx440, i32 0, i32 1
  %429 = load i32, i32* %j441, align 4
  %call442 = call float @gentracking(i32** %413, i8** %414, i8** %415, i8** %416, i8** %417, float** %418, float** %419, i32** %420, i32** %421, i32* %422, i32* %423, i32 %426, i32 %429)
  store float %call442, float* %resf, align 4
  %430 = load float, float* %resf, align 4
  %conv443 = fpext float %430 to double
  %cmp444 = fcmp oeq double %conv443, -1.000000e+00
  br i1 %cmp444, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.end.424
  br label %for.inc.457

if.end.447:                                       ; preds = %if.end.424
  %431 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %arrayidx448 = getelementptr inbounds i8*, i8** %431, i64 0
  %432 = load i8*, i8** %arrayidx448, align 8
  %433 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %arrayidx449 = getelementptr inbounds i8*, i8** %433, i64 0
  %434 = load i8*, i8** %arrayidx449, align 8
  %435 = load %struct._LocalHom*, %struct._LocalHom** %lhmpt.addr, align 8
  %436 = load i32*, i32** %off1pt.addr, align 8
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %off2pt.addr, align 8
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %k, align 4
  %idxprom450 = sext i32 %440 to i64
  %441 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %arrayidx451 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %441, i64 %idxprom450
  %wm452 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %arrayidx451, i32 0, i32 2
  %442 = load float, float* %wm452, align 4
  %conv453 = fptosi float %442 to i32
  %443 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %arrayidx454 = getelementptr inbounds i8*, i8** %443, i64 0
  %444 = load i8*, i8** %arrayidx454, align 8
  %call455 = call i64 @strlen(i8* %444) #5
  %conv456 = trunc i64 %call455 to i32
  call void @putlocalhom3(i8* %432, i8* %434, %struct._LocalHom* %435, i32 %437, i32 %439, i32 %conv453, i32 %conv456)
  br label %for.inc.457

for.inc.457:                                      ; preds = %if.end.447, %if.then.446
  %445 = load i32, i32* %k, align 4
  %inc458 = add nsw i32 %445, 1
  store i32 %inc458, i32* %k, align 4
  br label %for.cond.409

for.end.459:                                      ; preds = %if.then.423, %for.cond.409
  store i32 0, i32* %i, align 4
  br label %for.cond.460

for.cond.460:                                     ; preds = %for.inc.477, %for.end.459
  %446 = load i32, i32* %i, align 4
  %cmp461 = icmp slt i32 %446, 20
  br i1 %cmp461, label %for.body.463, label %for.end.479

for.body.463:                                     ; preds = %for.cond.460
  store i32 0, i32* %j, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.473, %for.body.463
  %447 = load i32, i32* %j, align 4
  %cmp465 = icmp slt i32 %447, 20
  br i1 %cmp465, label %for.body.467, label %for.end.475

for.body.467:                                     ; preds = %for.cond.464
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %449 = load i32, i32* %j, align 4
  %idxprom468 = sext i32 %449 to i64
  %450 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %450 to i64
  %451 = load i32**, i32*** @suboptalign11.used, align 8
  %arrayidx470 = getelementptr inbounds i32*, i32** %451, i64 %idxprom469
  %452 = load i32*, i32** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds i32, i32* %452, i64 %idxprom468
  %453 = load i32, i32* %arrayidx471, align 4
  %call472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %448, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %453)
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.body.467
  %454 = load i32, i32* %j, align 4
  %inc474 = add nsw i32 %454, 1
  store i32 %inc474, i32* %j, align 4
  br label %for.cond.464

for.end.475:                                      ; preds = %for.cond.464
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %for.inc.477

for.inc.477:                                      ; preds = %for.end.475
  %456 = load i32, i32* %i, align 4
  %inc478 = add nsw i32 %456, 1
  store i32 %inc478, i32* %i, align 4
  br label %for.cond.460

for.end.479:                                      ; preds = %for.cond.460
  %457 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %arrayidx480 = getelementptr inbounds i8*, i8** %457, i64 0
  %458 = load i8*, i8** %arrayidx480, align 8
  %call481 = call i64 @strlen(i8* %458) #5
  %conv482 = trunc i64 %call481 to i32
  store i32 %conv482, i32* %resultlen, align 4
  %459 = load i32, i32* %alloclen.addr, align 4
  %460 = load i32, i32* %resultlen, align 4
  %cmp483 = icmp slt i32 %459, %460
  br i1 %cmp483, label %if.then.488, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %for.end.479
  %461 = load i32, i32* %resultlen, align 4
  %cmp486 = icmp sgt i32 %461, 5000000
  br i1 %cmp486, label %if.then.488, label %if.end.490

if.then.488:                                      ; preds = %lor.lhs.false.485, %for.end.479
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %463 = load i32, i32* %alloclen.addr, align 4
  %464 = load i32, i32* %resultlen, align 4
  %call489 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i32 %463, i32 %464, i32 5000000)
  call void @ErrorExit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.488, %lor.lhs.false.485
  %465 = load float, float* %wm, align 4
  ret float %465
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @FreeFloatVec(float*) #1

declare void @FreeIntVec(i32*) #1

declare void @FreeFloatMtx(float**) #1

declare void @FreeIntMtx(i32**) #1

declare float* @AllocateFloatVec(i32) #1

declare i32* @AllocateIntVec(i32) #1

declare float** @AllocateFloatMtx(i32, i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

declare i8** @AllocateCharMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @match_calc(float* %match, i8** %s1, i8** %s2, i32 %i1, i32 %lgth2) #0 {
entry:
  %match.addr = alloca float*, align 8
  %s1.addr = alloca i8**, align 8
  %s2.addr = alloca i8**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %match, float** %match.addr, align 8
  store i8** %s1, i8*** %s1.addr, align 8
  store i8** %s2, i8*** %s2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %lgth2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %s2.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %idxprom1 = sext i32 %conv to i64
  %6 = load i32, i32* %i1.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8**, i8*** %s1.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* %arrayidx6, i32 0, i64 %idxprom1
  %10 = load i32, i32* %arrayidx7, align 4
  %conv8 = sitofp i32 %10 to float
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load float*, float** %match.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %12, i64 %idxprom9
  store float %conv8, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compshuryo(%struct._shuryoten* %s1_arg, %struct._shuryoten* %s2_arg) #0 {
entry:
  %retval = alloca i32, align 4
  %s1_arg.addr = alloca %struct._shuryoten*, align 8
  %s2_arg.addr = alloca %struct._shuryoten*, align 8
  %s1 = alloca %struct._shuryoten*, align 8
  %s2 = alloca %struct._shuryoten*, align 8
  store %struct._shuryoten* %s1_arg, %struct._shuryoten** %s1_arg.addr, align 8
  store %struct._shuryoten* %s2_arg, %struct._shuryoten** %s2_arg.addr, align 8
  %0 = load %struct._shuryoten*, %struct._shuryoten** %s1_arg.addr, align 8
  store %struct._shuryoten* %0, %struct._shuryoten** %s1, align 8
  %1 = load %struct._shuryoten*, %struct._shuryoten** %s2_arg.addr, align 8
  store %struct._shuryoten* %1, %struct._shuryoten** %s2, align 8
  %2 = load %struct._shuryoten*, %struct._shuryoten** %s1, align 8
  %wm = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %2, i32 0, i32 2
  %3 = load float, float* %wm, align 4
  %4 = load %struct._shuryoten*, %struct._shuryoten** %s2, align 8
  %wm1 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %4, i32 0, i32 2
  %5 = load float, float* %wm1, align 4
  %cmp = fcmp ogt float %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._shuryoten*, %struct._shuryoten** %s1, align 8
  %wm2 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %6, i32 0, i32 2
  %7 = load float, float* %wm2, align 4
  %8 = load %struct._shuryoten*, %struct._shuryoten** %s2, align 8
  %wm3 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %8, i32 0, i32 2
  %9 = load float, float* %wm3, align 4
  %cmp4 = fcmp olt float %7, %9
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal float @gentracking(i32** %used, i8** %seq1, i8** %seq2, i8** %mseq1, i8** %mseq2, float** %cpmx1, float** %cpmx2, i32** %ijpi, i32** %ijpj, i32* %off1pt, i32* %off2pt, i32 %endi, i32 %endj) #0 {
entry:
  %retval = alloca float, align 4
  %used.addr = alloca i32**, align 8
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
  %mspt1 = alloca i8*, align 8
  %mspt2 = alloca i8*, align 8
  store i32** %used, i32*** %used.addr, align 8
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
  %1 = load i8*, i8** @gentracking.res1, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 5000000, i64 1) #4
  store i8* %call, i8** @gentracking.res1, align 8
  %call1 = call noalias i8* @calloc(i64 5000000, i64 1) #4
  store i8* %call1, i8** @gentracking.res2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %lgth1, align 4
  %4 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %5) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth2, align 4
  %6 = load i8*, i8** @gentracking.res1, align 8
  %7 = load i32, i32* %lgth1, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load i32, i32* %lgth2, align 4
  %idx.ext6 = sext i32 %8 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext6
  store i8* %add.ptr7, i8** %mspt1, align 8
  %9 = load i8*, i8** %mspt1, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** @gentracking.res2, align 8
  %11 = load i32, i32* %lgth1, align 4
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %10, i64 %idx.ext8
  %12 = load i32, i32* %lgth2, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.ext10
  store i8* %add.ptr11, i8** %mspt2, align 8
  %13 = load i8*, i8** %mspt2, align 8
  store i8 0, i8* %13, align 1
  %14 = load i32, i32* %endi.addr, align 4
  store i32 %14, i32* %iin, align 4
  %15 = load i32, i32* %endj.addr, align 4
  store i32 %15, i32* %jin, align 4
  %16 = load i32, i32* %lgth1, align 4
  %17 = load i32, i32* %lgth2, align 4
  %add = add nsw i32 %16, %17
  store i32 %add, i32* %limk, align 4
  %18 = load i32, i32* %jin, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32, i32* %iin, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32**, i32*** %used.addr, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %20, i64 %idxprom12
  %21 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx14, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store float -1.000000e+00, float* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* %limk, align 4
  %cmp17 = icmp sle i32 %23, %24
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %jin, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i32, i32* %iin, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %27, i64 %idxprom20
  %28 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  %29 = load i32, i32* %arrayidx22, align 4
  store i32 %29, i32* %ifi, align 4
  %30 = load i32, i32* %jin, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load i32, i32* %iin, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %32, i64 %idxprom24
  %33 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  %34 = load i32, i32* %arrayidx26, align 4
  store i32 %34, i32* %jfi, align 4
  %35 = load i32, i32* %jfi, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load i32, i32* %ifi, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load i32**, i32*** %used.addr, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %37, i64 %idxprom28
  %38 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %38, i64 %idxprom27
  %39 = load i32, i32* %arrayidx30, align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  store float -1.000000e+00, float* %retval
  br label %return

if.end.33:                                        ; preds = %for.body
  %40 = load i32, i32* %iin, align 4
  %41 = load i32, i32* %ifi, align 4
  %sub = sub nsw i32 %40, %41
  store i32 %sub, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.33
  %42 = load i32, i32* %l, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %l, align 4
  %tobool34 = icmp ne i32 %dec, 0
  br i1 %tobool34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i32, i32* %ifi, align 4
  %44 = load i32, i32* %l, align 4
  %add35 = add nsw i32 %43, %44
  %idxprom36 = sext i32 %add35 to i64
  %45 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %46, i64 %idxprom36
  %47 = load i8, i8* %arrayidx38, align 1
  %48 = load i8*, i8** %mspt1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr, i8** %mspt1, align 8
  store i8 %47, i8* %incdec.ptr, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %49 = load i8, i8* %arraydecay, align 1
  %50 = load i8*, i8** %mspt2, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr39, i8** %mspt2, align 8
  store i8 %49, i8* %incdec.ptr39, align 1
  %51 = load i32, i32* %k, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i32, i32* %jin, align 4
  %53 = load i32, i32* %jfi, align 4
  %sub40 = sub nsw i32 %52, %53
  store i32 %sub40, i32* %l, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.44, %while.end
  %54 = load i32, i32* %l, align 4
  %dec42 = add nsw i32 %54, -1
  store i32 %dec42, i32* %l, align 4
  %tobool43 = icmp ne i32 %dec42, 0
  br i1 %tobool43, label %while.body.44, label %while.end.53

while.body.44:                                    ; preds = %while.cond.41
  %arraydecay45 = getelementptr inbounds [2 x i8], [2 x i8]* %gap, i32 0, i32 0
  %55 = load i8, i8* %arraydecay45, align 1
  %56 = load i8*, i8** %mspt1, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr46, i8** %mspt1, align 8
  store i8 %55, i8* %incdec.ptr46, align 1
  %57 = load i32, i32* %jfi, align 4
  %58 = load i32, i32* %l, align 4
  %add47 = add nsw i32 %57, %58
  %idxprom48 = sext i32 %add47 to i64
  %59 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %60, i64 %idxprom48
  %61 = load i8, i8* %arrayidx50, align 1
  %62 = load i8*, i8** %mspt2, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr51, i8** %mspt2, align 8
  store i8 %61, i8* %incdec.ptr51, align 1
  %63 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %63, 1
  store i32 %inc52, i32* %k, align 4
  br label %while.cond.41

while.end.53:                                     ; preds = %while.cond.41
  %64 = load i32, i32* %iin, align 4
  %cmp54 = icmp sle i32 %64, 0
  br i1 %cmp54, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.53
  %65 = load i32, i32* %jin, align 4
  %cmp56 = icmp sle i32 %65, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false, %while.end.53
  br label %for.end

if.end.59:                                        ; preds = %lor.lhs.false
  %66 = load i32, i32* %ifi, align 4
  %idxprom60 = sext i32 %66 to i64
  %67 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %67, i64 0
  %68 = load i8*, i8** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %68, i64 %idxprom60
  %69 = load i8, i8* %arrayidx62, align 1
  %70 = load i8*, i8** %mspt1, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %incdec.ptr63, i8** %mspt1, align 8
  store i8 %69, i8* %incdec.ptr63, align 1
  %71 = load i32, i32* %jfi, align 4
  %idxprom64 = sext i32 %71 to i64
  %72 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %72, i64 0
  %73 = load i8*, i8** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %73, i64 %idxprom64
  %74 = load i8, i8* %arrayidx66, align 1
  %75 = load i8*, i8** %mspt2, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr67, i8** %mspt2, align 8
  store i8 %74, i8* %incdec.ptr67, align 1
  %76 = load i32, i32* %jfi, align 4
  %idxprom68 = sext i32 %76 to i64
  %77 = load i32, i32* %ifi, align 4
  %idxprom69 = sext i32 %77 to i64
  %78 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %78, i64 %idxprom69
  %79 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %79, i64 %idxprom68
  %80 = load i32, i32* %arrayidx71, align 4
  %81 = load i32, i32* @localstop, align 4
  %cmp72 = icmp eq i32 %80, %81
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.59
  br label %for.end

if.end.75:                                        ; preds = %if.end.59
  %82 = load i32, i32* %jfi, align 4
  %idxprom76 = sext i32 %82 to i64
  %83 = load i32, i32* %ifi, align 4
  %idxprom77 = sext i32 %83 to i64
  %84 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %84, i64 %idxprom77
  %85 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %85, i64 %idxprom76
  %86 = load i32, i32* %arrayidx79, align 4
  %87 = load i32, i32* @localstop, align 4
  %cmp80 = icmp eq i32 %86, %87
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.75
  br label %for.end

if.end.83:                                        ; preds = %if.end.75
  %88 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %88, 1
  store i32 %inc84, i32* %k, align 4
  %89 = load i32, i32* %ifi, align 4
  store i32 %89, i32* %iin, align 4
  %90 = load i32, i32* %jfi, align 4
  store i32 %90, i32* %jin, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %91 = load i32, i32* %k, align 4
  %inc85 = add nsw i32 %91, 1
  store i32 %inc85, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.82, %if.then.74, %if.then.58, %for.cond
  %92 = load i32, i32* %ifi, align 4
  %cmp86 = icmp eq i32 %92, -1
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %for.end
  %93 = load i32*, i32** %off1pt.addr, align 8
  store i32 0, i32* %93, align 4
  br label %if.end.89

if.else:                                          ; preds = %for.end
  %94 = load i32, i32* %ifi, align 4
  %95 = load i32*, i32** %off1pt.addr, align 8
  store i32 %94, i32* %95, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.88
  %96 = load i32, i32* %jfi, align 4
  %cmp90 = icmp eq i32 %96, -1
  br i1 %cmp90, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  %97 = load i32*, i32** %off2pt.addr, align 8
  store i32 0, i32* %97, align 4
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  %98 = load i32, i32* %jfi, align 4
  %99 = load i32*, i32** %off2pt.addr, align 8
  store i32 %98, i32* %99, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.93, %if.then.92
  %100 = load i32, i32* %endi.addr, align 4
  store i32 %100, i32* %iin, align 4
  %101 = load i32, i32* %endj.addr, align 4
  store i32 %101, i32* %jin, align 4
  %102 = load i32, i32* %lgth1, align 4
  %103 = load i32, i32* %lgth2, align 4
  %add95 = add nsw i32 %102, %103
  store i32 %add95, i32* %limk, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.136, %if.end.94
  %104 = load i32, i32* %k, align 4
  %105 = load i32, i32* %limk, align 4
  %cmp97 = icmp sle i32 %104, %105
  br i1 %cmp97, label %for.body.99, label %for.end.138

for.body.99:                                      ; preds = %for.cond.96
  %106 = load i32, i32* %jin, align 4
  %idxprom100 = sext i32 %106 to i64
  %107 = load i32, i32* %iin, align 4
  %idxprom101 = sext i32 %107 to i64
  %108 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %108, i64 %idxprom101
  %109 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %109, i64 %idxprom100
  %110 = load i32, i32* %arrayidx103, align 4
  store i32 %110, i32* %ifi, align 4
  %111 = load i32, i32* %jin, align 4
  %idxprom104 = sext i32 %111 to i64
  %112 = load i32, i32* %iin, align 4
  %idxprom105 = sext i32 %112 to i64
  %113 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %113, i64 %idxprom105
  %114 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %114, i64 %idxprom104
  %115 = load i32, i32* %arrayidx107, align 4
  store i32 %115, i32* %jfi, align 4
  %116 = load i32, i32* %jfi, align 4
  %idxprom108 = sext i32 %116 to i64
  %117 = load i32, i32* %ifi, align 4
  %idxprom109 = sext i32 %117 to i64
  %118 = load i32**, i32*** %used.addr, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %118, i64 %idxprom109
  %119 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %119, i64 %idxprom108
  store i32 1, i32* %arrayidx111, align 4
  %120 = load i32, i32* %iin, align 4
  %cmp112 = icmp sle i32 %120, 0
  br i1 %cmp112, label %if.then.117, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %for.body.99
  %121 = load i32, i32* %jin, align 4
  %cmp115 = icmp sle i32 %121, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false.114, %for.body.99
  br label %for.end.138

if.end.118:                                       ; preds = %lor.lhs.false.114
  %122 = load i32, i32* %jfi, align 4
  %idxprom119 = sext i32 %122 to i64
  %123 = load i32, i32* %ifi, align 4
  %idxprom120 = sext i32 %123 to i64
  %124 = load i32**, i32*** %ijpi.addr, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %124, i64 %idxprom120
  %125 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %125, i64 %idxprom119
  %126 = load i32, i32* %arrayidx122, align 4
  %127 = load i32, i32* @localstop, align 4
  %cmp123 = icmp eq i32 %126, %127
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.118
  br label %for.end.138

if.end.126:                                       ; preds = %if.end.118
  %128 = load i32, i32* %jfi, align 4
  %idxprom127 = sext i32 %128 to i64
  %129 = load i32, i32* %ifi, align 4
  %idxprom128 = sext i32 %129 to i64
  %130 = load i32**, i32*** %ijpj.addr, align 8
  %arrayidx129 = getelementptr inbounds i32*, i32** %130, i64 %idxprom128
  %131 = load i32*, i32** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %131, i64 %idxprom127
  %132 = load i32, i32* %arrayidx130, align 4
  %133 = load i32, i32* @localstop, align 4
  %cmp131 = icmp eq i32 %132, %133
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.126
  br label %for.end.138

if.end.134:                                       ; preds = %if.end.126
  %134 = load i32, i32* %k, align 4
  %inc135 = add nsw i32 %134, 1
  store i32 %inc135, i32* %k, align 4
  %135 = load i32, i32* %ifi, align 4
  store i32 %135, i32* %iin, align 4
  %136 = load i32, i32* %jfi, align 4
  store i32 %136, i32* %jin, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.134
  %137 = load i32, i32* %k, align 4
  %inc137 = add nsw i32 %137, 1
  store i32 %inc137, i32* %k, align 4
  br label %for.cond.96

for.end.138:                                      ; preds = %if.then.133, %if.then.125, %if.then.117, %for.cond.96
  %138 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %138, i64 0
  %139 = load i8*, i8** %arrayidx139, align 8
  %140 = load i8*, i8** %mspt1, align 8
  %call140 = call i8* @strcpy(i8* %139, i8* %140) #4
  %141 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %141, i64 0
  %142 = load i8*, i8** %arrayidx141, align 8
  %143 = load i8*, i8** %mspt2, align 8
  %call142 = call i8* @strcpy(i8* %142, i8* %143) #4
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %145 = load i8*, i8** %mspt1, align 8
  %146 = load i8*, i8** %mspt2, align 8
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* %145, i8* %146)
  store float 0.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %for.end.138, %if.then.32, %if.then.15
  %147 = load float, float* %retval
  ret float %147
}

declare void @putlocalhom3(i8*, i8*, %struct._LocalHom*, i32, i32, i32, i32) #1

declare void @ErrorExit(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
