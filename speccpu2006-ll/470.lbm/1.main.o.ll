; ModuleID = 'main.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MAIN_Param = type { i32, i8*, i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@srcGrid = internal global [26000000 x double]* null, align 8
@dstGrid = internal global [26000000 x double]* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"MAIN_parseCommandLine: cannot stat result file '%s'\0A\00", align 1
@MAIN_printInfo.actionString = internal constant [3 x [32 x i8]] [[32 x i8] c"nothing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"compare\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"store\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@MAIN_printInfo.simTypeString = internal constant [3 x [32 x i8]] [[32 x i8] c"lid-driven cavity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel flow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %nArgs, i8** %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %nArgs.addr = alloca i32, align 4
  %arg.addr = alloca i8**, align 8
  %param = alloca %struct.MAIN_Param, align 8
  %t = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %nArgs, i32* %nArgs.addr, align 4
  store i8** %arg, i8*** %arg.addr, align 8
  %0 = load i32, i32* %nArgs.addr, align 4
  %1 = load i8**, i8*** %arg.addr, align 8
  call void @MAIN_parseCommandLine(i32 %0, i8** %1, %struct.MAIN_Param* %param)
  call void @MAIN_printInfo(%struct.MAIN_Param* %param)
  call void @MAIN_initialize(%struct.MAIN_Param* %param)
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %t, align 4
  %nTimeSteps = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %param, i32 0, i32 0
  %3 = load i32, i32* %nTimeSteps, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %simType = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %param, i32 0, i32 3
  %4 = load i32, i32* %simType, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay = getelementptr inbounds [26000000 x double], [26000000 x double]* %5, i32 0, i32 0
  call void @LBM_handleInOutFlow(double* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay2 = getelementptr inbounds [26000000 x double], [26000000 x double]* %6, i32 0, i32 0
  %7 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %arraydecay3 = getelementptr inbounds [26000000 x double], [26000000 x double]* %7, i32 0, i32 0
  call void @LBM_performStreamCollide(double* %arraydecay2, double* %arraydecay3)
  call void @LBM_swapGrids([26000000 x double]** @srcGrid, [26000000 x double]** @dstGrid)
  %8 = load i32, i32* %t, align 4
  %and = and i32 %8, 63
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %t, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %9)
  %10 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay6 = getelementptr inbounds [26000000 x double], [26000000 x double]* %10, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %arraydecay6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %11 = load i32, i32* %t, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @MAIN_finalize(%struct.MAIN_Param* %param)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @MAIN_parseCommandLine(i32 %nArgs, i8** %arg, %struct.MAIN_Param* %param) #0 {
entry:
  %nArgs.addr = alloca i32, align 4
  %arg.addr = alloca i8**, align 8
  %param.addr = alloca %struct.MAIN_Param*, align 8
  %fileStat = alloca %struct.stat, align 8
  store i32 %nArgs, i32* %nArgs.addr, align 4
  store i8** %arg, i8*** %arg.addr, align 8
  store %struct.MAIN_Param* %param, %struct.MAIN_Param** %param.addr, align 8
  %0 = load i32, i32* %nArgs.addr, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nArgs.addr, align 4
  %cmp1 = icmp sgt i32 %1, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8**, i8*** %arg.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 @atoi(i8* %3) #6
  %4 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %nTimeSteps = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %4, i32 0, i32 0
  store i32 %call2, i32* %nTimeSteps, align 4
  %5 = load i8**, i8*** %arg.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx3, align 8
  %7 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %7, i32 0, i32 1
  store i8* %6, i8** %resultFilename, align 8
  %8 = load i8**, i8*** %arg.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 3
  %9 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @atoi(i8* %9) #6
  %10 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %action = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %10, i32 0, i32 2
  store i32 %call5, i32* %action, align 4
  %11 = load i8**, i8*** %arg.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 4
  %12 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @atoi(i8* %12) #6
  %13 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %simType = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %13, i32 0, i32 3
  store i32 %call7, i32* %simType, align 4
  %14 = load i32, i32* %nArgs.addr, align 4
  %cmp8 = icmp eq i32 %14, 6
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %15 = load i8**, i8*** %arg.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %15, i64 5
  %16 = load i8*, i8** %arrayidx10, align 8
  %17 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %17, i32 0, i32 4
  store i8* %16, i8** %obstacleFilename, align 8
  %18 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename11 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %18, i32 0, i32 4
  %19 = load i8*, i8** %obstacleFilename11, align 8
  %call12 = call i32 @stat(i8* %19, %struct.stat* %fileStat) #7
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.9
  %20 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename15 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %20, i32 0, i32 4
  %21 = load i8*, i8** %obstacleFilename15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* %21)
  call void @exit(i32 1) #5
  unreachable

if.end.17:                                        ; preds = %if.then.9
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %fileStat, i32 0, i32 8
  %22 = load i64, i64* %st_size, align 8
  %cmp18 = icmp ne i64 %22, 1313130
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %23 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename20 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %23, i32 0, i32 4
  %24 = load i8*, i8** %obstacleFilename20, align 8
  %st_size21 = getelementptr inbounds %struct.stat, %struct.stat* %fileStat, i32 0, i32 8
  %25 = load i64, i64* %st_size21, align 8
  %conv = trunc i64 %25 to i32
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i32 0, i32 0), i8* %24, i32 %conv, i32 1313130)
  call void @exit(i32 1) #5
  unreachable

if.end.23:                                        ; preds = %if.end.17
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %26 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename24 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %26, i32 0, i32 4
  store i8* null, i8** %obstacleFilename24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.23
  %27 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %action26 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %27, i32 0, i32 2
  %28 = load i32, i32* %action26, align 4
  %cmp27 = icmp eq i32 %28, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.25
  %29 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename29 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %29, i32 0, i32 1
  %30 = load i8*, i8** %resultFilename29, align 8
  %call30 = call i32 @stat(i8* %30, %struct.stat* %fileStat) #7
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true
  %31 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename34 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %31, i32 0, i32 1
  %32 = load i8*, i8** %resultFilename34, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %32)
  call void @exit(i32 1) #5
  unreachable

if.end.36:                                        ; preds = %land.lhs.true, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define void @MAIN_printInfo(%struct.MAIN_Param* %param) #0 {
entry:
  %param.addr = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %param, %struct.MAIN_Param** %param.addr, align 8
  %0 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %nTimeSteps = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i32 0, i32 0
  %1 = load i32, i32* %nTimeSteps, align 4
  %2 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %2, i32 0, i32 1
  %3 = load i8*, i8** %resultFilename, align 8
  %4 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %action = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %4, i32 0, i32 2
  %5 = load i32, i32* %action, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @MAIN_printInfo.actionString, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i32 0, i32 0
  %6 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %simType = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i32 0, i32 3
  %7 = load i32, i32* %simType, align 4
  %idxprom1 = zext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx2, i32 0, i32 0
  %8 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %8, i32 0, i32 4
  %9 = load i8*, i8** %obstacleFilename, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename4 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %10, i32 0, i32 4
  %11 = load i8*, i8** %obstacleFilename4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %cond.true ], [ %11, %cond.false ]
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.5, i32 0, i32 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %1, i8* %3, i8* %arraydecay, i8* %arraydecay3, i8* %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MAIN_initialize(%struct.MAIN_Param* %param) #0 {
entry:
  %param.addr = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %param, %struct.MAIN_Param** %param.addr, align 8
  call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @srcGrid to double**))
  call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @dstGrid to double**))
  %0 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay = getelementptr inbounds [26000000 x double], [26000000 x double]* %0, i32 0, i32 0
  call void @LBM_initializeGrid(double* %arraydecay)
  %1 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %arraydecay1 = getelementptr inbounds [26000000 x double], [26000000 x double]* %1, i32 0, i32 0
  call void @LBM_initializeGrid(double* %arraydecay1)
  %2 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %2, i32 0, i32 4
  %3 = load i8*, i8** %obstacleFilename, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay2 = getelementptr inbounds [26000000 x double], [26000000 x double]* %4, i32 0, i32 0
  %5 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename3 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %5, i32 0, i32 4
  %6 = load i8*, i8** %obstacleFilename3, align 8
  call void @LBM_loadObstacleFile(double* %arraydecay2, i8* %6)
  %7 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %arraydecay4 = getelementptr inbounds [26000000 x double], [26000000 x double]* %7, i32 0, i32 0
  %8 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %obstacleFilename5 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %8, i32 0, i32 4
  %9 = load i8*, i8** %obstacleFilename5, align 8
  call void @LBM_loadObstacleFile(double* %arraydecay4, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %simType = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %10, i32 0, i32 3
  %11 = load i32, i32* %simType, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %12 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay8 = getelementptr inbounds [26000000 x double], [26000000 x double]* %12, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForChannel(double* %arraydecay8)
  %13 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %arraydecay9 = getelementptr inbounds [26000000 x double], [26000000 x double]* %13, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForChannel(double* %arraydecay9)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %14 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay10 = getelementptr inbounds [26000000 x double], [26000000 x double]* %14, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForLDC(double* %arraydecay10)
  %15 = load [26000000 x double]*, [26000000 x double]** @dstGrid, align 8
  %arraydecay11 = getelementptr inbounds [26000000 x double], [26000000 x double]* %15, i32 0, i32 0
  call void @LBM_initializeSpecialCellsForLDC(double* %arraydecay11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %16 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay13 = getelementptr inbounds [26000000 x double], [26000000 x double]* %16, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %arraydecay13)
  ret void
}

declare void @LBM_handleInOutFlow(double*) #1

declare void @LBM_performStreamCollide(double*, double*) #1

declare void @LBM_swapGrids([26000000 x double]**, [26000000 x double]**) #1

declare i32 @printf(i8*, ...) #1

declare void @LBM_showGridStatistics(double*) #1

; Function Attrs: nounwind uwtable
define void @MAIN_finalize(%struct.MAIN_Param* %param) #0 {
entry:
  %param.addr = alloca %struct.MAIN_Param*, align 8
  store %struct.MAIN_Param* %param, %struct.MAIN_Param** %param.addr, align 8
  %0 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay = getelementptr inbounds [26000000 x double], [26000000 x double]* %0, i32 0, i32 0
  call void @LBM_showGridStatistics(double* %arraydecay)
  %1 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %action = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %1, i32 0, i32 2
  %2 = load i32, i32* %action, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay1 = getelementptr inbounds [26000000 x double], [26000000 x double]* %3, i32 0, i32 0
  %4 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %4, i32 0, i32 1
  %5 = load i8*, i8** %resultFilename, align 8
  call void @LBM_compareVelocityField(double* %arraydecay1, i8* %5, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %action2 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i32 0, i32 2
  %7 = load i32, i32* %action2, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load [26000000 x double]*, [26000000 x double]** @srcGrid, align 8
  %arraydecay5 = getelementptr inbounds [26000000 x double], [26000000 x double]* %8, i32 0, i32 0
  %9 = load %struct.MAIN_Param*, %struct.MAIN_Param** %param.addr, align 8
  %resultFilename6 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %9, i32 0, i32 1
  %10 = load i8*, i8** %resultFilename6, align 8
  call void @LBM_storeVelocityField(double* %arraydecay5, i8* %10, i32 -1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @srcGrid to double**))
  call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @dstGrid to double**))
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare void @LBM_allocateGrid(double**) #1

declare void @LBM_initializeGrid(double*) #1

declare void @LBM_loadObstacleFile(double*, i8*) #1

declare void @LBM_initializeSpecialCellsForChannel(double*) #1

declare void @LBM_initializeSpecialCellsForLDC(double*) #1

declare void @LBM_compareVelocityField(double*, i8*, i32) #1

declare void @LBM_storeVelocityField(double*, i8*, i32) #1

declare void @LBM_freeGrid(double**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
