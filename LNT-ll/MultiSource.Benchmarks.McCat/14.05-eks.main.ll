; ModuleID = './MultiSource.Benchmarks.McCat/14.05-eks.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%i\00\00", align 1
@A = common global double** null, align 8
@U = common global double** null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%i %e\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"filename = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Step: %i !! The frobenius norm of X-T is %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Is A symmetric? %e\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@Q = common global double** null, align 8

; Function Attrs: nounwind uwtable
define i32 @comp(double* %a, double* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  store double* %a, double** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %1 = load double, double* %0, align 8
  %call = call double @fabs(double %1) #4
  %2 = load double*, double** %b.addr, align 8
  %3 = load double, double* %2, align 8
  %call1 = call double @fabs(double %3) #4
  %cmp = fcmp olt double %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load double*, double** %a.addr, align 8
  %5 = load double, double* %4, align 8
  %call2 = call double @fabs(double %5) #4
  %6 = load double*, double** %b.addr, align 8
  %7 = load double, double* %6, align 8
  %call3 = call double @fabs(double %7) #4
  %cmp4 = fcmp ogt double %call2, %call3
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %v = alloca double*, align 8
  %u = alloca double*, align 8
  %z = alloca double*, align 8
  %w = alloca double*, align 8
  %V = alloca double**, align 8
  %T = alloca double**, align 8
  %X = alloca double**, align 8
  %Z = alloca double**, align 8
  %vec = alloca %struct._IO_FILE*, align 8
  %filename = alloca [20 x i8], align 16
  %num = alloca [3 x i8], align 1
  store i32 0, i32* %retval
  store i32 2, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %0 = load i32, i32* %l, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %filename, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %arraydecay1 = getelementptr inbounds [3 x i8], [3 x i8]* %num, i32 0, i32 0
  %1 = load i32, i32* %l, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %1) #5
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %filename, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %num, i32 0, i32 0
  %call5 = call i8* @strcat(i8* %arraydecay3, i8* %arraydecay4) #5
  %2 = load i32, i32* %l, align 4
  %call6 = call double** @MakeMatrix(i32 %2)
  store double** %call6, double*** @A, align 8
  %3 = load double**, double*** @A, align 8
  %4 = load i32, i32* %l, align 4
  %call7 = call double** @Jacobi(double** %3, i32 %4)
  store double** %call7, double*** @U, align 8
  %5 = load double**, double*** @A, align 8
  %6 = load double**, double*** @U, align 8
  %call8 = call double** @QRiterate(double** %5, double** %6)
  %call9 = call double* @newVector()
  store double* %call9, double** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %7, 51
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %9 to i64
  %10 = load double**, double*** @A, align 8
  %arrayidx = getelementptr inbounds double*, double** %10, i64 %idxprom13
  %11 = load double*, double** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx14, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load double*, double** %v, align 8
  %arrayidx16 = getelementptr inbounds double, double* %14, i64 %idxprom15
  store double %12, double* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %16 = load double*, double** %v, align 8
  %17 = bitcast double* %16 to i8*
  call void @qsort(i8* %17, i64 51, i64 8, i32 (i8*, i8*)* bitcast (i32 (double*, double*)* @comp to i32 (i8*, i8*)*))
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %18, 51
  br i1 %cmp18, label %for.body.19, label %for.end.25

for.body.19:                                      ; preds = %for.cond.17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load double*, double** %v, align 8
  %arrayidx21 = getelementptr inbounds double, double* %22, i64 %idxprom20
  %23 = load double, double* %arrayidx21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %20, double %23)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.19
  %24 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  %25 = load i32, i32* %l, align 4
  %cmp26 = icmp eq i32 %25, 6
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.58, %if.then
  %26 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %26, 51
  br i1 %cmp28, label %for.body.29, label %for.end.60

for.body.29:                                      ; preds = %for.cond.27
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.29
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load double*, double** %v, align 8
  %arrayidx31 = getelementptr inbounds double, double* %28, i64 %idxprom30
  %29 = load double, double* %arrayidx31, align 8
  %30 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load double**, double*** @A, align 8
  %arrayidx34 = getelementptr inbounds double*, double** %32, i64 %idxprom33
  %33 = load double*, double** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %33, i64 %idxprom32
  %34 = load double, double* %arrayidx35, align 8
  %cmp36 = fcmp une double %29, %34
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay38 = getelementptr inbounds [20 x i8], [20 x i8]* %filename, i32 0, i32 0
  %call39 = call i8* @strcpy(i8* %arraydecay38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #5
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %num, i32 0, i32 0
  %36 = load i32, i32* %i, align 4
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %36) #5
  %arraydecay42 = getelementptr inbounds [20 x i8], [20 x i8]* %filename, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [3 x i8], [3 x i8]* %num, i32 0, i32 0
  %call44 = call i8* @strcat(i8* %arraydecay42, i8* %arraydecay43) #5
  %arraydecay45 = getelementptr inbounds [20 x i8], [20 x i8]* %filename, i32 0, i32 0
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay45)
  store i32 0, i32* %m, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.55, %while.end
  %37 = load i32, i32* %m, align 4
  %cmp48 = icmp slt i32 %37, 51
  br i1 %cmp48, label %for.body.49, label %for.end.57

for.body.49:                                      ; preds = %for.cond.47
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = load i32, i32* %m, align 4
  %40 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %40 to i64
  %41 = load i32, i32* %m, align 4
  %idxprom51 = sext i32 %41 to i64
  %42 = load double**, double*** @U, align 8
  %arrayidx52 = getelementptr inbounds double*, double** %42, i64 %idxprom51
  %43 = load double*, double** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds double, double* %43, i64 %idxprom50
  %44 = load double, double* %arrayidx53, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %39, double %44)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.49
  %45 = load i32, i32* %m, align 4
  %inc56 = add nsw i32 %45, 1
  store i32 %inc56, i32* %m, align 4
  br label %for.cond.47

for.end.57:                                       ; preds = %for.cond.47
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %46 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %46, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.27

for.end.60:                                       ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end.60, %for.end.25
  %47 = load double**, double*** @U, align 8
  call void @freeMatrix(double** %47)
  %48 = load double**, double*** @A, align 8
  call void @freeMatrix(double** %48)
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end
  %49 = load i32, i32* %l, align 4
  %inc62 = add nsw i32 %49, 1
  store i32 %inc62, i32* %l, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare double** @MakeMatrix(i32) #3

declare double** @Jacobi(double**, i32) #3

declare double** @QRiterate(double**, double**) #3

declare double* @newVector() #3

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @printf(i8*, ...) #3

declare void @freeMatrix(double**) #3

; Function Attrs: nounwind uwtable
define void @Check(double** %A, double** %U, i32 %l) #0 {
entry:
  %A.addr = alloca double**, align 8
  %U.addr = alloca double**, align 8
  %l.addr = alloca i32, align 4
  %X = alloca double**, align 8
  %T = alloca double**, align 8
  %a = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %A, double*** %A.addr, align 8
  store double** %U, double*** %U.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  %call = call double** @newMatrix()
  store double** %call, double*** %X, align 8
  %0 = load i32, i32* %l.addr, align 4
  %call1 = call double** @MakeMatrix(i32 %0)
  store double** %call1, double*** %T, align 8
  %1 = load double**, double*** %X, align 8
  %2 = load double**, double*** %T, align 8
  %3 = load double**, double*** %U.addr, align 8
  call void @matrixMult(double** %1, double** %2, double** %3)
  %4 = load double**, double*** %U.addr, align 8
  call void @matrixTranspose(double** %4)
  %5 = load double**, double*** %T, align 8
  %6 = load double**, double*** %U.addr, align 8
  %7 = load double**, double*** %X, align 8
  call void @matrixMult(double** %5, double** %6, double** %7)
  %8 = load double**, double*** %U.addr, align 8
  call void @matrixTranspose(double** %8)
  store double 0.000000e+00, double* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 51
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %10, 51
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %13, i64 %idxprom5
  %14 = load double*, double** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds double, double* %14, i64 %idxprom
  %15 = load double, double* %arrayidx6, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load double**, double*** %T, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %18, i64 %idxprom8
  %19 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %19, i64 %idxprom7
  %20 = load double, double* %arrayidx10, align 8
  %sub = fsub double %15, %20
  %21 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load double**, double*** %A.addr, align 8
  %arrayidx13 = getelementptr inbounds double*, double** %23, i64 %idxprom12
  %24 = load double*, double** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom11
  %25 = load double, double* %arrayidx14, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load double**, double*** %T, align 8
  %arrayidx17 = getelementptr inbounds double*, double** %28, i64 %idxprom16
  %29 = load double*, double** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds double, double* %29, i64 %idxprom15
  %30 = load double, double* %arrayidx18, align 8
  %sub19 = fsub double %25, %30
  %mul = fmul double %sub, %sub19
  %31 = load double, double* %a, align 8
  %add = fadd double %31, %mul
  store double %add, double* %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %33, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %34 = load i32, i32* %l.addr, align 4
  %35 = load double, double* %a, align 8
  %call23 = call double @sqrt(double %35) #5
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i32 %34, double %call23)
  store double 0.000000e+00, double* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.46, %for.end.22
  %36 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %36, 51
  br i1 %cmp26, label %for.body.27, label %for.end.48

for.body.27:                                      ; preds = %for.cond.25
  %37 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %37, 1
  store i32 %add28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.43, %for.body.27
  %38 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %38, 51
  br i1 %cmp30, label %for.body.31, label %for.end.45

for.body.31:                                      ; preds = %for.cond.29
  %39 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load double**, double*** %A.addr, align 8
  %arrayidx34 = getelementptr inbounds double*, double** %41, i64 %idxprom33
  %42 = load double*, double** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %42, i64 %idxprom32
  %43 = load double, double* %arrayidx35, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %44 to i64
  %45 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %45 to i64
  %46 = load double**, double*** %A.addr, align 8
  %arrayidx38 = getelementptr inbounds double*, double** %46, i64 %idxprom37
  %47 = load double*, double** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds double, double* %47, i64 %idxprom36
  %48 = load double, double* %arrayidx39, align 8
  %sub40 = fsub double %43, %48
  %call41 = call double @fabs(double %sub40) #4
  %49 = load double, double* %a, align 8
  %add42 = fadd double %49, %call41
  store double %add42, double* %a, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.31
  %50 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %50, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.29

for.end.45:                                       ; preds = %for.cond.29
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %51 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %51, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.25

for.end.48:                                       ; preds = %for.cond.25
  %52 = load double, double* %a, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), double %52)
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %53 = load double**, double*** %X, align 8
  call void @freeMatrix(double** %53)
  %54 = load double**, double*** %T, align 8
  call void @freeMatrix(double** %54)
  ret void
}

declare double** @newMatrix() #3

declare void @matrixMult(double**, double**, double**) #3

declare void @matrixTranspose(double**) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
