; ModuleID = './MultiSource.Benchmarks.Ptrdist/2.ft.graph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@generatedEdges = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Could not malloc\0A\00", align 1
@id = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Vertex %d is connected to:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" %d(%d)[%d]\00", align 1

; Function Attrs: nounwind uwtable
define %struct._Vertices* @GenGraph(i32 %nVertex, i32 %nEdge) #0 {
entry:
  %nVertex.addr = alloca i32, align 4
  %nEdge.addr = alloca i32, align 4
  %graph = alloca %struct._Vertices*, align 8
  store i32 %nVertex, i32* %nVertex.addr, align 4
  store i32 %nEdge, i32* %nEdge.addr, align 4
  store i32 0, i32* @generatedEdges, align 4
  %0 = load i32, i32* %nVertex.addr, align 4
  %call = call %struct._Vertices* @GenTree(i32 %0)
  store %struct._Vertices* %call, %struct._Vertices** %graph, align 8
  %1 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %2 = load i32, i32* %nVertex.addr, align 4
  %3 = load i32, i32* %nEdge.addr, align 4
  %4 = load i32, i32* %nVertex.addr, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  %call1 = call %struct._Vertices* @AddEdges(%struct._Vertices* %1, i32 %2, i32 %add)
  store %struct._Vertices* %call1, %struct._Vertices** %graph, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  ret %struct._Vertices* %5
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @GenTree(i32 %nVertex) #0 {
entry:
  %nVertex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %weight = alloca i32, align 4
  %vertex = alloca %struct._Vertices*, align 8
  %graph = alloca %struct._Vertices*, align 8
  %edge = alloca %struct._Edges*, align 8
  store i32 %nVertex, i32* %nVertex.addr, align 4
  %call = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %call, %struct._Vertices** %graph, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %1 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i32 0, i32 2
  store %struct._Vertices* %0, %struct._Vertices** %next, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nVertex.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %call1, %struct._Vertices** %vertex, align 8
  %call2 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %call2, %struct._Edges** %edge, align 8
  %4 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 1
  store %struct._Edges* %4, %struct._Edges** %edges, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %call3 = call i64 @random() #4
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %rem = srem i64 %call3, %conv
  %conv4 = trunc i64 %rem to i32
  %call5 = call %struct._Vertices* @PickVertex(%struct._Vertices* %6, i32 %conv4)
  %8 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex6 = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i32 0, i32 2
  store %struct._Vertices* %call5, %struct._Vertices** %vertex6, align 8
  %call7 = call i64 @random() #4
  %add = add nsw i64 %call7, 1
  %rem8 = srem i64 %add, 100
  %conv9 = trunc i64 %rem8 to i32
  store i32 %conv9, i32* %weight, align 4
  %9 = load i32, i32* %weight, align 4
  %10 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight10 = getelementptr inbounds %struct._Edges, %struct._Edges* %10, i32 0, i32 0
  store i32 %9, i32* %weight10, align 4
  %11 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %12 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %source = getelementptr inbounds %struct._Edges, %struct._Edges* %12, i32 0, i32 1
  store %struct._Vertices* %11, %struct._Vertices** %source, align 8
  %13 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %next11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %13, i32 0, i32 2
  %14 = load %struct._Vertices*, %struct._Vertices** %next11, align 8
  %15 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %15, i32 0, i32 2
  store %struct._Vertices* %14, %struct._Vertices** %next12, align 8
  %16 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  %next13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 2
  store %struct._Vertices* %16, %struct._Vertices** %next13, align 8
  %call14 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %call14, %struct._Edges** %edge, align 8
  %18 = load i32, i32* %weight, align 4
  %19 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight15 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 0
  store i32 %18, i32* %weight15, align 4
  %20 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges16 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 1
  %21 = load %struct._Edges*, %struct._Edges** %edges16, align 8
  %vertex17 = getelementptr inbounds %struct._Edges, %struct._Edges* %21, i32 0, i32 2
  %22 = load %struct._Vertices*, %struct._Vertices** %vertex17, align 8
  %23 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %source18 = getelementptr inbounds %struct._Edges, %struct._Edges* %23, i32 0, i32 1
  store %struct._Vertices* %22, %struct._Vertices** %source18, align 8
  %24 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %25 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex19 = getelementptr inbounds %struct._Edges, %struct._Edges* %25, i32 0, i32 2
  store %struct._Vertices* %24, %struct._Vertices** %vertex19, align 8
  %26 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges20 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %26, i32 0, i32 1
  %27 = load %struct._Edges*, %struct._Edges** %edges20, align 8
  %vertex21 = getelementptr inbounds %struct._Edges, %struct._Edges* %27, i32 0, i32 2
  %28 = load %struct._Vertices*, %struct._Vertices** %vertex21, align 8
  %edges22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %28, i32 0, i32 1
  %29 = load %struct._Edges*, %struct._Edges** %edges22, align 8
  %30 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next23 = getelementptr inbounds %struct._Edges, %struct._Edges* %30, i32 0, i32 3
  store %struct._Edges* %29, %struct._Edges** %next23, align 8
  %31 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %32 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges24 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %32, i32 0, i32 1
  %33 = load %struct._Edges*, %struct._Edges** %edges24, align 8
  %vertex25 = getelementptr inbounds %struct._Edges, %struct._Edges* %33, i32 0, i32 2
  %34 = load %struct._Vertices*, %struct._Vertices** %vertex25, align 8
  %edges26 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %34, i32 0, i32 1
  store %struct._Edges* %31, %struct._Edges** %edges26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._Vertices*, %struct._Vertices** %graph, align 8
  ret %struct._Vertices* %36
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @AddEdges(%struct._Vertices* %graph, i32 %nVertex, i32 %nEdge) #0 {
entry:
  %graph.addr = alloca %struct._Vertices*, align 8
  %nVertex.addr = alloca i32, align 4
  %nEdge.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vertex1 = alloca %struct._Vertices*, align 8
  %vertex2 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %graph, %struct._Vertices** %graph.addr, align 8
  store i32 %nVertex, i32* %nVertex.addr, align 4
  store i32 %nEdge, i32* %nEdge.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nEdge.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %2 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %call = call i64 @random() #4
  %3 = load i32, i32* %nVertex.addr, align 4
  %conv = sext i32 %3 to i64
  %rem = srem i64 %call, %conv
  %conv1 = trunc i64 %rem to i32
  %call2 = call %struct._Vertices* @PickVertex(%struct._Vertices* %2, i32 %conv1)
  store %struct._Vertices* %call2, %struct._Vertices** %vertex1, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex1, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 2
  %5 = load %struct._Vertices*, %struct._Vertices** %next, align 8
  %call3 = call i64 @random() #4
  %6 = load i32, i32* %nVertex.addr, align 4
  %conv4 = sext i32 %6 to i64
  %rem5 = srem i64 %call3, %conv4
  %sub = sub nsw i64 %rem5, 1
  %conv6 = trunc i64 %sub to i32
  %call7 = call %struct._Vertices* @PickVertex(%struct._Vertices* %5, i32 %conv6)
  store %struct._Vertices* %call7, %struct._Vertices** %vertex2, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load %struct._Vertices*, %struct._Vertices** %vertex1, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %vertex2, align 8
  %call8 = call i32 @Duplicate(%struct._Vertices* %7, %struct._Vertices* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct._Vertices*, %struct._Vertices** %vertex1, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %vertex2, align 8
  call void @Connect(%struct._Vertices* %9, %struct._Vertices* %10)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  ret %struct._Vertices* %12
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @PickVertex(%struct._Vertices* %graph, i32 %whichVertex) #0 {
entry:
  %graph.addr = alloca %struct._Vertices*, align 8
  %whichVertex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._Vertices* %graph, %struct._Vertices** %graph.addr, align 8
  store i32 %whichVertex, i32* %whichVertex.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %whichVertex.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i32 0, i32 2
  %3 = load %struct._Vertices*, %struct._Vertices** %next, align 8
  store %struct._Vertices* %3, %struct._Vertices** %graph.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  ret %struct._Vertices* %5
}

; Function Attrs: nounwind
declare i64 @random() #1

; Function Attrs: nounwind uwtable
define i32 @Duplicate(%struct._Vertices* %vertex1, %struct._Vertices* %vertex2) #0 {
entry:
  %retval = alloca i32, align 4
  %vertex1.addr = alloca %struct._Vertices*, align 8
  %vertex2.addr = alloca %struct._Vertices*, align 8
  %edge = alloca %struct._Edges*, align 8
  store %struct._Vertices* %vertex1, %struct._Vertices** %vertex1.addr, align 8
  store %struct._Vertices* %vertex2, %struct._Vertices** %vertex2.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %vertex1.addr, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 1
  %1 = load %struct._Edges*, %struct._Edges** %edges, align 8
  store %struct._Edges* %1, %struct._Edges** %edge, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %cmp = icmp ne %struct._Edges* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex = getelementptr inbounds %struct._Edges, %struct._Edges* %3, i32 0, i32 2
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %vertex2.addr, align 8
  %cmp1 = icmp eq %struct._Vertices* %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next = getelementptr inbounds %struct._Edges, %struct._Edges* %6, i32 0, i32 3
  %7 = load %struct._Edges*, %struct._Edges** %next, align 8
  store %struct._Edges* %7, %struct._Edges** %edge, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @Connect(%struct._Vertices* %vertex1, %struct._Vertices* %vertex2) #0 {
entry:
  %vertex1.addr = alloca %struct._Vertices*, align 8
  %vertex2.addr = alloca %struct._Vertices*, align 8
  %weight = alloca i32, align 4
  %edge = alloca %struct._Edges*, align 8
  store %struct._Vertices* %vertex1, %struct._Vertices** %vertex1.addr, align 8
  store %struct._Vertices* %vertex2, %struct._Vertices** %vertex2.addr, align 8
  %call = call i64 @random() #4
  %add = add nsw i64 %call, 1
  %rem = srem i64 %add, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %weight, align 4
  %call1 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %call1, %struct._Edges** %edge, align 8
  %0 = load i32, i32* %weight, align 4
  %1 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight2 = getelementptr inbounds %struct._Edges, %struct._Edges* %1, i32 0, i32 0
  store i32 %0, i32* %weight2, align 4
  %2 = load %struct._Vertices*, %struct._Vertices** %vertex1.addr, align 8
  %3 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %source = getelementptr inbounds %struct._Edges, %struct._Edges* %3, i32 0, i32 1
  store %struct._Vertices* %2, %struct._Vertices** %source, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex2.addr, align 8
  %5 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex = getelementptr inbounds %struct._Edges, %struct._Edges* %5, i32 0, i32 2
  store %struct._Vertices* %4, %struct._Vertices** %vertex, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %vertex1.addr, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %6, i32 0, i32 1
  %7 = load %struct._Edges*, %struct._Edges** %edges, align 8
  %8 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i32 0, i32 3
  store %struct._Edges* %7, %struct._Edges** %next, align 8
  %9 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %vertex1.addr, align 8
  %edges3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 1
  store %struct._Edges* %9, %struct._Edges** %edges3, align 8
  %call4 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %call4, %struct._Edges** %edge, align 8
  %11 = load i32, i32* %weight, align 4
  %12 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight5 = getelementptr inbounds %struct._Edges, %struct._Edges* %12, i32 0, i32 0
  store i32 %11, i32* %weight5, align 4
  %13 = load %struct._Vertices*, %struct._Vertices** %vertex2.addr, align 8
  %14 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %source6 = getelementptr inbounds %struct._Edges, %struct._Edges* %14, i32 0, i32 1
  store %struct._Vertices* %13, %struct._Vertices** %source6, align 8
  %15 = load %struct._Vertices*, %struct._Vertices** %vertex1.addr, align 8
  %16 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex7 = getelementptr inbounds %struct._Edges, %struct._Edges* %16, i32 0, i32 2
  store %struct._Vertices* %15, %struct._Vertices** %vertex7, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %vertex2.addr, align 8
  %edges8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 1
  %18 = load %struct._Edges*, %struct._Edges** %edges8, align 8
  %19 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next9 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 3
  store %struct._Edges* %18, %struct._Edges** %next9, align 8
  %20 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %21 = load %struct._Vertices*, %struct._Vertices** %vertex2.addr, align 8
  %edges10 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %21, i32 0, i32 1
  store %struct._Edges* %20, %struct._Edges** %edges10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @NewVertex() #0 {
entry:
  %vertex = alloca %struct._Vertices*, align 8
  %call = call noalias i8* @malloc(i64 40) #4
  %0 = bitcast i8* %call to %struct._Vertices*
  store %struct._Vertices* %0, %struct._Vertices** %vertex, align 8
  %1 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %cmp = icmp eq %struct._Vertices* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @id, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @id, align 4
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %id = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 0
  store i32 %3, i32* %id, align 4
  %5 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 1
  store %struct._Edges* null, %struct._Edges** %edges, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %6, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %next, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  ret %struct._Vertices* %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct._Edges* @NewEdge() #0 {
entry:
  %edge = alloca %struct._Edges*, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct._Edges*
  store %struct._Edges* %0, %struct._Edges** %edge, align 8
  %1 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %cmp = icmp eq %struct._Edges* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight = getelementptr inbounds %struct._Edges, %struct._Edges* %3, i32 0, i32 0
  store i32 0, i32* %weight, align 4
  %4 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex = getelementptr inbounds %struct._Edges, %struct._Edges* %4, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %vertex, align 8
  %5 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next = getelementptr inbounds %struct._Edges, %struct._Edges* %5, i32 0, i32 3
  store %struct._Edges* null, %struct._Edges** %next, align 8
  %6 = load %struct._Edges*, %struct._Edges** %edge, align 8
  ret %struct._Edges* %6
}

; Function Attrs: nounwind uwtable
define void @PrintGraph(%struct._Vertices* %graph) #0 {
entry:
  %graph.addr = alloca %struct._Vertices*, align 8
  %vertex = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %graph, %struct._Vertices** %graph.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  store %struct._Vertices* %0, %struct._Vertices** %vertex, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %id = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  %3 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  call void @PrintNeighbors(%struct._Vertices* %3)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %next = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 2
  %5 = load %struct._Vertices*, %struct._Vertices** %next, align 8
  store %struct._Vertices* %5, %struct._Vertices** %vertex, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load %struct._Vertices*, %struct._Vertices** %vertex, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %graph.addr, align 8
  %cmp = icmp ne %struct._Vertices* %6, %7
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PrintNeighbors(%struct._Vertices* %vertex) #0 {
entry:
  %vertex.addr = alloca %struct._Vertices*, align 8
  %edge = alloca %struct._Edges*, align 8
  store %struct._Vertices* %vertex, %struct._Vertices** %vertex.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %vertex.addr, align 8
  %edges = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 1
  %1 = load %struct._Edges*, %struct._Edges** %edges, align 8
  store %struct._Edges* %1, %struct._Edges** %edge, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %cmp = icmp ne %struct._Edges* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %vertex1 = getelementptr inbounds %struct._Edges, %struct._Edges* %3, i32 0, i32 2
  %4 = load %struct._Vertices*, %struct._Vertices** %vertex1, align 8
  %id = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 0
  %5 = load i32, i32* %id, align 4
  %6 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %weight = getelementptr inbounds %struct._Edges, %struct._Edges* %6, i32 0, i32 0
  %7 = load i32, i32* %weight, align 4
  %8 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %source = getelementptr inbounds %struct._Edges, %struct._Edges* %8, i32 0, i32 1
  %9 = load %struct._Vertices*, %struct._Vertices** %source, align 8
  %id2 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %9, i32 0, i32 0
  %10 = load i32, i32* %id2, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %5, i32 %7, i32 %10)
  %11 = load %struct._Edges*, %struct._Edges** %edge, align 8
  %next = getelementptr inbounds %struct._Edges, %struct._Edges* %11, i32 0, i32 3
  %12 = load %struct._Edges*, %struct._Edges** %next, align 8
  store %struct._Edges* %12, %struct._Edges** %edge, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
