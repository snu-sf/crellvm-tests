; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/1.IRSmk.utility.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"***** ERROR \0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"      Cannot open input file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%d %d %d %d %d %d %d %d\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"***** input  \0A\00", align 1
@.str.5 = private unnamed_addr constant [113 x i8] c"kmin = %8d     kmax = %8d \0Ajmin = %8d     jmax = %8d \0Aimin = %8d     imax = %8d \0Akp   = %8d     jp   = %8d \0A \0A \0A\00", align 1
@i_lb = common global i32 0, align 4
@i_ub = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"      lb of xdbl < 0 \0A\00", align 1
@x_size = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"***** array bounds  \0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"i_lb = %10d    i_ub = %10d    x_size = %10d \0A \0A \0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"*****ERROR: allocMem out of memory \0A\00", align 1

; Function Attrs: nounwind uwtable
define void @readInput(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32* @kmin, i32* @kmax, i32* @jmin, i32* @jmax, i32* @imin, i32* @imax, i32* @kp, i32* @jp)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  %3 = load i32, i32* @kmin, align 4
  %4 = load i32, i32* @kmax, align 4
  %5 = load i32, i32* @jmin, align 4
  %6 = load i32, i32* @jmax, align 4
  %7 = load i32, i32* @imin, align 4
  %8 = load i32, i32* @imax, align 4
  %9 = load i32, i32* @kp, align 4
  %10 = load i32, i32* @jp, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.5, i32 0, i32 0), i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %11 = load i32, i32* @imin, align 4
  %12 = load i32, i32* @jmin, align 4
  %13 = load i32, i32* @jp, align 4
  %mul = mul nsw i32 %12, %13
  %add = add nsw i32 %11, %mul
  %14 = load i32, i32* @kmin, align 4
  %15 = load i32, i32* @kp, align 4
  %mul6 = mul nsw i32 %14, %15
  %add7 = add nsw i32 %add, %mul6
  store i32 %add7, i32* @i_lb, align 4
  %16 = load i32, i32* @imax, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load i32, i32* @jmax, align 4
  %sub8 = sub nsw i32 %17, 1
  %18 = load i32, i32* @jp, align 4
  %mul9 = mul nsw i32 %sub8, %18
  %add10 = add nsw i32 %sub, %mul9
  %19 = load i32, i32* @kmax, align 4
  %sub11 = sub nsw i32 %19, 1
  %20 = load i32, i32* @kp, align 4
  %mul12 = mul nsw i32 %sub11, %20
  %add13 = add nsw i32 %add10, %mul12
  %add14 = add nsw i32 %add13, 1
  store i32 %add14, i32* @i_ub, align 4
  %21 = load i32, i32* @i_lb, align 4
  %22 = load i32, i32* @kp, align 4
  %sub15 = sub nsw i32 %21, %22
  %23 = load i32, i32* @jp, align 4
  %sub16 = sub nsw i32 %sub15, %23
  %sub17 = sub nsw i32 %sub16, 1
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.22:                                        ; preds = %if.end
  %24 = load i32, i32* @i_ub, align 4
  %25 = load i32, i32* @kp, align 4
  %26 = load i32, i32* @jp, align 4
  %add23 = add nsw i32 %25, %26
  %add24 = add nsw i32 %add23, 1
  %mul25 = mul nsw i32 2, %add24
  %add26 = add nsw i32 %24, %mul25
  %add27 = add nsw i32 %add26, 10
  store i32 %add27, i32* @x_size, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %27 = load i32, i32* @i_lb, align 4
  %28 = load i32, i32* @i_ub, align 4
  %29 = load i32, i32* @x_size, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i32 %27, i32 %28, i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %30)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @allocMem(%struct.RadiationData_t* %rblk) #0 {
entry:
  %rblk.addr = alloca %struct.RadiationData_t*, align 8
  %size = alloca i32, align 4
  store %struct.RadiationData_t* %rblk, %struct.RadiationData_t** %rblk.addr, align 8
  %0 = load i32, i32* @i_ub, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %conv2 = sext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #5
  %2 = bitcast i8* %call to double*
  %3 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %3, i32 0, i32 0
  store double* %2, double** %dbl, align 8
  %4 = load i32, i32* %size, align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #5
  %5 = bitcast i8* %call4 to double*
  %6 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %6, i32 0, i32 1
  store double* %5, double** %dbc, align 8
  %7 = load i32, i32* %size, align 4
  %conv5 = sext i32 %7 to i64
  %call6 = call noalias i8* @malloc(i64 %conv5) #5
  %8 = bitcast i8* %call6 to double*
  %9 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %9, i32 0, i32 2
  store double* %8, double** %dbr, align 8
  %10 = load i32, i32* %size, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call noalias i8* @malloc(i64 %conv7) #5
  %11 = bitcast i8* %call8 to double*
  %12 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %12, i32 0, i32 3
  store double* %11, double** %dcl, align 8
  %13 = load i32, i32* %size, align 4
  %conv9 = sext i32 %13 to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #5
  %14 = bitcast i8* %call10 to double*
  %15 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %15, i32 0, i32 4
  store double* %14, double** %dcc, align 8
  %16 = load i32, i32* %size, align 4
  %conv11 = sext i32 %16 to i64
  %call12 = call noalias i8* @malloc(i64 %conv11) #5
  %17 = bitcast i8* %call12 to double*
  %18 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %18, i32 0, i32 5
  store double* %17, double** %dcr, align 8
  %19 = load i32, i32* %size, align 4
  %conv13 = sext i32 %19 to i64
  %call14 = call noalias i8* @malloc(i64 %conv13) #5
  %20 = bitcast i8* %call14 to double*
  %21 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %21, i32 0, i32 6
  store double* %20, double** %dfl, align 8
  %22 = load i32, i32* %size, align 4
  %conv15 = sext i32 %22 to i64
  %call16 = call noalias i8* @malloc(i64 %conv15) #5
  %23 = bitcast i8* %call16 to double*
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %24, i32 0, i32 7
  store double* %23, double** %dfc, align 8
  %25 = load i32, i32* %size, align 4
  %conv17 = sext i32 %25 to i64
  %call18 = call noalias i8* @malloc(i64 %conv17) #5
  %26 = bitcast i8* %call18 to double*
  %27 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %27, i32 0, i32 8
  store double* %26, double** %dfr, align 8
  %28 = load i32, i32* %size, align 4
  %conv19 = sext i32 %28 to i64
  %call20 = call noalias i8* @malloc(i64 %conv19) #5
  %29 = bitcast i8* %call20 to double*
  %30 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %30, i32 0, i32 9
  store double* %29, double** %cbl, align 8
  %31 = load i32, i32* %size, align 4
  %conv21 = sext i32 %31 to i64
  %call22 = call noalias i8* @malloc(i64 %conv21) #5
  %32 = bitcast i8* %call22 to double*
  %33 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %33, i32 0, i32 10
  store double* %32, double** %cbc, align 8
  %34 = load i32, i32* %size, align 4
  %conv23 = sext i32 %34 to i64
  %call24 = call noalias i8* @malloc(i64 %conv23) #5
  %35 = bitcast i8* %call24 to double*
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %36, i32 0, i32 11
  store double* %35, double** %cbr, align 8
  %37 = load i32, i32* %size, align 4
  %conv25 = sext i32 %37 to i64
  %call26 = call noalias i8* @malloc(i64 %conv25) #5
  %38 = bitcast i8* %call26 to double*
  %39 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %39, i32 0, i32 12
  store double* %38, double** %ccl, align 8
  %40 = load i32, i32* %size, align 4
  %conv27 = sext i32 %40 to i64
  %call28 = call noalias i8* @malloc(i64 %conv27) #5
  %41 = bitcast i8* %call28 to double*
  %42 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %42, i32 0, i32 13
  store double* %41, double** %ccc, align 8
  %43 = load i32, i32* %size, align 4
  %conv29 = sext i32 %43 to i64
  %call30 = call noalias i8* @malloc(i64 %conv29) #5
  %44 = bitcast i8* %call30 to double*
  %45 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %45, i32 0, i32 14
  store double* %44, double** %ccr, align 8
  %46 = load i32, i32* %size, align 4
  %conv31 = sext i32 %46 to i64
  %call32 = call noalias i8* @malloc(i64 %conv31) #5
  %47 = bitcast i8* %call32 to double*
  %48 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %48, i32 0, i32 15
  store double* %47, double** %cfl, align 8
  %49 = load i32, i32* %size, align 4
  %conv33 = sext i32 %49 to i64
  %call34 = call noalias i8* @malloc(i64 %conv33) #5
  %50 = bitcast i8* %call34 to double*
  %51 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %51, i32 0, i32 16
  store double* %50, double** %cfc, align 8
  %52 = load i32, i32* %size, align 4
  %conv35 = sext i32 %52 to i64
  %call36 = call noalias i8* @malloc(i64 %conv35) #5
  %53 = bitcast i8* %call36 to double*
  %54 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %54, i32 0, i32 17
  store double* %53, double** %cfr, align 8
  %55 = load i32, i32* %size, align 4
  %conv37 = sext i32 %55 to i64
  %call38 = call noalias i8* @malloc(i64 %conv37) #5
  %56 = bitcast i8* %call38 to double*
  %57 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %57, i32 0, i32 18
  store double* %56, double** %ubl, align 8
  %58 = load i32, i32* %size, align 4
  %conv39 = sext i32 %58 to i64
  %call40 = call noalias i8* @malloc(i64 %conv39) #5
  %59 = bitcast i8* %call40 to double*
  %60 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %60, i32 0, i32 19
  store double* %59, double** %ubc, align 8
  %61 = load i32, i32* %size, align 4
  %conv41 = sext i32 %61 to i64
  %call42 = call noalias i8* @malloc(i64 %conv41) #5
  %62 = bitcast i8* %call42 to double*
  %63 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %63, i32 0, i32 20
  store double* %62, double** %ubr, align 8
  %64 = load i32, i32* %size, align 4
  %conv43 = sext i32 %64 to i64
  %call44 = call noalias i8* @malloc(i64 %conv43) #5
  %65 = bitcast i8* %call44 to double*
  %66 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %66, i32 0, i32 21
  store double* %65, double** %ucl, align 8
  %67 = load i32, i32* %size, align 4
  %conv45 = sext i32 %67 to i64
  %call46 = call noalias i8* @malloc(i64 %conv45) #5
  %68 = bitcast i8* %call46 to double*
  %69 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %69, i32 0, i32 22
  store double* %68, double** %ucc, align 8
  %70 = load i32, i32* %size, align 4
  %conv47 = sext i32 %70 to i64
  %call48 = call noalias i8* @malloc(i64 %conv47) #5
  %71 = bitcast i8* %call48 to double*
  %72 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %72, i32 0, i32 23
  store double* %71, double** %ucr, align 8
  %73 = load i32, i32* %size, align 4
  %conv49 = sext i32 %73 to i64
  %call50 = call noalias i8* @malloc(i64 %conv49) #5
  %74 = bitcast i8* %call50 to double*
  %75 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufl = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %75, i32 0, i32 24
  store double* %74, double** %ufl, align 8
  %76 = load i32, i32* %size, align 4
  %conv51 = sext i32 %76 to i64
  %call52 = call noalias i8* @malloc(i64 %conv51) #5
  %77 = bitcast i8* %call52 to double*
  %78 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufc = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %78, i32 0, i32 25
  store double* %77, double** %ufc, align 8
  %79 = load i32, i32* %size, align 4
  %conv53 = sext i32 %79 to i64
  %call54 = call noalias i8* @malloc(i64 %conv53) #5
  %80 = bitcast i8* %call54 to double*
  %81 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufr = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %81, i32 0, i32 26
  store double* %80, double** %ufr, align 8
  %82 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufr55 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %82, i32 0, i32 26
  %83 = load double*, double** %ufr55, align 8
  %cmp = icmp eq double* %83, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @init(%struct.Domain_s* %domain, %struct.RadiationData_t* %rblk, double* %x, double* %b) #0 {
entry:
  %domain.addr = alloca %struct.Domain_s*, align 8
  %rblk.addr = alloca %struct.RadiationData_t*, align 8
  %x.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %dbl = alloca double*, align 8
  %dbc = alloca double*, align 8
  %dbr = alloca double*, align 8
  %dcl = alloca double*, align 8
  %dcc = alloca double*, align 8
  %dcr = alloca double*, align 8
  %dfl = alloca double*, align 8
  %dfc = alloca double*, align 8
  %dfr = alloca double*, align 8
  %cbl = alloca double*, align 8
  %cbc = alloca double*, align 8
  %cbr = alloca double*, align 8
  %ccl = alloca double*, align 8
  %ccc = alloca double*, align 8
  %ccr = alloca double*, align 8
  %cfl = alloca double*, align 8
  %cfc = alloca double*, align 8
  %cfr = alloca double*, align 8
  %ubl = alloca double*, align 8
  %ubc = alloca double*, align 8
  %ubr = alloca double*, align 8
  %ucl = alloca double*, align 8
  %ucc = alloca double*, align 8
  %ucr = alloca double*, align 8
  %ufl = alloca double*, align 8
  %ufc = alloca double*, align 8
  %ufr = alloca double*, align 8
  store %struct.Domain_s* %domain, %struct.Domain_s** %domain.addr, align 8
  store %struct.RadiationData_t* %rblk, %struct.RadiationData_t** %rblk.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %b, double** %b.addr, align 8
  %0 = load i32, i32* @imin, align 4
  %1 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %imin = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %1, i32 0, i32 2
  store i32 %0, i32* %imin, align 4
  %2 = load i32, i32* @imax, align 4
  %3 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %imax = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %3, i32 0, i32 5
  store i32 %2, i32* %imax, align 4
  %4 = load i32, i32* @jmin, align 4
  %5 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jmin = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %5, i32 0, i32 3
  store i32 %4, i32* %jmin, align 4
  %6 = load i32, i32* @jmax, align 4
  %7 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jmax = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %7, i32 0, i32 6
  store i32 %6, i32* %jmax, align 4
  %8 = load i32, i32* @kmin, align 4
  %9 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kmin = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %9, i32 0, i32 4
  store i32 %8, i32* %kmin, align 4
  %10 = load i32, i32* @kmax, align 4
  %11 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kmax = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %11, i32 0, i32 7
  store i32 %10, i32* %kmax, align 4
  %12 = load i32, i32* @jp, align 4
  %13 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jp = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %13, i32 0, i32 17
  store i32 %12, i32* %jp, align 4
  %14 = load i32, i32* @kp, align 4
  %15 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kp = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %15, i32 0, i32 18
  store i32 %14, i32* %kp, align 4
  %16 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbl1 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %16, i32 0, i32 0
  %17 = load double*, double** %dbl1, align 8
  store double* %17, double** %dbl, align 8
  %18 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbc2 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %18, i32 0, i32 1
  %19 = load double*, double** %dbc2, align 8
  store double* %19, double** %dbc, align 8
  %20 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbr3 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %20, i32 0, i32 2
  %21 = load double*, double** %dbr3, align 8
  store double* %21, double** %dbr, align 8
  %22 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcl4 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %22, i32 0, i32 3
  %23 = load double*, double** %dcl4, align 8
  store double* %23, double** %dcl, align 8
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcc5 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %24, i32 0, i32 4
  %25 = load double*, double** %dcc5, align 8
  store double* %25, double** %dcc, align 8
  %26 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcr6 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %26, i32 0, i32 5
  %27 = load double*, double** %dcr6, align 8
  store double* %27, double** %dcr, align 8
  %28 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfl7 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %28, i32 0, i32 6
  %29 = load double*, double** %dfl7, align 8
  store double* %29, double** %dfl, align 8
  %30 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfc8 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %30, i32 0, i32 7
  %31 = load double*, double** %dfc8, align 8
  store double* %31, double** %dfc, align 8
  %32 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfr9 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %32, i32 0, i32 8
  %33 = load double*, double** %dfr9, align 8
  store double* %33, double** %dfr, align 8
  %34 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbl10 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %34, i32 0, i32 9
  %35 = load double*, double** %cbl10, align 8
  store double* %35, double** %cbl, align 8
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbc11 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %36, i32 0, i32 10
  %37 = load double*, double** %cbc11, align 8
  store double* %37, double** %cbc, align 8
  %38 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbr12 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %38, i32 0, i32 11
  %39 = load double*, double** %cbr12, align 8
  store double* %39, double** %cbr, align 8
  %40 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccl13 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %40, i32 0, i32 12
  %41 = load double*, double** %ccl13, align 8
  store double* %41, double** %ccl, align 8
  %42 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccc14 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %42, i32 0, i32 13
  %43 = load double*, double** %ccc14, align 8
  store double* %43, double** %ccc, align 8
  %44 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccr15 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %44, i32 0, i32 14
  %45 = load double*, double** %ccr15, align 8
  store double* %45, double** %ccr, align 8
  %46 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfl16 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %46, i32 0, i32 15
  %47 = load double*, double** %cfl16, align 8
  store double* %47, double** %cfl, align 8
  %48 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfc17 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %48, i32 0, i32 16
  %49 = load double*, double** %cfc17, align 8
  store double* %49, double** %cfc, align 8
  %50 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfr18 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %50, i32 0, i32 17
  %51 = load double*, double** %cfr18, align 8
  store double* %51, double** %cfr, align 8
  %52 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubl19 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %52, i32 0, i32 18
  %53 = load double*, double** %ubl19, align 8
  store double* %53, double** %ubl, align 8
  %54 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubc20 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %54, i32 0, i32 19
  %55 = load double*, double** %ubc20, align 8
  store double* %55, double** %ubc, align 8
  %56 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubr21 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %56, i32 0, i32 20
  %57 = load double*, double** %ubr21, align 8
  store double* %57, double** %ubr, align 8
  %58 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucl22 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %58, i32 0, i32 21
  %59 = load double*, double** %ucl22, align 8
  store double* %59, double** %ucl, align 8
  %60 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucc23 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %60, i32 0, i32 22
  %61 = load double*, double** %ucc23, align 8
  store double* %61, double** %ucc, align 8
  %62 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucr24 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %62, i32 0, i32 23
  %63 = load double*, double** %ucr24, align 8
  store double* %63, double** %ucr, align 8
  %64 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufl25 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %64, i32 0, i32 24
  %65 = load double*, double** %ufl25, align 8
  store double* %65, double** %ufl, align 8
  %66 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufc26 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %66, i32 0, i32 25
  %67 = load double*, double** %ufc26, align 8
  store double* %67, double** %ufc, align 8
  %68 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufr27 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %68, i32 0, i32 26
  %69 = load double*, double** %ufr27, align 8
  store double* %69, double** %ufr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* @i_ub, align 4
  %cmp = icmp slt i32 %70, %71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load double*, double** %b.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %72, i32 1
  store double* %incdec.ptr, double** %b.addr, align 8
  store double 0.000000e+00, double* %72, align 8
  %73 = load i32, i32* %i, align 4
  %conv = sitofp i32 %73 to double
  %74 = load double*, double** %dbl, align 8
  %incdec.ptr28 = getelementptr inbounds double, double* %74, i32 1
  store double* %incdec.ptr28, double** %dbl, align 8
  store double %conv, double* %74, align 8
  %75 = load i32, i32* %i, align 4
  %add = add nsw i32 %75, 1
  %conv29 = sitofp i32 %add to double
  %76 = load double*, double** %dbc, align 8
  %incdec.ptr30 = getelementptr inbounds double, double* %76, i32 1
  store double* %incdec.ptr30, double** %dbc, align 8
  store double %conv29, double* %76, align 8
  %77 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %77, 2
  %conv32 = sitofp i32 %add31 to double
  %78 = load double*, double** %dbr, align 8
  %incdec.ptr33 = getelementptr inbounds double, double* %78, i32 1
  store double* %incdec.ptr33, double** %dbr, align 8
  store double %conv32, double* %78, align 8
  %79 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %79, 3
  %conv35 = sitofp i32 %add34 to double
  %80 = load double*, double** %dcl, align 8
  %incdec.ptr36 = getelementptr inbounds double, double* %80, i32 1
  store double* %incdec.ptr36, double** %dcl, align 8
  store double %conv35, double* %80, align 8
  %81 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %81, 4
  %conv38 = sitofp i32 %add37 to double
  %82 = load double*, double** %dcc, align 8
  %incdec.ptr39 = getelementptr inbounds double, double* %82, i32 1
  store double* %incdec.ptr39, double** %dcc, align 8
  store double %conv38, double* %82, align 8
  %83 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %83, 5
  %conv41 = sitofp i32 %add40 to double
  %84 = load double*, double** %dcr, align 8
  %incdec.ptr42 = getelementptr inbounds double, double* %84, i32 1
  store double* %incdec.ptr42, double** %dcr, align 8
  store double %conv41, double* %84, align 8
  %85 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %85, 6
  %conv44 = sitofp i32 %add43 to double
  %86 = load double*, double** %dfl, align 8
  %incdec.ptr45 = getelementptr inbounds double, double* %86, i32 1
  store double* %incdec.ptr45, double** %dfl, align 8
  store double %conv44, double* %86, align 8
  %87 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %87, 7
  %conv47 = sitofp i32 %add46 to double
  %88 = load double*, double** %dfc, align 8
  %incdec.ptr48 = getelementptr inbounds double, double* %88, i32 1
  store double* %incdec.ptr48, double** %dfc, align 8
  store double %conv47, double* %88, align 8
  %89 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %89, 8
  %conv50 = sitofp i32 %add49 to double
  %90 = load double*, double** %dfr, align 8
  %incdec.ptr51 = getelementptr inbounds double, double* %90, i32 1
  store double* %incdec.ptr51, double** %dfr, align 8
  store double %conv50, double* %90, align 8
  %91 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %91, 9
  %conv53 = sitofp i32 %add52 to double
  %92 = load double*, double** %cbl, align 8
  %incdec.ptr54 = getelementptr inbounds double, double* %92, i32 1
  store double* %incdec.ptr54, double** %cbl, align 8
  store double %conv53, double* %92, align 8
  %93 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %93, 10
  %conv56 = sitofp i32 %add55 to double
  %94 = load double*, double** %cbc, align 8
  %incdec.ptr57 = getelementptr inbounds double, double* %94, i32 1
  store double* %incdec.ptr57, double** %cbc, align 8
  store double %conv56, double* %94, align 8
  %95 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %95, 11
  %conv59 = sitofp i32 %add58 to double
  %96 = load double*, double** %cbr, align 8
  %incdec.ptr60 = getelementptr inbounds double, double* %96, i32 1
  store double* %incdec.ptr60, double** %cbr, align 8
  store double %conv59, double* %96, align 8
  %97 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %97, 12
  %conv62 = sitofp i32 %add61 to double
  %98 = load double*, double** %ccl, align 8
  %incdec.ptr63 = getelementptr inbounds double, double* %98, i32 1
  store double* %incdec.ptr63, double** %ccl, align 8
  store double %conv62, double* %98, align 8
  %99 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %99, 13
  %conv65 = sitofp i32 %add64 to double
  %100 = load double*, double** %ccc, align 8
  %incdec.ptr66 = getelementptr inbounds double, double* %100, i32 1
  store double* %incdec.ptr66, double** %ccc, align 8
  store double %conv65, double* %100, align 8
  %101 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %101, 14
  %conv68 = sitofp i32 %add67 to double
  %102 = load double*, double** %ccr, align 8
  %incdec.ptr69 = getelementptr inbounds double, double* %102, i32 1
  store double* %incdec.ptr69, double** %ccr, align 8
  store double %conv68, double* %102, align 8
  %103 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %103, 15
  %conv71 = sitofp i32 %add70 to double
  %104 = load double*, double** %cfl, align 8
  %incdec.ptr72 = getelementptr inbounds double, double* %104, i32 1
  store double* %incdec.ptr72, double** %cfl, align 8
  store double %conv71, double* %104, align 8
  %105 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %105, 16
  %conv74 = sitofp i32 %add73 to double
  %106 = load double*, double** %cfc, align 8
  %incdec.ptr75 = getelementptr inbounds double, double* %106, i32 1
  store double* %incdec.ptr75, double** %cfc, align 8
  store double %conv74, double* %106, align 8
  %107 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %107, 17
  %conv77 = sitofp i32 %add76 to double
  %108 = load double*, double** %cfr, align 8
  %incdec.ptr78 = getelementptr inbounds double, double* %108, i32 1
  store double* %incdec.ptr78, double** %cfr, align 8
  store double %conv77, double* %108, align 8
  %109 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %109, 18
  %conv80 = sitofp i32 %add79 to double
  %110 = load double*, double** %ubl, align 8
  %incdec.ptr81 = getelementptr inbounds double, double* %110, i32 1
  store double* %incdec.ptr81, double** %ubl, align 8
  store double %conv80, double* %110, align 8
  %111 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %111, 19
  %conv83 = sitofp i32 %add82 to double
  %112 = load double*, double** %ubc, align 8
  %incdec.ptr84 = getelementptr inbounds double, double* %112, i32 1
  store double* %incdec.ptr84, double** %ubc, align 8
  store double %conv83, double* %112, align 8
  %113 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %113, 20
  %conv86 = sitofp i32 %add85 to double
  %114 = load double*, double** %ubr, align 8
  %incdec.ptr87 = getelementptr inbounds double, double* %114, i32 1
  store double* %incdec.ptr87, double** %ubr, align 8
  store double %conv86, double* %114, align 8
  %115 = load i32, i32* %i, align 4
  %add88 = add nsw i32 %115, 21
  %conv89 = sitofp i32 %add88 to double
  %116 = load double*, double** %ucl, align 8
  %incdec.ptr90 = getelementptr inbounds double, double* %116, i32 1
  store double* %incdec.ptr90, double** %ucl, align 8
  store double %conv89, double* %116, align 8
  %117 = load i32, i32* %i, align 4
  %add91 = add nsw i32 %117, 22
  %conv92 = sitofp i32 %add91 to double
  %118 = load double*, double** %ucc, align 8
  %incdec.ptr93 = getelementptr inbounds double, double* %118, i32 1
  store double* %incdec.ptr93, double** %ucc, align 8
  store double %conv92, double* %118, align 8
  %119 = load i32, i32* %i, align 4
  %add94 = add nsw i32 %119, 23
  %conv95 = sitofp i32 %add94 to double
  %120 = load double*, double** %ucr, align 8
  %incdec.ptr96 = getelementptr inbounds double, double* %120, i32 1
  store double* %incdec.ptr96, double** %ucr, align 8
  store double %conv95, double* %120, align 8
  %121 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %121, 24
  %conv98 = sitofp i32 %add97 to double
  %122 = load double*, double** %ufl, align 8
  %incdec.ptr99 = getelementptr inbounds double, double* %122, i32 1
  store double* %incdec.ptr99, double** %ufl, align 8
  store double %conv98, double* %122, align 8
  %123 = load i32, i32* %i, align 4
  %add100 = add nsw i32 %123, 25
  %conv101 = sitofp i32 %add100 to double
  %124 = load double*, double** %ufc, align 8
  %incdec.ptr102 = getelementptr inbounds double, double* %124, i32 1
  store double* %incdec.ptr102, double** %ufc, align 8
  store double %conv101, double* %124, align 8
  %125 = load i32, i32* %i, align 4
  %add103 = add nsw i32 %125, 26
  %conv104 = sitofp i32 %add103 to double
  %126 = load double*, double** %ufr, align 8
  %incdec.ptr105 = getelementptr inbounds double, double* %126, i32 1
  store double* %incdec.ptr105, double** %ufr, align 8
  store double %conv104, double* %126, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %127 = load i32, i32* %i, align 4
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.112, %for.end
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* @x_size, align 4
  %cmp107 = icmp slt i32 %128, %129
  br i1 %cmp107, label %for.body.109, label %for.end.114

for.body.109:                                     ; preds = %for.cond.106
  %130 = load i32, i32* %i, align 4
  %conv110 = sitofp i32 %130 to double
  %mul = fmul double 2.000000e+00, %conv110
  %131 = load double*, double** %x.addr, align 8
  %incdec.ptr111 = getelementptr inbounds double, double* %131, i32 1
  store double* %incdec.ptr111, double** %x.addr, align 8
  store double %mul, double* %131, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.109
  %132 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %132, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.106

for.end.114:                                      ; preds = %for.cond.106
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
