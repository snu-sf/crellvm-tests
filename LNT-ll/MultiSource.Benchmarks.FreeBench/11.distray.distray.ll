; ModuleID = './MultiSource.Benchmarks.FreeBench/11.distray.distray.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OBJ = type { %struct.VECTOR, double, %struct.TEXTURE }
%struct.VECTOR = type { double, double, double }
%struct.TEXTURE = type { %struct.VECTOR, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@objs = global [4 x %struct.OBJ] [%struct.OBJ { %struct.VECTOR { double 0.000000e+00, double 4.000000e+00, double 1.000000e+00 }, double 1.000000e+00, %struct.TEXTURE { %struct.VECTOR { double 1.000000e+00, double 4.000000e-01, double 0.000000e+00 }, double 4.000000e-01, double 8.000000e-01, double 2.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 1.000000e+00 }, double 5.000000e-01, double 9.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -3.000000e-01, double 1.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 1.000000e-01, double 9.500000e-01, double 2.000000e-01 }, double 6.000000e-01, double 8.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double 1.000000e+00, double 2.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 8.600000e-01, double 8.300000e-01, double 0.000000e+00 }, double 7.000000e-01, double 6.000000e-01, double 1.000000e-02 } }], align 16
@Groundpos = global double 0.000000e+00, align 8
@Groundtxt = global [2 x %struct.TEXTURE] [%struct.TEXTURE { %struct.VECTOR { double 0.000000e+00, double 1.000000e-01, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 2.000000e-02 }, %struct.TEXTURE { %struct.VECTOR { double 6.000000e-01, double 1.000000e+00, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 1.000000e-02 }], align 16
@Lightpos = global %struct.VECTOR { double -3.000000e+00, double 1.000000e+00, double 5.000000e+00 }, align 8
@Lightr = global double 4.000000e-01, align 8
@Camerapos = global %struct.VECTOR { double 1.500000e+00, double -1.400000e+00, double 1.200000e+00 }, align 8
@Cameraright = global %struct.VECTOR { double 3.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 8
@Cameradir = global %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 0.000000e+00 }, align 8
@Cameraup = global %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.371700e+00 }, align 8
@Ambient = global double 3.000000e-01, align 8
@Skycolor = global [2 x %struct.VECTOR] [%struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 7.000000e-01 }, %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.000000e-01 }], align 16
@rnd = global i64 1380328551, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DISTRIB = common global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@memory = common global [921600 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @main(i32 %c, i8** %v) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %v.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %in_fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %c, i32* %c.addr, align 4
  store i8** %v, i8*** %v.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i8**, i8*** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %in_fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32* @DISTRIB)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 640, i32 480)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputc(i32 10, %struct._IO_FILE* %12)
  call void @TraceScene()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %13 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %13, 921600
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, -2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputc(i32 %and, %struct._IO_FILE* %16)
  %17 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom15
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %and18 = and i32 %conv17, -2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fputc(i32 %and18, %struct._IO_FILE* %19)
  %20 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %and24 = and i32 %conv23, -2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fputc(i32 %and24, %struct._IO_FILE* %22)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @TraceScene() #0 {
entry:
  %PixColor = alloca %struct.VECTOR, align 8
  %Col = alloca %struct.VECTOR, align 8
  %LinD = alloca %struct.VECTOR, align 8
  %Scale = alloca %struct.VECTOR, align 8
  %LinD2 = alloca %struct.VECTOR, align 8
  %D = alloca %struct.VECTOR, align 8
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %i = alloca i32, align 4
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 1
  store double 1.000000e+00, double* %y, align 8
  store i32 0, i32* %sy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %0 = load i32, i32* %sy, align 4
  %cmp = icmp slt i32 %0, 480
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %sy, align 4
  %sub = sub nsw i32 240, %1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 4.800000e+02
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 2
  store double %div, double* %z, align 8
  store i32 0, i32* %sx, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.84, %for.body
  %2 = load i32, i32* %sx, align 4
  %cmp2 = icmp slt i32 %2, 640
  br i1 %cmp2, label %for.body.4, label %for.end.86

for.body.4:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %sx, align 4
  %sub5 = sub nsw i32 %3, 320
  %conv6 = sitofp i32 %sub5 to double
  %div7 = fdiv double %conv6, 6.400000e+02
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 0
  store double %div7, double* %x, align 8
  %4 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 0), align 8
  %x8 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 0
  %5 = load double, double* %x8, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 0), align 8
  %y9 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 1
  %7 = load double, double* %y9, align 8
  %mul10 = fmul double %6, %7
  %add = fadd double %mul, %mul10
  %8 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 0), align 8
  %z11 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 2
  %9 = load double, double* %z11, align 8
  %mul12 = fmul double %8, %9
  %add13 = fadd double %add, %mul12
  %x14 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD, i32 0, i32 0
  store double %add13, double* %x14, align 8
  %10 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 1), align 8
  %x15 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 0
  %11 = load double, double* %x15, align 8
  %mul16 = fmul double %10, %11
  %12 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 1), align 8
  %y17 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 1
  %13 = load double, double* %y17, align 8
  %mul18 = fmul double %12, %13
  %add19 = fadd double %mul16, %mul18
  %14 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 1), align 8
  %z20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 2
  %15 = load double, double* %z20, align 8
  %mul21 = fmul double %14, %15
  %add22 = fadd double %add19, %mul21
  %y23 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD, i32 0, i32 1
  store double %add22, double* %y23, align 8
  %16 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 2), align 8
  %x24 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 0
  %17 = load double, double* %x24, align 8
  %mul25 = fmul double %16, %17
  %18 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 2), align 8
  %y26 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 1
  %19 = load double, double* %y26, align 8
  %mul27 = fmul double %18, %19
  %add28 = fadd double %mul25, %mul27
  %20 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 2), align 8
  %z29 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Scale, i32 0, i32 2
  %21 = load double, double* %z29, align 8
  %mul30 = fmul double %20, %21
  %add31 = fadd double %add28, %mul30
  %z32 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD, i32 0, i32 2
  store double %add31, double* %z32, align 8
  %z33 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 2
  store double 0.000000e+00, double* %z33, align 8
  %y34 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 1
  store double 0.000000e+00, double* %y34, align 8
  %x35 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 0
  store double 0.000000e+00, double* %x35, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body.4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @DISTRIB, align 4
  %cmp37 = icmp slt i32 %22, %23
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  call void @DistribVector(%struct.VECTOR* %D, %struct.VECTOR* %LinD, double 7.812500e-04, double 0x3F51111111111111)
  %24 = bitcast %struct.VECTOR* %LinD2 to i8*
  %25 = bitcast %struct.VECTOR* %LinD to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  %x40 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 0
  %26 = load double, double* %x40, align 8
  %x41 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD2, i32 0, i32 0
  %27 = load double, double* %x41, align 8
  %add42 = fadd double %27, %26
  store double %add42, double* %x41, align 8
  %y43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 1
  %28 = load double, double* %y43, align 8
  %y44 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD2, i32 0, i32 1
  %29 = load double, double* %y44, align 8
  %add45 = fadd double %29, %28
  store double %add45, double* %y44, align 8
  %z46 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 2
  %30 = load double, double* %z46, align 8
  %z47 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LinD2, i32 0, i32 2
  %31 = load double, double* %z47, align 8
  %add48 = fadd double %31, %30
  store double %add48, double* %z47, align 8
  call void @TraceLine(%struct.VECTOR* @Camerapos, %struct.VECTOR* %LinD2, %struct.VECTOR* %Col, i32 6)
  %x49 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Col, i32 0, i32 0
  %32 = load double, double* %x49, align 8
  %x50 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 0
  %33 = load double, double* %x50, align 8
  %add51 = fadd double %33, %32
  store double %add51, double* %x50, align 8
  %y52 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Col, i32 0, i32 1
  %34 = load double, double* %y52, align 8
  %y53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 1
  %35 = load double, double* %y53, align 8
  %add54 = fadd double %35, %34
  store double %add54, double* %y53, align 8
  %z55 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Col, i32 0, i32 2
  %36 = load double, double* %z55, align 8
  %z56 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 2
  %37 = load double, double* %z56, align 8
  %add57 = fadd double %37, %36
  store double %add57, double* %z56, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  %39 = load i32, i32* @DISTRIB, align 4
  %conv58 = sitofp i32 %39 to double
  %div59 = fdiv double 1.000000e+00, %conv58
  call void @ScaleVector(%struct.VECTOR* %PixColor, double %div59)
  %x60 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 0
  %40 = load double, double* %x60, align 8
  %mul61 = fmul double %40, 2.550000e+02
  %conv62 = fptoui double %mul61 to i8
  %41 = load i32, i32* %sx, align 4
  %42 = load i32, i32* %sy, align 4
  %mul63 = mul nsw i32 %42, 640
  %add64 = add nsw i32 %41, %mul63
  %mul65 = mul nsw i32 3, %add64
  %idxprom = sext i32 %mul65 to i64
  %arrayidx = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom
  store i8 %conv62, i8* %arrayidx, align 1
  %y66 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 1
  %43 = load double, double* %y66, align 8
  %mul67 = fmul double %43, 2.550000e+02
  %conv68 = fptoui double %mul67 to i8
  %44 = load i32, i32* %sx, align 4
  %45 = load i32, i32* %sy, align 4
  %mul69 = mul nsw i32 %45, 640
  %add70 = add nsw i32 %44, %mul69
  %mul71 = mul nsw i32 3, %add70
  %add72 = add nsw i32 %mul71, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom73
  store i8 %conv68, i8* %arrayidx74, align 1
  %z75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %PixColor, i32 0, i32 2
  %46 = load double, double* %z75, align 8
  %mul76 = fmul double %46, 2.550000e+02
  %conv77 = fptoui double %mul76 to i8
  %47 = load i32, i32* %sx, align 4
  %48 = load i32, i32* %sy, align 4
  %mul78 = mul nsw i32 %48, 640
  %add79 = add nsw i32 %47, %mul78
  %mul80 = mul nsw i32 3, %add79
  %add81 = add nsw i32 %mul80, 2
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i32 0, i64 %idxprom82
  store i8 %conv77, i8* %arrayidx83, align 1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end
  %49 = load i32, i32* %sx, align 4
  %inc85 = add nsw i32 %49, 1
  store i32 %inc85, i32* %sx, align 4
  br label %for.cond.1

for.end.86:                                       ; preds = %for.cond.1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %50 = load i32, i32* %sy, align 4
  %inc88 = add nsw i32 %50, 1
  store i32 %inc88, i32* %sy, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DistribVector(%struct.VECTOR* %d, %struct.VECTOR* %n, double %sa, double %sb) #0 {
entry:
  %d.addr = alloca %struct.VECTOR*, align 8
  %n.addr = alloca %struct.VECTOR*, align 8
  %sa.addr = alloca double, align 8
  %sb.addr = alloca double, align 8
  %a = alloca %struct.VECTOR, align 8
  %b = alloca %struct.VECTOR, align 8
  %nl = alloca double, align 8
  store %struct.VECTOR* %d, %struct.VECTOR** %d.addr, align 8
  store %struct.VECTOR* %n, %struct.VECTOR** %n.addr, align 8
  store double %sa, double* %sa.addr, align 8
  store double %sb, double* %sb.addr, align 8
  %0 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %0, i32 0, i32 2
  %1 = load double, double* %z, align 8
  %call = call double @fabs(double %1) #7
  %cmp = fcmp ogt double %call, 1.000000e-05
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z1 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 2
  %5 = load double, double* %z1, align 8
  %mul = fmul double %3, %5
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 0
  store double %mul, double* %x, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x2 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %sub = fsub double -0.000000e+00, %7
  %8 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z3 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %8, i32 0, i32 2
  %9 = load double, double* %z3, align 8
  %mul4 = fmul double %sub, %9
  %y5 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 1
  store double %mul4, double* %y5, align 8
  %z6 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 2
  store double 0.000000e+00, double* %z6, align 8
  %y7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 1
  %10 = load double, double* %y7, align 8
  %11 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z8 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 2
  %12 = load double, double* %z8, align 8
  %mul9 = fmul double %10, %12
  %x10 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 0
  store double %mul9, double* %x10, align 8
  %x11 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 0
  %13 = load double, double* %x11, align 8
  %sub12 = fsub double -0.000000e+00, %13
  %14 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z13 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 2
  %15 = load double, double* %z13, align 8
  %mul14 = fmul double %sub12, %15
  %y15 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 1
  store double %mul14, double* %y15, align 8
  %x16 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 0
  %16 = load double, double* %x16, align 8
  %17 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y17 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %17, i32 0, i32 1
  %18 = load double, double* %y17, align 8
  %mul18 = fmul double %16, %18
  %y19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 1
  %19 = load double, double* %y19, align 8
  %20 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %20, i32 0, i32 0
  %21 = load double, double* %x20, align 8
  %mul21 = fmul double %19, %21
  %sub22 = fsub double %mul18, %mul21
  %z23 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 2
  store double %sub22, double* %z23, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y24 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %22, i32 0, i32 1
  %23 = load double, double* %y24, align 8
  %x25 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 0
  store double %23, double* %x25, align 8
  %24 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x26 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %24, i32 0, i32 0
  %25 = load double, double* %x26, align 8
  %sub27 = fsub double -0.000000e+00, %25
  %y28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 1
  store double %sub27, double* %y28, align 8
  %z29 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 2
  store double 0.000000e+00, double* %z29, align 8
  %y30 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 1
  store double 0.000000e+00, double* %y30, align 8
  %x31 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 0
  store double 0.000000e+00, double* %x31, align 8
  %z32 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 2
  store double 1.000000e+00, double* %z32, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %call33 = call double @VectorLength(%struct.VECTOR* %26)
  store double %call33, double* %nl, align 8
  %27 = load double, double* %sa.addr, align 8
  %28 = load double, double* %nl, align 8
  %call34 = call double @VectorLength(%struct.VECTOR* %a)
  %div = fdiv double %28, %call34
  %mul35 = fmul double %27, %div
  %call36 = call double @Jitter()
  %mul37 = fmul double %mul35, %call36
  call void @ScaleVector(%struct.VECTOR* %a, double %mul37)
  %29 = load double, double* %sb.addr, align 8
  %30 = load double, double* %nl, align 8
  %call38 = call double @VectorLength(%struct.VECTOR* %b)
  %div39 = fdiv double %30, %call38
  %mul40 = fmul double %29, %div39
  %call41 = call double @Jitter()
  %mul42 = fmul double %mul40, %call41
  call void @ScaleVector(%struct.VECTOR* %b, double %mul42)
  %x43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 0
  %31 = load double, double* %x43, align 8
  %x44 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 0
  %32 = load double, double* %x44, align 8
  %add = fadd double %31, %32
  %33 = load %struct.VECTOR*, %struct.VECTOR** %d.addr, align 8
  %x45 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %33, i32 0, i32 0
  store double %add, double* %x45, align 8
  %y46 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 1
  %34 = load double, double* %y46, align 8
  %y47 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 1
  %35 = load double, double* %y47, align 8
  %add48 = fadd double %34, %35
  %36 = load %struct.VECTOR*, %struct.VECTOR** %d.addr, align 8
  %y49 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %36, i32 0, i32 1
  store double %add48, double* %y49, align 8
  %z50 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %a, i32 0, i32 2
  %37 = load double, double* %z50, align 8
  %z51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %b, i32 0, i32 2
  %38 = load double, double* %z51, align 8
  %add52 = fadd double %37, %38
  %39 = load %struct.VECTOR*, %struct.VECTOR** %d.addr, align 8
  %z53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %39, i32 0, i32 2
  store double %add52, double* %z53, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @TraceLine(%struct.VECTOR* %LinP, %struct.VECTOR* %LinD, %struct.VECTOR* %Color, i32 %reccount) #0 {
entry:
  %LinP.addr = alloca %struct.VECTOR*, align 8
  %LinD.addr = alloca %struct.VECTOR*, align 8
  %Color.addr = alloca %struct.VECTOR*, align 8
  %reccount.addr = alloca i32, align 4
  %Pnt = alloca %struct.VECTOR, align 8
  %Norm = alloca %struct.VECTOR, align 8
  %LDir = alloca %struct.VECTOR, align 8
  %NewDir = alloca %struct.VECTOR, align 8
  %NewDir2 = alloca %struct.VECTOR, align 8
  %TmpCol = alloca %struct.VECTOR, align 8
  %TmpCol2 = alloca %struct.VECTOR, align 8
  %TmpPnt = alloca %struct.VECTOR, align 8
  %TmpNorm = alloca %struct.VECTOR, align 8
  %D = alloca %struct.VECTOR, align 8
  %t = alloca double, align 8
  %A = alloca double, align 8
  %cosfi = alloca double, align 8
  %txt = alloca %struct.TEXTURE*, align 8
  %tmptxt = alloca %struct.TEXTURE*, align 8
  %i = alloca i32, align 4
  %shadowcount = alloca i32, align 4
  %usedist = alloca i32, align 4
  store %struct.VECTOR* %LinP, %struct.VECTOR** %LinP.addr, align 8
  store %struct.VECTOR* %LinD, %struct.VECTOR** %LinD.addr, align 8
  store %struct.VECTOR* %Color, %struct.VECTOR** %Color.addr, align 8
  store i32 %reccount, i32* %reccount.addr, align 4
  %0 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %0, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %1 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %2 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %3 = load i32, i32* %reccount.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.209

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %reccount.addr, align 4
  %sub = sub nsw i32 6, %4
  %cmp1 = icmp slt i32 %sub, 3
  %cond = select i1 %cmp1, i32 1, i32 0
  store i32 %cond, i32* %usedist, align 4
  %5 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %call = call double @IntersectObjs(%struct.VECTOR* %5, %struct.VECTOR* %6, %struct.VECTOR* %Pnt, %struct.VECTOR* %Norm, %struct.TEXTURE** %txt)
  store double %call, double* %t, align 8
  %7 = load double, double* %t, align 8
  %cmp2 = fcmp ogt double %7, 1.000000e-05
  br i1 %cmp2, label %if.then.3, label %if.else.156

if.then.3:                                        ; preds = %if.then
  %8 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 0), align 8
  %x4 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pnt, i32 0, i32 0
  %9 = load double, double* %x4, align 8
  %sub5 = fsub double %8, %9
  %x6 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 0
  store double %sub5, double* %x6, align 8
  %10 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 1), align 8
  %y7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pnt, i32 0, i32 1
  %11 = load double, double* %y7, align 8
  %sub8 = fsub double %10, %11
  %y9 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 1
  store double %sub8, double* %y9, align 8
  %12 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 2), align 8
  %z10 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pnt, i32 0, i32 2
  %13 = load double, double* %z10, align 8
  %sub11 = fsub double %12, %13
  %z12 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 2
  store double %sub11, double* %z12, align 8
  %x13 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 0
  %14 = load double, double* %x13, align 8
  %x14 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 0
  %15 = load double, double* %x14, align 8
  %mul = fmul double %14, %15
  %y15 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 1
  %16 = load double, double* %y15, align 8
  %y16 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 1
  %17 = load double, double* %y16, align 8
  %mul17 = fmul double %16, %17
  %add = fadd double %mul, %mul17
  %z18 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 2
  %18 = load double, double* %z18, align 8
  %z19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 2
  %19 = load double, double* %z19, align 8
  %mul20 = fmul double %18, %19
  %add21 = fadd double %add, %mul20
  store double %add21, double* %cosfi, align 8
  %20 = load double, double* %cosfi, align 8
  %cmp22 = fcmp ogt double %20, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.else.81

if.then.23:                                       ; preds = %if.then.3
  store i32 0, i32* %shadowcount, align 4
  %21 = load i32, i32* %usedist, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.23
  %22 = load double, double* @Lightr, align 8
  %call25 = call double @VectorLength(%struct.VECTOR* %LDir)
  %div = fdiv double %22, %call25
  store double %div, double* %A, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @DISTRIB, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load double, double* %A, align 8
  %26 = load double, double* %A, align 8
  call void @DistribVector(%struct.VECTOR* %D, %struct.VECTOR* %LDir, double %25, double %26)
  %27 = bitcast %struct.VECTOR* %NewDir to i8*
  %28 = bitcast %struct.VECTOR* %LDir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false)
  %x27 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 0
  %29 = load double, double* %x27, align 8
  %x28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir, i32 0, i32 0
  %30 = load double, double* %x28, align 8
  %add29 = fadd double %30, %29
  store double %add29, double* %x28, align 8
  %y30 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 1
  %31 = load double, double* %y30, align 8
  %y31 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir, i32 0, i32 1
  %32 = load double, double* %y31, align 8
  %add32 = fadd double %32, %31
  store double %add32, double* %y31, align 8
  %z33 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 2
  %33 = load double, double* %z33, align 8
  %z34 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir, i32 0, i32 2
  %34 = load double, double* %z34, align 8
  %add35 = fadd double %34, %33
  store double %add35, double* %z34, align 8
  %call36 = call double @IntersectObjs(%struct.VECTOR* %Pnt, %struct.VECTOR* %NewDir, %struct.VECTOR* %TmpPnt, %struct.VECTOR* %TmpNorm, %struct.TEXTURE** %tmptxt)
  store double %call36, double* %t, align 8
  %35 = load double, double* %t, align 8
  %cmp37 = fcmp olt double %35, 1.000000e-05
  br i1 %cmp37, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %36 = load double, double* %t, align 8
  %cmp38 = fcmp ogt double %36, 1.000000e+00
  br i1 %cmp38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %lor.lhs.false, %for.body
  %37 = load i32, i32* %shadowcount, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %shadowcount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.39, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.else:                                          ; preds = %if.then.23
  %call41 = call double @IntersectObjs(%struct.VECTOR* %Pnt, %struct.VECTOR* %LDir, %struct.VECTOR* %TmpPnt, %struct.VECTOR* %TmpNorm, %struct.TEXTURE** %tmptxt)
  store double %call41, double* %t, align 8
  %39 = load double, double* %t, align 8
  %cmp42 = fcmp olt double %39, 1.000000e-05
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.else
  %40 = load double, double* %t, align 8
  %cmp44 = fcmp ogt double %40, 1.000000e+00
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.43, %if.else
  %41 = load i32, i32* @DISTRIB, align 4
  store i32 %41, i32* %shadowcount, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %lor.lhs.false.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.end
  %42 = load i32, i32* %shadowcount, align 4
  %cmp48 = icmp sgt i32 %42, 0
  br i1 %cmp48, label %if.then.49, label %if.else.79

if.then.49:                                       ; preds = %if.end.47
  %x50 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 0
  %43 = load double, double* %x50, align 8
  %x51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 0
  %44 = load double, double* %x51, align 8
  %mul52 = fmul double %43, %44
  %y53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 1
  %45 = load double, double* %y53, align 8
  %y54 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 1
  %46 = load double, double* %y54, align 8
  %mul55 = fmul double %45, %46
  %add56 = fadd double %mul52, %mul55
  %z57 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 2
  %47 = load double, double* %z57, align 8
  %z58 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Norm, i32 0, i32 2
  %48 = load double, double* %z58, align 8
  %mul59 = fmul double %47, %48
  %add60 = fadd double %add56, %mul59
  store double %add60, double* %A, align 8
  %x61 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 0
  %49 = load double, double* %x61, align 8
  %x62 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 0
  %50 = load double, double* %x62, align 8
  %mul63 = fmul double %49, %50
  %y64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 1
  %51 = load double, double* %y64, align 8
  %y65 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 1
  %52 = load double, double* %y65, align 8
  %mul66 = fmul double %51, %52
  %add67 = fadd double %mul63, %mul66
  %z68 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 2
  %53 = load double, double* %z68, align 8
  %z69 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %LDir, i32 0, i32 2
  %54 = load double, double* %z69, align 8
  %mul70 = fmul double %53, %54
  %add71 = fadd double %add67, %mul70
  %55 = load double, double* %A, align 8
  %mul72 = fmul double %55, %add71
  store double %mul72, double* %A, align 8
  %56 = load double, double* %cosfi, align 8
  %57 = load double, double* %A, align 8
  %call73 = call double @sqrt(double %57) #3
  %div74 = fdiv double %56, %call73
  %58 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %diffuse = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %58, i32 0, i32 1
  %59 = load double, double* %diffuse, align 8
  %mul75 = fmul double %div74, %59
  %60 = load i32, i32* %shadowcount, align 4
  %conv = sitofp i32 %60 to double
  %mul76 = fmul double %mul75, %conv
  %61 = load i32, i32* @DISTRIB, align 4
  %conv77 = sitofp i32 %61 to double
  %div78 = fdiv double %mul76, %conv77
  store double %div78, double* %cosfi, align 8
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.47
  store double 0.000000e+00, double* %cosfi, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.49
  br label %if.end.82

if.else.81:                                       ; preds = %if.then.3
  store double 0.000000e+00, double* %cosfi, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.end.80
  %62 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %color = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %62, i32 0, i32 0
  %x83 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %color, i32 0, i32 0
  %63 = load double, double* %x83, align 8
  %64 = load double, double* @Ambient, align 8
  %65 = load double, double* %cosfi, align 8
  %add84 = fadd double %64, %65
  %mul85 = fmul double %63, %add84
  %66 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x86 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %66, i32 0, i32 0
  store double %mul85, double* %x86, align 8
  %67 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %color87 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %67, i32 0, i32 0
  %y88 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %color87, i32 0, i32 1
  %68 = load double, double* %y88, align 8
  %69 = load double, double* @Ambient, align 8
  %70 = load double, double* %cosfi, align 8
  %add89 = fadd double %69, %70
  %mul90 = fmul double %68, %add89
  %71 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y91 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %71, i32 0, i32 1
  store double %mul90, double* %y91, align 8
  %72 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %color92 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %72, i32 0, i32 0
  %z93 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %color92, i32 0, i32 2
  %73 = load double, double* %z93, align 8
  %74 = load double, double* @Ambient, align 8
  %75 = load double, double* %cosfi, align 8
  %add94 = fadd double %74, %75
  %mul95 = fmul double %73, %add94
  %76 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z96 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %76, i32 0, i32 2
  store double %mul95, double* %z96, align 8
  %77 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %reflect = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %77, i32 0, i32 2
  %78 = load double, double* %reflect, align 8
  %cmp97 = fcmp ogt double %78, 1.000000e-05
  br i1 %cmp97, label %if.then.99, label %if.end.155

if.then.99:                                       ; preds = %if.end.82
  %79 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  call void @ReflectVector(%struct.VECTOR* %NewDir, %struct.VECTOR* %79, %struct.VECTOR* %Norm)
  %z100 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 2
  store double 0.000000e+00, double* %z100, align 8
  %y101 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 1
  store double 0.000000e+00, double* %y101, align 8
  %x102 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 0
  store double 0.000000e+00, double* %x102, align 8
  %80 = load i32, i32* %usedist, align 4
  %tobool103 = icmp ne i32 %80, 0
  br i1 %tobool103, label %land.lhs.true, label %if.else.137

land.lhs.true:                                    ; preds = %if.then.99
  %81 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %roughness = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %81, i32 0, i32 3
  %82 = load double, double* %roughness, align 8
  %cmp104 = fcmp ogt double %82, 1.000000e-05
  br i1 %cmp104, label %if.then.106, label %if.else.137

if.then.106:                                      ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.132, %if.then.106
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* @DISTRIB, align 4
  %cmp108 = icmp slt i32 %83, %84
  br i1 %cmp108, label %for.body.110, label %for.end.134

for.body.110:                                     ; preds = %for.cond.107
  %85 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %roughness111 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %85, i32 0, i32 3
  %86 = load double, double* %roughness111, align 8
  %87 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %roughness112 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %87, i32 0, i32 3
  %88 = load double, double* %roughness112, align 8
  call void @DistribVector(%struct.VECTOR* %D, %struct.VECTOR* %NewDir, double %86, double %88)
  %89 = bitcast %struct.VECTOR* %NewDir2 to i8*
  %90 = bitcast %struct.VECTOR* %NewDir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 24, i32 8, i1 false)
  %x113 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 0
  %91 = load double, double* %x113, align 8
  %x114 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir2, i32 0, i32 0
  %92 = load double, double* %x114, align 8
  %add115 = fadd double %92, %91
  store double %add115, double* %x114, align 8
  %y116 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 1
  %93 = load double, double* %y116, align 8
  %y117 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir2, i32 0, i32 1
  %94 = load double, double* %y117, align 8
  %add118 = fadd double %94, %93
  store double %add118, double* %y117, align 8
  %z119 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %D, i32 0, i32 2
  %95 = load double, double* %z119, align 8
  %z120 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %NewDir2, i32 0, i32 2
  %96 = load double, double* %z120, align 8
  %add121 = fadd double %96, %95
  store double %add121, double* %z120, align 8
  %97 = load i32, i32* %reccount.addr, align 4
  %sub122 = sub nsw i32 %97, 1
  call void @TraceLine(%struct.VECTOR* %Pnt, %struct.VECTOR* %NewDir2, %struct.VECTOR* %TmpCol2, i32 %sub122)
  %x123 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol2, i32 0, i32 0
  %98 = load double, double* %x123, align 8
  %x124 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 0
  %99 = load double, double* %x124, align 8
  %add125 = fadd double %99, %98
  store double %add125, double* %x124, align 8
  %y126 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol2, i32 0, i32 1
  %100 = load double, double* %y126, align 8
  %y127 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 1
  %101 = load double, double* %y127, align 8
  %add128 = fadd double %101, %100
  store double %add128, double* %y127, align 8
  %z129 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol2, i32 0, i32 2
  %102 = load double, double* %z129, align 8
  %z130 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 2
  %103 = load double, double* %z130, align 8
  %add131 = fadd double %103, %102
  store double %add131, double* %z130, align 8
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.110
  %104 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %104, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.107

for.end.134:                                      ; preds = %for.cond.107
  %105 = load i32, i32* @DISTRIB, align 4
  %conv135 = sitofp i32 %105 to double
  %div136 = fdiv double 1.000000e+00, %conv135
  call void @ScaleVector(%struct.VECTOR* %TmpCol, double %div136)
  br label %if.end.139

if.else.137:                                      ; preds = %land.lhs.true, %if.then.99
  %106 = load i32, i32* %reccount.addr, align 4
  %sub138 = sub nsw i32 %106, 1
  call void @TraceLine(%struct.VECTOR* %Pnt, %struct.VECTOR* %NewDir, %struct.VECTOR* %TmpCol, i32 %sub138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %for.end.134
  %x140 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 0
  %107 = load double, double* %x140, align 8
  %108 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %reflect141 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %108, i32 0, i32 2
  %109 = load double, double* %reflect141, align 8
  %mul142 = fmul double %107, %109
  %110 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x143 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %110, i32 0, i32 0
  %111 = load double, double* %x143, align 8
  %add144 = fadd double %111, %mul142
  store double %add144, double* %x143, align 8
  %y145 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 1
  %112 = load double, double* %y145, align 8
  %113 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %reflect146 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %113, i32 0, i32 2
  %114 = load double, double* %reflect146, align 8
  %mul147 = fmul double %112, %114
  %115 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y148 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %115, i32 0, i32 1
  %116 = load double, double* %y148, align 8
  %add149 = fadd double %116, %mul147
  store double %add149, double* %y148, align 8
  %z150 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %TmpCol, i32 0, i32 2
  %117 = load double, double* %z150, align 8
  %118 = load %struct.TEXTURE*, %struct.TEXTURE** %txt, align 8
  %reflect151 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %118, i32 0, i32 2
  %119 = load double, double* %reflect151, align 8
  %mul152 = fmul double %117, %119
  %120 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z153 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %120, i32 0, i32 2
  %121 = load double, double* %z153, align 8
  %add154 = fadd double %121, %mul152
  store double %add154, double* %z153, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.139, %if.end.82
  br label %if.end.190

if.else.156:                                      ; preds = %if.then
  %122 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x157 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %122, i32 0, i32 0
  %123 = load double, double* %x157, align 8
  %124 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x158 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %124, i32 0, i32 0
  %125 = load double, double* %x158, align 8
  %mul159 = fmul double %123, %125
  %126 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y160 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %126, i32 0, i32 1
  %127 = load double, double* %y160, align 8
  %128 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y161 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %128, i32 0, i32 1
  %129 = load double, double* %y161, align 8
  %mul162 = fmul double %127, %129
  %add163 = fadd double %mul159, %mul162
  %call164 = call double @sqrt(double %add163) #3
  store double %call164, double* %A, align 8
  %130 = load double, double* %A, align 8
  %cmp165 = fcmp ogt double %130, 0.000000e+00
  br i1 %cmp165, label %if.then.167, label %if.else.173

if.then.167:                                      ; preds = %if.else.156
  %131 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z168 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %131, i32 0, i32 2
  %132 = load double, double* %z168, align 8
  %call169 = call double @fabs(double %132) #7
  %133 = load double, double* %A, align 8
  %div170 = fdiv double %call169, %133
  %call171 = call double @atan(double %div170) #3
  %mul172 = fmul double %call171, 0x3FE45F306C8462A6
  store double %mul172, double* %A, align 8
  br label %if.end.174

if.else.173:                                      ; preds = %if.else.156
  store double 1.000000e+00, double* %A, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.173, %if.then.167
  %134 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 1, i32 0), align 8
  %135 = load double, double* %A, align 8
  %mul175 = fmul double %134, %135
  %136 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 0, i32 0), align 8
  %137 = load double, double* %A, align 8
  %sub176 = fsub double 1.000000e+00, %137
  %mul177 = fmul double %136, %sub176
  %add178 = fadd double %mul175, %mul177
  %138 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x179 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %138, i32 0, i32 0
  store double %add178, double* %x179, align 8
  %139 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 1, i32 1), align 8
  %140 = load double, double* %A, align 8
  %mul180 = fmul double %139, %140
  %141 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 0, i32 1), align 8
  %142 = load double, double* %A, align 8
  %sub181 = fsub double 1.000000e+00, %142
  %mul182 = fmul double %141, %sub181
  %add183 = fadd double %mul180, %mul182
  %143 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y184 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %143, i32 0, i32 1
  store double %add183, double* %y184, align 8
  %144 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 1, i32 2), align 8
  %145 = load double, double* %A, align 8
  %mul185 = fmul double %144, %145
  %146 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i32 0, i64 0, i32 2), align 8
  %147 = load double, double* %A, align 8
  %sub186 = fsub double 1.000000e+00, %147
  %mul187 = fmul double %146, %sub186
  %add188 = fadd double %mul185, %mul187
  %148 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z189 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %148, i32 0, i32 2
  store double %add188, double* %z189, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.174, %if.end.155
  %149 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x191 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %149, i32 0, i32 0
  %150 = load double, double* %x191, align 8
  %cmp192 = fcmp ogt double %150, 1.000000e+00
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.190
  %151 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %x195 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %151, i32 0, i32 0
  store double 1.000000e+00, double* %x195, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.end.190
  %152 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y197 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %152, i32 0, i32 1
  %153 = load double, double* %y197, align 8
  %cmp198 = fcmp ogt double %153, 1.000000e+00
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.196
  %154 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %y201 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %154, i32 0, i32 1
  store double 1.000000e+00, double* %y201, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.end.196
  %155 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z203 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %155, i32 0, i32 2
  %156 = load double, double* %z203, align 8
  %cmp204 = fcmp ogt double %156, 1.000000e+00
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.202
  %157 = load %struct.VECTOR*, %struct.VECTOR** %Color.addr, align 8
  %z207 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %157, i32 0, i32 2
  store double 1.000000e+00, double* %z207, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.end.202
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ScaleVector(%struct.VECTOR* %v, double %s) #0 {
entry:
  %v.addr = alloca %struct.VECTOR*, align 8
  %s.addr = alloca double, align 8
  store %struct.VECTOR* %v, %struct.VECTOR** %v.addr, align 8
  store double %s, double* %s.addr, align 8
  %0 = load double, double* %s.addr, align 8
  %1 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %x, align 8
  %3 = load double, double* %s.addr, align 8
  %4 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %mul1 = fmul double %5, %3
  store double %mul1, double* %y, align 8
  %6 = load double, double* %s.addr, align 8
  %7 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %7, i32 0, i32 2
  %8 = load double, double* %z, align 8
  %mul2 = fmul double %8, %6
  store double %mul2, double* %z, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define internal double @VectorLength(%struct.VECTOR* %v) #0 {
entry:
  %v.addr = alloca %struct.VECTOR*, align 8
  store %struct.VECTOR* %v, %struct.VECTOR** %v.addr, align 8
  %0 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %x1 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %y2 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct.VECTOR*, %struct.VECTOR** %v.addr, align 8
  %z4 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  %call = call double @sqrt(double %add6) #3
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal double @Jitter() #0 {
entry:
  %0 = load i64, i64* @rnd, align 8
  %mul = mul i64 1103515245, %0
  %add = add i64 %mul, 12345
  %and = and i64 %add, 2147483647
  store i64 %and, i64* @rnd, align 8
  %1 = load i64, i64* @rnd, align 8
  %conv = uitofp i64 %1 to double
  %div = fdiv double %conv, 0x41CFFFFFFF800000
  %sub = fsub double 1.000000e+00, %div
  ret double %sub
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define internal double @IntersectObjs(%struct.VECTOR* %LinP, %struct.VECTOR* %LinD, %struct.VECTOR* %Pnt, %struct.VECTOR* %Norm, %struct.TEXTURE** %txt) #0 {
entry:
  %LinP.addr = alloca %struct.VECTOR*, align 8
  %LinD.addr = alloca %struct.VECTOR*, align 8
  %Pnt.addr = alloca %struct.VECTOR*, align 8
  %Norm.addr = alloca %struct.VECTOR*, align 8
  %txt.addr = alloca %struct.TEXTURE**, align 8
  %objn = alloca i32, align 4
  %tilenum = alloca i32, align 4
  %t = alloca double, align 8
  %ttmp = alloca double, align 8
  %A = alloca double, align 8
  %B = alloca double, align 8
  %C = alloca double, align 8
  %Pos = alloca %struct.VECTOR, align 8
  store %struct.VECTOR* %LinP, %struct.VECTOR** %LinP.addr, align 8
  store %struct.VECTOR* %LinD, %struct.VECTOR** %LinD.addr, align 8
  store %struct.VECTOR* %Pnt, %struct.VECTOR** %Pnt.addr, align 8
  store %struct.VECTOR* %Norm, %struct.VECTOR** %Norm.addr, align 8
  store %struct.TEXTURE** %txt, %struct.TEXTURE*** %txt.addr, align 8
  store double -1.000000e+00, double* %t, align 8
  %0 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %0, i32 0, i32 2
  %1 = load double, double* %z, align 8
  %call = call double @fabs(double %1) #7
  %cmp = fcmp ogt double %call, 1.000000e-05
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %2 = load double, double* @Groundpos, align 8
  %3 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %z1 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %3, i32 0, i32 2
  %4 = load double, double* %z1, align 8
  %sub = fsub double %2, %4
  %5 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z2 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %5, i32 0, i32 2
  %6 = load double, double* %z2, align 8
  %div = fdiv double %sub, %6
  store double %div, double* %ttmp, align 8
  %7 = load double, double* %ttmp, align 8
  %cmp3 = fcmp ogt double %7, 1.000000e-05
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load double, double* %ttmp, align 8
  %cmp4 = fcmp olt double %8, 1.000000e+05
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load double, double* %ttmp, align 8
  store double %9, double* %t, align 8
  %10 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %12 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x6 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 0
  %13 = load double, double* %x6, align 8
  %14 = load double, double* %t, align 8
  %mul = fmul double %13, %14
  %add = fadd double %11, %mul
  %15 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %x7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %15, i32 0, i32 0
  store double %add, double* %x7, align 8
  %16 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %16, i32 0, i32 1
  %17 = load double, double* %y, align 8
  %18 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y8 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %19 = load double, double* %y8, align 8
  %20 = load double, double* %t, align 8
  %mul9 = fmul double %19, %20
  %add10 = fadd double %17, %mul9
  %21 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %y11 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %21, i32 0, i32 1
  store double %add10, double* %y11, align 8
  %22 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %z12 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %22, i32 0, i32 2
  %23 = load double, double* %z12, align 8
  %24 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z13 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %24, i32 0, i32 2
  %25 = load double, double* %z13, align 8
  %26 = load double, double* %t, align 8
  %mul14 = fmul double %25, %26
  %add15 = fadd double %23, %mul14
  %27 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %z16 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %27, i32 0, i32 2
  store double %add15, double* %z16, align 8
  %28 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %x17 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %28, i32 0, i32 0
  store double 0.000000e+00, double* %x17, align 8
  %29 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %y18 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %29, i32 0, i32 1
  store double 0.000000e+00, double* %y18, align 8
  %30 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %z19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %30, i32 0, i32 2
  store double 1.000000e+00, double* %z19, align 8
  %31 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %x20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %31, i32 0, i32 0
  %32 = load double, double* %x20, align 8
  %add21 = fadd double %32, 5.000000e+04
  %conv = fptosi double %add21 to i32
  %33 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %y22 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %33, i32 0, i32 1
  %34 = load double, double* %y22, align 8
  %add23 = fadd double %34, 5.000000e+04
  %conv24 = fptosi double %add23 to i32
  %add25 = add nsw i32 %conv, %conv24
  %and = and i32 %add25, 1
  store i32 %and, i32* %tilenum, align 4
  %35 = load i32, i32* %tilenum, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.TEXTURE], [2 x %struct.TEXTURE]* @Groundtxt, i32 0, i64 %idxprom
  %36 = load %struct.TEXTURE**, %struct.TEXTURE*** %txt.addr, align 8
  store %struct.TEXTURE* %arrayidx, %struct.TEXTURE** %36, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  store i32 0, i32* %objn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %37 = load i32, i32* %objn, align 4
  %cmp27 = icmp slt i32 %37, 4
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %objn, align 4
  %idxprom29 = sext i32 %38 to i64
  %arrayidx30 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i32 0, i64 %idxprom29
  %pos = getelementptr inbounds %struct.OBJ, %struct.OBJ* %arrayidx30, i32 0, i32 0
  %39 = bitcast %struct.VECTOR* %Pos to i8*
  %40 = bitcast %struct.VECTOR* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 24, i32 8, i1 false)
  %41 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %x31 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %41, i32 0, i32 0
  %42 = load double, double* %x31, align 8
  %x32 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 0
  %43 = load double, double* %x32, align 8
  %sub33 = fsub double %43, %42
  store double %sub33, double* %x32, align 8
  %44 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %y34 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %44, i32 0, i32 1
  %45 = load double, double* %y34, align 8
  %y35 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 1
  %46 = load double, double* %y35, align 8
  %sub36 = fsub double %46, %45
  store double %sub36, double* %y35, align 8
  %47 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %z37 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %47, i32 0, i32 2
  %48 = load double, double* %z37, align 8
  %z38 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 2
  %49 = load double, double* %z38, align 8
  %sub39 = fsub double %49, %48
  store double %sub39, double* %z38, align 8
  %50 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x40 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %50, i32 0, i32 0
  %51 = load double, double* %x40, align 8
  %52 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x41 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %52, i32 0, i32 0
  %53 = load double, double* %x41, align 8
  %mul42 = fmul double %51, %53
  %54 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %54, i32 0, i32 1
  %55 = load double, double* %y43, align 8
  %56 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y44 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %56, i32 0, i32 1
  %57 = load double, double* %y44, align 8
  %mul45 = fmul double %55, %57
  %add46 = fadd double %mul42, %mul45
  %58 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z47 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %58, i32 0, i32 2
  %59 = load double, double* %z47, align 8
  %60 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z48 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %60, i32 0, i32 2
  %61 = load double, double* %z48, align 8
  %mul49 = fmul double %59, %61
  %add50 = fadd double %add46, %mul49
  %div51 = fdiv double 1.000000e+00, %add50
  store double %div51, double* %A, align 8
  %x52 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 0
  %62 = load double, double* %x52, align 8
  %63 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %63, i32 0, i32 0
  %64 = load double, double* %x53, align 8
  %mul54 = fmul double %62, %64
  %y55 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 1
  %65 = load double, double* %y55, align 8
  %66 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y56 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %66, i32 0, i32 1
  %67 = load double, double* %y56, align 8
  %mul57 = fmul double %65, %67
  %add58 = fadd double %mul54, %mul57
  %z59 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 2
  %68 = load double, double* %z59, align 8
  %69 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z60 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %69, i32 0, i32 2
  %70 = load double, double* %z60, align 8
  %mul61 = fmul double %68, %70
  %add62 = fadd double %add58, %mul61
  %71 = load double, double* %A, align 8
  %mul63 = fmul double %add62, %71
  store double %mul63, double* %B, align 8
  %72 = load i32, i32* %objn, align 4
  %idxprom64 = sext i32 %72 to i64
  %arrayidx65 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i32 0, i64 %idxprom64
  %r = getelementptr inbounds %struct.OBJ, %struct.OBJ* %arrayidx65, i32 0, i32 1
  %73 = load double, double* %r, align 8
  %74 = load i32, i32* %objn, align 4
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i32 0, i64 %idxprom66
  %r68 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %arrayidx67, i32 0, i32 1
  %75 = load double, double* %r68, align 8
  %mul69 = fmul double %73, %75
  %x70 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 0
  %76 = load double, double* %x70, align 8
  %x71 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 0
  %77 = load double, double* %x71, align 8
  %mul72 = fmul double %76, %77
  %sub73 = fsub double %mul69, %mul72
  %y74 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 1
  %78 = load double, double* %y74, align 8
  %y75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 1
  %79 = load double, double* %y75, align 8
  %mul76 = fmul double %78, %79
  %sub77 = fsub double %sub73, %mul76
  %z78 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 2
  %80 = load double, double* %z78, align 8
  %z79 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 2
  %81 = load double, double* %z79, align 8
  %mul80 = fmul double %80, %81
  %sub81 = fsub double %sub77, %mul80
  %82 = load double, double* %A, align 8
  %mul82 = fmul double %sub81, %82
  store double %mul82, double* %C, align 8
  %83 = load double, double* %C, align 8
  %84 = load double, double* %B, align 8
  %85 = load double, double* %B, align 8
  %mul83 = fmul double %84, %85
  %add84 = fadd double %83, %mul83
  store double %add84, double* %A, align 8
  %cmp85 = fcmp ogt double %add84, 0.000000e+00
  br i1 %cmp85, label %if.then.87, label %if.end.137

if.then.87:                                       ; preds = %for.body
  %86 = load double, double* %A, align 8
  %call88 = call double @sqrt(double %86) #3
  store double %call88, double* %A, align 8
  %87 = load double, double* %B, align 8
  %88 = load double, double* %A, align 8
  %sub89 = fsub double %87, %88
  store double %sub89, double* %ttmp, align 8
  %cmp90 = fcmp olt double %sub89, 1.000000e-05
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.then.87
  %89 = load double, double* %B, align 8
  %90 = load double, double* %A, align 8
  %add93 = fadd double %89, %90
  store double %add93, double* %ttmp, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.then.87
  %91 = load double, double* %ttmp, align 8
  %cmp95 = fcmp olt double 1.000000e-05, %91
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.136

land.lhs.true.97:                                 ; preds = %if.end.94
  %92 = load double, double* %ttmp, align 8
  %93 = load double, double* %t, align 8
  %cmp98 = fcmp olt double %92, %93
  br i1 %cmp98, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.97
  %94 = load double, double* %t, align 8
  %cmp100 = fcmp olt double %94, 0.000000e+00
  br i1 %cmp100, label %if.then.102, label %if.end.136

if.then.102:                                      ; preds = %lor.lhs.false, %land.lhs.true.97
  %95 = load double, double* %ttmp, align 8
  store double %95, double* %t, align 8
  %96 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %x103 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %96, i32 0, i32 0
  %97 = load double, double* %x103, align 8
  %98 = load double, double* %t, align 8
  %mul104 = fmul double %97, %98
  %99 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %x105 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %99, i32 0, i32 0
  store double %mul104, double* %x105, align 8
  %100 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %y106 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %100, i32 0, i32 1
  %101 = load double, double* %y106, align 8
  %102 = load double, double* %t, align 8
  %mul107 = fmul double %101, %102
  %103 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %y108 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %103, i32 0, i32 1
  store double %mul107, double* %y108, align 8
  %104 = load %struct.VECTOR*, %struct.VECTOR** %LinD.addr, align 8
  %z109 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %104, i32 0, i32 2
  %105 = load double, double* %z109, align 8
  %106 = load double, double* %t, align 8
  %mul110 = fmul double %105, %106
  %107 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %z111 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %107, i32 0, i32 2
  store double %mul110, double* %z111, align 8
  %108 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %x112 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %108, i32 0, i32 0
  %109 = load double, double* %x112, align 8
  %x113 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 0
  %110 = load double, double* %x113, align 8
  %sub114 = fsub double %109, %110
  %111 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %x115 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %111, i32 0, i32 0
  store double %sub114, double* %x115, align 8
  %112 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %y116 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %112, i32 0, i32 1
  %113 = load double, double* %y116, align 8
  %y117 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 1
  %114 = load double, double* %y117, align 8
  %sub118 = fsub double %113, %114
  %115 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %y119 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %115, i32 0, i32 1
  store double %sub118, double* %y119, align 8
  %116 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %z120 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %116, i32 0, i32 2
  %117 = load double, double* %z120, align 8
  %z121 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %Pos, i32 0, i32 2
  %118 = load double, double* %z121, align 8
  %sub122 = fsub double %117, %118
  %119 = load %struct.VECTOR*, %struct.VECTOR** %Norm.addr, align 8
  %z123 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %119, i32 0, i32 2
  store double %sub122, double* %z123, align 8
  %120 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %x124 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %120, i32 0, i32 0
  %121 = load double, double* %x124, align 8
  %122 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %x125 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %122, i32 0, i32 0
  %123 = load double, double* %x125, align 8
  %add126 = fadd double %123, %121
  store double %add126, double* %x125, align 8
  %124 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %y127 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %124, i32 0, i32 1
  %125 = load double, double* %y127, align 8
  %126 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %y128 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %126, i32 0, i32 1
  %127 = load double, double* %y128, align 8
  %add129 = fadd double %127, %125
  store double %add129, double* %y128, align 8
  %128 = load %struct.VECTOR*, %struct.VECTOR** %LinP.addr, align 8
  %z130 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %128, i32 0, i32 2
  %129 = load double, double* %z130, align 8
  %130 = load %struct.VECTOR*, %struct.VECTOR** %Pnt.addr, align 8
  %z131 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %130, i32 0, i32 2
  %131 = load double, double* %z131, align 8
  %add132 = fadd double %131, %129
  store double %add132, double* %z131, align 8
  %132 = load i32, i32* %objn, align 4
  %idxprom133 = sext i32 %132 to i64
  %arrayidx134 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i32 0, i64 %idxprom133
  %t135 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %arrayidx134, i32 0, i32 2
  %133 = load %struct.TEXTURE**, %struct.TEXTURE*** %txt.addr, align 8
  store %struct.TEXTURE* %t135, %struct.TEXTURE** %133, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.102, %lor.lhs.false, %if.end.94
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %134 = load i32, i32* %objn, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %objn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %135 = load double, double* %t, align 8
  ret double %135
}

; Function Attrs: nounwind uwtable
define internal void @ReflectVector(%struct.VECTOR* %v2, %struct.VECTOR* %v1, %struct.VECTOR* %n) #0 {
entry:
  %v2.addr = alloca %struct.VECTOR*, align 8
  %v1.addr = alloca %struct.VECTOR*, align 8
  %n.addr = alloca %struct.VECTOR*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store %struct.VECTOR* %v2, %struct.VECTOR** %v2.addr, align 8
  store %struct.VECTOR* %v1, %struct.VECTOR** %v1.addr, align 8
  store %struct.VECTOR* %n, %struct.VECTOR** %n.addr, align 8
  %0 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x1 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y2 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %mul3 = fmul double %5, %7
  %add = fadd double %mul, %mul3
  %8 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %8, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z4 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %11 = load double, double* %z4, align 8
  %mul5 = fmul double %9, %11
  %add6 = fadd double %add, %mul5
  store double %add6, double* %b, align 8
  %12 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %x7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 0
  %13 = load double, double* %x7, align 8
  %14 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x8 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 0
  %15 = load double, double* %x8, align 8
  %mul9 = fmul double %13, %15
  %16 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %y10 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %16, i32 0, i32 1
  %17 = load double, double* %y10, align 8
  %18 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y11 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %19 = load double, double* %y11, align 8
  %mul12 = fmul double %17, %19
  %add13 = fadd double %mul9, %mul12
  %20 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %z14 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %20, i32 0, i32 2
  %21 = load double, double* %z14, align 8
  %22 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z15 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %22, i32 0, i32 2
  %23 = load double, double* %z15, align 8
  %mul16 = fmul double %21, %23
  %add17 = fadd double %add13, %mul16
  store double %add17, double* %a, align 8
  %24 = load double, double* %a, align 8
  %mul18 = fmul double -2.000000e+00, %24
  %25 = load double, double* %b, align 8
  %div = fdiv double %mul18, %25
  store double %div, double* %a, align 8
  %26 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %x19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %26, i32 0, i32 0
  %27 = load double, double* %x19, align 8
  %28 = load double, double* %a, align 8
  %29 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %x20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %29, i32 0, i32 0
  %30 = load double, double* %x20, align 8
  %mul21 = fmul double %28, %30
  %add22 = fadd double %27, %mul21
  %31 = load %struct.VECTOR*, %struct.VECTOR** %v2.addr, align 8
  %x23 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %31, i32 0, i32 0
  store double %add22, double* %x23, align 8
  %32 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %y24 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %32, i32 0, i32 1
  %33 = load double, double* %y24, align 8
  %34 = load double, double* %a, align 8
  %35 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %y25 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %35, i32 0, i32 1
  %36 = load double, double* %y25, align 8
  %mul26 = fmul double %34, %36
  %add27 = fadd double %33, %mul26
  %37 = load %struct.VECTOR*, %struct.VECTOR** %v2.addr, align 8
  %y28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %37, i32 0, i32 1
  store double %add27, double* %y28, align 8
  %38 = load %struct.VECTOR*, %struct.VECTOR** %v1.addr, align 8
  %z29 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %38, i32 0, i32 2
  %39 = load double, double* %z29, align 8
  %40 = load double, double* %a, align 8
  %41 = load %struct.VECTOR*, %struct.VECTOR** %n.addr, align 8
  %z30 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %41, i32 0, i32 2
  %42 = load double, double* %z30, align 8
  %mul31 = fmul double %40, %42
  %add32 = fadd double %39, %mul31
  %43 = load %struct.VECTOR*, %struct.VECTOR** %v2.addr, align 8
  %z33 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %43, i32 0, i32 2
  store double %add32, double* %z33, align 8
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
