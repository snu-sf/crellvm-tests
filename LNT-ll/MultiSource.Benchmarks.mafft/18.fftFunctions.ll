; ModuleID = './MultiSource.Benchmarks.mafft/18.fftFunctions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Fukusosuu = type { double, double }
%struct._Segment = type { i32, i32, i32, double, i32, i32, %struct._Segment*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s :         \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\08\08\08\08\08\08\08\08\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%3d /%3d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\08\08\08\08\08\08\08\08done.     \0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot allocate %d FukusosuuVec\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Cannot allocate %d x %d FukusosuuVecMtx\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot allocate Fukusosuu\00", align 1
@alignableReagion.stra = internal global double* null, align 8
@alignableReagion.alloclen = internal global i32 0, align 4
@alignableReagion.threshold = internal global double 0.000000e+00, align 8
@alignableReagion.prf1 = internal global [26 x double] zeroinitializer, align 16
@alignableReagion.prf2 = internal global [26 x double] zeroinitializer, align 16
@alignableReagion.hat1 = internal global [27 x i32] zeroinitializer, align 16
@alignableReagion.hat2 = internal global [27 x i32] zeroinitializer, align 16
@fftWinSize = external global i32, align 4
@fftThreshold = external global i32, align 4
@amino_n = external global [128 x i32], align 16
@n_disFFT = external global [26 x [26 x i32]], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"TOO MANY SEGMENTS!\00", align 1
@blockAlign.result1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign.result2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign.ocut1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign.ocut2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign.max = internal global [100000 x double] zeroinitializer, align 16
@blockAlign.maxi = internal global double 0.000000e+00, align 8
@blockAlign.point = internal global [100000 x double] zeroinitializer, align 16
@blockAlign.pointi = internal global double 0.000000e+00, align 8
@blockAlign.crossscore = internal global double** null, align 8
@blockAlign.track = internal global i32** null, align 8
@penalty = external global i32, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@blockAlign2.crossscoresize = internal global i32 0, align 4
@blockAlign2.result1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign2.result2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign2.ocut1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign2.ocut2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign2.crossscore = internal global double** null, align 8
@blockAlign2.track = internal global i32** null, align 8
@blockAlign2.maxj = internal global double 0.000000e+00, align 8
@blockAlign2.maxi = internal global double 0.000000e+00, align 8
@blockAlign2.pointj = internal global i32 0, align 4
@blockAlign2.pointi = internal global i32 0, align 4
@fftkeika = external global i32, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"allocating crossscore and track, size = %d\0A\00", align 1
@blockAlign3.crossscoresize = internal global i32 0, align 4
@blockAlign3.jumpposi = internal global i32 0, align 4
@blockAlign3.jumppos = internal global i32* null, align 8
@blockAlign3.jumpscorei = internal global double 0.000000e+00, align 8
@blockAlign3.jumpscore = internal global double* null, align 8
@blockAlign3.result1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign3.result2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign3.ocut1 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign3.ocut2 = internal global [100000 x i32] zeroinitializer, align 16
@blockAlign3.crossscore = internal global double** null, align 8
@blockAlign3.track = internal global i32** null, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"in blockalign3, ### i=%d, j=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @keika(i8* %str, i32 %current, i32 %all) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %current.addr = alloca i32, align 4
  %all.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %current, i32* %current.addr, align 4
  store i32 %all, i32* %all.addr, align 4
  %0 = load i32, i32* %current.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %current.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %all.addr, align 4
  %add2 = add nsw i32 %6, 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %add, i32 %add2)
  %7 = load i32, i32* %current.addr, align 4
  %add4 = add nsw i32 %7, 1
  %8 = load i32, i32* %all.addr, align 4
  %cmp5 = icmp eq i32 %add4, %8
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define double @maxItch(double* %soukan, i32 %size) #0 {
entry:
  %soukan.addr = alloca double*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca double, align 8
  %cand = alloca double, align 8
  store double* %soukan, double** %soukan.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store double 0.000000e+00, double* %value, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %soukan.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  store double %4, double* %cand, align 8
  %5 = load double, double* %value, align 8
  %cmp1 = fcmp ogt double %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load double, double* %cand, align 8
  store double %6, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %value, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define void @calcNaiseki(%struct._Fukusosuu* %value, %struct._Fukusosuu* %x, %struct._Fukusosuu* %y) #0 {
entry:
  %value.addr = alloca %struct._Fukusosuu*, align 8
  %x.addr = alloca %struct._Fukusosuu*, align 8
  %y.addr = alloca %struct._Fukusosuu*, align 8
  store %struct._Fukusosuu* %value, %struct._Fukusosuu** %value.addr, align 8
  store %struct._Fukusosuu* %x, %struct._Fukusosuu** %x.addr, align 8
  store %struct._Fukusosuu* %y, %struct._Fukusosuu** %y.addr, align 8
  %0 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %0, i32 0, i32 0
  %1 = load double, double* %R, align 8
  %2 = load %struct._Fukusosuu*, %struct._Fukusosuu** %y.addr, align 8
  %R1 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %2, i32 0, i32 0
  %3 = load double, double* %R1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %4, i32 0, i32 1
  %5 = load double, double* %I, align 8
  %6 = load %struct._Fukusosuu*, %struct._Fukusosuu** %y.addr, align 8
  %I2 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %6, i32 0, i32 1
  %7 = load double, double* %I2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct._Fukusosuu*, %struct._Fukusosuu** %value.addr, align 8
  %R4 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %8, i32 0, i32 0
  store double %add, double* %R4, align 8
  %9 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %R5 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %9, i32 0, i32 0
  %10 = load double, double* %R5, align 8
  %sub = fsub double -0.000000e+00, %10
  %11 = load %struct._Fukusosuu*, %struct._Fukusosuu** %y.addr, align 8
  %I6 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %11, i32 0, i32 1
  %12 = load double, double* %I6, align 8
  %mul7 = fmul double %sub, %12
  %13 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %I8 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %13, i32 0, i32 1
  %14 = load double, double* %I8, align 8
  %15 = load %struct._Fukusosuu*, %struct._Fukusosuu** %y.addr, align 8
  %R9 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %15, i32 0, i32 0
  %16 = load double, double* %R9, align 8
  %mul10 = fmul double %14, %16
  %add11 = fadd double %mul7, %mul10
  %17 = load %struct._Fukusosuu*, %struct._Fukusosuu** %value.addr, align 8
  %I12 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %17, i32 0, i32 1
  store double %add11, double* %I12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %l1) #0 {
entry:
  %retval = alloca %struct._Fukusosuu*, align 8
  %l1.addr = alloca i32, align 4
  %value = alloca %struct._Fukusosuu*, align 8
  store i32 %l1, i32* %l1.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #5
  %1 = bitcast i8* %call to %struct._Fukusosuu*
  store %struct._Fukusosuu* %1, %struct._Fukusosuu** %value, align 8
  %2 = load %struct._Fukusosuu*, %struct._Fukusosuu** %value, align 8
  %tobool = icmp ne %struct._Fukusosuu* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %l1.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  store %struct._Fukusosuu* null, %struct._Fukusosuu** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Fukusosuu*, %struct._Fukusosuu** %value, align 8
  store %struct._Fukusosuu* %5, %struct._Fukusosuu** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._Fukusosuu*, %struct._Fukusosuu** %retval
  ret %struct._Fukusosuu* %6
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %l1, i32 %l2) #0 {
entry:
  %l1.addr = alloca i32, align 4
  %l2.addr = alloca i32, align 4
  %value = alloca %struct._Fukusosuu**, align 8
  %j = alloca i32, align 4
  store i32 %l1, i32* %l1.addr, align 4
  store i32 %l2, i32* %l2.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #5
  %1 = bitcast i8* %call to %struct._Fukusosuu**
  store %struct._Fukusosuu** %1, %struct._Fukusosuu*** %value, align 8
  %2 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %value, align 8
  %tobool = icmp ne %struct._Fukusosuu** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %l1.addr, align 4
  %5 = load i32, i32* %l2.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 %4, i32 %5)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %l1.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %l2.addr, align 4
  %call3 = call %struct._Fukusosuu* @AllocateFukusosuuVec(i32 %8)
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %value, align 8
  %arrayidx = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %10, i64 %idxprom
  store %struct._Fukusosuu* %call3, %struct._Fukusosuu** %arrayidx, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %value, align 8
  %arrayidx5 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %12, i64 %idxprom4
  %13 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx5, align 8
  %tobool6 = icmp ne %struct._Fukusosuu* %13, null
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %l1.addr, align 4
  %16 = load i32, i32* %l2.addr, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 %15, i32 %16)
  call void @exit(i32 1) #6
  unreachable

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %l1.addr, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %value, align 8
  %arrayidx11 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %19, i64 %idxprom10
  store %struct._Fukusosuu* null, %struct._Fukusosuu** %arrayidx11, align 8
  %20 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %value, align 8
  ret %struct._Fukusosuu** %20
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct._Fukusosuu*** @AllocateFukusosuuCub(i32 %l1, i32 %l2, i32 %l3) #0 {
entry:
  %l1.addr = alloca i32, align 4
  %l2.addr = alloca i32, align 4
  %l3.addr = alloca i32, align 4
  %value = alloca %struct._Fukusosuu***, align 8
  %i = alloca i32, align 4
  store i32 %l1, i32* %l1.addr, align 4
  store i32 %l2, i32* %l2.addr, align 4
  store i32 %l3, i32* %l3.addr, align 4
  %0 = load i32, i32* %l1.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #5
  %1 = bitcast i8* %call to %struct._Fukusosuu***
  store %struct._Fukusosuu*** %1, %struct._Fukusosuu**** %value, align 8
  %2 = load %struct._Fukusosuu***, %struct._Fukusosuu**** %value, align 8
  %tobool = icmp ne %struct._Fukusosuu*** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ErrorExit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %l1.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %l2.addr, align 4
  %6 = load i32, i32* %l3.addr, align 4
  %call2 = call %struct._Fukusosuu** @AllocateFukusosuuMtx(i32 %5, i32 %6)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._Fukusosuu***, %struct._Fukusosuu**** %value, align 8
  %arrayidx = getelementptr inbounds %struct._Fukusosuu**, %struct._Fukusosuu*** %8, i64 %idxprom
  store %struct._Fukusosuu** %call2, %struct._Fukusosuu*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %l1.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct._Fukusosuu***, %struct._Fukusosuu**** %value, align 8
  %arrayidx4 = getelementptr inbounds %struct._Fukusosuu**, %struct._Fukusosuu*** %11, i64 %idxprom3
  store %struct._Fukusosuu** null, %struct._Fukusosuu*** %arrayidx4, align 8
  %12 = load %struct._Fukusosuu***, %struct._Fukusosuu**** %value, align 8
  ret %struct._Fukusosuu*** %12
}

declare void @ErrorExit(i8*) #1

; Function Attrs: nounwind uwtable
define void @FreeFukusosuuVec(%struct._Fukusosuu* %vec) #0 {
entry:
  %vec.addr = alloca %struct._Fukusosuu*, align 8
  store %struct._Fukusosuu* %vec, %struct._Fukusosuu** %vec.addr, align 8
  %0 = load %struct._Fukusosuu*, %struct._Fukusosuu** %vec.addr, align 8
  %1 = bitcast %struct._Fukusosuu* %0 to i8*
  call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @FreeFukusosuuMtx(%struct._Fukusosuu** %mtx) #0 {
entry:
  %mtx.addr = alloca %struct._Fukusosuu**, align 8
  %i = alloca i32, align 4
  store %struct._Fukusosuu** %mtx, %struct._Fukusosuu*** %mtx.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %mtx.addr, align 8
  %arrayidx = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %1, i64 %idxprom
  %2 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx, align 8
  %tobool = icmp ne %struct._Fukusosuu* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %mtx.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._Fukusosuu*, %struct._Fukusosuu** %4, i64 %idxprom1
  %5 = load %struct._Fukusosuu*, %struct._Fukusosuu** %arrayidx2, align 8
  %6 = bitcast %struct._Fukusosuu* %5 to i8*
  call void @free(i8* %6) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._Fukusosuu**, %struct._Fukusosuu*** %mtx.addr, align 8
  %9 = bitcast %struct._Fukusosuu** %8 to i8*
  call void @free(i8* %9) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getKouho(i32* %kouho, i32 %nkouho, double* %soukan, i32 %nlen2) #0 {
entry:
  %kouho.addr = alloca i32*, align 8
  %nkouho.addr = alloca i32, align 4
  %soukan.addr = alloca double*, align 8
  %nlen2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nlen4 = alloca i32, align 4
  %max = alloca double, align 8
  %tmp = alloca double, align 8
  %ikouho = alloca i32, align 4
  store i32* %kouho, i32** %kouho.addr, align 8
  store i32 %nkouho, i32* %nkouho.addr, align 4
  store double* %soukan, double** %soukan.addr, align 8
  store i32 %nlen2, i32* %nlen2.addr, align 4
  %0 = load i32, i32* %nlen2.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %nlen4, align 4
  store i32 0, i32* %ikouho, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nkouho.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store double -9.999900e+03, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nlen2.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %soukan.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8
  store double %7, double* %tmp, align 8
  %8 = load double, double* %max, align 8
  %cmp5 = fcmp ogt double %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %ikouho, align 4
  %10 = load double, double* %tmp, align 8
  store double %10, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %12 = load i32, i32* %ikouho, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load double*, double** %soukan.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom6
  store double -9.999900e+03, double* %arrayidx7, align 8
  %14 = load i32, i32* %ikouho, align 4
  %15 = load i32, i32* %nlen4, align 4
  %sub = sub nsw i32 %14, %15
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32*, i32** %kouho.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  store i32 %sub, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @zurasu2(i32 %lag, i32 %clus1, i32 %clus2, i8** %seq1, i8** %seq2, i8** %aseq1, i8** %aseq2) #0 {
entry:
  %lag.addr = alloca i32, align 4
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %aseq1.addr = alloca i8**, align 8
  %aseq2.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %lag, i32* %lag.addr, align 4
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %aseq1, i8*** %aseq1.addr, align 8
  store i8** %aseq2, i8*** %aseq2.addr, align 8
  %0 = load i32, i32* %lag.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %clus1.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8**, i8*** %aseq1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 %idxprom2
  store i8* %5, i8** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %clus2.addr, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %12, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx8, align 8
  %14 = load i32, i32* %lag.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq2.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  store i8* %add.ptr, i8** %arrayidx10, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.4

for.end.13:                                       ; preds = %for.cond.4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.23, %if.else
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %clus1.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %21, i64 %idxprom17
  %22 = load i8*, i8** %arrayidx18, align 8
  %23 = load i32, i32* %lag.addr, align 4
  %idx.ext19 = sext i32 %23 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, i8* %22, i64 %idx.neg
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i8**, i8*** %aseq1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom21
  store i8* %add.ptr20, i8** %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.16
  %26 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %for.end.25
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %clus2.addr, align 4
  %cmp27 = icmp slt i32 %27, %28
  br i1 %cmp27, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.26
  %29 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %30, i64 %idxprom29
  %31 = load i8*, i8** %arrayidx30, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i8**, i8*** %aseq2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %33, i64 %idxprom31
  store i8* %31, i8** %arrayidx32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %34 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  br label %if.end

if.end:                                           ; preds = %for.end.35, %for.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @zurasu(i32 %lag, i32 %clus1, i32 %clus2, i8** %seq1, i8** %seq2, i8** %aseq1, i8** %aseq2) #0 {
entry:
  %lag.addr = alloca i32, align 4
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %aseq1.addr = alloca i8**, align 8
  %aseq2.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %lag, i32* %lag.addr, align 4
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %aseq1, i8*** %aseq1.addr, align 8
  store i8** %aseq2, i8*** %aseq2.addr, align 8
  %0 = load i32, i32* %lag.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %clus1.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %aseq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 %idxprom2
  %8 = load i8*, i8** %arrayidx3, align 8
  %call = call i8* @strcpy(i8* %5, i8* %8) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %clus2.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8**, i8*** %aseq2.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %13, i64 %idxprom7
  %14 = load i8*, i8** %arrayidx8, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  %17 = load i8*, i8** %arrayidx10, align 8
  %18 = load i32, i32* %lag.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %call11 = call i8* @strcpy(i8* %14, i8* %add.ptr) #5
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %19 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.25, %if.else
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %clus1.addr, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body.17, label %for.end.27

for.body.17:                                      ; preds = %for.cond.15
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i8**, i8*** %aseq1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %23, i64 %idxprom18
  %24 = load i8*, i8** %arrayidx19, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %26, i64 %idxprom20
  %27 = load i8*, i8** %arrayidx21, align 8
  %28 = load i32, i32* %lag.addr, align 4
  %idx.ext22 = sext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext22
  %add.ptr23 = getelementptr inbounds i8, i8* %27, i64 %idx.neg
  %call24 = call i8* @strcpy(i8* %24, i8* %add.ptr23) #5
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.17
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.15

for.end.27:                                       ; preds = %for.cond.15
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.36, %for.end.27
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %clus2.addr, align 4
  %cmp29 = icmp slt i32 %30, %31
  br i1 %cmp29, label %for.body.30, label %for.end.38

for.body.30:                                      ; preds = %for.cond.28
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i8**, i8*** %aseq2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %33, i64 %idxprom31
  %34 = load i8*, i8** %arrayidx32, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %36, i64 %idxprom33
  %37 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i8* @strcpy(i8* %34, i8* %37) #5
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.30
  %38 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.28

for.end.38:                                       ; preds = %for.cond.28
  br label %if.end

if.end:                                           ; preds = %for.end.38, %for.end.14
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @alignableReagion(i32 %clus1, i32 %clus2, i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, %struct._Segment* %seg) #0 {
entry:
  %clus1.addr = alloca i32, align 4
  %clus2.addr = alloca i32, align 4
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %seg.addr = alloca %struct._Segment*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %status = alloca i32, align 4
  %starttmp = alloca i32, align 4
  %score = alloca double, align 8
  %value = alloca i32, align 4
  %len = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %length = alloca i32, align 4
  %totaleff = alloca double, align 8
  %cumscore = alloca double, align 8
  %pre1 = alloca i32, align 4
  %pre2 = alloca i32, align 4
  store i32 %clus1, i32* %clus1.addr, align 4
  store i32 %clus2, i32* %clus2.addr, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store %struct._Segment* %seg, %struct._Segment** %seg.addr, align 8
  store i32 0, i32* %starttmp, align 4
  store i32 0, i32* %value, align 4
  store i32 0, i32* %length, align 4
  %0 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #7
  %2 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %3) #7
  %cmp = icmp ult i64 %call, %call2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %5) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i64 @strlen(i8* %7) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call6, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %len, align 4
  %8 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %9) #7
  %10 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i64 @strlen(i8* %11) #7
  %cmp11 = icmp ugt i64 %call8, %call10
  br i1 %cmp11, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.end
  %12 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i64 @strlen(i8* %13) #7
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end
  %14 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i64 @strlen(i8* %15) #7
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.13
  %cond20 = phi i64 [ %call15, %cond.true.13 ], [ %call18, %cond.false.16 ]
  %16 = load i32, i32* @fftWinSize, align 4
  %conv21 = sext i32 %16 to i64
  %add = add i64 %cond20, %conv21
  %conv22 = trunc i64 %add to i32
  store i32 %conv22, i32* %maxlen, align 4
  %17 = load i32, i32* @alignableReagion.alloclen, align 4
  %18 = load i32, i32* %maxlen, align 4
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %if.then, label %if.end.30

if.then:                                          ; preds = %cond.end.19
  %19 = load i32, i32* @alignableReagion.alloclen, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then
  %20 = load double*, double** @alignableReagion.stra, align 8
  call void @FreeDoubleVec(double* %20)
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i32, i32* @fftThreshold, align 4
  %conv26 = sitofp i32 %21 to double
  %div = fdiv double %conv26, 1.000000e+02
  %mul = fmul double %div, 6.000000e+02
  %22 = load i32, i32* @fftWinSize, align 4
  %conv27 = sitofp i32 %22 to double
  %mul28 = fmul double %mul, %conv27
  store double %mul28, double* @alignableReagion.threshold, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.25
  %23 = load i32, i32* %maxlen, align 4
  %call29 = call double* @AllocateDoubleVec(i32 %23)
  store double* %call29, double** @alignableReagion.stra, align 8
  %24 = load i32, i32* %maxlen, align 4
  store i32 %24, i32* @alignableReagion.alloclen, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %cond.end.19
  store double 0.000000e+00, double* %totaleff, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %if.end.30
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %clus1.addr, align 4
  %cmp31 = icmp slt i32 %25, %26
  br i1 %cmp31, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %clus2.addr, align 4
  %cmp34 = icmp slt i32 %27, %28
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load double*, double** %eff1.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx37, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load double*, double** %eff2.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %33, i64 %idxprom38
  %34 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double %31, %34
  %35 = load double, double* %totaleff, align 8
  %add41 = fadd double %35, %mul40
  store double %add41, double* %totaleff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %37, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.157, %for.end.44
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %len, align 4
  %cmp46 = icmp slt i32 %38, %39
  br i1 %cmp46, label %for.body.48, label %for.end.159

for.body.48:                                      ; preds = %for.cond.45
  store i32 0, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.57, %for.body.48
  %40 = load i32, i32* %j, align 4
  %cmp50 = icmp slt i32 %40, 26
  br i1 %cmp50, label %for.body.52, label %for.end.59

for.body.52:                                      ; preds = %for.cond.49
  %41 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf1, i32 0, i64 %idxprom53
  store double 0.000000e+00, double* %arrayidx54, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf2, i32 0, i64 %idxprom55
  store double 0.000000e+00, double* %arrayidx56, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.52
  %43 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %43, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.49

for.end.59:                                       ; preds = %for.cond.49
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %for.end.59
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %clus1.addr, align 4
  %cmp61 = icmp slt i32 %44, %45
  br i1 %cmp61, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.60
  %46 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %46 to i64
  %47 = load double*, double** %eff1.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %47, i64 %idxprom64
  %48 = load double, double* %arrayidx65, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %51, i64 %idxprom67
  %52 = load i8*, i8** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %52, i64 %idxprom66
  %53 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %53 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom71
  %54 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf1, i32 0, i64 %idxprom73
  %55 = load double, double* %arrayidx74, align 8
  %add75 = fadd double %55, %48
  store double %add75, double* %arrayidx74, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.63
  %56 = load i32, i32* %j, align 4
  %inc77 = add nsw i32 %56, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond.60

for.end.78:                                       ; preds = %for.cond.60
  store i32 0, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.95, %for.end.78
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %clus2.addr, align 4
  %cmp80 = icmp slt i32 %57, %58
  br i1 %cmp80, label %for.body.82, label %for.end.97

for.body.82:                                      ; preds = %for.cond.79
  %59 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %59 to i64
  %60 = load double*, double** %eff2.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %60, i64 %idxprom83
  %61 = load double, double* %arrayidx84, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %62 to i64
  %63 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %63 to i64
  %64 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %64, i64 %idxprom86
  %65 = load i8*, i8** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %65, i64 %idxprom85
  %66 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %66 to i32
  %idxprom90 = sext i32 %conv89 to i64
  %arrayidx91 = getelementptr inbounds [128 x i32], [128 x i32]* @amino_n, i32 0, i64 %idxprom90
  %67 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf2, i32 0, i64 %idxprom92
  %68 = load double, double* %arrayidx93, align 8
  %add94 = fadd double %68, %61
  store double %add94, double* %arrayidx93, align 8
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.82
  %69 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %69, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond.79

for.end.97:                                       ; preds = %for.cond.79
  store i32 26, i32* %pre2, align 4
  store i32 26, i32* %pre1, align 4
  store i32 25, i32* %j, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.116, %for.end.97
  %70 = load i32, i32* %j, align 4
  %cmp99 = icmp sge i32 %70, 0
  br i1 %cmp99, label %for.body.101, label %for.end.117

for.body.101:                                     ; preds = %for.cond.98
  %71 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %71 to i64
  %arrayidx103 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf1, i32 0, i64 %idxprom102
  %72 = load double, double* %arrayidx103, align 8
  %tobool104 = fcmp une double %72, 0.000000e+00
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %for.body.101
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %pre1, align 4
  %idxprom106 = sext i32 %74 to i64
  %arrayidx107 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat1, i32 0, i64 %idxprom106
  store i32 %73, i32* %arrayidx107, align 4
  %75 = load i32, i32* %j, align 4
  store i32 %75, i32* %pre1, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %for.body.101
  %76 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %76 to i64
  %arrayidx110 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf2, i32 0, i64 %idxprom109
  %77 = load double, double* %arrayidx110, align 8
  %tobool111 = fcmp une double %77, 0.000000e+00
  br i1 %tobool111, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.end.108
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %pre2, align 4
  %idxprom113 = sext i32 %79 to i64
  %arrayidx114 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat2, i32 0, i64 %idxprom113
  store i32 %78, i32* %arrayidx114, align 4
  %80 = load i32, i32* %j, align 4
  store i32 %80, i32* %pre2, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %if.end.108
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %81 = load i32, i32* %j, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.98

for.end.117:                                      ; preds = %for.cond.98
  %82 = load i32, i32* %pre1, align 4
  %idxprom118 = sext i32 %82 to i64
  %arrayidx119 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat1, i32 0, i64 %idxprom118
  store i32 -1, i32* %arrayidx119, align 4
  %83 = load i32, i32* %pre2, align 4
  %idxprom120 = sext i32 %83 to i64
  %arrayidx121 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat2, i32 0, i64 %idxprom120
  store i32 -1, i32* %arrayidx121, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %84 to i64
  %85 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx123 = getelementptr inbounds double, double* %85, i64 %idxprom122
  store double 0.000000e+00, double* %arrayidx123, align 8
  %86 = load i32, i32* getelementptr inbounds ([27 x i32], [27 x i32]* @alignableReagion.hat1, i32 0, i64 26), align 4
  store i32 %86, i32* %k, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.150, %for.end.117
  %87 = load i32, i32* %k, align 4
  %cmp125 = icmp ne i32 %87, -1
  br i1 %cmp125, label %for.body.127, label %for.end.153

for.body.127:                                     ; preds = %for.cond.124
  %88 = load i32, i32* getelementptr inbounds ([27 x i32], [27 x i32]* @alignableReagion.hat2, i32 0, i64 26), align 4
  store i32 %88, i32* %j, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.146, %for.body.127
  %89 = load i32, i32* %j, align 4
  %cmp129 = icmp ne i32 %89, -1
  br i1 %cmp129, label %for.body.131, label %for.end.149

for.body.131:                                     ; preds = %for.cond.128
  %90 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %90 to i64
  %91 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %91 to i64
  %arrayidx134 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_disFFT, i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx134, i32 0, i64 %idxprom132
  %92 = load i32, i32* %arrayidx135, align 4
  %conv136 = sitofp i32 %92 to double
  %93 = load i32, i32* %k, align 4
  %idxprom137 = sext i32 %93 to i64
  %arrayidx138 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf1, i32 0, i64 %idxprom137
  %94 = load double, double* %arrayidx138, align 8
  %mul139 = fmul double %conv136, %94
  %95 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %95 to i64
  %arrayidx141 = getelementptr inbounds [26 x double], [26 x double]* @alignableReagion.prf2, i32 0, i64 %idxprom140
  %96 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double %mul139, %96
  %97 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %97 to i64
  %98 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx144 = getelementptr inbounds double, double* %98, i64 %idxprom143
  %99 = load double, double* %arrayidx144, align 8
  %add145 = fadd double %99, %mul142
  store double %add145, double* %arrayidx144, align 8
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.131
  %100 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %100 to i64
  %arrayidx148 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat2, i32 0, i64 %idxprom147
  %101 = load i32, i32* %arrayidx148, align 4
  store i32 %101, i32* %j, align 4
  br label %for.cond.128

for.end.149:                                      ; preds = %for.cond.128
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %102 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %102 to i64
  %arrayidx152 = getelementptr inbounds [27 x i32], [27 x i32]* @alignableReagion.hat1, i32 0, i64 %idxprom151
  %103 = load i32, i32* %arrayidx152, align 4
  store i32 %103, i32* %k, align 4
  br label %for.cond.124

for.end.153:                                      ; preds = %for.cond.124
  %104 = load double, double* %totaleff, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %105 to i64
  %106 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx155 = getelementptr inbounds double, double* %106, i64 %idxprom154
  %107 = load double, double* %arrayidx155, align 8
  %div156 = fdiv double %107, %104
  store double %div156, double* %arrayidx155, align 8
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.153
  %108 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %108, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.45

for.end.159:                                      ; preds = %for.cond.45
  %109 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr = getelementptr inbounds %struct._Segment, %struct._Segment* %109, i64 0
  %skipForeward = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr, i32 0, i32 4
  store i32 0, i32* %skipForeward, align 4
  %110 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr160 = getelementptr inbounds %struct._Segment, %struct._Segment* %110, i64 1
  %skipBackward = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr160, i32 0, i32 5
  store i32 0, i32* %skipBackward, align 4
  store i32 0, i32* %status, align 4
  store double 0.000000e+00, double* %cumscore, align 8
  store double 0.000000e+00, double* %score, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.168, %for.end.159
  %111 = load i32, i32* %j, align 4
  %112 = load i32, i32* @fftWinSize, align 4
  %cmp162 = icmp slt i32 %111, %112
  br i1 %cmp162, label %for.body.164, label %for.end.170

for.body.164:                                     ; preds = %for.cond.161
  %113 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %113 to i64
  %114 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx166 = getelementptr inbounds double, double* %114, i64 %idxprom165
  %115 = load double, double* %arrayidx166, align 8
  %116 = load double, double* %score, align 8
  %add167 = fadd double %116, %115
  store double %add167, double* %score, align 8
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.164
  %117 = load i32, i32* %j, align 4
  %inc169 = add nsw i32 %117, 1
  store i32 %inc169, i32* %j, align 4
  br label %for.cond.161

for.end.170:                                      ; preds = %for.cond.161
  store i32 1, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.230, %for.end.170
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %len, align 4
  %120 = load i32, i32* @fftWinSize, align 4
  %sub = sub nsw i32 %119, %120
  %cmp172 = icmp slt i32 %118, %sub
  br i1 %cmp172, label %for.body.174, label %for.end.232

for.body.174:                                     ; preds = %for.cond.171
  %121 = load double, double* %score, align 8
  %122 = load i32, i32* %i, align 4
  %sub175 = sub nsw i32 %122, 1
  %idxprom176 = sext i32 %sub175 to i64
  %123 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx177 = getelementptr inbounds double, double* %123, i64 %idxprom176
  %124 = load double, double* %arrayidx177, align 8
  %sub178 = fsub double %121, %124
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* @fftWinSize, align 4
  %add179 = add nsw i32 %125, %126
  %sub180 = sub nsw i32 %add179, 1
  %idxprom181 = sext i32 %sub180 to i64
  %127 = load double*, double** @alignableReagion.stra, align 8
  %arrayidx182 = getelementptr inbounds double, double* %127, i64 %idxprom181
  %128 = load double, double* %arrayidx182, align 8
  %add183 = fadd double %sub178, %128
  store double %add183, double* %score, align 8
  %129 = load double, double* %score, align 8
  %130 = load double, double* @alignableReagion.threshold, align 8
  %cmp184 = fcmp ogt double %129, %130
  br i1 %cmp184, label %if.then.186, label %if.end.192

if.then.186:                                      ; preds = %for.body.174
  %131 = load i32, i32* %status, align 4
  %tobool187 = icmp ne i32 %131, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.then.186
  store i32 1, i32* %status, align 4
  %132 = load i32, i32* %i, align 4
  store i32 %132, i32* %starttmp, align 4
  store i32 0, i32* %length, align 4
  store double 0.000000e+00, double* %cumscore, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.then.186
  %133 = load i32, i32* %length, align 4
  %inc190 = add nsw i32 %133, 1
  store i32 %inc190, i32* %length, align 4
  %134 = load double, double* %score, align 8
  %135 = load double, double* %cumscore, align 8
  %add191 = fadd double %135, %134
  store double %add191, double* %cumscore, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %for.body.174
  %136 = load double, double* %score, align 8
  %137 = load double, double* @alignableReagion.threshold, align 8
  %cmp193 = fcmp ole double %136, %137
  br i1 %cmp193, label %if.then.197, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.192
  %138 = load i32, i32* %length, align 4
  %cmp195 = icmp sgt i32 %138, 150
  br i1 %cmp195, label %if.then.197, label %if.end.229

if.then.197:                                      ; preds = %lor.lhs.false, %if.end.192
  %139 = load i32, i32* %status, align 4
  %tobool198 = icmp ne i32 %139, 0
  br i1 %tobool198, label %if.then.199, label %if.end.228

if.then.199:                                      ; preds = %if.then.197
  %140 = load i32, i32* %length, align 4
  %141 = load i32, i32* @fftWinSize, align 4
  %cmp200 = icmp sgt i32 %140, %141
  br i1 %cmp200, label %if.then.202, label %if.end.223

if.then.202:                                      ; preds = %if.then.199
  %142 = load i32, i32* %starttmp, align 4
  %143 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %start = getelementptr inbounds %struct._Segment, %struct._Segment* %143, i32 0, i32 0
  store i32 %142, i32* %start, align 4
  %144 = load i32, i32* %i, align 4
  %145 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %end = getelementptr inbounds %struct._Segment, %struct._Segment* %145, i32 0, i32 1
  store i32 %144, i32* %end, align 4
  %146 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %start203 = getelementptr inbounds %struct._Segment, %struct._Segment* %146, i32 0, i32 0
  %147 = load i32, i32* %start203, align 4
  %148 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %end204 = getelementptr inbounds %struct._Segment, %struct._Segment* %148, i32 0, i32 1
  %149 = load i32, i32* %end204, align 4
  %add205 = add nsw i32 %147, %149
  %150 = load i32, i32* @fftWinSize, align 4
  %add206 = add nsw i32 %add205, %150
  %div207 = sdiv i32 %add206, 2
  %151 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %center = getelementptr inbounds %struct._Segment, %struct._Segment* %151, i32 0, i32 2
  store i32 %div207, i32* %center, align 4
  %152 = load double, double* %cumscore, align 8
  %153 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %score208 = getelementptr inbounds %struct._Segment, %struct._Segment* %153, i32 0, i32 3
  store double %152, double* %score208, align 8
  %154 = load i32, i32* %length, align 4
  %cmp209 = icmp sgt i32 %154, 150
  br i1 %cmp209, label %if.then.211, label %if.else.216

if.then.211:                                      ; preds = %if.then.202
  %155 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr212 = getelementptr inbounds %struct._Segment, %struct._Segment* %155, i64 0
  %skipForeward213 = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr212, i32 0, i32 4
  store i32 1, i32* %skipForeward213, align 4
  %156 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr214 = getelementptr inbounds %struct._Segment, %struct._Segment* %156, i64 1
  %skipBackward215 = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr214, i32 0, i32 5
  store i32 1, i32* %skipBackward215, align 4
  br label %if.end.221

if.else.216:                                      ; preds = %if.then.202
  %157 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr217 = getelementptr inbounds %struct._Segment, %struct._Segment* %157, i64 0
  %skipForeward218 = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr217, i32 0, i32 4
  store i32 0, i32* %skipForeward218, align 4
  %158 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %add.ptr219 = getelementptr inbounds %struct._Segment, %struct._Segment* %158, i64 1
  %skipBackward220 = getelementptr inbounds %struct._Segment, %struct._Segment* %add.ptr219, i32 0, i32 5
  store i32 0, i32* %skipBackward220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.216, %if.then.211
  %159 = load i32, i32* %value, align 4
  %inc222 = add nsw i32 %159, 1
  store i32 %inc222, i32* %value, align 4
  %160 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct._Segment, %struct._Segment* %160, i32 1
  store %struct._Segment* %incdec.ptr, %struct._Segment** %seg.addr, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.221, %if.then.199
  store i32 0, i32* %length, align 4
  store double 0.000000e+00, double* %cumscore, align 8
  store i32 0, i32* %status, align 4
  %161 = load i32, i32* %i, align 4
  store i32 %161, i32* %starttmp, align 4
  %162 = load i32, i32* %value, align 4
  %cmp224 = icmp sgt i32 %162, 99997
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  call void @ErrorExit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %if.end.223
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.197
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %lor.lhs.false
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.229
  %163 = load i32, i32* %i, align 4
  %inc231 = add nsw i32 %163, 1
  store i32 %inc231, i32* %i, align 4
  br label %for.cond.171

for.end.232:                                      ; preds = %for.cond.171
  %164 = load i32, i32* %status, align 4
  %tobool233 = icmp ne i32 %164, 0
  br i1 %tobool233, label %land.lhs.true, label %if.end.245

land.lhs.true:                                    ; preds = %for.end.232
  %165 = load i32, i32* %length, align 4
  %166 = load i32, i32* @fftWinSize, align 4
  %cmp234 = icmp sgt i32 %165, %166
  br i1 %cmp234, label %if.then.236, label %if.end.245

if.then.236:                                      ; preds = %land.lhs.true
  %167 = load i32, i32* %i, align 4
  %168 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %end237 = getelementptr inbounds %struct._Segment, %struct._Segment* %168, i32 0, i32 1
  store i32 %167, i32* %end237, align 4
  %169 = load i32, i32* %starttmp, align 4
  %170 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %start238 = getelementptr inbounds %struct._Segment, %struct._Segment* %170, i32 0, i32 0
  store i32 %169, i32* %start238, align 4
  %171 = load i32, i32* %starttmp, align 4
  %172 = load i32, i32* %i, align 4
  %add239 = add nsw i32 %171, %172
  %173 = load i32, i32* @fftWinSize, align 4
  %add240 = add nsw i32 %add239, %173
  %div241 = sdiv i32 %add240, 2
  %174 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %center242 = getelementptr inbounds %struct._Segment, %struct._Segment* %174, i32 0, i32 2
  store i32 %div241, i32* %center242, align 4
  %175 = load double, double* %cumscore, align 8
  %176 = load %struct._Segment*, %struct._Segment** %seg.addr, align 8
  %score243 = getelementptr inbounds %struct._Segment, %struct._Segment* %176, i32 0, i32 3
  store double %175, double* %score243, align 8
  %177 = load i32, i32* %value, align 4
  %inc244 = add nsw i32 %177, 1
  store i32 %inc244, i32* %value, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.236, %land.lhs.true, %for.end.232
  %178 = load i32, i32* %value, align 4
  ret i32 %178
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @FreeDoubleVec(double*) #1

declare double* @AllocateDoubleVec(i32) #1

; Function Attrs: nounwind uwtable
define void @blockAlign(i32* %cut1, i32* %cut2, double** %ocrossscore, i32* %ncut) #0 {
entry:
  %cut1.addr = alloca i32*, align 8
  %cut2.addr = alloca i32*, align 8
  %ocrossscore.addr = alloca double**, align 8
  %ncut.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %shift = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %count = alloca i32, align 4
  %maximum = alloca double, align 8
  store i32* %cut1, i32** %cut1.addr, align 8
  store i32* %cut2, i32** %cut2.addr, align 8
  store double** %ocrossscore, double*** %ocrossscore.addr, align 8
  store i32* %ncut, i32** %ncut.addr, align 8
  %0 = load double**, double*** @blockAlign.crossscore, align 8
  %cmp = icmp eq double** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double** @AllocateDoubleMtx(i32 100000, i32 100000)
  store double** %call, double*** @blockAlign.crossscore, align 8
  %call1 = call i32** @AllocateIntMtx(i32 100000, i32 100000)
  store i32** %call1, i32*** @blockAlign.track, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32*, i32** %ncut.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32*, i32** %ncut.addr, align 8
  %6 = load i32, i32* %5, align 4
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %9, i64 %idxprom6
  %10 = load double*, double** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx7, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx10 = getelementptr inbounds double*, double** %14, i64 %idxprom9
  %15 = load double*, double** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom8
  store double %11, double* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.26, %for.end.14
  %18 = load i32, i32* %i, align 4
  %19 = load i32*, i32** %ncut.addr, align 8
  %20 = load i32, i32* %19, align 4
  %cmp16 = icmp slt i32 %18, %20
  br i1 %cmp16, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32*, i32** %cut1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.ocut1, i32 0, i64 %idxprom20
  store i32 %23, i32* %arrayidx21, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load i32*, i32** %cut2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom22
  %27 = load i32, i32* %arrayidx23, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.ocut2, i32 0, i64 %idxprom24
  store i32 %27, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.17
  %29 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.15

for.end.28:                                       ; preds = %for.cond.15
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.36, %for.end.28
  %30 = load i32, i32* %j, align 4
  %31 = load i32*, i32** %ncut.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp30 = icmp slt i32 %30, %32
  br i1 %cmp30, label %for.body.31, label %for.end.38

for.body.31:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.max, i32 0, i64 %idxprom32
  store double 0.000000e+00, double* %arrayidx33, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.point, i32 0, i64 %idxprom34
  store double 0.000000e+00, double* %arrayidx35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.31
  %35 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond.29

for.end.38:                                       ; preds = %for.cond.29
  store i32 1, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.138, %for.end.38
  %36 = load i32, i32* %i, align 4
  %37 = load i32*, i32** %ncut.addr, align 8
  %38 = load i32, i32* %37, align 4
  %cmp40 = icmp slt i32 %36, %38
  br i1 %cmp40, label %for.body.41, label %for.end.140

for.body.41:                                      ; preds = %for.cond.39
  store double 0.000000e+00, double* @blockAlign.maxi, align 8
  store double 0.000000e+00, double* @blockAlign.pointi, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.135, %for.body.41
  %39 = load i32, i32* %j, align 4
  %40 = load i32*, i32** %ncut.addr, align 8
  %41 = load i32, i32* %40, align 4
  %cmp43 = icmp slt i32 %39, %41
  br i1 %cmp43, label %for.body.44, label %for.end.137

for.body.44:                                      ; preds = %for.cond.42
  %42 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %42, 1
  %idxprom45 = sext i32 %sub to i64
  %43 = load i32, i32* %i, align 4
  %sub46 = sub nsw i32 %43, 1
  %idxprom47 = sext i32 %sub46 to i64
  %44 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx48 = getelementptr inbounds double*, double** %44, i64 %idxprom47
  %45 = load double*, double** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds double, double* %45, i64 %idxprom45
  %46 = load double, double* %arrayidx49, align 8
  store double %46, double* %maximum, align 8
  %47 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %47 to i64
  %48 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load i32**, i32*** @blockAlign.track, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %49, i64 %idxprom51
  %50 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %50, i64 %idxprom50
  store i32 0, i32* %arrayidx53, align 4
  %51 = load double, double* %maximum, align 8
  %52 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %52 to i64
  %arrayidx55 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.max, i32 0, i64 %idxprom54
  %53 = load double, double* %arrayidx55, align 8
  %54 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %54 to double
  %add = fadd double %53, %conv
  %cmp56 = fcmp olt double %51, %add
  br i1 %cmp56, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %for.body.44
  %55 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.max, i32 0, i64 %idxprom59
  %56 = load double, double* %arrayidx60, align 8
  %57 = load i32, i32* @penalty, align 4
  %conv61 = sitofp i32 %57 to double
  %add62 = fadd double %56, %conv61
  store double %add62, double* %maximum, align 8
  %58 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %58 to i64
  %arrayidx64 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.point, i32 0, i64 %idxprom63
  %59 = load double, double* %arrayidx64, align 8
  %60 = load i32, i32* %i, align 4
  %conv65 = sitofp i32 %60 to double
  %sub66 = fsub double %59, %conv65
  %conv67 = fptosi double %sub66 to i32
  %61 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %61 to i64
  %62 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %62 to i64
  %63 = load i32**, i32*** @blockAlign.track, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %63, i64 %idxprom69
  %64 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %64, i64 %idxprom68
  store i32 %conv67, i32* %arrayidx71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.58, %for.body.44
  %65 = load double, double* %maximum, align 8
  %66 = load double, double* @blockAlign.maxi, align 8
  %67 = load i32, i32* @penalty, align 4
  %conv73 = sitofp i32 %67 to double
  %add74 = fadd double %66, %conv73
  %cmp75 = fcmp olt double %65, %add74
  br i1 %cmp75, label %if.then.77, label %if.end.87

if.then.77:                                       ; preds = %if.end.72
  %68 = load double, double* @blockAlign.maxi, align 8
  %69 = load i32, i32* @penalty, align 4
  %conv78 = sitofp i32 %69 to double
  %add79 = fadd double %68, %conv78
  store double %add79, double* %maximum, align 8
  %70 = load i32, i32* %j, align 4
  %conv80 = sitofp i32 %70 to double
  %71 = load double, double* @blockAlign.pointi, align 8
  %sub81 = fsub double %conv80, %71
  %conv82 = fptosi double %sub81 to i32
  %72 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %73 to i64
  %74 = load i32**, i32*** @blockAlign.track, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %74, i64 %idxprom84
  %75 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %75, i64 %idxprom83
  store i32 %conv82, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.77, %if.end.72
  %76 = load double, double* %maximum, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %78 to i64
  %79 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx90 = getelementptr inbounds double*, double** %79, i64 %idxprom89
  %80 = load double*, double** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds double, double* %80, i64 %idxprom88
  %81 = load double, double* %arrayidx91, align 8
  %add92 = fadd double %81, %76
  store double %add92, double* %arrayidx91, align 8
  %82 = load double, double* @blockAlign.maxi, align 8
  %83 = load i32, i32* %j, align 4
  %sub93 = sub nsw i32 %83, 1
  %idxprom94 = sext i32 %sub93 to i64
  %84 = load i32, i32* %i, align 4
  %sub95 = sub nsw i32 %84, 1
  %idxprom96 = sext i32 %sub95 to i64
  %85 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx97 = getelementptr inbounds double*, double** %85, i64 %idxprom96
  %86 = load double*, double** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds double, double* %86, i64 %idxprom94
  %87 = load double, double* %arrayidx98, align 8
  %cmp99 = fcmp olt double %82, %87
  br i1 %cmp99, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %if.end.87
  %88 = load i32, i32* %j, align 4
  %sub102 = sub nsw i32 %88, 1
  %idxprom103 = sext i32 %sub102 to i64
  %89 = load i32, i32* %i, align 4
  %sub104 = sub nsw i32 %89, 1
  %idxprom105 = sext i32 %sub104 to i64
  %90 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx106 = getelementptr inbounds double*, double** %90, i64 %idxprom105
  %91 = load double*, double** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds double, double* %91, i64 %idxprom103
  %92 = load double, double* %arrayidx107, align 8
  store double %92, double* @blockAlign.maxi, align 8
  %93 = load i32, i32* %j, align 4
  %sub108 = sub nsw i32 %93, 1
  %conv109 = sitofp i32 %sub108 to double
  store double %conv109, double* @blockAlign.pointi, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.101, %if.end.87
  %94 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %94 to i64
  %arrayidx112 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.max, i32 0, i64 %idxprom111
  %95 = load double, double* %arrayidx112, align 8
  %96 = load i32, i32* %j, align 4
  %sub113 = sub nsw i32 %96, 1
  %idxprom114 = sext i32 %sub113 to i64
  %97 = load i32, i32* %i, align 4
  %sub115 = sub nsw i32 %97, 1
  %idxprom116 = sext i32 %sub115 to i64
  %98 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx117 = getelementptr inbounds double*, double** %98, i64 %idxprom116
  %99 = load double*, double** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds double, double* %99, i64 %idxprom114
  %100 = load double, double* %arrayidx118, align 8
  %cmp119 = fcmp olt double %95, %100
  br i1 %cmp119, label %if.then.121, label %if.end.134

if.then.121:                                      ; preds = %if.end.110
  %101 = load i32, i32* %j, align 4
  %sub122 = sub nsw i32 %101, 1
  %idxprom123 = sext i32 %sub122 to i64
  %102 = load i32, i32* %i, align 4
  %sub124 = sub nsw i32 %102, 1
  %idxprom125 = sext i32 %sub124 to i64
  %103 = load double**, double*** @blockAlign.crossscore, align 8
  %arrayidx126 = getelementptr inbounds double*, double** %103, i64 %idxprom125
  %104 = load double*, double** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds double, double* %104, i64 %idxprom123
  %105 = load double, double* %arrayidx127, align 8
  %106 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %106 to i64
  %arrayidx129 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.max, i32 0, i64 %idxprom128
  store double %105, double* %arrayidx129, align 8
  %107 = load i32, i32* %i, align 4
  %sub130 = sub nsw i32 %107, 1
  %conv131 = sitofp i32 %sub130 to double
  %108 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %108 to i64
  %arrayidx133 = getelementptr inbounds [100000 x double], [100000 x double]* @blockAlign.point, i32 0, i64 %idxprom132
  store double %conv131, double* %arrayidx133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.121, %if.end.110
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %109 = load i32, i32* %j, align 4
  %inc136 = add nsw i32 %109, 1
  store i32 %inc136, i32* %j, align 4
  br label %for.cond.42

for.end.137:                                      ; preds = %for.cond.42
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %110 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %110, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.39

for.end.140:                                      ; preds = %for.cond.39
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.158, %for.end.140
  %111 = load i32, i32* %i, align 4
  %112 = load i32*, i32** %ncut.addr, align 8
  %113 = load i32, i32* %112, align 4
  %cmp142 = icmp slt i32 %111, %113
  br i1 %cmp142, label %for.body.144, label %for.end.160

for.body.144:                                     ; preds = %for.cond.141
  store i32 0, i32* %j, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.154, %for.body.144
  %114 = load i32, i32* %j, align 4
  %115 = load i32*, i32** %ncut.addr, align 8
  %116 = load i32, i32* %115, align 4
  %cmp146 = icmp slt i32 %114, %116
  br i1 %cmp146, label %for.body.148, label %for.end.156

for.body.148:                                     ; preds = %for.cond.145
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %119 to i64
  %120 = load i32**, i32*** @blockAlign.track, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %120, i64 %idxprom150
  %121 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %121, i64 %idxprom149
  %122 = load i32, i32* %arrayidx152, align 4
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %122)
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.148
  %123 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %123, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond.145

for.end.156:                                      ; preds = %for.cond.145
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.156
  %125 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %125, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.141

for.end.160:                                      ; preds = %for.cond.141
  %126 = load i32*, i32** %ncut.addr, align 8
  %127 = load i32, i32* %126, align 4
  %sub161 = sub nsw i32 %127, 1
  store i32 %sub161, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 99999), align 4
  %128 = load i32*, i32** %ncut.addr, align 8
  %129 = load i32, i32* %128, align 4
  %sub162 = sub nsw i32 %129, 1
  store i32 %sub162, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 99999), align 4
  store i32 99999, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.218, %for.end.160
  %130 = load i32, i32* %i, align 4
  %cmp164 = icmp sge i32 %130, 1
  br i1 %cmp164, label %for.body.166, label %for.end.219

for.body.166:                                     ; preds = %for.cond.163
  %131 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %131 to i64
  %arrayidx168 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom167
  %132 = load i32, i32* %arrayidx168, align 4
  store i32 %132, i32* %cur1, align 4
  %133 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %133 to i64
  %arrayidx170 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom169
  %134 = load i32, i32* %arrayidx170, align 4
  store i32 %134, i32* %cur2, align 4
  %135 = load i32, i32* %cur1, align 4
  %cmp171 = icmp eq i32 %135, 0
  br i1 %cmp171, label %if.then.175, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.166
  %136 = load i32, i32* %cur2, align 4
  %cmp173 = icmp eq i32 %136, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false, %for.body.166
  br label %for.end.219

if.end.176:                                       ; preds = %lor.lhs.false
  %137 = load i32, i32* %cur2, align 4
  %idxprom177 = sext i32 %137 to i64
  %138 = load i32, i32* %cur1, align 4
  %idxprom178 = sext i32 %138 to i64
  %139 = load i32**, i32*** @blockAlign.track, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %139, i64 %idxprom178
  %140 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %140, i64 %idxprom177
  %141 = load i32, i32* %arrayidx180, align 4
  store i32 %141, i32* %shift, align 4
  %142 = load i32, i32* %shift, align 4
  %cmp181 = icmp eq i32 %142, 0
  br i1 %cmp181, label %if.then.183, label %if.else

if.then.183:                                      ; preds = %if.end.176
  %143 = load i32, i32* %cur1, align 4
  %sub184 = sub nsw i32 %143, 1
  %144 = load i32, i32* %i, align 4
  %sub185 = sub nsw i32 %144, 1
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom186
  store i32 %sub184, i32* %arrayidx187, align 4
  %145 = load i32, i32* %cur2, align 4
  %sub188 = sub nsw i32 %145, 1
  %146 = load i32, i32* %i, align 4
  %sub189 = sub nsw i32 %146, 1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom190
  store i32 %sub188, i32* %arrayidx191, align 4
  br label %for.inc.218

if.else:                                          ; preds = %if.end.176
  %147 = load i32, i32* %shift, align 4
  %cmp192 = icmp sgt i32 %147, 0
  br i1 %cmp192, label %if.then.194, label %if.else.203

if.then.194:                                      ; preds = %if.else
  %148 = load i32, i32* %cur1, align 4
  %sub195 = sub nsw i32 %148, 1
  %149 = load i32, i32* %i, align 4
  %sub196 = sub nsw i32 %149, 1
  %idxprom197 = sext i32 %sub196 to i64
  %arrayidx198 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom197
  store i32 %sub195, i32* %arrayidx198, align 4
  %150 = load i32, i32* %cur2, align 4
  %151 = load i32, i32* %shift, align 4
  %sub199 = sub nsw i32 %150, %151
  %152 = load i32, i32* %i, align 4
  %sub200 = sub nsw i32 %152, 1
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom201
  store i32 %sub199, i32* %arrayidx202, align 4
  br label %if.end.216

if.else.203:                                      ; preds = %if.else
  %153 = load i32, i32* %shift, align 4
  %cmp204 = icmp slt i32 %153, 0
  br i1 %cmp204, label %if.then.206, label %if.end.215

if.then.206:                                      ; preds = %if.else.203
  %154 = load i32, i32* %cur1, align 4
  %155 = load i32, i32* %shift, align 4
  %add207 = add nsw i32 %154, %155
  %156 = load i32, i32* %i, align 4
  %sub208 = sub nsw i32 %156, 1
  %idxprom209 = sext i32 %sub208 to i64
  %arrayidx210 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom209
  store i32 %add207, i32* %arrayidx210, align 4
  %157 = load i32, i32* %cur2, align 4
  %sub211 = sub nsw i32 %157, 1
  %158 = load i32, i32* %i, align 4
  %sub212 = sub nsw i32 %158, 1
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom213
  store i32 %sub211, i32* %arrayidx214, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.206, %if.else.203
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.194
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217, %if.then.183
  %159 = load i32, i32* %i, align 4
  %dec = add nsw i32 %159, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.163

for.end.219:                                      ; preds = %if.then.175, %for.cond.163
  store i32 0, i32* %count, align 4
  %160 = load i32, i32* %i, align 4
  store i32 %160, i32* %j, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.289, %for.end.219
  %161 = load i32, i32* %j, align 4
  %cmp221 = icmp slt i32 %161, 100000
  br i1 %cmp221, label %for.body.223, label %for.end.291

for.body.223:                                     ; preds = %for.cond.220
  %162 = load i32, i32* %j, align 4
  %idxprom224 = sext i32 %162 to i64
  %arrayidx225 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom224
  %163 = load i32, i32* %arrayidx225, align 4
  %idxprom226 = sext i32 %163 to i64
  %164 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %164 to i64
  %arrayidx228 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom227
  %165 = load i32, i32* %arrayidx228, align 4
  %idxprom229 = sext i32 %165 to i64
  %166 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx230 = getelementptr inbounds double*, double** %166, i64 %idxprom229
  %167 = load double*, double** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds double, double* %167, i64 %idxprom226
  %168 = load double, double* %arrayidx231, align 8
  %cmp232 = fcmp oeq double %168, 0.000000e+00
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %for.body.223
  br label %for.inc.289

if.end.235:                                       ; preds = %for.body.223
  %169 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %169 to i64
  %arrayidx237 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom236
  %170 = load i32, i32* %arrayidx237, align 4
  %171 = load i32, i32* %j, align 4
  %sub238 = sub nsw i32 %171, 1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom239
  %172 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp eq i32 %170, %172
  br i1 %cmp241, label %if.then.251, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.end.235
  %173 = load i32, i32* %j, align 4
  %idxprom244 = sext i32 %173 to i64
  %arrayidx245 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom244
  %174 = load i32, i32* %arrayidx245, align 4
  %175 = load i32, i32* %j, align 4
  %sub246 = sub nsw i32 %175, 1
  %idxprom247 = sext i32 %sub246 to i64
  %arrayidx248 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom247
  %176 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp eq i32 %174, %176
  br i1 %cmp249, label %if.then.251, label %if.end.275

if.then.251:                                      ; preds = %lor.lhs.false.243, %if.end.235
  %177 = load i32, i32* %j, align 4
  %idxprom252 = sext i32 %177 to i64
  %arrayidx253 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom252
  %178 = load i32, i32* %arrayidx253, align 4
  %idxprom254 = sext i32 %178 to i64
  %179 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %179 to i64
  %arrayidx256 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom255
  %180 = load i32, i32* %arrayidx256, align 4
  %idxprom257 = sext i32 %180 to i64
  %181 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx258 = getelementptr inbounds double*, double** %181, i64 %idxprom257
  %182 = load double*, double** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds double, double* %182, i64 %idxprom254
  %183 = load double, double* %arrayidx259, align 8
  %184 = load i32, i32* %j, align 4
  %sub260 = sub nsw i32 %184, 1
  %idxprom261 = sext i32 %sub260 to i64
  %arrayidx262 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom261
  %185 = load i32, i32* %arrayidx262, align 4
  %idxprom263 = sext i32 %185 to i64
  %186 = load i32, i32* %j, align 4
  %sub264 = sub nsw i32 %186, 1
  %idxprom265 = sext i32 %sub264 to i64
  %arrayidx266 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom265
  %187 = load i32, i32* %arrayidx266, align 4
  %idxprom267 = sext i32 %187 to i64
  %188 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx268 = getelementptr inbounds double*, double** %188, i64 %idxprom267
  %189 = load double*, double** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds double, double* %189, i64 %idxprom263
  %190 = load double, double* %arrayidx269, align 8
  %cmp270 = fcmp ogt double %183, %190
  br i1 %cmp270, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.then.251
  %191 = load i32, i32* %count, align 4
  %dec273 = add nsw i32 %191, -1
  store i32 %dec273, i32* %count, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %if.then.251
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %lor.lhs.false.243
  %192 = load i32, i32* %j, align 4
  %idxprom276 = sext i32 %192 to i64
  %arrayidx277 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result1, i32 0, i64 %idxprom276
  %193 = load i32, i32* %arrayidx277, align 4
  %idxprom278 = sext i32 %193 to i64
  %arrayidx279 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.ocut1, i32 0, i64 %idxprom278
  %194 = load i32, i32* %arrayidx279, align 4
  %195 = load i32, i32* %count, align 4
  %idxprom280 = sext i32 %195 to i64
  %196 = load i32*, i32** %cut1.addr, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %196, i64 %idxprom280
  store i32 %194, i32* %arrayidx281, align 4
  %197 = load i32, i32* %j, align 4
  %idxprom282 = sext i32 %197 to i64
  %arrayidx283 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.result2, i32 0, i64 %idxprom282
  %198 = load i32, i32* %arrayidx283, align 4
  %idxprom284 = sext i32 %198 to i64
  %arrayidx285 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign.ocut2, i32 0, i64 %idxprom284
  %199 = load i32, i32* %arrayidx285, align 4
  %200 = load i32, i32* %count, align 4
  %idxprom286 = sext i32 %200 to i64
  %201 = load i32*, i32** %cut2.addr, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %201, i64 %idxprom286
  store i32 %199, i32* %arrayidx287, align 4
  %202 = load i32, i32* %count, align 4
  %inc288 = add nsw i32 %202, 1
  store i32 %inc288, i32* %count, align 4
  br label %for.inc.289

for.inc.289:                                      ; preds = %if.end.275, %if.then.234
  %203 = load i32, i32* %j, align 4
  %inc290 = add nsw i32 %203, 1
  store i32 %inc290, i32* %j, align 4
  br label %for.cond.220

for.end.291:                                      ; preds = %for.cond.220
  %204 = load i32, i32* %count, align 4
  %205 = load i32*, i32** %ncut.addr, align 8
  store i32 %204, i32* %205, align 4
  ret void
}

declare double** @AllocateDoubleMtx(i32, i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @blockAlign2(i32* %cut1, i32* %cut2, %struct._Segment** %seg1, %struct._Segment** %seg2, double** %ocrossscore, i32* %ncut) #0 {
entry:
  %cut1.addr = alloca i32*, align 8
  %cut2.addr = alloca i32*, align 8
  %seg1.addr = alloca %struct._Segment**, align 8
  %seg2.addr = alloca %struct._Segment**, align 8
  %ocrossscore.addr = alloca double**, align 8
  %ncut.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %shift = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %count = alloca i32, align 4
  %klim = alloca i32, align 4
  %maximum = alloca double, align 8
  store i32* %cut1, i32** %cut1.addr, align 8
  store i32* %cut2, i32** %cut2.addr, align 8
  store %struct._Segment** %seg1, %struct._Segment*** %seg1.addr, align 8
  store %struct._Segment** %seg2, %struct._Segment*** %seg2.addr, align 8
  store double** %ocrossscore, double*** %ocrossscore.addr, align 8
  store i32* %ncut, i32** %ncut.addr, align 8
  %0 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %1 = load i32*, i32** %ncut.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %2, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %ncut.addr, align 8
  %4 = load i32, i32* %3, align 4
  %add1 = add nsw i32 %4, 2
  store i32 %add1, i32* @blockAlign2.crossscoresize, align 4
  %5 = load i32, i32* @fftkeika, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i32**, i32*** @blockAlign2.track, align 8
  %tobool3 = icmp ne i32** %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32**, i32*** @blockAlign2.track, align 8
  call void @FreeIntMtx(i32** %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %10 = load double**, double*** @blockAlign2.crossscore, align 8
  %tobool6 = icmp ne double** %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %11 = load double**, double*** @blockAlign2.crossscore, align 8
  call void @FreeDoubleMtx(double** %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %13 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %call9 = call i32** @AllocateIntMtx(i32 %12, i32 %13)
  store i32** %call9, i32*** @blockAlign2.track, align 8
  %14 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %15 = load i32, i32* @blockAlign2.crossscoresize, align 4
  %call10 = call double** @AllocateDoubleMtx(i32 %14, i32 %15)
  store double** %call10, double*** @blockAlign2.crossscore, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.8, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end.11
  %16 = load i32, i32* %i, align 4
  %17 = load i32*, i32** %ncut.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp12 = icmp slt i32 %16, %18
  br i1 %cmp12, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32*, i32** %ncut.addr, align 8
  %21 = load i32, i32* %20, align 4
  %cmp14 = icmp slt i32 %19, %21
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %22 = load i32, i32* %j, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %24, i64 %idxprom16
  %25 = load double*, double** %arrayidx, align 8
  %arrayidx17 = getelementptr inbounds double, double* %25, i64 %idxprom
  %26 = load double, double* %arrayidx17, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx20 = getelementptr inbounds double*, double** %29, i64 %idxprom19
  %30 = load double*, double** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds double, double* %30, i64 %idxprom18
  store double %26, double* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.36, %for.end.24
  %33 = load i32, i32* %i, align 4
  %34 = load i32*, i32** %ncut.addr, align 8
  %35 = load i32, i32* %34, align 4
  %cmp26 = icmp slt i32 %33, %35
  br i1 %cmp26, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load i32*, i32** %cut1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.ocut1, i32 0, i64 %idxprom30
  store i32 %38, i32* %arrayidx31, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load i32*, i32** %cut2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %41, i64 %idxprom32
  %42 = load i32, i32* %arrayidx33, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %43 to i64
  %arrayidx35 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.ocut2, i32 0, i64 %idxprom34
  store i32 %42, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.27
  %44 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %44, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %for.cond.25
  store i32 1, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.158, %for.end.38
  %45 = load i32, i32* %i, align 4
  %46 = load i32*, i32** %ncut.addr, align 8
  %47 = load i32, i32* %46, align 4
  %cmp40 = icmp slt i32 %45, %47
  br i1 %cmp40, label %for.body.41, label %for.end.160

for.body.41:                                      ; preds = %for.cond.39
  store i32 1, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.155, %for.body.41
  %48 = load i32, i32* %j, align 4
  %49 = load i32*, i32** %ncut.addr, align 8
  %50 = load i32, i32* %49, align 4
  %cmp43 = icmp slt i32 %48, %50
  br i1 %cmp43, label %for.body.44, label %for.end.157

for.body.44:                                      ; preds = %for.cond.42
  store i32 0, i32* @blockAlign2.pointi, align 4
  store double 0.000000e+00, double* @blockAlign2.maxi, align 8
  %51 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %51, 2
  store i32 %sub, i32* %klim, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.78, %for.body.44
  %52 = load i32, i32* %k, align 4
  %53 = load i32, i32* %klim, align 4
  %cmp46 = icmp slt i32 %52, %53
  br i1 %cmp46, label %for.body.47, label %for.end.80

for.body.47:                                      ; preds = %for.cond.45
  %54 = load i32, i32* %k, align 4
  %tobool48 = icmp ne i32 %54, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %for.body.47
  %55 = load i32, i32* %k, align 4
  %56 = load i32*, i32** %ncut.addr, align 8
  %57 = load i32, i32* %56, align 4
  %sub49 = sub nsw i32 %57, 1
  %cmp50 = icmp slt i32 %55, %sub49
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.64

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %58 = load i32, i32* %j, align 4
  %59 = load i32*, i32** %ncut.addr, align 8
  %60 = load i32, i32* %59, align 4
  %sub52 = sub nsw i32 %60, 1
  %cmp53 = icmp slt i32 %58, %sub52
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.64

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %61 = load i32, i32* %k, align 4
  %sub55 = sub nsw i32 %61, 1
  %idxprom56 = sext i32 %sub55 to i64
  %62 = load %struct._Segment**, %struct._Segment*** %seg1.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._Segment*, %struct._Segment** %62, i64 %idxprom56
  %63 = load %struct._Segment*, %struct._Segment** %arrayidx57, align 8
  %64 = load i32, i32* %j, align 4
  %sub58 = sub nsw i32 %64, 1
  %idxprom59 = sext i32 %sub58 to i64
  %65 = load %struct._Segment**, %struct._Segment*** %seg1.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._Segment*, %struct._Segment** %65, i64 %idxprom59
  %66 = load %struct._Segment*, %struct._Segment** %arrayidx60, align 8
  %call61 = call i32 @permit(%struct._Segment* %63, %struct._Segment* %66)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.54
  br label %for.inc.78

if.end.64:                                        ; preds = %land.lhs.true.54, %land.lhs.true.51, %land.lhs.true, %for.body.47
  %67 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %sub66 = sub nsw i32 %68, 1
  %idxprom67 = sext i32 %sub66 to i64
  %69 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx68 = getelementptr inbounds double*, double** %69, i64 %idxprom67
  %70 = load double*, double** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds double, double* %70, i64 %idxprom65
  %71 = load double, double* %arrayidx69, align 8
  %72 = load double, double* @blockAlign2.maxj, align 8
  %cmp70 = fcmp ogt double %71, %72
  br i1 %cmp70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %if.end.64
  %73 = load i32, i32* %k, align 4
  store i32 %73, i32* @blockAlign2.pointi, align 4
  %74 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %sub73 = sub nsw i32 %75, 1
  %idxprom74 = sext i32 %sub73 to i64
  %76 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx75 = getelementptr inbounds double*, double** %76, i64 %idxprom74
  %77 = load double*, double** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds double, double* %77, i64 %idxprom72
  %78 = load double, double* %arrayidx76, align 8
  store double %78, double* @blockAlign2.maxi, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.end.64
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77, %if.then.63
  %79 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %79, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond.45

for.end.80:                                       ; preds = %for.cond.45
  store i32 0, i32* @blockAlign2.pointj, align 4
  store double 0.000000e+00, double* @blockAlign2.maxj, align 8
  %80 = load i32, i32* %i, align 4
  %sub81 = sub nsw i32 %80, 2
  store i32 %sub81, i32* %klim, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.116, %for.end.80
  %81 = load i32, i32* %k, align 4
  %82 = load i32, i32* %klim, align 4
  %cmp83 = icmp slt i32 %81, %82
  br i1 %cmp83, label %for.body.84, label %for.end.118

for.body.84:                                      ; preds = %for.cond.82
  %83 = load i32, i32* %k, align 4
  %tobool85 = icmp ne i32 %83, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.102

land.lhs.true.86:                                 ; preds = %for.body.84
  %84 = load i32, i32* %k, align 4
  %85 = load i32*, i32** %ncut.addr, align 8
  %86 = load i32, i32* %85, align 4
  %sub87 = sub nsw i32 %86, 1
  %cmp88 = icmp slt i32 %84, %sub87
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.102

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %87 = load i32, i32* %i, align 4
  %88 = load i32*, i32** %ncut.addr, align 8
  %89 = load i32, i32* %88, align 4
  %sub90 = sub nsw i32 %89, 1
  %cmp91 = icmp slt i32 %87, %sub90
  br i1 %cmp91, label %land.lhs.true.92, label %if.end.102

land.lhs.true.92:                                 ; preds = %land.lhs.true.89
  %90 = load i32, i32* %k, align 4
  %sub93 = sub nsw i32 %90, 1
  %idxprom94 = sext i32 %sub93 to i64
  %91 = load %struct._Segment**, %struct._Segment*** %seg2.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct._Segment*, %struct._Segment** %91, i64 %idxprom94
  %92 = load %struct._Segment*, %struct._Segment** %arrayidx95, align 8
  %93 = load i32, i32* %i, align 4
  %sub96 = sub nsw i32 %93, 1
  %idxprom97 = sext i32 %sub96 to i64
  %94 = load %struct._Segment**, %struct._Segment*** %seg2.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct._Segment*, %struct._Segment** %94, i64 %idxprom97
  %95 = load %struct._Segment*, %struct._Segment** %arrayidx98, align 8
  %call99 = call i32 @permit(%struct._Segment* %92, %struct._Segment* %95)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.92
  br label %for.inc.116

if.end.102:                                       ; preds = %land.lhs.true.92, %land.lhs.true.89, %land.lhs.true.86, %for.body.84
  %96 = load i32, i32* %j, align 4
  %sub103 = sub nsw i32 %96, 1
  %idxprom104 = sext i32 %sub103 to i64
  %97 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %97 to i64
  %98 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx106 = getelementptr inbounds double*, double** %98, i64 %idxprom105
  %99 = load double*, double** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds double, double* %99, i64 %idxprom104
  %100 = load double, double* %arrayidx107, align 8
  %101 = load double, double* @blockAlign2.maxj, align 8
  %cmp108 = fcmp ogt double %100, %101
  br i1 %cmp108, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %if.end.102
  %102 = load i32, i32* %k, align 4
  store i32 %102, i32* @blockAlign2.pointj, align 4
  %103 = load i32, i32* %j, align 4
  %sub110 = sub nsw i32 %103, 1
  %idxprom111 = sext i32 %sub110 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %104 to i64
  %105 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx113 = getelementptr inbounds double*, double** %105, i64 %idxprom112
  %106 = load double*, double** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds double, double* %106, i64 %idxprom111
  %107 = load double, double* %arrayidx114, align 8
  store double %107, double* @blockAlign2.maxj, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.109, %if.end.102
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115, %if.then.101
  %108 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %108, 1
  store i32 %inc117, i32* %k, align 4
  br label %for.cond.82

for.end.118:                                      ; preds = %for.cond.82
  %109 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %109 to double
  %110 = load double, double* @blockAlign2.maxi, align 8
  %add119 = fadd double %110, %conv
  store double %add119, double* @blockAlign2.maxi, align 8
  %111 = load i32, i32* @penalty, align 4
  %conv120 = sitofp i32 %111 to double
  %112 = load double, double* @blockAlign2.maxj, align 8
  %add121 = fadd double %112, %conv120
  store double %add121, double* @blockAlign2.maxj, align 8
  %113 = load i32, i32* %j, align 4
  %sub122 = sub nsw i32 %113, 1
  %idxprom123 = sext i32 %sub122 to i64
  %114 = load i32, i32* %i, align 4
  %sub124 = sub nsw i32 %114, 1
  %idxprom125 = sext i32 %sub124 to i64
  %115 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx126 = getelementptr inbounds double*, double** %115, i64 %idxprom125
  %116 = load double*, double** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds double, double* %116, i64 %idxprom123
  %117 = load double, double* %arrayidx127, align 8
  store double %117, double* %maximum, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %119 to i64
  %120 = load i32**, i32*** @blockAlign2.track, align 8
  %arrayidx130 = getelementptr inbounds i32*, i32** %120, i64 %idxprom129
  %121 = load i32*, i32** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %121, i64 %idxprom128
  store i32 0, i32* %arrayidx131, align 4
  %122 = load double, double* %maximum, align 8
  %123 = load double, double* @blockAlign2.maxi, align 8
  %cmp132 = fcmp olt double %122, %123
  br i1 %cmp132, label %if.then.134, label %if.end.140

if.then.134:                                      ; preds = %for.end.118
  %124 = load double, double* @blockAlign2.maxi, align 8
  store double %124, double* %maximum, align 8
  %125 = load i32, i32* %j, align 4
  %126 = load i32, i32* @blockAlign2.pointi, align 4
  %sub135 = sub nsw i32 %125, %126
  %127 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %127 to i64
  %128 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %128 to i64
  %129 = load i32**, i32*** @blockAlign2.track, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %129, i64 %idxprom137
  %130 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %130, i64 %idxprom136
  store i32 %sub135, i32* %arrayidx139, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.134, %for.end.118
  %131 = load double, double* %maximum, align 8
  %132 = load double, double* @blockAlign2.maxj, align 8
  %cmp141 = fcmp olt double %131, %132
  br i1 %cmp141, label %if.then.143, label %if.end.149

if.then.143:                                      ; preds = %if.end.140
  %133 = load double, double* @blockAlign2.maxj, align 8
  store double %133, double* %maximum, align 8
  %134 = load i32, i32* @blockAlign2.pointj, align 4
  %135 = load i32, i32* %i, align 4
  %sub144 = sub nsw i32 %134, %135
  %136 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %136 to i64
  %137 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %137 to i64
  %138 = load i32**, i32*** @blockAlign2.track, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %138, i64 %idxprom146
  %139 = load i32*, i32** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %139, i64 %idxprom145
  store i32 %sub144, i32* %arrayidx148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.143, %if.end.140
  %140 = load double, double* %maximum, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %142 to i64
  %143 = load double**, double*** @blockAlign2.crossscore, align 8
  %arrayidx152 = getelementptr inbounds double*, double** %143, i64 %idxprom151
  %144 = load double*, double** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds double, double* %144, i64 %idxprom150
  %145 = load double, double* %arrayidx153, align 8
  %add154 = fadd double %145, %140
  store double %add154, double* %arrayidx153, align 8
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.149
  %146 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %146, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond.42

for.end.157:                                      ; preds = %for.cond.42
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %147 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %147, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.39

for.end.160:                                      ; preds = %for.cond.39
  %148 = load i32*, i32** %ncut.addr, align 8
  %149 = load i32, i32* %148, align 4
  %sub161 = sub nsw i32 %149, 1
  store i32 %sub161, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 99999), align 4
  %150 = load i32*, i32** %ncut.addr, align 8
  %151 = load i32, i32* %150, align 4
  %sub162 = sub nsw i32 %151, 1
  store i32 %sub162, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 99999), align 4
  store i32 99999, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.218, %for.end.160
  %152 = load i32, i32* %i, align 4
  %cmp164 = icmp sge i32 %152, 1
  br i1 %cmp164, label %for.body.166, label %for.end.219

for.body.166:                                     ; preds = %for.cond.163
  %153 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %153 to i64
  %arrayidx168 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom167
  %154 = load i32, i32* %arrayidx168, align 4
  store i32 %154, i32* %cur1, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %155 to i64
  %arrayidx170 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom169
  %156 = load i32, i32* %arrayidx170, align 4
  store i32 %156, i32* %cur2, align 4
  %157 = load i32, i32* %cur1, align 4
  %cmp171 = icmp eq i32 %157, 0
  br i1 %cmp171, label %if.then.175, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.166
  %158 = load i32, i32* %cur2, align 4
  %cmp173 = icmp eq i32 %158, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false, %for.body.166
  br label %for.end.219

if.end.176:                                       ; preds = %lor.lhs.false
  %159 = load i32, i32* %cur2, align 4
  %idxprom177 = sext i32 %159 to i64
  %160 = load i32, i32* %cur1, align 4
  %idxprom178 = sext i32 %160 to i64
  %161 = load i32**, i32*** @blockAlign2.track, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %161, i64 %idxprom178
  %162 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %162, i64 %idxprom177
  %163 = load i32, i32* %arrayidx180, align 4
  store i32 %163, i32* %shift, align 4
  %164 = load i32, i32* %shift, align 4
  %cmp181 = icmp eq i32 %164, 0
  br i1 %cmp181, label %if.then.183, label %if.else

if.then.183:                                      ; preds = %if.end.176
  %165 = load i32, i32* %cur1, align 4
  %sub184 = sub nsw i32 %165, 1
  %166 = load i32, i32* %i, align 4
  %sub185 = sub nsw i32 %166, 1
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom186
  store i32 %sub184, i32* %arrayidx187, align 4
  %167 = load i32, i32* %cur2, align 4
  %sub188 = sub nsw i32 %167, 1
  %168 = load i32, i32* %i, align 4
  %sub189 = sub nsw i32 %168, 1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom190
  store i32 %sub188, i32* %arrayidx191, align 4
  br label %for.inc.218

if.else:                                          ; preds = %if.end.176
  %169 = load i32, i32* %shift, align 4
  %cmp192 = icmp sgt i32 %169, 0
  br i1 %cmp192, label %if.then.194, label %if.else.203

if.then.194:                                      ; preds = %if.else
  %170 = load i32, i32* %cur1, align 4
  %sub195 = sub nsw i32 %170, 1
  %171 = load i32, i32* %i, align 4
  %sub196 = sub nsw i32 %171, 1
  %idxprom197 = sext i32 %sub196 to i64
  %arrayidx198 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom197
  store i32 %sub195, i32* %arrayidx198, align 4
  %172 = load i32, i32* %cur2, align 4
  %173 = load i32, i32* %shift, align 4
  %sub199 = sub nsw i32 %172, %173
  %174 = load i32, i32* %i, align 4
  %sub200 = sub nsw i32 %174, 1
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom201
  store i32 %sub199, i32* %arrayidx202, align 4
  br label %if.end.216

if.else.203:                                      ; preds = %if.else
  %175 = load i32, i32* %shift, align 4
  %cmp204 = icmp slt i32 %175, 0
  br i1 %cmp204, label %if.then.206, label %if.end.215

if.then.206:                                      ; preds = %if.else.203
  %176 = load i32, i32* %cur1, align 4
  %177 = load i32, i32* %shift, align 4
  %add207 = add nsw i32 %176, %177
  %178 = load i32, i32* %i, align 4
  %sub208 = sub nsw i32 %178, 1
  %idxprom209 = sext i32 %sub208 to i64
  %arrayidx210 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom209
  store i32 %add207, i32* %arrayidx210, align 4
  %179 = load i32, i32* %cur2, align 4
  %sub211 = sub nsw i32 %179, 1
  %180 = load i32, i32* %i, align 4
  %sub212 = sub nsw i32 %180, 1
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom213
  store i32 %sub211, i32* %arrayidx214, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.206, %if.else.203
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.194
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217, %if.then.183
  %181 = load i32, i32* %i, align 4
  %dec = add nsw i32 %181, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.163

for.end.219:                                      ; preds = %if.then.175, %for.cond.163
  store i32 0, i32* %count, align 4
  %182 = load i32, i32* %i, align 4
  store i32 %182, i32* %j, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.289, %for.end.219
  %183 = load i32, i32* %j, align 4
  %cmp221 = icmp slt i32 %183, 100000
  br i1 %cmp221, label %for.body.223, label %for.end.291

for.body.223:                                     ; preds = %for.cond.220
  %184 = load i32, i32* %j, align 4
  %idxprom224 = sext i32 %184 to i64
  %arrayidx225 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom224
  %185 = load i32, i32* %arrayidx225, align 4
  %idxprom226 = sext i32 %185 to i64
  %186 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %186 to i64
  %arrayidx228 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom227
  %187 = load i32, i32* %arrayidx228, align 4
  %idxprom229 = sext i32 %187 to i64
  %188 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx230 = getelementptr inbounds double*, double** %188, i64 %idxprom229
  %189 = load double*, double** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds double, double* %189, i64 %idxprom226
  %190 = load double, double* %arrayidx231, align 8
  %cmp232 = fcmp oeq double %190, 0.000000e+00
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %for.body.223
  br label %for.inc.289

if.end.235:                                       ; preds = %for.body.223
  %191 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %191 to i64
  %arrayidx237 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom236
  %192 = load i32, i32* %arrayidx237, align 4
  %193 = load i32, i32* %j, align 4
  %sub238 = sub nsw i32 %193, 1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom239
  %194 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp eq i32 %192, %194
  br i1 %cmp241, label %if.then.251, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.end.235
  %195 = load i32, i32* %j, align 4
  %idxprom244 = sext i32 %195 to i64
  %arrayidx245 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom244
  %196 = load i32, i32* %arrayidx245, align 4
  %197 = load i32, i32* %j, align 4
  %sub246 = sub nsw i32 %197, 1
  %idxprom247 = sext i32 %sub246 to i64
  %arrayidx248 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom247
  %198 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp eq i32 %196, %198
  br i1 %cmp249, label %if.then.251, label %if.end.275

if.then.251:                                      ; preds = %lor.lhs.false.243, %if.end.235
  %199 = load i32, i32* %j, align 4
  %idxprom252 = sext i32 %199 to i64
  %arrayidx253 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom252
  %200 = load i32, i32* %arrayidx253, align 4
  %idxprom254 = sext i32 %200 to i64
  %201 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %201 to i64
  %arrayidx256 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom255
  %202 = load i32, i32* %arrayidx256, align 4
  %idxprom257 = sext i32 %202 to i64
  %203 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx258 = getelementptr inbounds double*, double** %203, i64 %idxprom257
  %204 = load double*, double** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds double, double* %204, i64 %idxprom254
  %205 = load double, double* %arrayidx259, align 8
  %206 = load i32, i32* %j, align 4
  %sub260 = sub nsw i32 %206, 1
  %idxprom261 = sext i32 %sub260 to i64
  %arrayidx262 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom261
  %207 = load i32, i32* %arrayidx262, align 4
  %idxprom263 = sext i32 %207 to i64
  %208 = load i32, i32* %j, align 4
  %sub264 = sub nsw i32 %208, 1
  %idxprom265 = sext i32 %sub264 to i64
  %arrayidx266 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom265
  %209 = load i32, i32* %arrayidx266, align 4
  %idxprom267 = sext i32 %209 to i64
  %210 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx268 = getelementptr inbounds double*, double** %210, i64 %idxprom267
  %211 = load double*, double** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds double, double* %211, i64 %idxprom263
  %212 = load double, double* %arrayidx269, align 8
  %cmp270 = fcmp ogt double %205, %212
  br i1 %cmp270, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.then.251
  %213 = load i32, i32* %count, align 4
  %dec273 = add nsw i32 %213, -1
  store i32 %dec273, i32* %count, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %if.then.251
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %lor.lhs.false.243
  %214 = load i32, i32* %j, align 4
  %idxprom276 = sext i32 %214 to i64
  %arrayidx277 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result1, i32 0, i64 %idxprom276
  %215 = load i32, i32* %arrayidx277, align 4
  %idxprom278 = sext i32 %215 to i64
  %arrayidx279 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.ocut1, i32 0, i64 %idxprom278
  %216 = load i32, i32* %arrayidx279, align 4
  %217 = load i32, i32* %count, align 4
  %idxprom280 = sext i32 %217 to i64
  %218 = load i32*, i32** %cut1.addr, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %218, i64 %idxprom280
  store i32 %216, i32* %arrayidx281, align 4
  %219 = load i32, i32* %j, align 4
  %idxprom282 = sext i32 %219 to i64
  %arrayidx283 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.result2, i32 0, i64 %idxprom282
  %220 = load i32, i32* %arrayidx283, align 4
  %idxprom284 = sext i32 %220 to i64
  %arrayidx285 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign2.ocut2, i32 0, i64 %idxprom284
  %221 = load i32, i32* %arrayidx285, align 4
  %222 = load i32, i32* %count, align 4
  %idxprom286 = sext i32 %222 to i64
  %223 = load i32*, i32** %cut2.addr, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %223, i64 %idxprom286
  store i32 %221, i32* %arrayidx287, align 4
  %224 = load i32, i32* %count, align 4
  %inc288 = add nsw i32 %224, 1
  store i32 %inc288, i32* %count, align 4
  br label %for.inc.289

for.inc.289:                                      ; preds = %if.end.275, %if.then.234
  %225 = load i32, i32* %j, align 4
  %inc290 = add nsw i32 %225, 1
  store i32 %inc290, i32* %j, align 4
  br label %for.cond.220

for.end.291:                                      ; preds = %for.cond.220
  %226 = load i32, i32* %count, align 4
  %227 = load i32*, i32** %ncut.addr, align 8
  store i32 %226, i32* %227, align 4
  ret void
}

declare void @FreeIntMtx(i32**) #1

declare void @FreeDoubleMtx(double**) #1

; Function Attrs: nounwind uwtable
define internal i32 @permit(%struct._Segment* %seg1, %struct._Segment* %seg2) #0 {
entry:
  %seg1.addr = alloca %struct._Segment*, align 8
  %seg2.addr = alloca %struct._Segment*, align 8
  store %struct._Segment* %seg1, %struct._Segment** %seg1.addr, align 8
  store %struct._Segment* %seg2, %struct._Segment** %seg2.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @blockAlign3(i32* %cut1, i32* %cut2, %struct._Segment** %seg1, %struct._Segment** %seg2, double** %ocrossscore, i32* %ncut) #0 {
entry:
  %cut1.addr = alloca i32*, align 8
  %cut2.addr = alloca i32*, align 8
  %seg1.addr = alloca %struct._Segment**, align 8
  %seg2.addr = alloca %struct._Segment**, align 8
  %ocrossscore.addr = alloca double**, align 8
  %ncut.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %shift = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %count = alloca i32, align 4
  %maximum = alloca double, align 8
  store i32* %cut1, i32** %cut1.addr, align 8
  store i32* %cut2, i32** %cut2.addr, align 8
  store %struct._Segment** %seg1, %struct._Segment*** %seg1.addr, align 8
  store %struct._Segment** %seg2, %struct._Segment*** %seg2.addr, align 8
  store double** %ocrossscore, double*** %ocrossscore.addr, align 8
  store i32* %ncut, i32** %ncut.addr, align 8
  %0 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %1 = load i32*, i32** %ncut.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %2, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %ncut.addr, align 8
  %4 = load i32, i32* %3, align 4
  %add1 = add nsw i32 %4, 2
  store i32 %add1, i32* @blockAlign3.crossscoresize, align 4
  %5 = load i32, i32* @fftkeika, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i32**, i32*** @blockAlign3.track, align 8
  %tobool3 = icmp ne i32** %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32**, i32*** @blockAlign3.track, align 8
  call void @FreeIntMtx(i32** %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %10 = load double**, double*** @blockAlign3.crossscore, align 8
  %tobool6 = icmp ne double** %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %11 = load double**, double*** @blockAlign3.crossscore, align 8
  call void @FreeDoubleMtx(double** %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load i32*, i32** @blockAlign3.jumppos, align 8
  %tobool9 = icmp ne i32* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %13 = load i32*, i32** @blockAlign3.jumppos, align 8
  call void @FreeIntVec(i32* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %14 = load double*, double** @blockAlign3.jumpscore, align 8
  %tobool12 = icmp ne double* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %15 = load double*, double** @blockAlign3.jumpscore, align 8
  call void @FreeDoubleVec(double* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %16 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %17 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %call15 = call i32** @AllocateIntMtx(i32 %16, i32 %17)
  store i32** %call15, i32*** @blockAlign3.track, align 8
  %18 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %19 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %call16 = call double** @AllocateDoubleMtx(i32 %18, i32 %19)
  store double** %call16, double*** @blockAlign3.crossscore, align 8
  %20 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %call17 = call i32* @AllocateIntVec(i32 %20)
  store i32* %call17, i32** @blockAlign3.jumppos, align 8
  %21 = load i32, i32* @blockAlign3.crossscoresize, align 4
  %call18 = call double* @AllocateDoubleVec(i32 %21)
  store double* %call18, double** @blockAlign3.jumpscore, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.19
  %22 = load i32, i32* %i, align 4
  %23 = load i32*, i32** %ncut.addr, align 8
  %24 = load i32, i32* %23, align 4
  %cmp20 = icmp slt i32 %22, %24
  br i1 %cmp20, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %j, align 4
  %26 = load i32*, i32** %ncut.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp22 = icmp slt i32 %25, %27
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %28 = load i32, i32* %j, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %30, i64 %idxprom24
  %31 = load double*, double** %arrayidx, align 8
  %arrayidx25 = getelementptr inbounds double, double* %31, i64 %idxprom
  %32 = load double, double* %arrayidx25, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx28 = getelementptr inbounds double*, double** %35, i64 %idxprom27
  %36 = load double*, double** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds double, double* %36, i64 %idxprom26
  store double %32, double* %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %for.end.32
  %39 = load i32, i32* %i, align 4
  %40 = load i32*, i32** %ncut.addr, align 8
  %41 = load i32, i32* %40, align 4
  %cmp34 = icmp slt i32 %39, %41
  br i1 %cmp34, label %for.body.35, label %for.end.46

for.body.35:                                      ; preds = %for.cond.33
  %42 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load i32*, i32** %cut1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %43, i64 %idxprom36
  %44 = load i32, i32* %arrayidx37, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %45 to i64
  %arrayidx39 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.ocut1, i32 0, i64 %idxprom38
  store i32 %44, i32* %arrayidx39, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %46 to i64
  %47 = load i32*, i32** %cut2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %47, i64 %idxprom40
  %48 = load i32, i32* %arrayidx41, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %49 to i64
  %arrayidx43 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.ocut2, i32 0, i64 %idxprom42
  store i32 %48, i32* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.35
  %50 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %50, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.33

for.end.46:                                       ; preds = %for.cond.33
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.54, %for.end.46
  %51 = load i32, i32* %j, align 4
  %52 = load i32*, i32** %ncut.addr, align 8
  %53 = load i32, i32* %52, align 4
  %cmp48 = icmp slt i32 %51, %53
  br i1 %cmp48, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.47
  %54 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx51 = getelementptr inbounds double, double* %55, i64 %idxprom50
  store double -9.999990e+02, double* %arrayidx51, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %56 to i64
  %57 = load i32*, i32** @blockAlign3.jumppos, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom52
  store i32 -1, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %58 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.47

for.end.56:                                       ; preds = %for.cond.47
  store i32 1, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.153, %for.end.56
  %59 = load i32, i32* %i, align 4
  %60 = load i32*, i32** %ncut.addr, align 8
  %61 = load i32, i32* %60, align 4
  %cmp58 = icmp slt i32 %59, %61
  br i1 %cmp58, label %for.body.59, label %for.end.155

for.body.59:                                      ; preds = %for.cond.57
  store double -9.999990e+02, double* @blockAlign3.jumpscorei, align 8
  store i32 -1, i32* @blockAlign3.jumpposi, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.150, %for.body.59
  %62 = load i32, i32* %j, align 4
  %63 = load i32*, i32** %ncut.addr, align 8
  %64 = load i32, i32* %63, align 4
  %cmp61 = icmp slt i32 %62, %64
  br i1 %cmp61, label %for.body.62, label %for.end.152

for.body.62:                                      ; preds = %for.cond.60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %j, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i32 %66, i32 %67)
  %68 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %68, 1
  %idxprom64 = sext i32 %sub to i64
  %69 = load i32, i32* %i, align 4
  %sub65 = sub nsw i32 %69, 1
  %idxprom66 = sext i32 %sub65 to i64
  %70 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx67 = getelementptr inbounds double*, double** %70, i64 %idxprom66
  %71 = load double*, double** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds double, double* %71, i64 %idxprom64
  %72 = load double, double* %arrayidx68, align 8
  store double %72, double* %maximum, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %74 to i64
  %75 = load i32**, i32*** @blockAlign3.track, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %75, i64 %idxprom70
  %76 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %76, i64 %idxprom69
  store i32 0, i32* %arrayidx72, align 4
  %77 = load double, double* %maximum, align 8
  %78 = load double, double* @blockAlign3.jumpscorei, align 8
  %cmp73 = fcmp olt double %77, %78
  br i1 %cmp73, label %land.lhs.true, label %if.end.86

land.lhs.true:                                    ; preds = %for.body.62
  %79 = load i32, i32* @blockAlign3.jumpposi, align 4
  %idxprom74 = sext i32 %79 to i64
  %80 = load %struct._Segment**, %struct._Segment*** %seg1.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._Segment*, %struct._Segment** %80, i64 %idxprom74
  %81 = load %struct._Segment*, %struct._Segment** %arrayidx75, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %82 to i64
  %83 = load %struct._Segment**, %struct._Segment*** %seg1.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._Segment*, %struct._Segment** %83, i64 %idxprom76
  %84 = load %struct._Segment*, %struct._Segment** %arrayidx77, align 8
  %call78 = call i32 @permit(%struct._Segment* %81, %struct._Segment* %84)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %land.lhs.true
  %85 = load double, double* @blockAlign3.jumpscorei, align 8
  store double %85, double* %maximum, align 8
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* @blockAlign3.jumpposi, align 4
  %sub81 = sub nsw i32 %86, %87
  %88 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %89 to i64
  %90 = load i32**, i32*** @blockAlign3.track, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %90, i64 %idxprom83
  %91 = load i32*, i32** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %91, i64 %idxprom82
  store i32 %sub81, i32* %arrayidx85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %land.lhs.true, %for.body.62
  %92 = load double, double* %maximum, align 8
  %93 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %93 to i64
  %94 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx88 = getelementptr inbounds double, double* %94, i64 %idxprom87
  %95 = load double, double* %arrayidx88, align 8
  %cmp89 = fcmp olt double %92, %95
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.110

land.lhs.true.90:                                 ; preds = %if.end.86
  %96 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %96 to i64
  %97 = load i32*, i32** @blockAlign3.jumppos, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %97, i64 %idxprom91
  %98 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %98 to i64
  %99 = load %struct._Segment**, %struct._Segment*** %seg2.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct._Segment*, %struct._Segment** %99, i64 %idxprom93
  %100 = load %struct._Segment*, %struct._Segment** %arrayidx94, align 8
  %101 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %101 to i64
  %102 = load %struct._Segment**, %struct._Segment*** %seg2.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct._Segment*, %struct._Segment** %102, i64 %idxprom95
  %103 = load %struct._Segment*, %struct._Segment** %arrayidx96, align 8
  %call97 = call i32 @permit(%struct._Segment* %100, %struct._Segment* %103)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.110

if.then.99:                                       ; preds = %land.lhs.true.90
  %104 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %104 to i64
  %105 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx101 = getelementptr inbounds double, double* %105, i64 %idxprom100
  %106 = load double, double* %arrayidx101, align 8
  store double %106, double* %maximum, align 8
  %107 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %107 to i64
  %108 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx103 = getelementptr inbounds double, double* %108, i64 %idxprom102
  %109 = load double, double* %arrayidx103, align 8
  %110 = load i32, i32* %i, align 4
  %conv = sitofp i32 %110 to double
  %sub104 = fsub double %109, %conv
  %conv105 = fptosi double %sub104 to i32
  %111 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %112 to i64
  %113 = load i32**, i32*** @blockAlign3.track, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %113, i64 %idxprom107
  %114 = load i32*, i32** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %114, i64 %idxprom106
  store i32 %conv105, i32* %arrayidx109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.99, %land.lhs.true.90, %if.end.86
  %115 = load double, double* %maximum, align 8
  %116 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %117 to i64
  %118 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx113 = getelementptr inbounds double*, double** %118, i64 %idxprom112
  %119 = load double*, double** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds double, double* %119, i64 %idxprom111
  %120 = load double, double* %arrayidx114, align 8
  %add115 = fadd double %120, %115
  store double %add115, double* %arrayidx114, align 8
  %121 = load double, double* @blockAlign3.jumpscorei, align 8
  %122 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %122 to i64
  %123 = load i32, i32* %i, align 4
  %sub117 = sub nsw i32 %123, 1
  %idxprom118 = sext i32 %sub117 to i64
  %124 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx119 = getelementptr inbounds double*, double** %124, i64 %idxprom118
  %125 = load double*, double** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds double, double* %125, i64 %idxprom116
  %126 = load double, double* %arrayidx120, align 8
  %cmp121 = fcmp olt double %121, %126
  br i1 %cmp121, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %if.end.110
  %127 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %127 to i64
  %128 = load i32, i32* %i, align 4
  %sub125 = sub nsw i32 %128, 1
  %idxprom126 = sext i32 %sub125 to i64
  %129 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx127 = getelementptr inbounds double*, double** %129, i64 %idxprom126
  %130 = load double*, double** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds double, double* %130, i64 %idxprom124
  %131 = load double, double* %arrayidx128, align 8
  store double %131, double* @blockAlign3.jumpscorei, align 8
  %132 = load i32, i32* %j, align 4
  store i32 %132, i32* @blockAlign3.jumpposi, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.123, %if.end.110
  %133 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %133 to i64
  %134 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx131 = getelementptr inbounds double, double* %134, i64 %idxprom130
  %135 = load double, double* %arrayidx131, align 8
  %136 = load i32, i32* %j, align 4
  %sub132 = sub nsw i32 %136, 1
  %idxprom133 = sext i32 %sub132 to i64
  %137 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %137 to i64
  %138 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx135 = getelementptr inbounds double*, double** %138, i64 %idxprom134
  %139 = load double*, double** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds double, double* %139, i64 %idxprom133
  %140 = load double, double* %arrayidx136, align 8
  %cmp137 = fcmp olt double %135, %140
  br i1 %cmp137, label %if.then.139, label %if.end.149

if.then.139:                                      ; preds = %if.end.129
  %141 = load i32, i32* %j, align 4
  %sub140 = sub nsw i32 %141, 1
  %idxprom141 = sext i32 %sub140 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %142 to i64
  %143 = load double**, double*** @blockAlign3.crossscore, align 8
  %arrayidx143 = getelementptr inbounds double*, double** %143, i64 %idxprom142
  %144 = load double*, double** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds double, double* %144, i64 %idxprom141
  %145 = load double, double* %arrayidx144, align 8
  %146 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %146 to i64
  %147 = load double*, double** @blockAlign3.jumpscore, align 8
  %arrayidx146 = getelementptr inbounds double, double* %147, i64 %idxprom145
  store double %145, double* %arrayidx146, align 8
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %149 to i64
  %150 = load i32*, i32** @blockAlign3.jumppos, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %150, i64 %idxprom147
  store i32 %148, i32* %arrayidx148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.139, %if.end.129
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %151 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %151, 1
  store i32 %inc151, i32* %j, align 4
  br label %for.cond.60

for.end.152:                                      ; preds = %for.cond.60
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.end.152
  %152 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %152, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.57

for.end.155:                                      ; preds = %for.cond.57
  %153 = load i32*, i32** %ncut.addr, align 8
  %154 = load i32, i32* %153, align 4
  %sub156 = sub nsw i32 %154, 1
  store i32 %sub156, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 99999), align 4
  %155 = load i32*, i32** %ncut.addr, align 8
  %156 = load i32, i32* %155, align 4
  %sub157 = sub nsw i32 %156, 1
  store i32 %sub157, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 99999), align 4
  store i32 99999, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.213, %for.end.155
  %157 = load i32, i32* %i, align 4
  %cmp159 = icmp sge i32 %157, 1
  br i1 %cmp159, label %for.body.161, label %for.end.214

for.body.161:                                     ; preds = %for.cond.158
  %158 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %158 to i64
  %arrayidx163 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom162
  %159 = load i32, i32* %arrayidx163, align 4
  store i32 %159, i32* %cur1, align 4
  %160 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %160 to i64
  %arrayidx165 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom164
  %161 = load i32, i32* %arrayidx165, align 4
  store i32 %161, i32* %cur2, align 4
  %162 = load i32, i32* %cur1, align 4
  %cmp166 = icmp eq i32 %162, 0
  br i1 %cmp166, label %if.then.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.161
  %163 = load i32, i32* %cur2, align 4
  %cmp168 = icmp eq i32 %163, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %lor.lhs.false, %for.body.161
  br label %for.end.214

if.end.171:                                       ; preds = %lor.lhs.false
  %164 = load i32, i32* %cur2, align 4
  %idxprom172 = sext i32 %164 to i64
  %165 = load i32, i32* %cur1, align 4
  %idxprom173 = sext i32 %165 to i64
  %166 = load i32**, i32*** @blockAlign3.track, align 8
  %arrayidx174 = getelementptr inbounds i32*, i32** %166, i64 %idxprom173
  %167 = load i32*, i32** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %167, i64 %idxprom172
  %168 = load i32, i32* %arrayidx175, align 4
  store i32 %168, i32* %shift, align 4
  %169 = load i32, i32* %shift, align 4
  %cmp176 = icmp eq i32 %169, 0
  br i1 %cmp176, label %if.then.178, label %if.else

if.then.178:                                      ; preds = %if.end.171
  %170 = load i32, i32* %cur1, align 4
  %sub179 = sub nsw i32 %170, 1
  %171 = load i32, i32* %i, align 4
  %sub180 = sub nsw i32 %171, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom181
  store i32 %sub179, i32* %arrayidx182, align 4
  %172 = load i32, i32* %cur2, align 4
  %sub183 = sub nsw i32 %172, 1
  %173 = load i32, i32* %i, align 4
  %sub184 = sub nsw i32 %173, 1
  %idxprom185 = sext i32 %sub184 to i64
  %arrayidx186 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom185
  store i32 %sub183, i32* %arrayidx186, align 4
  br label %for.inc.213

if.else:                                          ; preds = %if.end.171
  %174 = load i32, i32* %shift, align 4
  %cmp187 = icmp sgt i32 %174, 0
  br i1 %cmp187, label %if.then.189, label %if.else.198

if.then.189:                                      ; preds = %if.else
  %175 = load i32, i32* %cur1, align 4
  %sub190 = sub nsw i32 %175, 1
  %176 = load i32, i32* %i, align 4
  %sub191 = sub nsw i32 %176, 1
  %idxprom192 = sext i32 %sub191 to i64
  %arrayidx193 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom192
  store i32 %sub190, i32* %arrayidx193, align 4
  %177 = load i32, i32* %cur2, align 4
  %178 = load i32, i32* %shift, align 4
  %sub194 = sub nsw i32 %177, %178
  %179 = load i32, i32* %i, align 4
  %sub195 = sub nsw i32 %179, 1
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom196
  store i32 %sub194, i32* %arrayidx197, align 4
  br label %if.end.211

if.else.198:                                      ; preds = %if.else
  %180 = load i32, i32* %shift, align 4
  %cmp199 = icmp slt i32 %180, 0
  br i1 %cmp199, label %if.then.201, label %if.end.210

if.then.201:                                      ; preds = %if.else.198
  %181 = load i32, i32* %cur1, align 4
  %182 = load i32, i32* %shift, align 4
  %add202 = add nsw i32 %181, %182
  %183 = load i32, i32* %i, align 4
  %sub203 = sub nsw i32 %183, 1
  %idxprom204 = sext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom204
  store i32 %add202, i32* %arrayidx205, align 4
  %184 = load i32, i32* %cur2, align 4
  %sub206 = sub nsw i32 %184, 1
  %185 = load i32, i32* %i, align 4
  %sub207 = sub nsw i32 %185, 1
  %idxprom208 = sext i32 %sub207 to i64
  %arrayidx209 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom208
  store i32 %sub206, i32* %arrayidx209, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.201, %if.else.198
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.189
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.212, %if.then.178
  %186 = load i32, i32* %i, align 4
  %dec = add nsw i32 %186, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.158

for.end.214:                                      ; preds = %if.then.170, %for.cond.158
  store i32 0, i32* %count, align 4
  %187 = load i32, i32* %i, align 4
  store i32 %187, i32* %j, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.284, %for.end.214
  %188 = load i32, i32* %j, align 4
  %cmp216 = icmp slt i32 %188, 100000
  br i1 %cmp216, label %for.body.218, label %for.end.286

for.body.218:                                     ; preds = %for.cond.215
  %189 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %189 to i64
  %arrayidx220 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom219
  %190 = load i32, i32* %arrayidx220, align 4
  %idxprom221 = sext i32 %190 to i64
  %191 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %191 to i64
  %arrayidx223 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom222
  %192 = load i32, i32* %arrayidx223, align 4
  %idxprom224 = sext i32 %192 to i64
  %193 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx225 = getelementptr inbounds double*, double** %193, i64 %idxprom224
  %194 = load double*, double** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds double, double* %194, i64 %idxprom221
  %195 = load double, double* %arrayidx226, align 8
  %cmp227 = fcmp oeq double %195, 0.000000e+00
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %for.body.218
  br label %for.inc.284

if.end.230:                                       ; preds = %for.body.218
  %196 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %196 to i64
  %arrayidx232 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom231
  %197 = load i32, i32* %arrayidx232, align 4
  %198 = load i32, i32* %j, align 4
  %sub233 = sub nsw i32 %198, 1
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom234
  %199 = load i32, i32* %arrayidx235, align 4
  %cmp236 = icmp eq i32 %197, %199
  br i1 %cmp236, label %if.then.246, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.end.230
  %200 = load i32, i32* %j, align 4
  %idxprom239 = sext i32 %200 to i64
  %arrayidx240 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom239
  %201 = load i32, i32* %arrayidx240, align 4
  %202 = load i32, i32* %j, align 4
  %sub241 = sub nsw i32 %202, 1
  %idxprom242 = sext i32 %sub241 to i64
  %arrayidx243 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom242
  %203 = load i32, i32* %arrayidx243, align 4
  %cmp244 = icmp eq i32 %201, %203
  br i1 %cmp244, label %if.then.246, label %if.end.270

if.then.246:                                      ; preds = %lor.lhs.false.238, %if.end.230
  %204 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %204 to i64
  %arrayidx248 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom247
  %205 = load i32, i32* %arrayidx248, align 4
  %idxprom249 = sext i32 %205 to i64
  %206 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %206 to i64
  %arrayidx251 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom250
  %207 = load i32, i32* %arrayidx251, align 4
  %idxprom252 = sext i32 %207 to i64
  %208 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx253 = getelementptr inbounds double*, double** %208, i64 %idxprom252
  %209 = load double*, double** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds double, double* %209, i64 %idxprom249
  %210 = load double, double* %arrayidx254, align 8
  %211 = load i32, i32* %j, align 4
  %sub255 = sub nsw i32 %211, 1
  %idxprom256 = sext i32 %sub255 to i64
  %arrayidx257 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom256
  %212 = load i32, i32* %arrayidx257, align 4
  %idxprom258 = sext i32 %212 to i64
  %213 = load i32, i32* %j, align 4
  %sub259 = sub nsw i32 %213, 1
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom260
  %214 = load i32, i32* %arrayidx261, align 4
  %idxprom262 = sext i32 %214 to i64
  %215 = load double**, double*** %ocrossscore.addr, align 8
  %arrayidx263 = getelementptr inbounds double*, double** %215, i64 %idxprom262
  %216 = load double*, double** %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds double, double* %216, i64 %idxprom258
  %217 = load double, double* %arrayidx264, align 8
  %cmp265 = fcmp ogt double %210, %217
  br i1 %cmp265, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.then.246
  %218 = load i32, i32* %count, align 4
  %dec268 = add nsw i32 %218, -1
  store i32 %dec268, i32* %count, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.then.246
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %lor.lhs.false.238
  %219 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %219 to i64
  %arrayidx272 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result1, i32 0, i64 %idxprom271
  %220 = load i32, i32* %arrayidx272, align 4
  %idxprom273 = sext i32 %220 to i64
  %arrayidx274 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.ocut1, i32 0, i64 %idxprom273
  %221 = load i32, i32* %arrayidx274, align 4
  %222 = load i32, i32* %count, align 4
  %idxprom275 = sext i32 %222 to i64
  %223 = load i32*, i32** %cut1.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %223, i64 %idxprom275
  store i32 %221, i32* %arrayidx276, align 4
  %224 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %224 to i64
  %arrayidx278 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.result2, i32 0, i64 %idxprom277
  %225 = load i32, i32* %arrayidx278, align 4
  %idxprom279 = sext i32 %225 to i64
  %arrayidx280 = getelementptr inbounds [100000 x i32], [100000 x i32]* @blockAlign3.ocut2, i32 0, i64 %idxprom279
  %226 = load i32, i32* %arrayidx280, align 4
  %227 = load i32, i32* %count, align 4
  %idxprom281 = sext i32 %227 to i64
  %228 = load i32*, i32** %cut2.addr, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %228, i64 %idxprom281
  store i32 %226, i32* %arrayidx282, align 4
  %229 = load i32, i32* %count, align 4
  %inc283 = add nsw i32 %229, 1
  store i32 %inc283, i32* %count, align 4
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.270, %if.then.229
  %230 = load i32, i32* %j, align 4
  %inc285 = add nsw i32 %230, 1
  store i32 %inc285, i32* %j, align 4
  br label %for.cond.215

for.end.286:                                      ; preds = %for.cond.215
  %231 = load i32, i32* %count, align 4
  %232 = load i32*, i32** %ncut.addr, align 8
  store i32 %231, i32* %232, align 4
  ret void
}

declare void @FreeIntVec(i32*) #1

declare i32* @AllocateIntVec(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
