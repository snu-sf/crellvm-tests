; ModuleID = './MultiSource.Benchmarks.Prolangs-C/227.TimberWolfMC.loadpg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pinlist = external global %struct.quad*, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"pin number: %d of net: %d was supposed to \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"lie between nodes: %d and %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"However, the graph doesn't have an edge \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"between these two nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pin number: %d of net: %d \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"specified to lie between nodes: %d and %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"is not within the scope of this channel\0A\00", align 1
@numnodes = external global i32, align 4
@gnodeArray = external global %struct.gnode**, align 8
@pnodeArray = external global %struct.pnode*, align 8
@gtrace = external global i16**, align 8

; Function Attrs: nounwind uwtable
define void @loadpg(i32 %net, i32 %totalnodes) #0 {
entry:
  %net.addr = alloca i32, align 4
  %totalnodes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %pnode = alloca i32, align 4
  %PorE = alloca i32, align 4
  %distance = alloca i32, align 4
  %splitL = alloca i32, align 4
  %capacity = alloca i32, align 4
  %savepnode = alloca i32, align 4
  %bound1 = alloca i32, align 4
  %bound2 = alloca i32, align 4
  %j = alloca i32, align 4
  %pnode1 = alloca i32, align 4
  %pnode2 = alloca i32, align 4
  %qptr = alloca %struct.quad*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %g2ptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %gptr2 = alloca %struct.gnode*, align 8
  %lptr = alloca %struct.list2*, align 8
  store i32 %net, i32* %net.addr, align 4
  store i32 %totalnodes, i32* %totalnodes.addr, align 4
  %0 = load %struct.quad*, %struct.quad** @pinlist, align 8
  store %struct.quad* %0, %struct.quad** %qptr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %totalnodes.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node11 = getelementptr inbounds %struct.quad, %struct.quad* %3, i32 0, i32 1
  %4 = load i32, i32* %node11, align 4
  store i32 %4, i32* %node1, align 4
  %5 = load %struct.quad*, %struct.quad** %qptr, align 8
  %node22 = getelementptr inbounds %struct.quad, %struct.quad* %5, i32 0, i32 2
  %6 = load i32, i32* %node22, align 4
  store i32 %6, i32* %node2, align 4
  %7 = load %struct.quad*, %struct.quad** %qptr, align 8
  %distance3 = getelementptr inbounds %struct.quad, %struct.quad* %7, i32 0, i32 3
  %8 = load i32, i32* %distance3, align 4
  store i32 %8, i32* %distance, align 4
  %9 = load %struct.quad*, %struct.quad** %qptr, align 8
  %PorE4 = getelementptr inbounds %struct.quad, %struct.quad* %9, i32 0, i32 0
  %10 = load i32, i32* %PorE4, align 4
  store i32 %10, i32* %PorE, align 4
  %11 = load i32, i32* %distance, align 4
  %call = call i32 @identify2(i32* %node1, i32* %node2, i32 %11, i32* %bound1, i32* %bound2, %struct.gnode** %gptr)
  store i32 %call, i32* %j, align 4
  %12 = load i32, i32* %j, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %net.addr, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %14, i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %17 = load i32, i32* %node1, align 4
  %18 = load i32, i32* %node2, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %17, i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #4
  unreachable

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %j, align 4
  %cmp10 = icmp eq i32 %21, 1
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %net.addr, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %23, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = load i32, i32* %node1, align 4
  %27 = load i32, i32* %node2, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 %26, i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 0) #4
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end
  %29 = load i32, i32* %bound2, align 4
  %30 = load i32, i32* %bound1, align 4
  %sub = sub nsw i32 %29, %30
  store i32 %sub, i32* %splitL, align 4
  %31 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %capacity16 = getelementptr inbounds %struct.gnode, %struct.gnode* %31, i32 0, i32 4
  %32 = load i32, i32* %capacity16, align 4
  store i32 %32, i32* %capacity, align 4
  %33 = load i32, i32* %node1, align 4
  %34 = load i32, i32* @numnodes, align 4
  %cmp17 = icmp sle i32 %33, %34
  br i1 %cmp17, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.end.15
  %35 = load i32, i32* %node2, align 4
  %36 = load i32, i32* @numnodes, align 4
  %cmp18 = icmp sle i32 %35, %36
  br i1 %cmp18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %land.lhs.true
  %37 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %37, i32 0, i32 2
  store i32 1000000000, i32* %length, align 4
  %38 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %38, i32 0, i32 3
  store i32 1000000000, i32* %cost, align 4
  %39 = load i32, i32* %node2, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.gnode*, %struct.gnode** %40, i64 %idxprom
  %41 = load %struct.gnode*, %struct.gnode** %arrayidx, align 8
  store %struct.gnode* %41, %struct.gnode** %gptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %42 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node = getelementptr inbounds %struct.gnode, %struct.gnode* %42, i32 0, i32 0
  %43 = load i32, i32* %node, align 4
  %44 = load i32, i32* %node1, align 4
  %cmp20 = icmp ne i32 %43, %44
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %45, i32 0, i32 7
  %46 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %46, %struct.gnode** %gptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length21 = getelementptr inbounds %struct.gnode, %struct.gnode* %47, i32 0, i32 2
  store i32 1000000000, i32* %length21, align 4
  %48 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost22 = getelementptr inbounds %struct.gnode, %struct.gnode* %48, i32 0, i32 3
  store i32 1000000000, i32* %cost22, align 4
  br label %if.end.69

if.else.23:                                       ; preds = %land.lhs.true, %if.end.15
  %49 = load i32, i32* %node1, align 4
  %idxprom24 = sext i32 %49 to i64
  %50 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx25 = getelementptr inbounds %struct.gnode*, %struct.gnode** %50, i64 %idxprom24
  %51 = load %struct.gnode*, %struct.gnode** %arrayidx25, align 8
  %52 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp26 = icmp eq %struct.gnode* %51, %52
  br i1 %cmp26, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %if.else.23
  %53 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next28 = getelementptr inbounds %struct.gnode, %struct.gnode* %53, i32 0, i32 7
  %54 = load %struct.gnode*, %struct.gnode** %next28, align 8
  %55 = load i32, i32* %node1, align 4
  %idxprom29 = sext i32 %55 to i64
  %56 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx30 = getelementptr inbounds %struct.gnode*, %struct.gnode** %56, i64 %idxprom29
  store %struct.gnode* %54, %struct.gnode** %arrayidx30, align 8
  %57 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %58 = bitcast %struct.gnode* %57 to i8*
  call void @free(i8* %58) #5
  br label %if.end.42

if.else.31:                                       ; preds = %if.else.23
  %59 = load i32, i32* %node1, align 4
  %idxprom32 = sext i32 %59 to i64
  %60 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx33 = getelementptr inbounds %struct.gnode*, %struct.gnode** %60, i64 %idxprom32
  %61 = load %struct.gnode*, %struct.gnode** %arrayidx33, align 8
  store %struct.gnode* %61, %struct.gnode** %g2ptr, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.37, %if.else.31
  %62 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next35 = getelementptr inbounds %struct.gnode, %struct.gnode* %62, i32 0, i32 7
  %63 = load %struct.gnode*, %struct.gnode** %next35, align 8
  %64 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp36 = icmp ne %struct.gnode* %63, %64
  br i1 %cmp36, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %while.cond.34
  %65 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next38 = getelementptr inbounds %struct.gnode, %struct.gnode* %65, i32 0, i32 7
  %66 = load %struct.gnode*, %struct.gnode** %next38, align 8
  store %struct.gnode* %66, %struct.gnode** %g2ptr, align 8
  br label %while.cond.34

while.end.39:                                     ; preds = %while.cond.34
  %67 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next40 = getelementptr inbounds %struct.gnode, %struct.gnode* %67, i32 0, i32 7
  %68 = load %struct.gnode*, %struct.gnode** %next40, align 8
  %69 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next41 = getelementptr inbounds %struct.gnode, %struct.gnode* %69, i32 0, i32 7
  store %struct.gnode* %68, %struct.gnode** %next41, align 8
  %70 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %71 = bitcast %struct.gnode* %70 to i8*
  call void @free(i8* %71) #5
  br label %if.end.42

if.end.42:                                        ; preds = %while.end.39, %if.then.27
  %72 = load i32, i32* %node2, align 4
  %idxprom43 = sext i32 %72 to i64
  %73 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx44 = getelementptr inbounds %struct.gnode*, %struct.gnode** %73, i64 %idxprom43
  %74 = load %struct.gnode*, %struct.gnode** %arrayidx44, align 8
  %node45 = getelementptr inbounds %struct.gnode, %struct.gnode* %74, i32 0, i32 0
  %75 = load i32, i32* %node45, align 4
  %76 = load i32, i32* %node1, align 4
  %cmp46 = icmp eq i32 %75, %76
  br i1 %cmp46, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %if.end.42
  %77 = load i32, i32* %node2, align 4
  %idxprom48 = sext i32 %77 to i64
  %78 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx49 = getelementptr inbounds %struct.gnode*, %struct.gnode** %78, i64 %idxprom48
  %79 = load %struct.gnode*, %struct.gnode** %arrayidx49, align 8
  store %struct.gnode* %79, %struct.gnode** %gptr, align 8
  %80 = load i32, i32* %node2, align 4
  %idxprom50 = sext i32 %80 to i64
  %81 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx51 = getelementptr inbounds %struct.gnode*, %struct.gnode** %81, i64 %idxprom50
  %82 = load %struct.gnode*, %struct.gnode** %arrayidx51, align 8
  %next52 = getelementptr inbounds %struct.gnode, %struct.gnode* %82, i32 0, i32 7
  %83 = load %struct.gnode*, %struct.gnode** %next52, align 8
  %84 = load i32, i32* %node2, align 4
  %idxprom53 = sext i32 %84 to i64
  %85 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx54 = getelementptr inbounds %struct.gnode*, %struct.gnode** %85, i64 %idxprom53
  store %struct.gnode* %83, %struct.gnode** %arrayidx54, align 8
  %86 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %87 = bitcast %struct.gnode* %86 to i8*
  call void @free(i8* %87) #5
  br label %if.end.68

if.else.55:                                       ; preds = %if.end.42
  %88 = load i32, i32* %node2, align 4
  %idxprom56 = sext i32 %88 to i64
  %89 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx57 = getelementptr inbounds %struct.gnode*, %struct.gnode** %89, i64 %idxprom56
  %90 = load %struct.gnode*, %struct.gnode** %arrayidx57, align 8
  store %struct.gnode* %90, %struct.gnode** %g2ptr, align 8
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.62, %if.else.55
  %91 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next59 = getelementptr inbounds %struct.gnode, %struct.gnode* %91, i32 0, i32 7
  %92 = load %struct.gnode*, %struct.gnode** %next59, align 8
  %node60 = getelementptr inbounds %struct.gnode, %struct.gnode* %92, i32 0, i32 0
  %93 = load i32, i32* %node60, align 4
  %94 = load i32, i32* %node1, align 4
  %cmp61 = icmp ne i32 %93, %94
  br i1 %cmp61, label %while.body.62, label %while.end.64

while.body.62:                                    ; preds = %while.cond.58
  %95 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next63 = getelementptr inbounds %struct.gnode, %struct.gnode* %95, i32 0, i32 7
  %96 = load %struct.gnode*, %struct.gnode** %next63, align 8
  store %struct.gnode* %96, %struct.gnode** %g2ptr, align 8
  br label %while.cond.58

while.end.64:                                     ; preds = %while.cond.58
  %97 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next65 = getelementptr inbounds %struct.gnode, %struct.gnode* %97, i32 0, i32 7
  %98 = load %struct.gnode*, %struct.gnode** %next65, align 8
  store %struct.gnode* %98, %struct.gnode** %gptr, align 8
  %99 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next66 = getelementptr inbounds %struct.gnode, %struct.gnode* %99, i32 0, i32 7
  %100 = load %struct.gnode*, %struct.gnode** %next66, align 8
  %101 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  %next67 = getelementptr inbounds %struct.gnode, %struct.gnode* %101, i32 0, i32 7
  store %struct.gnode* %100, %struct.gnode** %next67, align 8
  %102 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %103 = bitcast %struct.gnode* %102 to i8*
  call void @free(i8* %103) #5
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.64, %if.then.47
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %while.end
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* @numnodes, align 4
  %add = add nsw i32 %104, %105
  store i32 %add, i32* %pnode, align 4
  %106 = load i32, i32* %PorE, align 4
  %cmp70 = icmp eq i32 %106, 1
  br i1 %cmp70, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.end.69
  %107 = load i32, i32* %i, align 4
  store i32 %107, i32* %savepnode, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %108 to i64
  %109 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx73 = getelementptr inbounds %struct.pnode, %struct.pnode* %109, i64 %idxprom72
  %eptr = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx73, i32 0, i32 0
  store i32 0, i32* %eptr, align 4
  br label %if.end.92

if.else.74:                                       ; preds = %if.end.69
  %110 = load i32, i32* %savepnode, align 4
  %idxprom75 = sext i32 %110 to i64
  %111 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx76 = getelementptr inbounds %struct.pnode, %struct.pnode* %111, i64 %idxprom75
  %equiv = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx76, i32 0, i32 2
  %112 = load %struct.list2*, %struct.list2** %equiv, align 8
  store %struct.list2* %112, %struct.list2** %lptr, align 8
  %113 = load i32, i32* %savepnode, align 4
  %114 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %114 to i64
  %115 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx78 = getelementptr inbounds %struct.pnode, %struct.pnode* %115, i64 %idxprom77
  %eptr79 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx78, i32 0, i32 0
  store i32 %113, i32* %eptr79, align 4
  %call80 = call noalias i8* @malloc(i64 16) #5
  %116 = bitcast i8* %call80 to %struct.list2*
  %117 = load i32, i32* %savepnode, align 4
  %idxprom81 = sext i32 %117 to i64
  %118 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx82 = getelementptr inbounds %struct.pnode, %struct.pnode* %118, i64 %idxprom81
  %equiv83 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx82, i32 0, i32 2
  store %struct.list2* %116, %struct.list2** %equiv83, align 8
  %119 = load %struct.list2*, %struct.list2** %lptr, align 8
  %120 = load i32, i32* %savepnode, align 4
  %idxprom84 = sext i32 %120 to i64
  %121 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx85 = getelementptr inbounds %struct.pnode, %struct.pnode* %121, i64 %idxprom84
  %equiv86 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx85, i32 0, i32 2
  %122 = load %struct.list2*, %struct.list2** %equiv86, align 8
  %next87 = getelementptr inbounds %struct.list2, %struct.list2* %122, i32 0, i32 1
  store %struct.list2* %119, %struct.list2** %next87, align 8
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %savepnode, align 4
  %idxprom88 = sext i32 %124 to i64
  %125 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx89 = getelementptr inbounds %struct.pnode, %struct.pnode* %125, i64 %idxprom88
  %equiv90 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx89, i32 0, i32 2
  %126 = load %struct.list2*, %struct.list2** %equiv90, align 8
  %node91 = getelementptr inbounds %struct.list2, %struct.list2* %126, i32 0, i32 0
  store i32 %123, i32* %node91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.74, %if.then.71
  %127 = load i32, i32* %bound1, align 4
  %128 = load i32, i32* %distance, align 4
  %sub93 = sub nsw i32 %128, %127
  store i32 %sub93, i32* %distance, align 4
  %call94 = call noalias i8* @malloc(i64 40) #5
  %129 = bitcast i8* %call94 to %struct.gnode*
  %130 = load i32, i32* %pnode, align 4
  %idxprom95 = sext i32 %130 to i64
  %131 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx96 = getelementptr inbounds %struct.gnode*, %struct.gnode** %131, i64 %idxprom95
  store %struct.gnode* %129, %struct.gnode** %arrayidx96, align 8
  %132 = load i32, i32* %node1, align 4
  %133 = load i32, i32* %pnode, align 4
  %idxprom97 = sext i32 %133 to i64
  %134 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx98 = getelementptr inbounds %struct.gnode*, %struct.gnode** %134, i64 %idxprom97
  %135 = load %struct.gnode*, %struct.gnode** %arrayidx98, align 8
  %node99 = getelementptr inbounds %struct.gnode, %struct.gnode* %135, i32 0, i32 0
  store i32 %132, i32* %node99, align 4
  %136 = load i32, i32* %distance, align 4
  %137 = load i32, i32* %pnode, align 4
  %idxprom100 = sext i32 %137 to i64
  %138 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx101 = getelementptr inbounds %struct.gnode*, %struct.gnode** %138, i64 %idxprom100
  %139 = load %struct.gnode*, %struct.gnode** %arrayidx101, align 8
  %length102 = getelementptr inbounds %struct.gnode, %struct.gnode* %139, i32 0, i32 2
  store i32 %136, i32* %length102, align 4
  %140 = load i32, i32* %distance, align 4
  %141 = load i32, i32* %pnode, align 4
  %idxprom103 = sext i32 %141 to i64
  %142 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx104 = getelementptr inbounds %struct.gnode*, %struct.gnode** %142, i64 %idxprom103
  %143 = load %struct.gnode*, %struct.gnode** %arrayidx104, align 8
  %ilength = getelementptr inbounds %struct.gnode, %struct.gnode* %143, i32 0, i32 1
  store i32 %140, i32* %ilength, align 4
  %144 = load i32, i32* %distance, align 4
  %145 = load i32, i32* %pnode, align 4
  %idxprom105 = sext i32 %145 to i64
  %146 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx106 = getelementptr inbounds %struct.gnode*, %struct.gnode** %146, i64 %idxprom105
  %147 = load %struct.gnode*, %struct.gnode** %arrayidx106, align 8
  %cost107 = getelementptr inbounds %struct.gnode, %struct.gnode* %147, i32 0, i32 3
  store i32 %144, i32* %cost107, align 4
  %148 = load i32, i32* %capacity, align 4
  %149 = load i32, i32* %pnode, align 4
  %idxprom108 = sext i32 %149 to i64
  %150 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx109 = getelementptr inbounds %struct.gnode*, %struct.gnode** %150, i64 %idxprom108
  %151 = load %struct.gnode*, %struct.gnode** %arrayidx109, align 8
  %capacity110 = getelementptr inbounds %struct.gnode, %struct.gnode* %151, i32 0, i32 4
  store i32 %148, i32* %capacity110, align 4
  %152 = load i32, i32* %pnode, align 4
  %idxprom111 = sext i32 %152 to i64
  %153 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx112 = getelementptr inbounds %struct.gnode*, %struct.gnode** %153, i64 %idxprom111
  %154 = load %struct.gnode*, %struct.gnode** %arrayidx112, align 8
  %inactive = getelementptr inbounds %struct.gnode, %struct.gnode* %154, i32 0, i32 5
  store i32 0, i32* %inactive, align 4
  %155 = load i32, i32* %pnode, align 4
  %idxprom113 = sext i32 %155 to i64
  %156 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx114 = getelementptr inbounds %struct.gnode*, %struct.gnode** %156, i64 %idxprom113
  %157 = load %struct.gnode*, %struct.gnode** %arrayidx114, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %157, i32 0, i32 6
  store i32 0, i32* %einactive, align 4
  %call115 = call noalias i8* @malloc(i64 40) #5
  %158 = bitcast i8* %call115 to %struct.gnode*
  %159 = load i32, i32* %pnode, align 4
  %idxprom116 = sext i32 %159 to i64
  %160 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx117 = getelementptr inbounds %struct.gnode*, %struct.gnode** %160, i64 %idxprom116
  %161 = load %struct.gnode*, %struct.gnode** %arrayidx117, align 8
  %next118 = getelementptr inbounds %struct.gnode, %struct.gnode* %161, i32 0, i32 7
  store %struct.gnode* %158, %struct.gnode** %next118, align 8
  %162 = load i32, i32* %node2, align 4
  %163 = load i32, i32* %pnode, align 4
  %idxprom119 = sext i32 %163 to i64
  %164 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx120 = getelementptr inbounds %struct.gnode*, %struct.gnode** %164, i64 %idxprom119
  %165 = load %struct.gnode*, %struct.gnode** %arrayidx120, align 8
  %next121 = getelementptr inbounds %struct.gnode, %struct.gnode* %165, i32 0, i32 7
  %166 = load %struct.gnode*, %struct.gnode** %next121, align 8
  %node122 = getelementptr inbounds %struct.gnode, %struct.gnode* %166, i32 0, i32 0
  store i32 %162, i32* %node122, align 4
  %167 = load i32, i32* %splitL, align 4
  %168 = load i32, i32* %distance, align 4
  %sub123 = sub nsw i32 %167, %168
  %169 = load i32, i32* %pnode, align 4
  %idxprom124 = sext i32 %169 to i64
  %170 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx125 = getelementptr inbounds %struct.gnode*, %struct.gnode** %170, i64 %idxprom124
  %171 = load %struct.gnode*, %struct.gnode** %arrayidx125, align 8
  %next126 = getelementptr inbounds %struct.gnode, %struct.gnode* %171, i32 0, i32 7
  %172 = load %struct.gnode*, %struct.gnode** %next126, align 8
  %length127 = getelementptr inbounds %struct.gnode, %struct.gnode* %172, i32 0, i32 2
  store i32 %sub123, i32* %length127, align 4
  %173 = load i32, i32* %splitL, align 4
  %174 = load i32, i32* %distance, align 4
  %sub128 = sub nsw i32 %173, %174
  %175 = load i32, i32* %pnode, align 4
  %idxprom129 = sext i32 %175 to i64
  %176 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx130 = getelementptr inbounds %struct.gnode*, %struct.gnode** %176, i64 %idxprom129
  %177 = load %struct.gnode*, %struct.gnode** %arrayidx130, align 8
  %next131 = getelementptr inbounds %struct.gnode, %struct.gnode* %177, i32 0, i32 7
  %178 = load %struct.gnode*, %struct.gnode** %next131, align 8
  %ilength132 = getelementptr inbounds %struct.gnode, %struct.gnode* %178, i32 0, i32 1
  store i32 %sub128, i32* %ilength132, align 4
  %179 = load i32, i32* %splitL, align 4
  %180 = load i32, i32* %distance, align 4
  %sub133 = sub nsw i32 %179, %180
  %181 = load i32, i32* %pnode, align 4
  %idxprom134 = sext i32 %181 to i64
  %182 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx135 = getelementptr inbounds %struct.gnode*, %struct.gnode** %182, i64 %idxprom134
  %183 = load %struct.gnode*, %struct.gnode** %arrayidx135, align 8
  %next136 = getelementptr inbounds %struct.gnode, %struct.gnode* %183, i32 0, i32 7
  %184 = load %struct.gnode*, %struct.gnode** %next136, align 8
  %cost137 = getelementptr inbounds %struct.gnode, %struct.gnode* %184, i32 0, i32 3
  store i32 %sub133, i32* %cost137, align 4
  %185 = load i32, i32* %capacity, align 4
  %186 = load i32, i32* %pnode, align 4
  %idxprom138 = sext i32 %186 to i64
  %187 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx139 = getelementptr inbounds %struct.gnode*, %struct.gnode** %187, i64 %idxprom138
  %188 = load %struct.gnode*, %struct.gnode** %arrayidx139, align 8
  %next140 = getelementptr inbounds %struct.gnode, %struct.gnode* %188, i32 0, i32 7
  %189 = load %struct.gnode*, %struct.gnode** %next140, align 8
  %capacity141 = getelementptr inbounds %struct.gnode, %struct.gnode* %189, i32 0, i32 4
  store i32 %185, i32* %capacity141, align 4
  %190 = load i32, i32* %pnode, align 4
  %idxprom142 = sext i32 %190 to i64
  %191 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx143 = getelementptr inbounds %struct.gnode*, %struct.gnode** %191, i64 %idxprom142
  %192 = load %struct.gnode*, %struct.gnode** %arrayidx143, align 8
  %next144 = getelementptr inbounds %struct.gnode, %struct.gnode* %192, i32 0, i32 7
  %193 = load %struct.gnode*, %struct.gnode** %next144, align 8
  %inactive145 = getelementptr inbounds %struct.gnode, %struct.gnode* %193, i32 0, i32 5
  store i32 0, i32* %inactive145, align 4
  %194 = load i32, i32* %pnode, align 4
  %idxprom146 = sext i32 %194 to i64
  %195 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx147 = getelementptr inbounds %struct.gnode*, %struct.gnode** %195, i64 %idxprom146
  %196 = load %struct.gnode*, %struct.gnode** %arrayidx147, align 8
  %next148 = getelementptr inbounds %struct.gnode, %struct.gnode* %196, i32 0, i32 7
  %197 = load %struct.gnode*, %struct.gnode** %next148, align 8
  %einactive149 = getelementptr inbounds %struct.gnode, %struct.gnode* %197, i32 0, i32 6
  store i32 0, i32* %einactive149, align 4
  %198 = load i32, i32* %pnode, align 4
  %idxprom150 = sext i32 %198 to i64
  %199 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx151 = getelementptr inbounds %struct.gnode*, %struct.gnode** %199, i64 %idxprom150
  %200 = load %struct.gnode*, %struct.gnode** %arrayidx151, align 8
  %next152 = getelementptr inbounds %struct.gnode, %struct.gnode* %200, i32 0, i32 7
  %201 = load %struct.gnode*, %struct.gnode** %next152, align 8
  %next153 = getelementptr inbounds %struct.gnode, %struct.gnode* %201, i32 0, i32 7
  store %struct.gnode* null, %struct.gnode** %next153, align 8
  %202 = load i32, i32* %node1, align 4
  %idxprom154 = sext i32 %202 to i64
  %203 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx155 = getelementptr inbounds %struct.gnode*, %struct.gnode** %203, i64 %idxprom154
  %204 = load %struct.gnode*, %struct.gnode** %arrayidx155, align 8
  store %struct.gnode* %204, %struct.gnode** %gptr, align 8
  %call156 = call noalias i8* @malloc(i64 40) #5
  %205 = bitcast i8* %call156 to %struct.gnode*
  %206 = load i32, i32* %node1, align 4
  %idxprom157 = sext i32 %206 to i64
  %207 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx158 = getelementptr inbounds %struct.gnode*, %struct.gnode** %207, i64 %idxprom157
  store %struct.gnode* %205, %struct.gnode** %arrayidx158, align 8
  %208 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %209 = load i32, i32* %node1, align 4
  %idxprom159 = sext i32 %209 to i64
  %210 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx160 = getelementptr inbounds %struct.gnode*, %struct.gnode** %210, i64 %idxprom159
  %211 = load %struct.gnode*, %struct.gnode** %arrayidx160, align 8
  %next161 = getelementptr inbounds %struct.gnode, %struct.gnode* %211, i32 0, i32 7
  store %struct.gnode* %208, %struct.gnode** %next161, align 8
  %212 = load i32, i32* %pnode, align 4
  %213 = load i32, i32* %node1, align 4
  %idxprom162 = sext i32 %213 to i64
  %214 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx163 = getelementptr inbounds %struct.gnode*, %struct.gnode** %214, i64 %idxprom162
  %215 = load %struct.gnode*, %struct.gnode** %arrayidx163, align 8
  %node164 = getelementptr inbounds %struct.gnode, %struct.gnode* %215, i32 0, i32 0
  store i32 %212, i32* %node164, align 4
  %216 = load i32, i32* %distance, align 4
  %217 = load i32, i32* %node1, align 4
  %idxprom165 = sext i32 %217 to i64
  %218 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx166 = getelementptr inbounds %struct.gnode*, %struct.gnode** %218, i64 %idxprom165
  %219 = load %struct.gnode*, %struct.gnode** %arrayidx166, align 8
  %ilength167 = getelementptr inbounds %struct.gnode, %struct.gnode* %219, i32 0, i32 1
  store i32 %216, i32* %ilength167, align 4
  %220 = load i32, i32* %distance, align 4
  %221 = load i32, i32* %node1, align 4
  %idxprom168 = sext i32 %221 to i64
  %222 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx169 = getelementptr inbounds %struct.gnode*, %struct.gnode** %222, i64 %idxprom168
  %223 = load %struct.gnode*, %struct.gnode** %arrayidx169, align 8
  %length170 = getelementptr inbounds %struct.gnode, %struct.gnode* %223, i32 0, i32 2
  store i32 %220, i32* %length170, align 4
  %224 = load i32, i32* %distance, align 4
  %225 = load i32, i32* %node1, align 4
  %idxprom171 = sext i32 %225 to i64
  %226 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx172 = getelementptr inbounds %struct.gnode*, %struct.gnode** %226, i64 %idxprom171
  %227 = load %struct.gnode*, %struct.gnode** %arrayidx172, align 8
  %cost173 = getelementptr inbounds %struct.gnode, %struct.gnode* %227, i32 0, i32 3
  store i32 %224, i32* %cost173, align 4
  %228 = load i32, i32* %capacity, align 4
  %229 = load i32, i32* %node1, align 4
  %idxprom174 = sext i32 %229 to i64
  %230 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx175 = getelementptr inbounds %struct.gnode*, %struct.gnode** %230, i64 %idxprom174
  %231 = load %struct.gnode*, %struct.gnode** %arrayidx175, align 8
  %capacity176 = getelementptr inbounds %struct.gnode, %struct.gnode* %231, i32 0, i32 4
  store i32 %228, i32* %capacity176, align 4
  %232 = load i32, i32* %node1, align 4
  %idxprom177 = sext i32 %232 to i64
  %233 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx178 = getelementptr inbounds %struct.gnode*, %struct.gnode** %233, i64 %idxprom177
  %234 = load %struct.gnode*, %struct.gnode** %arrayidx178, align 8
  %inactive179 = getelementptr inbounds %struct.gnode, %struct.gnode* %234, i32 0, i32 5
  store i32 0, i32* %inactive179, align 4
  %235 = load i32, i32* %node1, align 4
  %idxprom180 = sext i32 %235 to i64
  %236 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx181 = getelementptr inbounds %struct.gnode*, %struct.gnode** %236, i64 %idxprom180
  %237 = load %struct.gnode*, %struct.gnode** %arrayidx181, align 8
  %einactive182 = getelementptr inbounds %struct.gnode, %struct.gnode* %237, i32 0, i32 6
  store i32 0, i32* %einactive182, align 4
  %238 = load i32, i32* %node2, align 4
  %idxprom183 = sext i32 %238 to i64
  %239 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx184 = getelementptr inbounds %struct.gnode*, %struct.gnode** %239, i64 %idxprom183
  %240 = load %struct.gnode*, %struct.gnode** %arrayidx184, align 8
  store %struct.gnode* %240, %struct.gnode** %gptr, align 8
  %call185 = call noalias i8* @malloc(i64 40) #5
  %241 = bitcast i8* %call185 to %struct.gnode*
  %242 = load i32, i32* %node2, align 4
  %idxprom186 = sext i32 %242 to i64
  %243 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx187 = getelementptr inbounds %struct.gnode*, %struct.gnode** %243, i64 %idxprom186
  store %struct.gnode* %241, %struct.gnode** %arrayidx187, align 8
  %244 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %245 = load i32, i32* %node2, align 4
  %idxprom188 = sext i32 %245 to i64
  %246 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx189 = getelementptr inbounds %struct.gnode*, %struct.gnode** %246, i64 %idxprom188
  %247 = load %struct.gnode*, %struct.gnode** %arrayidx189, align 8
  %next190 = getelementptr inbounds %struct.gnode, %struct.gnode* %247, i32 0, i32 7
  store %struct.gnode* %244, %struct.gnode** %next190, align 8
  %248 = load i32, i32* %pnode, align 4
  %249 = load i32, i32* %node2, align 4
  %idxprom191 = sext i32 %249 to i64
  %250 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx192 = getelementptr inbounds %struct.gnode*, %struct.gnode** %250, i64 %idxprom191
  %251 = load %struct.gnode*, %struct.gnode** %arrayidx192, align 8
  %node193 = getelementptr inbounds %struct.gnode, %struct.gnode* %251, i32 0, i32 0
  store i32 %248, i32* %node193, align 4
  %252 = load i32, i32* %splitL, align 4
  %253 = load i32, i32* %distance, align 4
  %sub194 = sub nsw i32 %252, %253
  %254 = load i32, i32* %node2, align 4
  %idxprom195 = sext i32 %254 to i64
  %255 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx196 = getelementptr inbounds %struct.gnode*, %struct.gnode** %255, i64 %idxprom195
  %256 = load %struct.gnode*, %struct.gnode** %arrayidx196, align 8
  %ilength197 = getelementptr inbounds %struct.gnode, %struct.gnode* %256, i32 0, i32 1
  store i32 %sub194, i32* %ilength197, align 4
  %257 = load i32, i32* %splitL, align 4
  %258 = load i32, i32* %distance, align 4
  %sub198 = sub nsw i32 %257, %258
  %259 = load i32, i32* %node2, align 4
  %idxprom199 = sext i32 %259 to i64
  %260 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx200 = getelementptr inbounds %struct.gnode*, %struct.gnode** %260, i64 %idxprom199
  %261 = load %struct.gnode*, %struct.gnode** %arrayidx200, align 8
  %length201 = getelementptr inbounds %struct.gnode, %struct.gnode* %261, i32 0, i32 2
  store i32 %sub198, i32* %length201, align 4
  %262 = load i32, i32* %splitL, align 4
  %263 = load i32, i32* %distance, align 4
  %sub202 = sub nsw i32 %262, %263
  %264 = load i32, i32* %node2, align 4
  %idxprom203 = sext i32 %264 to i64
  %265 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx204 = getelementptr inbounds %struct.gnode*, %struct.gnode** %265, i64 %idxprom203
  %266 = load %struct.gnode*, %struct.gnode** %arrayidx204, align 8
  %cost205 = getelementptr inbounds %struct.gnode, %struct.gnode* %266, i32 0, i32 3
  store i32 %sub202, i32* %cost205, align 4
  %267 = load i32, i32* %capacity, align 4
  %268 = load i32, i32* %node2, align 4
  %idxprom206 = sext i32 %268 to i64
  %269 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx207 = getelementptr inbounds %struct.gnode*, %struct.gnode** %269, i64 %idxprom206
  %270 = load %struct.gnode*, %struct.gnode** %arrayidx207, align 8
  %capacity208 = getelementptr inbounds %struct.gnode, %struct.gnode* %270, i32 0, i32 4
  store i32 %267, i32* %capacity208, align 4
  %271 = load i32, i32* %node2, align 4
  %idxprom209 = sext i32 %271 to i64
  %272 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx210 = getelementptr inbounds %struct.gnode*, %struct.gnode** %272, i64 %idxprom209
  %273 = load %struct.gnode*, %struct.gnode** %arrayidx210, align 8
  %inactive211 = getelementptr inbounds %struct.gnode, %struct.gnode* %273, i32 0, i32 5
  store i32 0, i32* %inactive211, align 4
  %274 = load i32, i32* %node2, align 4
  %idxprom212 = sext i32 %274 to i64
  %275 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx213 = getelementptr inbounds %struct.gnode*, %struct.gnode** %275, i64 %idxprom212
  %276 = load %struct.gnode*, %struct.gnode** %arrayidx213, align 8
  %einactive214 = getelementptr inbounds %struct.gnode, %struct.gnode* %276, i32 0, i32 6
  store i32 0, i32* %einactive214, align 4
  %277 = load %struct.quad*, %struct.quad** %qptr, align 8
  %next215 = getelementptr inbounds %struct.quad, %struct.quad* %277, i32 0, i32 4
  %278 = load %struct.quad*, %struct.quad** %next215, align 8
  store %struct.quad* %278, %struct.quad** %qptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %279 = load i32, i32* %i, align 4
  %inc = add nsw i32 %279, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.310, %for.end
  %280 = load i32, i32* %i, align 4
  %281 = load i32, i32* %totalnodes.addr, align 4
  %cmp217 = icmp sle i32 %280, %281
  br i1 %cmp217, label %for.body.218, label %for.end.312

for.body.218:                                     ; preds = %for.cond.216
  %282 = load i32, i32* %i, align 4
  %283 = load i32, i32* @numnodes, align 4
  %add219 = add nsw i32 %282, %283
  store i32 %add219, i32* %pnode1, align 4
  %284 = load i32, i32* %pnode1, align 4
  %idxprom220 = sext i32 %284 to i64
  %285 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx221 = getelementptr inbounds %struct.gnode*, %struct.gnode** %285, i64 %idxprom220
  %286 = load %struct.gnode*, %struct.gnode** %arrayidx221, align 8
  store %struct.gnode* %286, %struct.gnode** %gptr, align 8
  br label %for.cond.222

for.cond.222:                                     ; preds = %cond.end, %for.body.218
  %287 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp223 = icmp ne %struct.gnode* %287, null
  br i1 %cmp223, label %for.body.224, label %for.end.309

for.body.224:                                     ; preds = %for.cond.222
  %288 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node225 = getelementptr inbounds %struct.gnode, %struct.gnode* %288, i32 0, i32 0
  %289 = load i32, i32* %node225, align 4
  store i32 %289, i32* %pnode2, align 4
  %290 = load i32, i32* %pnode2, align 4
  %291 = load i32, i32* @numnodes, align 4
  %sub226 = sub nsw i32 %290, %291
  store i32 %sub226, i32* %j, align 4
  %292 = load i32, i32* %pnode2, align 4
  %293 = load i32, i32* @numnodes, align 4
  %cmp227 = icmp sle i32 %292, %293
  br i1 %cmp227, label %if.then.229, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.224
  %294 = load i32, i32* %j, align 4
  %295 = load i32, i32* %i, align 4
  %cmp228 = icmp slt i32 %294, %295
  br i1 %cmp228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %lor.lhs.false, %for.body.224
  br label %for.inc.306

if.end.230:                                       ; preds = %lor.lhs.false
  %296 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %296 to i64
  %297 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx232 = getelementptr inbounds %struct.pnode, %struct.pnode* %297, i64 %idxprom231
  %eptr233 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx232, i32 0, i32 0
  %298 = load i32, i32* %eptr233, align 4
  %cmp234 = icmp ne i32 %298, 0
  br i1 %cmp234, label %land.lhs.true.235, label %if.else.250

land.lhs.true.235:                                ; preds = %if.end.230
  %299 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %299 to i64
  %300 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx237 = getelementptr inbounds %struct.pnode, %struct.pnode* %300, i64 %idxprom236
  %eptr238 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx237, i32 0, i32 0
  %301 = load i32, i32* %eptr238, align 4
  %cmp239 = icmp ne i32 %301, 0
  br i1 %cmp239, label %if.then.240, label %if.else.250

if.then.240:                                      ; preds = %land.lhs.true.235
  %302 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %302 to i64
  %303 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx242 = getelementptr inbounds %struct.pnode, %struct.pnode* %303, i64 %idxprom241
  %eptr243 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx242, i32 0, i32 0
  %304 = load i32, i32* %eptr243, align 4
  %305 = load i32, i32* %j, align 4
  %idxprom244 = sext i32 %305 to i64
  %306 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx245 = getelementptr inbounds %struct.pnode, %struct.pnode* %306, i64 %idxprom244
  %eptr246 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx245, i32 0, i32 0
  %307 = load i32, i32* %eptr246, align 4
  %cmp247 = icmp ne i32 %304, %307
  br i1 %cmp247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.then.240
  br label %for.inc.306

if.end.249:                                       ; preds = %if.then.240
  br label %if.end.282

if.else.250:                                      ; preds = %land.lhs.true.235, %if.end.230
  %308 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %308 to i64
  %309 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx252 = getelementptr inbounds %struct.pnode, %struct.pnode* %309, i64 %idxprom251
  %eptr253 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx252, i32 0, i32 0
  %310 = load i32, i32* %eptr253, align 4
  %cmp254 = icmp eq i32 %310, 0
  br i1 %cmp254, label %land.lhs.true.255, label %if.else.261

land.lhs.true.255:                                ; preds = %if.else.250
  %311 = load i32, i32* %j, align 4
  %idxprom256 = sext i32 %311 to i64
  %312 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx257 = getelementptr inbounds %struct.pnode, %struct.pnode* %312, i64 %idxprom256
  %eptr258 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx257, i32 0, i32 0
  %313 = load i32, i32* %eptr258, align 4
  %cmp259 = icmp eq i32 %313, 0
  br i1 %cmp259, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %land.lhs.true.255
  br label %for.inc.306

if.else.261:                                      ; preds = %land.lhs.true.255, %if.else.250
  %314 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %314 to i64
  %315 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx263 = getelementptr inbounds %struct.pnode, %struct.pnode* %315, i64 %idxprom262
  %eptr264 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx263, i32 0, i32 0
  %316 = load i32, i32* %eptr264, align 4
  %cmp265 = icmp ne i32 %316, 0
  br i1 %cmp265, label %if.then.266, label %if.else.273

if.then.266:                                      ; preds = %if.else.261
  %317 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %317 to i64
  %318 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx268 = getelementptr inbounds %struct.pnode, %struct.pnode* %318, i64 %idxprom267
  %eptr269 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx268, i32 0, i32 0
  %319 = load i32, i32* %eptr269, align 4
  %320 = load i32, i32* %j, align 4
  %cmp270 = icmp ne i32 %319, %320
  br i1 %cmp270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.266
  br label %for.inc.306

if.end.272:                                       ; preds = %if.then.266
  br label %if.end.280

if.else.273:                                      ; preds = %if.else.261
  %321 = load i32, i32* %j, align 4
  %idxprom274 = sext i32 %321 to i64
  %322 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx275 = getelementptr inbounds %struct.pnode, %struct.pnode* %322, i64 %idxprom274
  %eptr276 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx275, i32 0, i32 0
  %323 = load i32, i32* %eptr276, align 4
  %324 = load i32, i32* %i, align 4
  %cmp277 = icmp ne i32 %323, %324
  br i1 %cmp277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.else.273
  br label %for.inc.306

if.end.279:                                       ; preds = %if.else.273
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.272
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.249
  %325 = load i32, i32* %pnode1, align 4
  %idxprom283 = sext i32 %325 to i64
  %326 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx284 = getelementptr inbounds %struct.gnode*, %struct.gnode** %326, i64 %idxprom283
  %327 = load %struct.gnode*, %struct.gnode** %arrayidx284, align 8
  store %struct.gnode* %327, %struct.gnode** %gptr1, align 8
  %328 = load i32, i32* %pnode2, align 4
  %idxprom285 = sext i32 %328 to i64
  %329 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx286 = getelementptr inbounds %struct.gnode*, %struct.gnode** %329, i64 %idxprom285
  %330 = load %struct.gnode*, %struct.gnode** %arrayidx286, align 8
  store %struct.gnode* %330, %struct.gnode** %gptr2, align 8
  %331 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %331, %struct.gnode** %gptr, align 8
  br label %for.cond.287

for.cond.287:                                     ; preds = %if.end.293, %if.end.282
  %332 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %tobool = icmp ne %struct.gnode* %332, null
  br i1 %tobool, label %for.body.288, label %for.end.295

for.body.288:                                     ; preds = %for.cond.287
  %333 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node289 = getelementptr inbounds %struct.gnode, %struct.gnode* %333, i32 0, i32 0
  %334 = load i32, i32* %node289, align 4
  %335 = load i32, i32* %pnode2, align 4
  %cmp290 = icmp eq i32 %334, %335
  br i1 %cmp290, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %for.body.288
  %336 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost292 = getelementptr inbounds %struct.gnode, %struct.gnode* %336, i32 0, i32 3
  store i32 1000000000, i32* %cost292, align 4
  br label %for.end.295

if.end.293:                                       ; preds = %for.body.288
  %337 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next294 = getelementptr inbounds %struct.gnode, %struct.gnode* %337, i32 0, i32 7
  %338 = load %struct.gnode*, %struct.gnode** %next294, align 8
  store %struct.gnode* %338, %struct.gnode** %gptr, align 8
  br label %for.cond.287

for.end.295:                                      ; preds = %if.then.291, %for.cond.287
  %339 = load %struct.gnode*, %struct.gnode** %gptr2, align 8
  store %struct.gnode* %339, %struct.gnode** %gptr, align 8
  br label %for.cond.296

for.cond.296:                                     ; preds = %if.end.303, %for.end.295
  %340 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %tobool297 = icmp ne %struct.gnode* %340, null
  br i1 %tobool297, label %for.body.298, label %for.end.305

for.body.298:                                     ; preds = %for.cond.296
  %341 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node299 = getelementptr inbounds %struct.gnode, %struct.gnode* %341, i32 0, i32 0
  %342 = load i32, i32* %node299, align 4
  %343 = load i32, i32* %pnode1, align 4
  %cmp300 = icmp eq i32 %342, %343
  br i1 %cmp300, label %if.then.301, label %if.end.303

if.then.301:                                      ; preds = %for.body.298
  %344 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost302 = getelementptr inbounds %struct.gnode, %struct.gnode* %344, i32 0, i32 3
  store i32 1000000000, i32* %cost302, align 4
  br label %for.end.305

if.end.303:                                       ; preds = %for.body.298
  %345 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next304 = getelementptr inbounds %struct.gnode, %struct.gnode* %345, i32 0, i32 7
  %346 = load %struct.gnode*, %struct.gnode** %next304, align 8
  store %struct.gnode* %346, %struct.gnode** %gptr, align 8
  br label %for.cond.296

for.end.305:                                      ; preds = %if.then.301, %for.cond.296
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.end.305, %if.then.278, %if.then.271, %if.then.260, %if.then.248, %if.then.229
  %347 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %tobool307 = icmp ne %struct.gnode* %347, null
  br i1 %tobool307, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.306
  %348 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next308 = getelementptr inbounds %struct.gnode, %struct.gnode* %348, i32 0, i32 7
  %349 = load %struct.gnode*, %struct.gnode** %next308, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.306
  %350 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gnode* [ %349, %cond.true ], [ %350, %cond.false ]
  store %struct.gnode* %cond, %struct.gnode** %gptr, align 8
  br label %for.cond.222

for.end.309:                                      ; preds = %for.cond.222
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.end.309
  %351 = load i32, i32* %i, align 4
  %inc311 = add nsw i32 %351, 1
  store i32 %inc311, i32* %i, align 4
  br label %for.cond.216

for.end.312:                                      ; preds = %for.cond.216
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @identify2(i32* %node1, i32* %node2, i32 %distance, i32* %bound1, i32* %bound2, %struct.gnode** %gpptr) #0 {
entry:
  %retval = alloca i32, align 4
  %node1.addr = alloca i32*, align 8
  %node2.addr = alloca i32*, align 8
  %distance.addr = alloca i32, align 4
  %bound1.addr = alloca i32*, align 8
  %bound2.addr = alloca i32*, align 8
  %gpptr.addr = alloca %struct.gnode**, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %prev = alloca i32, align 4
  %temp = alloca i32, align 4
  %limit = alloca i32, align 4
  store i32* %node1, i32** %node1.addr, align 8
  store i32* %node2, i32** %node2.addr, align 8
  store i32 %distance, i32* %distance.addr, align 4
  store i32* %bound1, i32** %bound1.addr, align 8
  store i32* %bound2, i32** %bound2.addr, align 8
  store %struct.gnode** %gpptr, %struct.gnode*** %gpptr.addr, align 8
  %0 = load i32*, i32** %node1.addr, align 8
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.gnode*, %struct.gnode** %2, i64 %idxprom
  %3 = load %struct.gnode*, %struct.gnode** %arrayidx, align 8
  store %struct.gnode* %3, %struct.gnode** %gptr1, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16**, i16*** @gtrace, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %6, i64 %idxprom1
  %7 = load i16*, i16** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 1, i16* %arrayidx3, align 2
  %8 = load i32*, i32** %node1.addr, align 8
  %9 = load i32, i32* %8, align 4
  %conv = trunc i32 %9 to i16
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i16**, i16*** @gtrace, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %11, i64 %idxprom4
  %12 = load i16*, i16** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %12, i64 1
  store i16 %conv, i16* %arrayidx6, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %count, align 4
  %14 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %14, %struct.gnode** %gptr, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.23, %for.end
  %15 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp8 = icmp ne %struct.gnode* %15, null
  br i1 %cmp8, label %for.body.10, label %for.end.24

for.body.10:                                      ; preds = %for.cond.7
  %16 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %16, i32 0, i32 2
  %17 = load i32, i32* %length, align 4
  %cmp11 = icmp sge i32 %17, 1000000000
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  br label %for.inc.23

if.end:                                           ; preds = %for.body.10
  %18 = load i32, i32* %count, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %count, align 4
  %19 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node = getelementptr inbounds %struct.gnode, %struct.gnode* %19, i32 0, i32 0
  %20 = load i32, i32* %node, align 4
  %conv14 = trunc i32 %20 to i16
  %21 = load i32, i32* %count, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i16**, i16*** @gtrace, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %22, i64 %idxprom15
  %23 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx17, align 2
  %inc18 = add i16 %24, 1
  store i16 %inc18, i16* %arrayidx17, align 2
  %idxprom19 = sext i16 %inc18 to i64
  %25 = load i32, i32* %count, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load i16**, i16*** @gtrace, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %26, i64 %idxprom20
  %27 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %27, i64 %idxprom19
  store i16 %conv14, i16* %arrayidx22, align 2
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end, %if.then
  %28 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %28, i32 0, i32 7
  %29 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %29, %struct.gnode** %gptr, align 8
  br label %for.cond.7

for.end.24:                                       ; preds = %for.cond.7
  store i32 1, i32* %c, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.73, %for.end.24
  %30 = load i32, i32* %c, align 4
  %31 = load i32, i32* %count, align 4
  %cmp26 = icmp sle i32 %30, %31
  br i1 %cmp26, label %for.body.28, label %for.end.75

for.body.28:                                      ; preds = %for.cond.25
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %for.body.28
  %32 = load i32, i32* %c, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i16**, i16*** @gtrace, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %33, i64 %idxprom29
  %34 = load i16*, i16** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %34, i64 0
  %35 = load i16, i16* %arrayidx31, align 2
  %idxprom32 = sext i16 %35 to i64
  %36 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i16**, i16*** @gtrace, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %37, i64 %idxprom33
  %38 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %38, i64 %idxprom32
  %39 = load i16, i16* %arrayidx35, align 2
  %conv36 = sext i16 %39 to i32
  %40 = load i32, i32* @numnodes, align 4
  %cmp37 = icmp sgt i32 %conv36, %40
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %c, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i16**, i16*** @gtrace, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %42, i64 %idxprom39
  %43 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %43, i64 0
  %44 = load i16, i16* %arrayidx41, align 2
  %conv42 = sext i16 %44 to i32
  %sub = sub nsw i32 %conv42, 1
  %idxprom43 = sext i32 %sub to i64
  %45 = load i32, i32* %c, align 4
  %idxprom44 = sext i32 %45 to i64
  %46 = load i16**, i16*** @gtrace, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %46, i64 %idxprom44
  %47 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %47, i64 %idxprom43
  %48 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %48 to i32
  store i32 %conv47, i32* %prev, align 4
  %49 = load i32, i32* %c, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load i16**, i16*** @gtrace, align 8
  %arrayidx49 = getelementptr inbounds i16*, i16** %50, i64 %idxprom48
  %51 = load i16*, i16** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %51, i64 0
  %52 = load i16, i16* %arrayidx50, align 2
  %idxprom51 = sext i16 %52 to i64
  %53 = load i32, i32* %c, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load i16**, i16*** @gtrace, align 8
  %arrayidx53 = getelementptr inbounds i16*, i16** %54, i64 %idxprom52
  %55 = load i16*, i16** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %55, i64 %idxprom51
  %56 = load i16, i16* %arrayidx54, align 2
  %idxprom55 = sext i16 %56 to i64
  %57 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx56 = getelementptr inbounds %struct.gnode*, %struct.gnode** %57, i64 %idxprom55
  %58 = load %struct.gnode*, %struct.gnode** %arrayidx56, align 8
  store %struct.gnode* %58, %struct.gnode** %gptr, align 8
  %59 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node57 = getelementptr inbounds %struct.gnode, %struct.gnode* %59, i32 0, i32 0
  %60 = load i32, i32* %node57, align 4
  %61 = load i32, i32* %prev, align 4
  %cmp58 = icmp eq i32 %60, %61
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %while.body
  %62 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next61 = getelementptr inbounds %struct.gnode, %struct.gnode* %62, i32 0, i32 7
  %63 = load %struct.gnode*, %struct.gnode** %next61, align 8
  store %struct.gnode* %63, %struct.gnode** %gptr, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %while.body
  %64 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node63 = getelementptr inbounds %struct.gnode, %struct.gnode* %64, i32 0, i32 0
  %65 = load i32, i32* %node63, align 4
  %conv64 = trunc i32 %65 to i16
  %66 = load i32, i32* %c, align 4
  %idxprom65 = sext i32 %66 to i64
  %67 = load i16**, i16*** @gtrace, align 8
  %arrayidx66 = getelementptr inbounds i16*, i16** %67, i64 %idxprom65
  %68 = load i16*, i16** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %68, i64 0
  %69 = load i16, i16* %arrayidx67, align 2
  %inc68 = add i16 %69, 1
  store i16 %inc68, i16* %arrayidx67, align 2
  %idxprom69 = sext i16 %inc68 to i64
  %70 = load i32, i32* %c, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load i16**, i16*** @gtrace, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %71, i64 %idxprom70
  %72 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %72, i64 %idxprom69
  store i16 %conv64, i16* %arrayidx72, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.73

for.inc.73:                                       ; preds = %while.end
  %73 = load i32, i32* %c, align 4
  %inc74 = add nsw i32 %73, 1
  store i32 %inc74, i32* %c, align 4
  br label %for.cond.25

for.end.75:                                       ; preds = %for.cond.25
  store i32 1, i32* %c, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %for.end.75
  %74 = load i32, i32* %c, align 4
  %75 = load i32, i32* %count, align 4
  %cmp77 = icmp sle i32 %74, %75
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %76 = load i32, i32* %c, align 4
  %idxprom80 = sext i32 %76 to i64
  %77 = load i16**, i16*** @gtrace, align 8
  %arrayidx81 = getelementptr inbounds i16*, i16** %77, i64 %idxprom80
  %78 = load i16*, i16** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %78, i64 0
  %79 = load i16, i16* %arrayidx82, align 2
  %idxprom83 = sext i16 %79 to i64
  %80 = load i32, i32* %c, align 4
  %idxprom84 = sext i32 %80 to i64
  %81 = load i16**, i16*** @gtrace, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %81, i64 %idxprom84
  %82 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %82, i64 %idxprom83
  %83 = load i16, i16* %arrayidx86, align 2
  %conv87 = sext i16 %83 to i32
  %84 = load i32*, i32** %node2.addr, align 8
  %85 = load i32, i32* %84, align 4
  %cmp88 = icmp eq i32 %conv87, %85
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.79
  br label %for.end.94

if.end.91:                                        ; preds = %for.body.79
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %86 = load i32, i32* %c, align 4
  %inc93 = add nsw i32 %86, 1
  store i32 %inc93, i32* %c, align 4
  br label %for.cond.76

for.end.94:                                       ; preds = %if.then.90, %for.cond.76
  %87 = load i32, i32* %c, align 4
  %88 = load i32, i32* %count, align 4
  %cmp95 = icmp sgt i32 %87, %88
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %for.end.94
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %for.end.94
  store i32 0, i32* %temp, align 4
  %89 = load i32, i32* %c, align 4
  %idxprom99 = sext i32 %89 to i64
  %90 = load i16**, i16*** @gtrace, align 8
  %arrayidx100 = getelementptr inbounds i16*, i16** %90, i64 %idxprom99
  %91 = load i16*, i16** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %91, i64 0
  %92 = load i16, i16* %arrayidx101, align 2
  %conv102 = sext i16 %92 to i32
  store i32 %conv102, i32* %limit, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.131, %if.end.98
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %limit, align 4
  %cmp104 = icmp slt i32 %93, %94
  br i1 %cmp104, label %for.body.106, label %for.end.133

for.body.106:                                     ; preds = %for.cond.103
  %95 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %95 to i64
  %96 = load i32, i32* %c, align 4
  %idxprom108 = sext i32 %96 to i64
  %97 = load i16**, i16*** @gtrace, align 8
  %arrayidx109 = getelementptr inbounds i16*, i16** %97, i64 %idxprom108
  %98 = load i16*, i16** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %98, i64 %idxprom107
  %99 = load i16, i16* %arrayidx110, align 2
  %idxprom111 = sext i16 %99 to i64
  %100 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx112 = getelementptr inbounds %struct.gnode*, %struct.gnode** %100, i64 %idxprom111
  %101 = load %struct.gnode*, %struct.gnode** %arrayidx112, align 8
  store %struct.gnode* %101, %struct.gnode** %gptr, align 8
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.122, %for.body.106
  %102 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node114 = getelementptr inbounds %struct.gnode, %struct.gnode* %102, i32 0, i32 0
  %103 = load i32, i32* %node114, align 4
  %104 = load i32, i32* %i, align 4
  %add = add nsw i32 %104, 1
  %idxprom115 = sext i32 %add to i64
  %105 = load i32, i32* %c, align 4
  %idxprom116 = sext i32 %105 to i64
  %106 = load i16**, i16*** @gtrace, align 8
  %arrayidx117 = getelementptr inbounds i16*, i16** %106, i64 %idxprom116
  %107 = load i16*, i16** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %107, i64 %idxprom115
  %108 = load i16, i16* %arrayidx118, align 2
  %conv119 = sext i16 %108 to i32
  %cmp120 = icmp ne i32 %103, %conv119
  br i1 %cmp120, label %while.body.122, label %while.end.124

while.body.122:                                   ; preds = %while.cond.113
  %109 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next123 = getelementptr inbounds %struct.gnode, %struct.gnode* %109, i32 0, i32 7
  %110 = load %struct.gnode*, %struct.gnode** %next123, align 8
  store %struct.gnode* %110, %struct.gnode** %gptr, align 8
  br label %while.cond.113

while.end.124:                                    ; preds = %while.cond.113
  %111 = load i32, i32* %temp, align 4
  store i32 %111, i32* %prev, align 4
  %112 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length125 = getelementptr inbounds %struct.gnode, %struct.gnode* %112, i32 0, i32 2
  %113 = load i32, i32* %length125, align 4
  %114 = load i32, i32* %temp, align 4
  %add126 = add nsw i32 %114, %113
  store i32 %add126, i32* %temp, align 4
  %115 = load i32, i32* %temp, align 4
  %116 = load i32, i32* %distance.addr, align 4
  %cmp127 = icmp sge i32 %115, %116
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %while.end.124
  br label %for.end.133

if.end.130:                                       ; preds = %while.end.124
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %117 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %117, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.103

for.end.133:                                      ; preds = %if.then.129, %for.cond.103
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %limit, align 4
  %cmp134 = icmp sge i32 %118, %119
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.133
  store i32 1, i32* %retval
  br label %return

if.end.137:                                       ; preds = %for.end.133
  %120 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %120 to i64
  %121 = load i32, i32* %c, align 4
  %idxprom139 = sext i32 %121 to i64
  %122 = load i16**, i16*** @gtrace, align 8
  %arrayidx140 = getelementptr inbounds i16*, i16** %122, i64 %idxprom139
  %123 = load i16*, i16** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16, i16* %123, i64 %idxprom138
  %124 = load i16, i16* %arrayidx141, align 2
  %conv142 = sext i16 %124 to i32
  %125 = load i32*, i32** %node1.addr, align 8
  store i32 %conv142, i32* %125, align 4
  %126 = load i32, i32* %i, align 4
  %add143 = add nsw i32 %126, 1
  %idxprom144 = sext i32 %add143 to i64
  %127 = load i32, i32* %c, align 4
  %idxprom145 = sext i32 %127 to i64
  %128 = load i16**, i16*** @gtrace, align 8
  %arrayidx146 = getelementptr inbounds i16*, i16** %128, i64 %idxprom145
  %129 = load i16*, i16** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16, i16* %129, i64 %idxprom144
  %130 = load i16, i16* %arrayidx147, align 2
  %conv148 = sext i16 %130 to i32
  %131 = load i32*, i32** %node2.addr, align 8
  store i32 %conv148, i32* %131, align 4
  %132 = load i32, i32* %prev, align 4
  %133 = load i32*, i32** %bound1.addr, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %temp, align 4
  %135 = load i32*, i32** %bound2.addr, align 8
  store i32 %134, i32* %135, align 4
  %136 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %137 = load %struct.gnode**, %struct.gnode*** %gpptr.addr, align 8
  store %struct.gnode* %136, %struct.gnode** %137, align 8
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.136, %if.then.97
  %138 = load i32, i32* %retval
  ret i32 %138
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
