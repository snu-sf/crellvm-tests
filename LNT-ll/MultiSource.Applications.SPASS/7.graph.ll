; ModuleID = './MultiSource.Applications.SPASS/7.graph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.GRAPHNODE_STRUCT = type { i32, i32, i32, i8*, %struct.LIST_HELP* }
%struct.GRAPH_STRUCT = type { i32, %struct.LIST_HELP*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%d,%d,%d) \00", align 1
@graph_ROOTS = internal global %struct.LIST_HELP* null, align 8
@graph_UNFINISHED = internal global %struct.LIST_HELP* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A%u -> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define void @graph_NodePrint(%struct.GRAPHNODE_STRUCT* %Node) #0 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %0)
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call1 = call i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %1)
  %2 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call2 = call i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %2)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %call, i32 %call1, i32 %call2)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %number = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %dfs_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 1
  %1 = load i32, i32* %dfs_num, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %comp_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 2
  %1 = load i32, i32* %comp_num, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct.GRAPH_STRUCT* @graph_Create() #0 {
entry:
  %result = alloca %struct.GRAPH_STRUCT*, align 8
  %call = call i8* @memory_Malloc(i32 24)
  %0 = bitcast i8* %call to %struct.GRAPH_STRUCT*
  store %struct.GRAPH_STRUCT* %0, %struct.GRAPH_STRUCT** %result, align 8
  %1 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %result, align 8
  %size = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %1, i32 0, i32 0
  store i32 0, i32* %size, align 4
  %2 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %result, align 8
  %dfscount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %2, i32 0, i32 2
  store i32 0, i32* %dfscount, align 4
  %3 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %result, align 8
  %compcount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %3, i32 0, i32 3
  store i32 0, i32* %compcount, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %4 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %result, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %4, i32 0, i32 1
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %nodes, align 8
  %5 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %result, align 8
  ret %struct.GRAPH_STRUCT* %5
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define void @graph_Delete(%struct.GRAPH_STRUCT* %Graph) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes1 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %2, i32 0, i32 1
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.GRAPHNODE_STRUCT*
  %call3 = call %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %4)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %5 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes4 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %5, i32 0, i32 1
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes4, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  call void @memory_Free(i8* %call5, i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes6 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %7, i32 0, i32 1
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes6, align 8
  %call7 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %8)
  %9 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes8 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %9, i32 0, i32 1
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %nodes8, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %11 = bitcast %struct.GRAPH_STRUCT* %10 to i8*
  call void @memory_Free(i8* %11, i32 24)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Current = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %L.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  call void @list_Free(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %neighbors, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #2 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #4
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: nounwind uwtable
define %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %Graph, i32 %Number) #0 {
entry:
  %retval = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %Number.addr = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.GRAPHNODE_STRUCT*
  %call2 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %4)
  %5 = load i32, i32* %Number.addr, align 4
  %cmp = icmp eq i32 %call2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call3 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %7, %struct.GRAPHNODE_STRUCT** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.GRAPHNODE_STRUCT* null, %struct.GRAPHNODE_STRUCT** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %retval
  ret %struct.GRAPHNODE_STRUCT* %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define %struct.GRAPHNODE_STRUCT* @graph_AddNode(%struct.GRAPH_STRUCT* %Graph, i32 %Number) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %Number.addr = alloca i32, align 4
  %result = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %1 = load i32, i32* %Number.addr, align 4
  %call = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %0, i32 %1)
  store %struct.GRAPHNODE_STRUCT* %call, %struct.GRAPHNODE_STRUCT** %result, align 8
  %2 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %cmp = icmp eq %struct.GRAPHNODE_STRUCT* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @memory_Malloc(i32 32)
  %3 = bitcast i8* %call1 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %3, %struct.GRAPHNODE_STRUCT** %result, align 8
  %4 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %5 = bitcast %struct.GRAPHNODE_STRUCT* %4 to i8*
  %6 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %6, i32 0, i32 1
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %7)
  %8 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes3 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %8, i32 0, i32 1
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %nodes3, align 8
  %9 = load i32, i32* %Number.addr, align 4
  %10 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %number = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %10, i32 0, i32 0
  store i32 %9, i32* %number, align 4
  %11 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %dfs_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %11, i32 0, i32 1
  store i32 -1, i32* %dfs_num, align 4
  %12 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %comp_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %12, i32 0, i32 2
  store i32 -1, i32* %comp_num, align 4
  %13 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %info = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %13, i32 0, i32 3
  store i8* null, i8** %info, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %14 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %14, i32 0, i32 4
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %neighbors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %result, align 8
  ret %struct.GRAPHNODE_STRUCT* %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #2 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: nounwind uwtable
define void @graph_AddEdge(%struct.GRAPHNODE_STRUCT* %From, %struct.GRAPHNODE_STRUCT* %To) #0 {
entry:
  %From.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %To.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %From, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  store %struct.GRAPHNODE_STRUCT* %To, %struct.GRAPHNODE_STRUCT** %To.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %To.addr, align 8
  %1 = bitcast %struct.GRAPHNODE_STRUCT* %0 to i8*
  %2 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %2, i32 0, i32 4
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %neighbors, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  %neighbors1 = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %4, i32 0, i32 4
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %neighbors1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT* %From, %struct.GRAPHNODE_STRUCT* %To) #0 {
entry:
  %From.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %To.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %From, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  store %struct.GRAPHNODE_STRUCT* %To, %struct.GRAPHNODE_STRUCT** %To.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %neighbors, align 8
  %2 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %To.addr, align 8
  %3 = bitcast %struct.GRAPHNODE_STRUCT* %2 to i8*
  %call = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %1, i8* %3)
  %4 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %From.addr, align 8
  %neighbors1 = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %4, i32 0, i32 4
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %neighbors1, align 8
  ret void
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

; Function Attrs: nounwind uwtable
define void @graph_DeleteDuplicateEdges(%struct.GRAPH_STRUCT* %Graph) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %n = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %call = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %3, %struct.GRAPHNODE_STRUCT** %n, align 8
  %4 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %4, i32 0, i32 4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %neighbors, align 8
  %call3 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %5)
  %6 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %neighbors4 = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %6, i32 0, i32 4
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %neighbors4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %Graph) #2 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define void @graph_SortNodes(%struct.GRAPH_STRUCT* %Graph, i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)* %SortFunction) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %SortFunction.addr = alloca i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  store i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)* %SortFunction, i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)** %SortFunction.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %call = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %0)
  %1 = load i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)*, i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)** %SortFunction.addr, align 8
  %2 = bitcast i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)* %1 to i32 (i8*, i8*)*
  %call1 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %call, i32 (i8*, i8*)* %2)
  %3 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %3, i32 0, i32 1
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %nodes, align 8
  ret void
}

declare %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define i32 @graph_StronglyConnectedComponents(%struct.GRAPH_STRUCT* %Graph) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %dfscount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 2
  %1 = load i32, i32* %dfscount, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  call void @graph_ReinitDFS(%struct.GRAPH_STRUCT* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %3 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %call2 = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.GRAPHNODE_STRUCT*
  %call5 = call i32 @graph_NodeVisited(%struct.GRAPHNODE_STRUCT* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %7 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call8 to %struct.GRAPHNODE_STRUCT*
  call void @graph_InternSCC(%struct.GRAPH_STRUCT* %7, %struct.GRAPHNODE_STRUCT* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %compcount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %11, i32 0, i32 3
  %12 = load i32, i32* %compcount, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @graph_ReinitDFS(%struct.GRAPH_STRUCT* %Graph) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %dfscount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 2
  store i32 0, i32* %dfscount, align 4
  %1 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %compcount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %1, i32 0, i32 3
  store i32 0, i32* %compcount, align 4
  %2 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %call = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %2)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.GRAPHNODE_STRUCT*
  call void @graph_NodeSetDfsNum(%struct.GRAPHNODE_STRUCT* %5, i32 -1)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call3 to %struct.GRAPHNODE_STRUCT*
  call void @graph_NodeSetCompNum(%struct.GRAPHNODE_STRUCT* %7, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeVisited(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call = call i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %0)
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @graph_InternSCC(%struct.GRAPH_STRUCT* %Graph, %struct.GRAPHNODE_STRUCT* %Node) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %n = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %act_dfs = alloca i32, align 4
  %dfs_num_of_n = alloca i32, align 4
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %dfscount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 2
  %1 = load i32, i32* %dfscount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %dfscount, align 4
  store i32 %1, i32* %act_dfs, align 4
  %2 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %3 = load i32, i32* %act_dfs, align 4
  call void @graph_NodeSetDfsNum(%struct.GRAPHNODE_STRUCT* %2, i32 %3)
  %4 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %5 = bitcast %struct.GRAPHNODE_STRUCT* %4 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %call = call %struct.LIST_HELP* @list_Push(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %7 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %8 = bitcast %struct.GRAPHNODE_STRUCT* %7 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call1 = call %struct.LIST_HELP* @list_Push(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @graph_ROOTS, align 8
  %10 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call2 = call %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %10)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call4 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %13, %struct.GRAPHNODE_STRUCT** %n, align 8
  %14 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %call5 = call i32 @graph_NodeVisited(%struct.GRAPHNODE_STRUCT* %14)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %15 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %16 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  call void @graph_InternSCC(%struct.GRAPH_STRUCT* %15, %struct.GRAPHNODE_STRUCT* %16)
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %17 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %call7 = call i32 @graph_NodeCompleted(%struct.GRAPHNODE_STRUCT* %17)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %18 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %call10 = call i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %18)
  store i32 %call10, i32* %dfs_num_of_n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call11 = call i32 @list_StackEmpty(%struct.LIST_HELP* %19)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call13 = call i8* @list_Top(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call13 to %struct.GRAPHNODE_STRUCT*
  %call14 = call i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %21)
  %22 = load i32, i32* %dfs_num_of_n, align 4
  %cmp = icmp ugt i32 %call14, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call15 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** @graph_ROOTS, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call18 = call i8* @list_Top(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call18 to %struct.GRAPHNODE_STRUCT*
  %cmp19 = icmp eq %struct.GRAPHNODE_STRUCT* %26, %28
  br i1 %cmp19, label %if.then.20, label %if.end.36

if.then.20:                                       ; preds = %for.end
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.29, %if.then.20
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %call22 = call i32 @list_StackEmpty(%struct.LIST_HELP* %29)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end.28, label %land.rhs.24

land.rhs.24:                                      ; preds = %while.cond.21
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %call25 = call i8* @list_Top(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call25 to %struct.GRAPHNODE_STRUCT*
  %call26 = call i32 @graph_NodeDfsNum(%struct.GRAPHNODE_STRUCT* %31)
  %32 = load i32, i32* %act_dfs, align 4
  %cmp27 = icmp uge i32 %call26, %32
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.24, %while.cond.21
  %33 = phi i1 [ false, %while.cond.21 ], [ %cmp27, %land.rhs.24 ]
  br i1 %33, label %while.body.29, label %while.end.32

while.body.29:                                    ; preds = %land.end.28
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %call30 = call i8* @list_Top(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call30 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %35, %struct.GRAPHNODE_STRUCT** %n, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %call31 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** @graph_UNFINISHED, align 8
  %37 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %38 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %compcount = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %38, i32 0, i32 3
  %39 = load i32, i32* %compcount, align 4
  call void @graph_NodeSetCompNum(%struct.GRAPHNODE_STRUCT* %37, i32 %39)
  br label %while.cond.21

while.end.32:                                     ; preds = %land.end.28
  %40 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %compcount33 = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %40, i32 0, i32 3
  %41 = load i32, i32* %compcount33, align 4
  %inc34 = add i32 %41, 1
  store i32 %inc34, i32* %compcount33, align 4
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** @graph_ROOTS, align 8
  %call35 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** @graph_ROOTS, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %while.end.32, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @graph_Print(%struct.GRAPH_STRUCT* %Graph) #0 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %call = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.GRAPHNODE_STRUCT*
  %call3 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %3)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %call3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.GRAPHNODE_STRUCT*
  %call6 = call %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot10 = xor i1 %tobool9, true
  br i1 %lnot10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.7
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call12 to %struct.GRAPHNODE_STRUCT*
  %call13 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %8)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %call13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #2 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #2 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @graph_NodeSetDfsNum(%struct.GRAPHNODE_STRUCT* %Node, i32 %Number) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %dfs_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %1, i32 0, i32 1
  store i32 %0, i32* %dfs_num, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @graph_NodeSetCompNum(%struct.GRAPHNODE_STRUCT* %Node, i32 %Number) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %comp_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %1, i32 0, i32 2
  store i32 %0, i32* %comp_num, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Push(i8* %I, %struct.LIST_HELP* %L) #2 {
entry:
  %I.addr = alloca i8*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store i8* %I, i8** %I.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load i8*, i8** %I.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %1)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeCompleted(%struct.GRAPHNODE_STRUCT* %Node) #2 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call = call i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %0)
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_StackEmpty(%struct.LIST_HELP* %S) #2 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
