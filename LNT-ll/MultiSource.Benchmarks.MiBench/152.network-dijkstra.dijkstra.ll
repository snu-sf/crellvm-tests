; ModuleID = './MultiSource.Benchmarks.MiBench/152.network-dijkstra.dijkstra.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._NODE = type { i32, i32 }

@qHead = global %struct._QITEM* null, align 8
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = common global i32 0, align 4
@rgnNodes = common global [100 x %struct._NODE] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = common global i32 0, align 4
@iDist = common global i32 0, align 4
@iPrev = common global i32 0, align 4
@i = common global i32 0, align 4
@AdjMatrix = common global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define void @print_path(%struct._NODE* %rgnNodes, i32 %chNode) #0 {
entry:
  %rgnNodes.addr = alloca %struct._NODE*, align 8
  %chNode.addr = alloca i32, align 4
  store %struct._NODE* %rgnNodes, %struct._NODE** %rgnNodes.addr, align 8
  store i32 %chNode, i32* %chNode.addr, align 4
  %0 = load i32, i32* %chNode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._NODE*, %struct._NODE** %rgnNodes.addr, align 8
  %arrayidx = getelementptr inbounds %struct._NODE, %struct._NODE* %1, i64 %idxprom
  %iPrev = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %iPrev, align 4
  %cmp = icmp ne i32 %2, 9999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._NODE*, %struct._NODE** %rgnNodes.addr, align 8
  %4 = load i32, i32* %chNode.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._NODE*, %struct._NODE** %rgnNodes.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._NODE, %struct._NODE* %5, i64 %idxprom1
  %iPrev3 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx2, i32 0, i32 1
  %6 = load i32, i32* %iPrev3, align 4
  call void @print_path(%struct._NODE* %3, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %chNode.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %8)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @enqueue(i32 %iNode, i32 %iDist, i32 %iPrev) #0 {
entry:
  %iNode.addr = alloca i32, align 4
  %iDist.addr = alloca i32, align 4
  %iPrev.addr = alloca i32, align 4
  %qNew = alloca %struct._QITEM*, align 8
  %qLast = alloca %struct._QITEM*, align 8
  store i32 %iNode, i32* %iNode.addr, align 4
  store i32 %iDist, i32* %iDist.addr, align 4
  store i32 %iPrev, i32* %iPrev.addr, align 4
  %call = call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct._QITEM*
  store %struct._QITEM* %0, %struct._QITEM** %qNew, align 8
  %1 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %1, %struct._QITEM** %qLast, align 8
  %2 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %tobool = icmp ne %struct._QITEM* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %iNode.addr, align 4
  %5 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %iNode2 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i32 0, i32 0
  store i32 %4, i32* %iNode2, align 4
  %6 = load i32, i32* %iDist.addr, align 4
  %7 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %iDist3 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %7, i32 0, i32 1
  store i32 %6, i32* %iDist3, align 4
  %8 = load i32, i32* %iPrev.addr, align 4
  %9 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %iPrev4 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %9, i32 0, i32 2
  store i32 %8, i32* %iPrev4, align 4
  %10 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %qNext = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %qNext, align 8
  %11 = load %struct._QITEM*, %struct._QITEM** %qLast, align 8
  %tobool5 = icmp ne %struct._QITEM* %11, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  store %struct._QITEM* %12, %struct._QITEM** @qHead, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %13 = load %struct._QITEM*, %struct._QITEM** %qLast, align 8
  %qNext7 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %13, i32 0, i32 3
  %14 = load %struct._QITEM*, %struct._QITEM** %qNext7, align 8
  %tobool8 = icmp ne %struct._QITEM* %14, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._QITEM*, %struct._QITEM** %qLast, align 8
  %qNext9 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %15, i32 0, i32 3
  %16 = load %struct._QITEM*, %struct._QITEM** %qNext9, align 8
  store %struct._QITEM* %16, %struct._QITEM** %qLast, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._QITEM*, %struct._QITEM** %qNew, align 8
  %18 = load %struct._QITEM*, %struct._QITEM** %qLast, align 8
  %qNext10 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %18, i32 0, i32 3
  store %struct._QITEM* %17, %struct._QITEM** %qNext10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.then.6
  %19 = load i32, i32* @g_qCount, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @g_qCount, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @dequeue(i32* %piNode, i32* %piDist, i32* %piPrev) #0 {
entry:
  %piNode.addr = alloca i32*, align 8
  %piDist.addr = alloca i32*, align 8
  %piPrev.addr = alloca i32*, align 8
  %qKill = alloca %struct._QITEM*, align 8
  store i32* %piNode, i32** %piNode.addr, align 8
  store i32* %piDist, i32** %piDist.addr, align 8
  store i32* %piPrev, i32** %piPrev.addr, align 8
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %0, %struct._QITEM** %qKill, align 8
  %1 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %tobool = icmp ne %struct._QITEM* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %iNode = getelementptr inbounds %struct._QITEM, %struct._QITEM* %2, i32 0, i32 0
  %3 = load i32, i32* %iNode, align 4
  %4 = load i32*, i32** %piNode.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %iDist = getelementptr inbounds %struct._QITEM, %struct._QITEM* %5, i32 0, i32 1
  %6 = load i32, i32* %iDist, align 4
  %7 = load i32*, i32** %piDist.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %iPrev = getelementptr inbounds %struct._QITEM, %struct._QITEM* %8, i32 0, i32 2
  %9 = load i32, i32* %iPrev, align 4
  %10 = load i32*, i32** %piPrev.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %qNext = getelementptr inbounds %struct._QITEM, %struct._QITEM* %11, i32 0, i32 3
  %12 = load %struct._QITEM*, %struct._QITEM** %qNext, align 8
  store %struct._QITEM* %12, %struct._QITEM** @qHead, align 8
  %13 = load %struct._QITEM*, %struct._QITEM** %qKill, align 8
  %14 = bitcast %struct._QITEM* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load i32, i32* @g_qCount, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @g_qCount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @qcount() #0 {
entry:
  %0 = load i32, i32* @g_qCount, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @dijkstra(i32 %chStart, i32 %chEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %chStart.addr = alloca i32, align 4
  %chEnd.addr = alloca i32, align 4
  store i32 %chStart, i32* %chStart.addr, align 4
  store i32 %chEnd, i32* %chEnd.addr, align 4
  store i32 0, i32* @ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @ch, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @ch, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom
  %iDist = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx, i32 0, i32 0
  store i32 9999, i32* %iDist, align 4
  %2 = load i32, i32* @ch, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom1
  %iPrev = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx2, i32 0, i32 1
  store i32 9999, i32* %iPrev, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @ch, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %chStart.addr, align 4
  %5 = load i32, i32* %chEnd.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.48

if.else:                                          ; preds = %for.end
  %6 = load i32, i32* %chStart.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom4
  %iDist6 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx5, i32 0, i32 0
  store i32 0, i32* %iDist6, align 4
  %7 = load i32, i32* %chStart.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom7
  %iPrev9 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx8, i32 0, i32 1
  store i32 9999, i32* %iPrev9, align 4
  %8 = load i32, i32* %chStart.addr, align 4
  call void @enqueue(i32 %8, i32 0, i32 9999)
  br label %while.cond

while.cond:                                       ; preds = %for.end.41, %if.else
  %call10 = call i32 @qcount()
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @dequeue(i32* @iNode, i32* @iDist, i32* @iPrev)
  store i32 0, i32* @i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.39, %while.body
  %9 = load i32, i32* @i, align 4
  %cmp13 = icmp slt i32 %9, 100
  br i1 %cmp13, label %for.body.14, label %for.end.41

for.body.14:                                      ; preds = %for.cond.12
  %10 = load i32, i32* @i, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load i32, i32* @iNode, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx18, align 4
  store i32 %12, i32* @iCost, align 4
  %cmp19 = icmp ne i32 %12, 9999
  br i1 %cmp19, label %if.then.20, label %if.end.38

if.then.20:                                       ; preds = %for.body.14
  %13 = load i32, i32* @i, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom21
  %iDist23 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx22, i32 0, i32 0
  %14 = load i32, i32* %iDist23, align 4
  %cmp24 = icmp eq i32 9999, %14
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %15 = load i32, i32* @i, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom25
  %iDist27 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx26, i32 0, i32 0
  %16 = load i32, i32* %iDist27, align 4
  %17 = load i32, i32* @iCost, align 4
  %18 = load i32, i32* @iDist, align 4
  %add = add nsw i32 %17, %18
  %cmp28 = icmp sgt i32 %16, %add
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %lor.lhs.false, %if.then.20
  %19 = load i32, i32* @iDist, align 4
  %20 = load i32, i32* @iCost, align 4
  %add30 = add nsw i32 %19, %20
  %21 = load i32, i32* @i, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom31
  %iDist33 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx32, i32 0, i32 0
  store i32 %add30, i32* %iDist33, align 4
  %22 = load i32, i32* @iNode, align 4
  %23 = load i32, i32* @i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom34
  %iPrev36 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx35, i32 0, i32 1
  store i32 %22, i32* %iPrev36, align 4
  %24 = load i32, i32* @i, align 4
  %25 = load i32, i32* @iDist, align 4
  %26 = load i32, i32* @iCost, align 4
  %add37 = add nsw i32 %25, %26
  %27 = load i32, i32* @iNode, align 4
  call void @enqueue(i32 %24, i32 %add37, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.then.29, %lor.lhs.false
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %for.body.14
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %28 = load i32, i32* @i, align 4
  %inc40 = add nsw i32 %28, 1
  store i32 %inc40, i32* @i, align 4
  br label %for.cond.12

for.end.41:                                       ; preds = %for.cond.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %chEnd.addr, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %idxprom42
  %iDist44 = getelementptr inbounds %struct._NODE, %struct._NODE* %arrayidx43, i32 0, i32 0
  %30 = load i32, i32* %iDist44, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %30)
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %31 = load i32, i32* %chEnd.addr, align 4
  call void @print_path(%struct._NODE* getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i32 0, i32 0), i32 %31)
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %while.end, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 100
  br i1 %cmp3, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %6, 100
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %k)
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx9, i32 0, i64 %idxprom
  store i32 %8, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 50, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.18, %for.end.13
  %13 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %13, 100
  br i1 %cmp15, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.14
  %14 = load i32, i32* %j, align 4
  %rem = srem i32 %14, 100
  store i32 %rem, i32* %j, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %call17 = call i32 @dijkstra(i32 %15, i32 %16)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.16
  %17 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.14

for.end.21:                                       ; preds = %for.cond.14
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
