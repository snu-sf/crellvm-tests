; ModuleID = './MultiSource.Benchmarks.Prolangs-C/218.TimberWolfMC.density.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }

@eNum = external global i32, align 4
@eArray = external global %struct.ebox*, align 8
@largestNet = external global i32, align 4
@netRoutes = external global %struct.nrbox*, align 8
@eIndexArray = external global i32**, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"CHANNEL DENSITIES:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"channel:%d  node1:%d  node2:%d  density:%d\0A\00", align 1
@numXnodes = external global i32, align 4
@xNodeArray = external global %struct.wcbox**, align 8
@defaultTracks = external global i32, align 4
@pitch = external global i32, align 4
@numYnodes = external global i32, align 4
@yNodeArray = external global %struct.wcbox**, align 8
@edgeList = external global %struct.edgebox*, align 8
@cellList = external global %struct.clbox**, align 8
@numberCells = external global i32, align 4
@fpdebug = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"CELL: <%d>\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"edge:%d  extraSpace:%d  \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"HorV:%d  loc:%d  start:%d  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"end:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @density() #0 {
entry:
  %net = alloca i32, align 4
  %m = alloca i32, align 4
  %eIndex = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %channelDensity = alloca i32, align 4
  %i = alloca i32, align 4
  %qbot = alloca i32, align 4
  %qtop = alloca i32, align 4
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %max = alloca i32, align 4
  %width = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %cell2 = alloca i32, align 4
  %edge1 = alloca i32, align 4
  %edge2 = alloca i32, align 4
  %extraSpace1 = alloca i32, align 4
  %extraSpace2 = alloca i32, align 4
  %node = alloca %struct.tnode*, align 8
  %q = alloca %struct.tnode**, align 8
  %cptr = alloca %struct.chanbox*, align 8
  %plptr = alloca %struct.plist*, align 8
  %ptr = alloca %struct.wcbox*, align 8
  %clptr = alloca %struct.clbox*, align 8
  store i32 1, i32* %eIndex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %eIndex, align 4
  %1 = load i32, i32* @eNum, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %eIndex, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx = getelementptr inbounds %struct.ebox, %struct.ebox* %3, i64 %idxprom
  %root = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx, i32 0, i32 12
  store %struct.tnode* null, %struct.tnode** %root, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %eIndex, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %eIndex, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %net, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.40, %for.end
  %5 = load i32, i32* %net, align 4
  %6 = load i32, i32* @largestNet, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end.42

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %net, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx5 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %8, i64 %idxprom4
  %currentRoute = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx5, i32 0, i32 2
  %9 = load i32, i32* %currentRoute, align 4
  store i32 %9, i32* %m, align 4
  %10 = load i32, i32* %m, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %net, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx8 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %12, i64 %idxprom7
  %alternate = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx8, i32 0, i32 0
  %13 = load %struct.altbox**, %struct.altbox*** %alternate, align 8
  %arrayidx9 = getelementptr inbounds %struct.altbox*, %struct.altbox** %13, i64 %idxprom6
  %14 = load %struct.altbox*, %struct.altbox** %arrayidx9, align 8
  %chanList = getelementptr inbounds %struct.altbox, %struct.altbox* %14, i32 0, i32 2
  %15 = load %struct.chanbox*, %struct.chanbox** %chanList, align 8
  store %struct.chanbox* %15, %struct.chanbox** %cptr, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.38, %for.body.3
  %16 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %cmp11 = icmp ne %struct.chanbox* %16, null
  br i1 %cmp11, label %for.body.12, label %for.end.39

for.body.12:                                      ; preds = %for.cond.10
  %17 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %to = getelementptr inbounds %struct.chanbox, %struct.chanbox* %17, i32 0, i32 1
  %18 = load i32, i32* %to, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %from = getelementptr inbounds %struct.chanbox, %struct.chanbox* %19, i32 0, i32 0
  %20 = load i32, i32* %from, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32**, i32*** @eIndexArray, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %21, i64 %idxprom14
  %22 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  %23 = load i32, i32* %arrayidx16, align 4
  store i32 %23, i32* %eIndex, align 4
  %24 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %from17 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %24, i32 0, i32 0
  %25 = load i32, i32* %from17, align 4
  %26 = load i32, i32* %eIndex, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.ebox, %struct.ebox* %27, i64 %idxprom18
  %index1 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx19, i32 0, i32 0
  %28 = load i32, i32* %index1, align 4
  %cmp20 = icmp eq i32 %25, %28
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.12
  %29 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %foffset = getelementptr inbounds %struct.chanbox, %struct.chanbox* %29, i32 0, i32 2
  %30 = load i32, i32* %foffset, align 4
  store i32 %30, i32* %start, align 4
  %31 = load i32, i32* %eIndex, align 4
  %idxprom21 = sext i32 %31 to i64
  %32 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.ebox, %struct.ebox* %32, i64 %idxprom21
  %length = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx22, i32 0, i32 5
  %33 = load i32, i32* %length, align 4
  %34 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %toffset = getelementptr inbounds %struct.chanbox, %struct.chanbox* %34, i32 0, i32 3
  %35 = load i32, i32* %toffset, align 4
  %sub = sub nsw i32 %33, %35
  store i32 %sub, i32* %end, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.12
  %36 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %toffset23 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %36, i32 0, i32 3
  %37 = load i32, i32* %toffset23, align 4
  store i32 %37, i32* %start, align 4
  %38 = load i32, i32* %eIndex, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx25 = getelementptr inbounds %struct.ebox, %struct.ebox* %39, i64 %idxprom24
  %length26 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx25, i32 0, i32 5
  %40 = load i32, i32* %length26, align 4
  %41 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %foffset27 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %41, i32 0, i32 2
  %42 = load i32, i32* %foffset27, align 4
  %sub28 = sub nsw i32 %40, %42
  store i32 %sub28, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %43 = load i32, i32* %end, align 4
  %44 = load i32, i32* %start, align 4
  %cmp29 = icmp sgt i32 %43, %44
  br i1 %cmp29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end
  %45 = load i32, i32* %eIndex, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx32 = getelementptr inbounds %struct.ebox, %struct.ebox* %46, i64 %idxprom31
  %root33 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx32, i32 0, i32 12
  %47 = load i32, i32* %start, align 4
  call void @tinsert(%struct.tnode** %root33, i32 %47, i32 1)
  %48 = load i32, i32* %eIndex, align 4
  %idxprom34 = sext i32 %48 to i64
  %49 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx35 = getelementptr inbounds %struct.ebox, %struct.ebox* %49, i64 %idxprom34
  %root36 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx35, i32 0, i32 12
  %50 = load i32, i32* %end, align 4
  %add = add nsw i32 %50, 1
  call void @tinsert(%struct.tnode** %root36, i32 %add, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %if.end
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %51 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %next = getelementptr inbounds %struct.chanbox, %struct.chanbox* %51, i32 0, i32 4
  %52 = load %struct.chanbox*, %struct.chanbox** %next, align 8
  store %struct.chanbox* %52, %struct.chanbox** %cptr, align 8
  br label %for.cond.10

for.end.39:                                       ; preds = %for.cond.10
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %53 = load i32, i32* %net, align 4
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %net, align 4
  br label %for.cond.1

for.end.42:                                       ; preds = %for.cond.1
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call43 = call noalias i8* @malloc(i64 80008) #3
  %55 = bitcast i8* %call43 to %struct.tnode**
  store %struct.tnode** %55, %struct.tnode*** %q, align 8
  store i32 1, i32* %eIndex, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.99, %for.end.42
  %56 = load i32, i32* %eIndex, align 4
  %57 = load i32, i32* @eNum, align 4
  %cmp45 = icmp sle i32 %56, %57
  br i1 %cmp45, label %for.body.46, label %for.end.101

for.body.46:                                      ; preds = %for.cond.44
  %58 = load i32, i32* %eIndex, align 4
  %idxprom47 = sext i32 %58 to i64
  %59 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx48 = getelementptr inbounds %struct.ebox, %struct.ebox* %59, i64 %idxprom47
  %root49 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx48, i32 0, i32 12
  %60 = load %struct.tnode*, %struct.tnode** %root49, align 8
  %cmp50 = icmp eq %struct.tnode* %60, null
  br i1 %cmp50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %for.body.46
  %61 = load i32, i32* %eIndex, align 4
  %idxprom52 = sext i32 %61 to i64
  %62 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx53 = getelementptr inbounds %struct.ebox, %struct.ebox* %62, i64 %idxprom52
  %density = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx53, i32 0, i32 10
  store i32 0, i32* %density, align 4
  br label %for.inc.99

if.end.54:                                        ; preds = %for.body.46
  store i32 0, i32* %channelDensity, align 4
  store i32 0, i32* %max, align 4
  store i32 0, i32* %qtop, align 4
  store i32 0, i32* %qbot, align 4
  %63 = load i32, i32* %eIndex, align 4
  %idxprom55 = sext i32 %63 to i64
  %64 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx56 = getelementptr inbounds %struct.ebox, %struct.ebox* %64, i64 %idxprom55
  %root57 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx56, i32 0, i32 12
  %65 = load %struct.tnode*, %struct.tnode** %root57, align 8
  %66 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx58 = getelementptr inbounds %struct.tnode*, %struct.tnode** %66, i64 0
  store %struct.tnode* %65, %struct.tnode** %arrayidx58, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.89, %if.end.54
  %67 = load i32, i32* %qtop, align 4
  %68 = load i32, i32* %qbot, align 4
  %cmp59 = icmp sge i32 %67, %68
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load i32, i32* %qbot, align 4
  %inc60 = add nsw i32 %69, 1
  store i32 %inc60, i32* %qbot, align 4
  %idxprom61 = sext i32 %69 to i64
  %70 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx62 = getelementptr inbounds %struct.tnode*, %struct.tnode** %70, i64 %idxprom61
  %71 = load %struct.tnode*, %struct.tnode** %arrayidx62, align 8
  store %struct.tnode* %71, %struct.tnode** %node, align 8
  %72 = load %struct.tnode*, %struct.tnode** %node, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 1
  %73 = load i32, i32* %nsons, align 4
  %cmp63 = icmp sgt i32 %73, 0
  br i1 %cmp63, label %if.then.64, label %if.else.78

if.then.64:                                       ; preds = %while.body
  %74 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 2
  %75 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %76 = load i32, i32* %qtop, align 4
  %inc65 = add nsw i32 %76, 1
  store i32 %inc65, i32* %qtop, align 4
  %idxprom66 = sext i32 %inc65 to i64
  %77 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx67 = getelementptr inbounds %struct.tnode*, %struct.tnode** %77, i64 %idxprom66
  store %struct.tnode* %75, %struct.tnode** %arrayidx67, align 8
  %78 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 3
  %79 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %80 = load i32, i32* %qtop, align 4
  %inc68 = add nsw i32 %80, 1
  store i32 %inc68, i32* %qtop, align 4
  %idxprom69 = sext i32 %inc68 to i64
  %81 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx70 = getelementptr inbounds %struct.tnode*, %struct.tnode** %81, i64 %idxprom69
  store %struct.tnode* %79, %struct.tnode** %arrayidx70, align 8
  %82 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %82, i32 0, i32 4
  %83 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %cmp71 = icmp ne %struct.tnode* %83, null
  br i1 %cmp71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.then.64
  %84 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son373 = getelementptr inbounds %struct.tnode, %struct.tnode* %84, i32 0, i32 4
  %85 = load %struct.tnode*, %struct.tnode** %son373, align 8
  %86 = load i32, i32* %qtop, align 4
  %inc74 = add nsw i32 %86, 1
  store i32 %inc74, i32* %qtop, align 4
  %idxprom75 = sext i32 %inc74 to i64
  %87 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx76 = getelementptr inbounds %struct.tnode*, %struct.tnode** %87, i64 %idxprom75
  store %struct.tnode* %85, %struct.tnode** %arrayidx76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %if.then.64
  br label %if.end.89

if.else.78:                                       ; preds = %while.body
  %88 = load %struct.tnode*, %struct.tnode** %node, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %88, i32 0, i32 9
  %89 = load %struct.plist*, %struct.plist** %plist, align 8
  store %struct.plist* %89, %struct.plist** %plptr, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.84, %if.else.78
  %90 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp80 = icmp ne %struct.plist* %90, null
  br i1 %cmp80, label %for.body.81, label %for.end.85

for.body.81:                                      ; preds = %for.cond.79
  %91 = load %struct.tnode*, %struct.tnode** %node, align 8
  %plist82 = getelementptr inbounds %struct.tnode, %struct.tnode* %91, i32 0, i32 9
  %92 = load %struct.plist*, %struct.plist** %plist82, align 8
  %property = getelementptr inbounds %struct.plist, %struct.plist* %92, i32 0, i32 0
  %93 = load i32, i32* %property, align 4
  %94 = load i32, i32* %channelDensity, align 4
  %add83 = add nsw i32 %94, %93
  store i32 %add83, i32* %channelDensity, align 4
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.81
  %95 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %95, i32 0, i32 1
  %96 = load %struct.plist*, %struct.plist** %pnext, align 8
  store %struct.plist* %96, %struct.plist** %plptr, align 8
  br label %for.cond.79

for.end.85:                                       ; preds = %for.cond.79
  %97 = load i32, i32* %channelDensity, align 4
  %98 = load i32, i32* %max, align 4
  %cmp86 = icmp sgt i32 %97, %98
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.end.85
  %99 = load i32, i32* %channelDensity, align 4
  store i32 %99, i32* %max, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %for.end.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.77
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %100 = load i32, i32* %max, align 4
  %101 = load i32, i32* %eIndex, align 4
  %idxprom90 = sext i32 %101 to i64
  %102 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx91 = getelementptr inbounds %struct.ebox, %struct.ebox* %102, i64 %idxprom90
  %density92 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx91, i32 0, i32 10
  store i32 %100, i32* %density92, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %104 = load i32, i32* %eIndex, align 4
  %105 = load i32, i32* %eIndex, align 4
  %idxprom93 = sext i32 %105 to i64
  %106 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx94 = getelementptr inbounds %struct.ebox, %struct.ebox* %106, i64 %idxprom93
  %index195 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx94, i32 0, i32 0
  %107 = load i32, i32* %index195, align 4
  %108 = load i32, i32* %eIndex, align 4
  %idxprom96 = sext i32 %108 to i64
  %109 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx97 = getelementptr inbounds %struct.ebox, %struct.ebox* %109, i64 %idxprom96
  %index2 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx97, i32 0, i32 1
  %110 = load i32, i32* %index2, align 4
  %111 = load i32, i32* %max, align 4
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %104, i32 %107, i32 %110, i32 %111)
  br label %for.inc.99

for.inc.99:                                       ; preds = %while.end, %if.then.51
  %112 = load i32, i32* %eIndex, align 4
  %inc100 = add nsw i32 %112, 1
  store i32 %inc100, i32* %eIndex, align 4
  br label %for.cond.44

for.end.101:                                      ; preds = %for.cond.44
  %113 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %114 = bitcast %struct.tnode** %113 to i8*
  call void @free(i8* %114) #3
  store i32 1, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.148, %for.end.101
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* @numXnodes, align 4
  %cmp103 = icmp sle i32 %115, %116
  br i1 %cmp103, label %for.body.104, label %for.end.150

for.body.104:                                     ; preds = %for.cond.102
  %117 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %117 to i64
  %118 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx106 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %118, i64 %idxprom105
  %119 = load %struct.wcbox*, %struct.wcbox** %arrayidx106, align 8
  store %struct.wcbox* %119, %struct.wcbox** %ptr, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.145, %for.body.104
  %120 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp108 = icmp ne %struct.wcbox* %120, null
  br i1 %cmp108, label %for.body.109, label %for.end.147

for.body.109:                                     ; preds = %for.cond.107
  %121 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth = getelementptr inbounds %struct.wcbox, %struct.wcbox* %121, i32 0, i32 0
  %122 = load i32, i32* %fixedWidth, align 4
  %cmp110 = icmp eq i32 %122, 1
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.body.109
  br label %for.inc.145

if.end.112:                                       ; preds = %for.body.109
  %123 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length113 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %123, i32 0, i32 3
  store i32 0, i32* %length113, align 4
  %124 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels = getelementptr inbounds %struct.wcbox, %struct.wcbox* %124, i32 0, i32 2
  %125 = load i32*, i32** %channels, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx114, align 4
  store i32 %126, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.126, %if.end.112
  %127 = load i32, i32* %c, align 4
  %128 = load i32, i32* %count, align 4
  %cmp116 = icmp sle i32 %127, %128
  br i1 %cmp116, label %for.body.117, label %for.end.128

for.body.117:                                     ; preds = %for.cond.115
  %129 = load i32, i32* %c, align 4
  %idxprom118 = sext i32 %129 to i64
  %130 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels119 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %130, i32 0, i32 2
  %131 = load i32*, i32** %channels119, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %131, i64 %idxprom118
  %132 = load i32, i32* %arrayidx120, align 4
  %idxprom121 = sext i32 %132 to i64
  %133 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx122 = getelementptr inbounds %struct.ebox, %struct.ebox* %133, i64 %idxprom121
  %density123 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx122, i32 0, i32 10
  %134 = load i32, i32* %density123, align 4
  %135 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length124 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %135, i32 0, i32 3
  %136 = load i32, i32* %length124, align 4
  %add125 = add nsw i32 %136, %134
  store i32 %add125, i32* %length124, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.117
  %137 = load i32, i32* %c, align 4
  %inc127 = add nsw i32 %137, 1
  store i32 %inc127, i32* %c, align 4
  br label %for.cond.115

for.end.128:                                      ; preds = %for.cond.115
  %138 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length129 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %138, i32 0, i32 3
  %139 = load i32, i32* %length129, align 4
  %cmp130 = icmp sgt i32 %139, 0
  br i1 %cmp130, label %if.then.131, label %if.else.136

if.then.131:                                      ; preds = %for.end.128
  %140 = load i32, i32* @defaultTracks, align 4
  %add132 = add nsw i32 %140, 2
  %141 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length133 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %141, i32 0, i32 3
  %142 = load i32, i32* %length133, align 4
  %add134 = add nsw i32 %142, %add132
  store i32 %add134, i32* %length133, align 4
  %143 = load i32, i32* @pitch, align 4
  %144 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length135 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %144, i32 0, i32 3
  %145 = load i32, i32* %length135, align 4
  %mul = mul nsw i32 %145, %143
  store i32 %mul, i32* %length135, align 4
  br label %if.end.144

if.else.136:                                      ; preds = %for.end.128
  %146 = load i32, i32* @defaultTracks, align 4
  %cmp137 = icmp sgt i32 %146, 0
  br i1 %cmp137, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.else.136
  %147 = load i32, i32* @defaultTracks, align 4
  %add139 = add nsw i32 %147, 1
  %148 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length140 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %148, i32 0, i32 3
  store i32 %add139, i32* %length140, align 4
  %149 = load i32, i32* @pitch, align 4
  %150 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length141 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %150, i32 0, i32 3
  %151 = load i32, i32* %length141, align 4
  %mul142 = mul nsw i32 %151, %149
  store i32 %mul142, i32* %length141, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.else.136
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.131
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144, %if.then.111
  %152 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next146 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %152, i32 0, i32 4
  %153 = load %struct.wcbox*, %struct.wcbox** %next146, align 8
  store %struct.wcbox* %153, %struct.wcbox** %ptr, align 8
  br label %for.cond.107

for.end.147:                                      ; preds = %for.cond.107
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.end.147
  %154 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %154, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.102

for.end.150:                                      ; preds = %for.cond.102
  store i32 1, i32* %i, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.200, %for.end.150
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* @numYnodes, align 4
  %cmp152 = icmp sle i32 %155, %156
  br i1 %cmp152, label %for.body.153, label %for.end.202

for.body.153:                                     ; preds = %for.cond.151
  %157 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %157 to i64
  %158 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx155 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %158, i64 %idxprom154
  %159 = load %struct.wcbox*, %struct.wcbox** %arrayidx155, align 8
  store %struct.wcbox* %159, %struct.wcbox** %ptr, align 8
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.197, %for.body.153
  %160 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp157 = icmp ne %struct.wcbox* %160, null
  br i1 %cmp157, label %for.body.158, label %for.end.199

for.body.158:                                     ; preds = %for.cond.156
  %161 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth159 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %161, i32 0, i32 0
  %162 = load i32, i32* %fixedWidth159, align 4
  %cmp160 = icmp eq i32 %162, 1
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.body.158
  br label %for.inc.197

if.end.162:                                       ; preds = %for.body.158
  %163 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length163 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %163, i32 0, i32 3
  store i32 0, i32* %length163, align 4
  %164 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels164 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %164, i32 0, i32 2
  %165 = load i32*, i32** %channels164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %165, i64 0
  %166 = load i32, i32* %arrayidx165, align 4
  store i32 %166, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.177, %if.end.162
  %167 = load i32, i32* %c, align 4
  %168 = load i32, i32* %count, align 4
  %cmp167 = icmp sle i32 %167, %168
  br i1 %cmp167, label %for.body.168, label %for.end.179

for.body.168:                                     ; preds = %for.cond.166
  %169 = load i32, i32* %c, align 4
  %idxprom169 = sext i32 %169 to i64
  %170 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels170 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %170, i32 0, i32 2
  %171 = load i32*, i32** %channels170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %171, i64 %idxprom169
  %172 = load i32, i32* %arrayidx171, align 4
  %idxprom172 = sext i32 %172 to i64
  %173 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx173 = getelementptr inbounds %struct.ebox, %struct.ebox* %173, i64 %idxprom172
  %density174 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx173, i32 0, i32 10
  %174 = load i32, i32* %density174, align 4
  %175 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length175 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %175, i32 0, i32 3
  %176 = load i32, i32* %length175, align 4
  %add176 = add nsw i32 %176, %174
  store i32 %add176, i32* %length175, align 4
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.168
  %177 = load i32, i32* %c, align 4
  %inc178 = add nsw i32 %177, 1
  store i32 %inc178, i32* %c, align 4
  br label %for.cond.166

for.end.179:                                      ; preds = %for.cond.166
  %178 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length180 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %178, i32 0, i32 3
  %179 = load i32, i32* %length180, align 4
  %cmp181 = icmp sgt i32 %179, 0
  br i1 %cmp181, label %if.then.182, label %if.else.188

if.then.182:                                      ; preds = %for.end.179
  %180 = load i32, i32* @defaultTracks, align 4
  %add183 = add nsw i32 %180, 2
  %181 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length184 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %181, i32 0, i32 3
  %182 = load i32, i32* %length184, align 4
  %add185 = add nsw i32 %182, %add183
  store i32 %add185, i32* %length184, align 4
  %183 = load i32, i32* @pitch, align 4
  %184 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length186 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %184, i32 0, i32 3
  %185 = load i32, i32* %length186, align 4
  %mul187 = mul nsw i32 %185, %183
  store i32 %mul187, i32* %length186, align 4
  br label %if.end.196

if.else.188:                                      ; preds = %for.end.179
  %186 = load i32, i32* @defaultTracks, align 4
  %cmp189 = icmp sgt i32 %186, 0
  br i1 %cmp189, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.else.188
  %187 = load i32, i32* @defaultTracks, align 4
  %add191 = add nsw i32 %187, 1
  %188 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length192 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %188, i32 0, i32 3
  store i32 %add191, i32* %length192, align 4
  %189 = load i32, i32* @pitch, align 4
  %190 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length193 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %190, i32 0, i32 3
  %191 = load i32, i32* %length193, align 4
  %mul194 = mul nsw i32 %191, %189
  store i32 %mul194, i32* %length193, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %if.else.188
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.182
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196, %if.then.161
  %192 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next198 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %192, i32 0, i32 4
  %193 = load %struct.wcbox*, %struct.wcbox** %next198, align 8
  store %struct.wcbox* %193, %struct.wcbox** %ptr, align 8
  br label %for.cond.156

for.end.199:                                      ; preds = %for.cond.156
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199
  %194 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %194, 1
  store i32 %inc201, i32* %i, align 4
  br label %for.cond.151

for.end.202:                                      ; preds = %for.cond.151
  store i32 1, i32* %i, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.321, %for.end.202
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* @numXnodes, align 4
  %cmp204 = icmp sle i32 %195, %196
  br i1 %cmp204, label %for.body.205, label %for.end.323

for.body.205:                                     ; preds = %for.cond.203
  %197 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %197 to i64
  %198 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx207 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %198, i64 %idxprom206
  %199 = load %struct.wcbox*, %struct.wcbox** %arrayidx207, align 8
  store %struct.wcbox* %199, %struct.wcbox** %ptr, align 8
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.318, %for.body.205
  %200 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp209 = icmp ne %struct.wcbox* %200, null
  br i1 %cmp209, label %for.body.210, label %for.end.320

for.body.210:                                     ; preds = %for.cond.208
  %201 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth211 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %201, i32 0, i32 0
  %202 = load i32, i32* %fixedWidth211, align 4
  %cmp212 = icmp eq i32 %202, 1
  br i1 %cmp212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %for.body.210
  br label %for.inc.318

if.end.214:                                       ; preds = %for.body.210
  store i32 0, i32* %width, align 4
  %203 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels215 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %203, i32 0, i32 2
  %204 = load i32*, i32** %channels215, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %204, i64 1
  %205 = load i32, i32* %arrayidx216, align 4
  %idxprom217 = sext i32 %205 to i64
  %206 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx218 = getelementptr inbounds %struct.ebox, %struct.ebox* %206, i64 %idxprom217
  %edge1219 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx218, i32 0, i32 8
  %207 = load i32, i32* %edge1219, align 4
  store i32 %207, i32* %edge1, align 4
  %208 = load i32, i32* %edge1, align 4
  %idxprom220 = sext i32 %208 to i64
  %209 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx221 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %209, i64 %idxprom220
  %cell = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx221, i32 0, i32 0
  %210 = load i32, i32* %cell, align 4
  store i32 %210, i32* %cell1, align 4
  %211 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels222 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %211, i32 0, i32 2
  %212 = load i32*, i32** %channels222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %212, i64 0
  %213 = load i32, i32* %arrayidx223, align 4
  store i32 %213, i32* %count, align 4
  %214 = load i32, i32* %count, align 4
  %idxprom224 = sext i32 %214 to i64
  %215 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels225 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %215, i32 0, i32 2
  %216 = load i32*, i32** %channels225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %216, i64 %idxprom224
  %217 = load i32, i32* %arrayidx226, align 4
  %idxprom227 = sext i32 %217 to i64
  %218 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx228 = getelementptr inbounds %struct.ebox, %struct.ebox* %218, i64 %idxprom227
  %edge2229 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx228, i32 0, i32 9
  %219 = load i32, i32* %edge2229, align 4
  store i32 %219, i32* %edge2, align 4
  %220 = load i32, i32* %edge2, align 4
  %idxprom230 = sext i32 %220 to i64
  %221 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx231 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %221, i64 %idxprom230
  %cell232 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx231, i32 0, i32 0
  %222 = load i32, i32* %cell232, align 4
  store i32 %222, i32* %cell2, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.243, %if.end.214
  %223 = load i32, i32* %c, align 4
  %224 = load i32, i32* %count, align 4
  %cmp234 = icmp sle i32 %223, %224
  br i1 %cmp234, label %for.body.235, label %for.end.245

for.body.235:                                     ; preds = %for.cond.233
  %225 = load i32, i32* %c, align 4
  %idxprom236 = sext i32 %225 to i64
  %226 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels237 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %226, i32 0, i32 2
  %227 = load i32*, i32** %channels237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %227, i64 %idxprom236
  %228 = load i32, i32* %arrayidx238, align 4
  %idxprom239 = sext i32 %228 to i64
  %229 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx240 = getelementptr inbounds %struct.ebox, %struct.ebox* %229, i64 %idxprom239
  %width241 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx240, i32 0, i32 2
  %230 = load i32, i32* %width241, align 4
  %231 = load i32, i32* %width, align 4
  %add242 = add nsw i32 %231, %230
  store i32 %add242, i32* %width, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.body.235
  %232 = load i32, i32* %c, align 4
  %inc244 = add nsw i32 %232, 1
  store i32 %inc244, i32* %c, align 4
  br label %for.cond.233

for.end.245:                                      ; preds = %for.cond.233
  %233 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length246 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %233, i32 0, i32 3
  %234 = load i32, i32* %length246, align 4
  %div = sdiv i32 %234, 2
  store i32 %div, i32* %extraSpace1, align 4
  %235 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length247 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %235, i32 0, i32 3
  %236 = load i32, i32* %length247, align 4
  %237 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length248 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %237, i32 0, i32 3
  %238 = load i32, i32* %length248, align 4
  %div249 = sdiv i32 %238, 2
  %sub250 = sub nsw i32 %236, %div249
  store i32 %sub250, i32* %extraSpace2, align 4
  %239 = load i32, i32* %cell1, align 4
  %cmp251 = icmp sgt i32 %239, 0
  br i1 %cmp251, label %if.then.252, label %if.end.281

if.then.252:                                      ; preds = %for.end.245
  %240 = load i32, i32* %cell1, align 4
  %idxprom253 = sext i32 %240 to i64
  %241 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx254 = getelementptr inbounds %struct.clbox*, %struct.clbox** %241, i64 %idxprom253
  %242 = load %struct.clbox*, %struct.clbox** %arrayidx254, align 8
  store %struct.clbox* %242, %struct.clbox** %clptr, align 8
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.259, %if.then.252
  %243 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge = getelementptr inbounds %struct.clbox, %struct.clbox* %243, i32 0, i32 0
  %244 = load i32, i32* %edge, align 4
  %245 = load i32, i32* %edge1, align 4
  %cmp256 = icmp eq i32 %244, %245
  br i1 %cmp256, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %for.cond.255
  br label %for.end.261

if.end.258:                                       ; preds = %for.cond.255
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %246 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next260 = getelementptr inbounds %struct.clbox, %struct.clbox* %246, i32 0, i32 7
  %247 = load %struct.clbox*, %struct.clbox** %next260, align 8
  store %struct.clbox* %247, %struct.clbox** %clptr, align 8
  br label %for.cond.255

for.end.261:                                      ; preds = %if.then.257
  %248 = load i32, i32* %width, align 4
  %249 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length262 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %249, i32 0, i32 3
  %250 = load i32, i32* %length262, align 4
  %sub263 = sub nsw i32 %248, %250
  %251 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact = getelementptr inbounds %struct.clbox, %struct.clbox* %251, i32 0, i32 6
  %252 = load i32, i32* %compact, align 4
  %cmp264 = icmp slt i32 %sub263, %252
  br i1 %cmp264, label %if.then.265, label %if.end.269

if.then.265:                                      ; preds = %for.end.261
  %253 = load i32, i32* %width, align 4
  %254 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length266 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %254, i32 0, i32 3
  %255 = load i32, i32* %length266, align 4
  %sub267 = sub nsw i32 %253, %255
  %256 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact268 = getelementptr inbounds %struct.clbox, %struct.clbox* %256, i32 0, i32 6
  store i32 %sub267, i32* %compact268, align 4
  %257 = load i32, i32* %extraSpace1, align 4
  %258 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace = getelementptr inbounds %struct.clbox, %struct.clbox* %258, i32 0, i32 1
  store i32 %257, i32* %extraSpace, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.265, %for.end.261
  %259 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV = getelementptr inbounds %struct.clbox, %struct.clbox* %259, i32 0, i32 2
  store i32 0, i32* %HorV, align 4
  %260 = load i32, i32* %edge1, align 4
  %idxprom270 = sext i32 %260 to i64
  %261 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %261, i64 %idxprom270
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx271, i32 0, i32 3
  %262 = load i32, i32* %loc, align 4
  %263 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc272 = getelementptr inbounds %struct.clbox, %struct.clbox* %263, i32 0, i32 3
  store i32 %262, i32* %loc272, align 4
  %264 = load i32, i32* %edge1, align 4
  %idxprom273 = sext i32 %264 to i64
  %265 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx274 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %265, i64 %idxprom273
  %start275 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx274, i32 0, i32 1
  %266 = load i32, i32* %start275, align 4
  %267 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start276 = getelementptr inbounds %struct.clbox, %struct.clbox* %267, i32 0, i32 4
  store i32 %266, i32* %start276, align 4
  %268 = load i32, i32* %edge1, align 4
  %idxprom277 = sext i32 %268 to i64
  %269 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx278 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %269, i64 %idxprom277
  %end279 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx278, i32 0, i32 2
  %270 = load i32, i32* %end279, align 4
  %271 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end280 = getelementptr inbounds %struct.clbox, %struct.clbox* %271, i32 0, i32 5
  store i32 %270, i32* %end280, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.269, %for.end.245
  %272 = load i32, i32* %cell2, align 4
  %cmp282 = icmp sgt i32 %272, 0
  br i1 %cmp282, label %if.then.283, label %if.end.317

if.then.283:                                      ; preds = %if.end.281
  %273 = load i32, i32* %cell2, align 4
  %idxprom284 = sext i32 %273 to i64
  %274 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx285 = getelementptr inbounds %struct.clbox*, %struct.clbox** %274, i64 %idxprom284
  %275 = load %struct.clbox*, %struct.clbox** %arrayidx285, align 8
  store %struct.clbox* %275, %struct.clbox** %clptr, align 8
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.291, %if.then.283
  %276 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge287 = getelementptr inbounds %struct.clbox, %struct.clbox* %276, i32 0, i32 0
  %277 = load i32, i32* %edge287, align 4
  %278 = load i32, i32* %edge2, align 4
  %cmp288 = icmp eq i32 %277, %278
  br i1 %cmp288, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %for.cond.286
  br label %for.end.293

if.end.290:                                       ; preds = %for.cond.286
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290
  %279 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next292 = getelementptr inbounds %struct.clbox, %struct.clbox* %279, i32 0, i32 7
  %280 = load %struct.clbox*, %struct.clbox** %next292, align 8
  store %struct.clbox* %280, %struct.clbox** %clptr, align 8
  br label %for.cond.286

for.end.293:                                      ; preds = %if.then.289
  %281 = load i32, i32* %width, align 4
  %282 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length294 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %282, i32 0, i32 3
  %283 = load i32, i32* %length294, align 4
  %sub295 = sub nsw i32 %281, %283
  %284 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact296 = getelementptr inbounds %struct.clbox, %struct.clbox* %284, i32 0, i32 6
  %285 = load i32, i32* %compact296, align 4
  %cmp297 = icmp slt i32 %sub295, %285
  br i1 %cmp297, label %if.then.298, label %if.end.303

if.then.298:                                      ; preds = %for.end.293
  %286 = load i32, i32* %width, align 4
  %287 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length299 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %287, i32 0, i32 3
  %288 = load i32, i32* %length299, align 4
  %sub300 = sub nsw i32 %286, %288
  %289 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact301 = getelementptr inbounds %struct.clbox, %struct.clbox* %289, i32 0, i32 6
  store i32 %sub300, i32* %compact301, align 4
  %290 = load i32, i32* %extraSpace2, align 4
  %291 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace302 = getelementptr inbounds %struct.clbox, %struct.clbox* %291, i32 0, i32 1
  store i32 %290, i32* %extraSpace302, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.298, %for.end.293
  %292 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV304 = getelementptr inbounds %struct.clbox, %struct.clbox* %292, i32 0, i32 2
  store i32 0, i32* %HorV304, align 4
  %293 = load i32, i32* %edge2, align 4
  %idxprom305 = sext i32 %293 to i64
  %294 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %294, i64 %idxprom305
  %loc307 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx306, i32 0, i32 3
  %295 = load i32, i32* %loc307, align 4
  %296 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc308 = getelementptr inbounds %struct.clbox, %struct.clbox* %296, i32 0, i32 3
  store i32 %295, i32* %loc308, align 4
  %297 = load i32, i32* %edge2, align 4
  %idxprom309 = sext i32 %297 to i64
  %298 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx310 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %298, i64 %idxprom309
  %start311 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx310, i32 0, i32 1
  %299 = load i32, i32* %start311, align 4
  %300 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start312 = getelementptr inbounds %struct.clbox, %struct.clbox* %300, i32 0, i32 4
  store i32 %299, i32* %start312, align 4
  %301 = load i32, i32* %edge2, align 4
  %idxprom313 = sext i32 %301 to i64
  %302 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx314 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %302, i64 %idxprom313
  %end315 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx314, i32 0, i32 2
  %303 = load i32, i32* %end315, align 4
  %304 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end316 = getelementptr inbounds %struct.clbox, %struct.clbox* %304, i32 0, i32 5
  store i32 %303, i32* %end316, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.303, %if.end.281
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.317, %if.then.213
  %305 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next319 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %305, i32 0, i32 4
  %306 = load %struct.wcbox*, %struct.wcbox** %next319, align 8
  store %struct.wcbox* %306, %struct.wcbox** %ptr, align 8
  br label %for.cond.208

for.end.320:                                      ; preds = %for.cond.208
  br label %for.inc.321

for.inc.321:                                      ; preds = %for.end.320
  %307 = load i32, i32* %i, align 4
  %inc322 = add nsw i32 %307, 1
  store i32 %inc322, i32* %i, align 4
  br label %for.cond.203

for.end.323:                                      ; preds = %for.cond.203
  store i32 1, i32* %i, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.449, %for.end.323
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* @numYnodes, align 4
  %cmp325 = icmp sle i32 %308, %309
  br i1 %cmp325, label %for.body.326, label %for.end.451

for.body.326:                                     ; preds = %for.cond.324
  %310 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %310 to i64
  %311 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx328 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %311, i64 %idxprom327
  %312 = load %struct.wcbox*, %struct.wcbox** %arrayidx328, align 8
  store %struct.wcbox* %312, %struct.wcbox** %ptr, align 8
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.446, %for.body.326
  %313 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp330 = icmp ne %struct.wcbox* %313, null
  br i1 %cmp330, label %for.body.331, label %for.end.448

for.body.331:                                     ; preds = %for.cond.329
  %314 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth332 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %314, i32 0, i32 0
  %315 = load i32, i32* %fixedWidth332, align 4
  %cmp333 = icmp eq i32 %315, 1
  br i1 %cmp333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %for.body.331
  br label %for.inc.446

if.end.335:                                       ; preds = %for.body.331
  store i32 0, i32* %width, align 4
  %316 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels336 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %316, i32 0, i32 2
  %317 = load i32*, i32** %channels336, align 8
  %arrayidx337 = getelementptr inbounds i32, i32* %317, i64 1
  %318 = load i32, i32* %arrayidx337, align 4
  %idxprom338 = sext i32 %318 to i64
  %319 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx339 = getelementptr inbounds %struct.ebox, %struct.ebox* %319, i64 %idxprom338
  %edge1340 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx339, i32 0, i32 8
  %320 = load i32, i32* %edge1340, align 4
  store i32 %320, i32* %edge1, align 4
  %321 = load i32, i32* %edge1, align 4
  %idxprom341 = sext i32 %321 to i64
  %322 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx342 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %322, i64 %idxprom341
  %cell343 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx342, i32 0, i32 0
  %323 = load i32, i32* %cell343, align 4
  store i32 %323, i32* %cell1, align 4
  %324 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels344 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %324, i32 0, i32 2
  %325 = load i32*, i32** %channels344, align 8
  %arrayidx345 = getelementptr inbounds i32, i32* %325, i64 0
  %326 = load i32, i32* %arrayidx345, align 4
  store i32 %326, i32* %count, align 4
  %327 = load i32, i32* %count, align 4
  %idxprom346 = sext i32 %327 to i64
  %328 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels347 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %328, i32 0, i32 2
  %329 = load i32*, i32** %channels347, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %329, i64 %idxprom346
  %330 = load i32, i32* %arrayidx348, align 4
  %idxprom349 = sext i32 %330 to i64
  %331 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx350 = getelementptr inbounds %struct.ebox, %struct.ebox* %331, i64 %idxprom349
  %edge2351 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx350, i32 0, i32 9
  %332 = load i32, i32* %edge2351, align 4
  store i32 %332, i32* %edge2, align 4
  %333 = load i32, i32* %edge2, align 4
  %idxprom352 = sext i32 %333 to i64
  %334 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx353 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %334, i64 %idxprom352
  %cell354 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx353, i32 0, i32 0
  %335 = load i32, i32* %cell354, align 4
  store i32 %335, i32* %cell2, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.365, %if.end.335
  %336 = load i32, i32* %c, align 4
  %337 = load i32, i32* %count, align 4
  %cmp356 = icmp sle i32 %336, %337
  br i1 %cmp356, label %for.body.357, label %for.end.367

for.body.357:                                     ; preds = %for.cond.355
  %338 = load i32, i32* %c, align 4
  %idxprom358 = sext i32 %338 to i64
  %339 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels359 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %339, i32 0, i32 2
  %340 = load i32*, i32** %channels359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %340, i64 %idxprom358
  %341 = load i32, i32* %arrayidx360, align 4
  %idxprom361 = sext i32 %341 to i64
  %342 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx362 = getelementptr inbounds %struct.ebox, %struct.ebox* %342, i64 %idxprom361
  %width363 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx362, i32 0, i32 2
  %343 = load i32, i32* %width363, align 4
  %344 = load i32, i32* %width, align 4
  %add364 = add nsw i32 %344, %343
  store i32 %add364, i32* %width, align 4
  br label %for.inc.365

for.inc.365:                                      ; preds = %for.body.357
  %345 = load i32, i32* %c, align 4
  %inc366 = add nsw i32 %345, 1
  store i32 %inc366, i32* %c, align 4
  br label %for.cond.355

for.end.367:                                      ; preds = %for.cond.355
  %346 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length368 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %346, i32 0, i32 3
  %347 = load i32, i32* %length368, align 4
  %div369 = sdiv i32 %347, 2
  store i32 %div369, i32* %extraSpace1, align 4
  %348 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length370 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %348, i32 0, i32 3
  %349 = load i32, i32* %length370, align 4
  %350 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length371 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %350, i32 0, i32 3
  %351 = load i32, i32* %length371, align 4
  %div372 = sdiv i32 %351, 2
  %sub373 = sub nsw i32 %349, %div372
  store i32 %sub373, i32* %extraSpace2, align 4
  %352 = load i32, i32* %cell1, align 4
  %cmp374 = icmp sgt i32 %352, 0
  br i1 %cmp374, label %if.then.375, label %if.end.409

if.then.375:                                      ; preds = %for.end.367
  %353 = load i32, i32* %cell1, align 4
  %idxprom376 = sext i32 %353 to i64
  %354 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx377 = getelementptr inbounds %struct.clbox*, %struct.clbox** %354, i64 %idxprom376
  %355 = load %struct.clbox*, %struct.clbox** %arrayidx377, align 8
  store %struct.clbox* %355, %struct.clbox** %clptr, align 8
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.383, %if.then.375
  %356 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge379 = getelementptr inbounds %struct.clbox, %struct.clbox* %356, i32 0, i32 0
  %357 = load i32, i32* %edge379, align 4
  %358 = load i32, i32* %edge1, align 4
  %cmp380 = icmp eq i32 %357, %358
  br i1 %cmp380, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %for.cond.378
  br label %for.end.385

if.end.382:                                       ; preds = %for.cond.378
  br label %for.inc.383

for.inc.383:                                      ; preds = %if.end.382
  %359 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next384 = getelementptr inbounds %struct.clbox, %struct.clbox* %359, i32 0, i32 7
  %360 = load %struct.clbox*, %struct.clbox** %next384, align 8
  store %struct.clbox* %360, %struct.clbox** %clptr, align 8
  br label %for.cond.378

for.end.385:                                      ; preds = %if.then.381
  %361 = load i32, i32* %width, align 4
  %362 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length386 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %362, i32 0, i32 3
  %363 = load i32, i32* %length386, align 4
  %sub387 = sub nsw i32 %361, %363
  %364 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact388 = getelementptr inbounds %struct.clbox, %struct.clbox* %364, i32 0, i32 6
  %365 = load i32, i32* %compact388, align 4
  %cmp389 = icmp slt i32 %sub387, %365
  br i1 %cmp389, label %if.then.390, label %if.end.395

if.then.390:                                      ; preds = %for.end.385
  %366 = load i32, i32* %width, align 4
  %367 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length391 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %367, i32 0, i32 3
  %368 = load i32, i32* %length391, align 4
  %sub392 = sub nsw i32 %366, %368
  %369 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact393 = getelementptr inbounds %struct.clbox, %struct.clbox* %369, i32 0, i32 6
  store i32 %sub392, i32* %compact393, align 4
  %370 = load i32, i32* %extraSpace1, align 4
  %371 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace394 = getelementptr inbounds %struct.clbox, %struct.clbox* %371, i32 0, i32 1
  store i32 %370, i32* %extraSpace394, align 4
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.390, %for.end.385
  %372 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV396 = getelementptr inbounds %struct.clbox, %struct.clbox* %372, i32 0, i32 2
  store i32 1, i32* %HorV396, align 4
  %373 = load i32, i32* %edge1, align 4
  %idxprom397 = sext i32 %373 to i64
  %374 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx398 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %374, i64 %idxprom397
  %loc399 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx398, i32 0, i32 3
  %375 = load i32, i32* %loc399, align 4
  %376 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc400 = getelementptr inbounds %struct.clbox, %struct.clbox* %376, i32 0, i32 3
  store i32 %375, i32* %loc400, align 4
  %377 = load i32, i32* %edge1, align 4
  %idxprom401 = sext i32 %377 to i64
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx402 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %idxprom401
  %start403 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx402, i32 0, i32 1
  %379 = load i32, i32* %start403, align 4
  %380 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start404 = getelementptr inbounds %struct.clbox, %struct.clbox* %380, i32 0, i32 4
  store i32 %379, i32* %start404, align 4
  %381 = load i32, i32* %edge1, align 4
  %idxprom405 = sext i32 %381 to i64
  %382 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx406 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %382, i64 %idxprom405
  %end407 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx406, i32 0, i32 2
  %383 = load i32, i32* %end407, align 4
  %384 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end408 = getelementptr inbounds %struct.clbox, %struct.clbox* %384, i32 0, i32 5
  store i32 %383, i32* %end408, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.395, %for.end.367
  %385 = load i32, i32* %cell2, align 4
  %cmp410 = icmp sgt i32 %385, 0
  br i1 %cmp410, label %if.then.411, label %if.end.445

if.then.411:                                      ; preds = %if.end.409
  %386 = load i32, i32* %cell2, align 4
  %idxprom412 = sext i32 %386 to i64
  %387 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx413 = getelementptr inbounds %struct.clbox*, %struct.clbox** %387, i64 %idxprom412
  %388 = load %struct.clbox*, %struct.clbox** %arrayidx413, align 8
  store %struct.clbox* %388, %struct.clbox** %clptr, align 8
  br label %for.cond.414

for.cond.414:                                     ; preds = %for.inc.419, %if.then.411
  %389 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge415 = getelementptr inbounds %struct.clbox, %struct.clbox* %389, i32 0, i32 0
  %390 = load i32, i32* %edge415, align 4
  %391 = load i32, i32* %edge2, align 4
  %cmp416 = icmp eq i32 %390, %391
  br i1 %cmp416, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %for.cond.414
  br label %for.end.421

if.end.418:                                       ; preds = %for.cond.414
  br label %for.inc.419

for.inc.419:                                      ; preds = %if.end.418
  %392 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next420 = getelementptr inbounds %struct.clbox, %struct.clbox* %392, i32 0, i32 7
  %393 = load %struct.clbox*, %struct.clbox** %next420, align 8
  store %struct.clbox* %393, %struct.clbox** %clptr, align 8
  br label %for.cond.414

for.end.421:                                      ; preds = %if.then.417
  %394 = load i32, i32* %width, align 4
  %395 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length422 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %395, i32 0, i32 3
  %396 = load i32, i32* %length422, align 4
  %sub423 = sub nsw i32 %394, %396
  %397 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact424 = getelementptr inbounds %struct.clbox, %struct.clbox* %397, i32 0, i32 6
  %398 = load i32, i32* %compact424, align 4
  %cmp425 = icmp slt i32 %sub423, %398
  br i1 %cmp425, label %if.then.426, label %if.end.431

if.then.426:                                      ; preds = %for.end.421
  %399 = load i32, i32* %width, align 4
  %400 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length427 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %400, i32 0, i32 3
  %401 = load i32, i32* %length427, align 4
  %sub428 = sub nsw i32 %399, %401
  %402 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact429 = getelementptr inbounds %struct.clbox, %struct.clbox* %402, i32 0, i32 6
  store i32 %sub428, i32* %compact429, align 4
  %403 = load i32, i32* %extraSpace2, align 4
  %404 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace430 = getelementptr inbounds %struct.clbox, %struct.clbox* %404, i32 0, i32 1
  store i32 %403, i32* %extraSpace430, align 4
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.426, %for.end.421
  %405 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV432 = getelementptr inbounds %struct.clbox, %struct.clbox* %405, i32 0, i32 2
  store i32 1, i32* %HorV432, align 4
  %406 = load i32, i32* %edge2, align 4
  %idxprom433 = sext i32 %406 to i64
  %407 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx434 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %407, i64 %idxprom433
  %loc435 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx434, i32 0, i32 3
  %408 = load i32, i32* %loc435, align 4
  %409 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc436 = getelementptr inbounds %struct.clbox, %struct.clbox* %409, i32 0, i32 3
  store i32 %408, i32* %loc436, align 4
  %410 = load i32, i32* %edge2, align 4
  %idxprom437 = sext i32 %410 to i64
  %411 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx438 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %411, i64 %idxprom437
  %start439 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx438, i32 0, i32 1
  %412 = load i32, i32* %start439, align 4
  %413 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start440 = getelementptr inbounds %struct.clbox, %struct.clbox* %413, i32 0, i32 4
  store i32 %412, i32* %start440, align 4
  %414 = load i32, i32* %edge2, align 4
  %idxprom441 = sext i32 %414 to i64
  %415 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx442 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %415, i64 %idxprom441
  %end443 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx442, i32 0, i32 2
  %416 = load i32, i32* %end443, align 4
  %417 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end444 = getelementptr inbounds %struct.clbox, %struct.clbox* %417, i32 0, i32 5
  store i32 %416, i32* %end444, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.431, %if.end.409
  br label %for.inc.446

for.inc.446:                                      ; preds = %if.end.445, %if.then.334
  %418 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next447 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %418, i32 0, i32 4
  %419 = load %struct.wcbox*, %struct.wcbox** %next447, align 8
  store %struct.wcbox* %419, %struct.wcbox** %ptr, align 8
  br label %for.cond.329

for.end.448:                                      ; preds = %for.cond.329
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.end.448
  %420 = load i32, i32* %i, align 4
  %inc450 = add nsw i32 %420, 1
  store i32 %inc450, i32* %i, align 4
  br label %for.cond.324

for.end.451:                                      ; preds = %for.cond.324
  store i32 1, i32* %c, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.473, %for.end.451
  %421 = load i32, i32* %c, align 4
  %422 = load i32, i32* @numberCells, align 4
  %cmp453 = icmp sle i32 %421, %422
  br i1 %cmp453, label %for.body.454, label %for.end.475

for.body.454:                                     ; preds = %for.cond.452
  %423 = load i32, i32* %c, align 4
  %idxprom455 = sext i32 %423 to i64
  %424 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx456 = getelementptr inbounds %struct.clbox*, %struct.clbox** %424, i64 %idxprom455
  %425 = load %struct.clbox*, %struct.clbox** %arrayidx456, align 8
  store %struct.clbox* %425, %struct.clbox** %clptr, align 8
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %427 = load i32, i32* %c, align 4
  %call457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %426, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %427)
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.470, %for.body.454
  %428 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %cmp459 = icmp ne %struct.clbox* %428, null
  br i1 %cmp459, label %for.body.460, label %for.end.472

for.body.460:                                     ; preds = %for.cond.458
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %430 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge461 = getelementptr inbounds %struct.clbox, %struct.clbox* %430, i32 0, i32 0
  %431 = load i32, i32* %edge461, align 4
  %432 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace462 = getelementptr inbounds %struct.clbox, %struct.clbox* %432, i32 0, i32 1
  %433 = load i32, i32* %extraSpace462, align 4
  %call463 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %429, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %431, i32 %433)
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %435 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV464 = getelementptr inbounds %struct.clbox, %struct.clbox* %435, i32 0, i32 2
  %436 = load i32, i32* %HorV464, align 4
  %437 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc465 = getelementptr inbounds %struct.clbox, %struct.clbox* %437, i32 0, i32 3
  %438 = load i32, i32* %loc465, align 4
  %439 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start466 = getelementptr inbounds %struct.clbox, %struct.clbox* %439, i32 0, i32 4
  %440 = load i32, i32* %start466, align 4
  %call467 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %434, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 %436, i32 %438, i32 %440)
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %442 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end468 = getelementptr inbounds %struct.clbox, %struct.clbox* %442, i32 0, i32 5
  %443 = load i32, i32* %end468, align 4
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %441, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %443)
  br label %for.inc.470

for.inc.470:                                      ; preds = %for.body.460
  %444 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next471 = getelementptr inbounds %struct.clbox, %struct.clbox* %444, i32 0, i32 7
  %445 = load %struct.clbox*, %struct.clbox** %next471, align 8
  store %struct.clbox* %445, %struct.clbox** %clptr, align 8
  br label %for.cond.458

for.end.472:                                      ; preds = %for.cond.458
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.end.472
  %446 = load i32, i32* %c, align 4
  %inc474 = add nsw i32 %446, 1
  store i32 %inc474, i32* %c, align 4
  br label %for.cond.452

for.end.475:                                      ; preds = %for.cond.452
  ret void
}

declare void @tinsert(%struct.tnode**, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
