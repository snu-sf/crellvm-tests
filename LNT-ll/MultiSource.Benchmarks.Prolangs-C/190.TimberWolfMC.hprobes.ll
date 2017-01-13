; ModuleID = './MultiSource.Benchmarks.Prolangs-C/190.TimberWolfMC.hprobes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@vFixedList = external global %struct.dlink1*, align 8
@edgeList = external global %struct.edgebox*, align 8
@Vroot = external global %struct.tnode*, align 8
@Vptrs = external global %struct.dlink1**, align 8
@numProbes = external global i32, align 4
@edgeCount = external global i32, align 4
@hEdgeRoot = external global %struct.tnode*, align 8
@fpdebug = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"hprobe:%d  \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1
@vFixedEnd = external global %struct.dlink1*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"hprobe:%d  start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @hprobes() #0 {
entry:
  %downPtr = alloca %struct.dlink1*, align 8
  %up1ptr = alloca %struct.dlink1*, align 8
  %up2ptr = alloca %struct.dlink1*, align 8
  %checkPtr = alloca %struct.dlink1*, align 8
  %ptr = alloca %struct.dlink1*, align 8
  %dx = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %dedge = alloca i32, align 4
  %by1 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %uedge = alloca i32, align 4
  %edge = alloca i32, align 4
  %check = alloca i32, align 4
  %u1y2 = alloca i32, align 4
  %u1y1 = alloca i32, align 4
  %u1x = alloca i32, align 4
  %u2y2 = alloca i32, align 4
  %u2y1 = alloca i32, align 4
  %u2x = alloca i32, align 4
  %0 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %0, %struct.dlink1** %downPtr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.515, %entry
  %1 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  %cmp = icmp ne %struct.dlink1* %1, null
  br i1 %cmp, label %for.body, label %for.end.517

for.body:                                         ; preds = %for.cond
  %2 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  %edge1 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %2, i32 0, i32 0
  %3 = load i32, i32* %edge1, align 4
  store i32 %3, i32* %dedge, align 4
  %4 = load i32, i32* %dedge, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx = getelementptr inbounds %struct.edgebox, %struct.edgebox* %5, i64 %idxprom
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx, i32 0, i32 5
  %6 = load i32, i32* %UorR, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.515

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %dedge, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx4 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %8, i64 %idxprom3
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx4, i32 0, i32 3
  %9 = load i32, i32* %loc, align 4
  store i32 %9, i32* %dx, align 4
  %10 = load i32, i32* %dedge, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx6 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %11, i64 %idxprom5
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx6, i32 0, i32 1
  %12 = load i32, i32* %start, align 4
  store i32 %12, i32* %dy1, align 4
  %13 = load i32, i32* %dedge, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %14, i64 %idxprom7
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx8, i32 0, i32 2
  %15 = load i32, i32* %end, align 4
  store i32 %15, i32* %dy2, align 4
  %16 = load i32, i32* %dedge, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx10 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %17, i64 %idxprom9
  %prevEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx10, i32 0, i32 7
  %18 = load i32, i32* %prevEdge, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx12 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %idxprom11
  %UorR13 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx12, i32 0, i32 5
  %20 = load i32, i32* %UorR13, align 4
  %cmp14 = icmp eq i32 %20, 1
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %21 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %22 = load i32, i32* %dx, align 4
  %call = call i32 @tprop(%struct.tnode* %21, i32 %22)
  %idxprom16 = sext i32 %call to i64
  %23 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx17 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %23, i64 %idxprom16
  %24 = load %struct.dlink1*, %struct.dlink1** %arrayidx17, align 8
  store %struct.dlink1* %24, %struct.dlink1** %up2ptr, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then.15
  %25 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %cmp19 = icmp ne %struct.dlink1* %25, null
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %26 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %edge21 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %26, i32 0, i32 0
  %27 = load i32, i32* %edge21, align 4
  store i32 %27, i32* %uedge, align 4
  %28 = load i32, i32* %uedge, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx23 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %29, i64 %idxprom22
  %UorR24 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx23, i32 0, i32 5
  %30 = load i32, i32* %UorR24, align 4
  %cmp25 = icmp slt i32 %30, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.20
  br label %for.inc

if.end.27:                                        ; preds = %for.body.20
  %31 = load i32, i32* %uedge, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx29 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %32, i64 %idxprom28
  %loc30 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx29, i32 0, i32 3
  %33 = load i32, i32* %loc30, align 4
  store i32 %33, i32* %u2x, align 4
  %34 = load i32, i32* %uedge, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx32 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %35, i64 %idxprom31
  %start33 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx32, i32 0, i32 1
  %36 = load i32, i32* %start33, align 4
  store i32 %36, i32* %u2y1, align 4
  %37 = load i32, i32* %uedge, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %idxprom34
  %end36 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx35, i32 0, i32 2
  %39 = load i32, i32* %end36, align 4
  store i32 %39, i32* %u2y2, align 4
  %40 = load i32, i32* %u2y2, align 4
  %41 = load i32, i32* %dy2, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %42 = load i32, i32* %u2y1, align 4
  %43 = load i32, i32* %dy2, align 4
  %cmp38 = icmp sge i32 %42, %43
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.27
  br label %for.inc

if.end.40:                                        ; preds = %lor.lhs.false
  br label %for.end

for.inc:                                          ; preds = %if.then.39, %if.then.26
  %44 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %44, i32 0, i32 2
  %45 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %45, %struct.dlink1** %up2ptr, align 8
  br label %for.cond.18

for.end:                                          ; preds = %if.end.40, %for.cond.18
  br label %if.end.41

if.else:                                          ; preds = %if.end
  store %struct.dlink1* null, %struct.dlink1** %up2ptr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %for.end
  %46 = load i32, i32* %dedge, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx43 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %47, i64 %idxprom42
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx43, i32 0, i32 8
  %48 = load i32, i32* %nextEdge, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx45 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %49, i64 %idxprom44
  %UorR46 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx45, i32 0, i32 5
  %50 = load i32, i32* %UorR46, align 4
  %cmp47 = icmp eq i32 %50, -1
  br i1 %cmp47, label %if.then.48, label %if.else.79

if.then.48:                                       ; preds = %if.end.41
  %51 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %52 = load i32, i32* %dx, align 4
  %call49 = call i32 @tprop(%struct.tnode* %51, i32 %52)
  %idxprom50 = sext i32 %call49 to i64
  %53 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx51 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %53, i64 %idxprom50
  %54 = load %struct.dlink1*, %struct.dlink1** %arrayidx51, align 8
  store %struct.dlink1* %54, %struct.dlink1** %up1ptr, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.76, %if.then.48
  %55 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %cmp53 = icmp ne %struct.dlink1* %55, null
  br i1 %cmp53, label %for.body.54, label %for.end.78

for.body.54:                                      ; preds = %for.cond.52
  %56 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %edge55 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %56, i32 0, i32 0
  %57 = load i32, i32* %edge55, align 4
  store i32 %57, i32* %uedge, align 4
  %58 = load i32, i32* %uedge, align 4
  %idxprom56 = sext i32 %58 to i64
  %59 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx57 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %59, i64 %idxprom56
  %UorR58 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx57, i32 0, i32 5
  %60 = load i32, i32* %UorR58, align 4
  %cmp59 = icmp slt i32 %60, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.54
  br label %for.inc.76

if.end.61:                                        ; preds = %for.body.54
  %61 = load i32, i32* %uedge, align 4
  %idxprom62 = sext i32 %61 to i64
  %62 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx63 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %62, i64 %idxprom62
  %loc64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx63, i32 0, i32 3
  %63 = load i32, i32* %loc64, align 4
  store i32 %63, i32* %u1x, align 4
  %64 = load i32, i32* %uedge, align 4
  %idxprom65 = sext i32 %64 to i64
  %65 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx66 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %65, i64 %idxprom65
  %start67 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx66, i32 0, i32 1
  %66 = load i32, i32* %start67, align 4
  store i32 %66, i32* %u1y1, align 4
  %67 = load i32, i32* %uedge, align 4
  %idxprom68 = sext i32 %67 to i64
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %idxprom68
  %end70 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx69, i32 0, i32 2
  %69 = load i32, i32* %end70, align 4
  store i32 %69, i32* %u1y2, align 4
  %70 = load i32, i32* %u1y2, align 4
  %71 = load i32, i32* %dy1, align 4
  %cmp71 = icmp sle i32 %70, %71
  br i1 %cmp71, label %if.then.74, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.61
  %72 = load i32, i32* %u1y1, align 4
  %73 = load i32, i32* %dy1, align 4
  %cmp73 = icmp sgt i32 %72, %73
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.72, %if.end.61
  br label %for.inc.76

if.end.75:                                        ; preds = %lor.lhs.false.72
  br label %for.end.78

for.inc.76:                                       ; preds = %if.then.74, %if.then.60
  %74 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %next77 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %74, i32 0, i32 2
  %75 = load %struct.dlink1*, %struct.dlink1** %next77, align 8
  store %struct.dlink1* %75, %struct.dlink1** %up1ptr, align 8
  br label %for.cond.52

for.end.78:                                       ; preds = %if.end.75, %for.cond.52
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.41
  store %struct.dlink1* null, %struct.dlink1** %up1ptr, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %for.end.78
  %76 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %cmp81 = icmp ne %struct.dlink1* %76, null
  br i1 %cmp81, label %land.lhs.true, label %if.end.183

land.lhs.true:                                    ; preds = %if.end.80
  %77 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %78 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %cmp82 = icmp eq %struct.dlink1* %77, %78
  br i1 %cmp82, label %if.then.83, label %if.end.183

if.then.83:                                       ; preds = %land.lhs.true
  store i32 1, i32* %check, align 4
  %79 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %80 = load i32, i32* %dx, align 4
  %call84 = call i32 @tprop(%struct.tnode* %79, i32 %80)
  %idxprom85 = sext i32 %call84 to i64
  %81 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx86 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %81, i64 %idxprom85
  %82 = load %struct.dlink1*, %struct.dlink1** %arrayidx86, align 8
  store %struct.dlink1* %82, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.117, %if.then.83
  %83 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %cmp88 = icmp ne %struct.dlink1* %83, null
  br i1 %cmp88, label %for.body.89, label %for.end.119

for.body.89:                                      ; preds = %for.cond.87
  %84 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge90 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %84, i32 0, i32 0
  %85 = load i32, i32* %edge90, align 4
  %idxprom91 = sext i32 %85 to i64
  %86 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx92 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %86, i64 %idxprom91
  %UorR93 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx92, i32 0, i32 5
  %87 = load i32, i32* %UorR93, align 4
  %cmp94 = icmp slt i32 %87, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body.89
  br label %for.inc.117

if.end.96:                                        ; preds = %for.body.89
  %88 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge97 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %88, i32 0, i32 0
  %89 = load i32, i32* %edge97, align 4
  %idxprom98 = sext i32 %89 to i64
  %90 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx99 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %90, i64 %idxprom98
  %loc100 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx99, i32 0, i32 3
  %91 = load i32, i32* %loc100, align 4
  %92 = load i32, i32* %u2x, align 4
  %cmp101 = icmp sge i32 %91, %92
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.96
  br label %for.end.119

if.end.103:                                       ; preds = %if.end.96
  %93 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge104 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %93, i32 0, i32 0
  %94 = load i32, i32* %edge104, align 4
  %idxprom105 = sext i32 %94 to i64
  %95 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx106 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %95, i64 %idxprom105
  %start107 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx106, i32 0, i32 1
  %96 = load i32, i32* %start107, align 4
  %97 = load i32, i32* %dy2, align 4
  %cmp108 = icmp sge i32 %96, %97
  br i1 %cmp108, label %if.then.115, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %if.end.103
  %98 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge110 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %98, i32 0, i32 0
  %99 = load i32, i32* %edge110, align 4
  %idxprom111 = sext i32 %99 to i64
  %100 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx112 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %100, i64 %idxprom111
  %end113 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx112, i32 0, i32 2
  %101 = load i32, i32* %end113, align 4
  %102 = load i32, i32* %dy1, align 4
  %cmp114 = icmp sle i32 %101, %102
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false.109, %if.end.103
  br label %for.inc.117

if.end.116:                                       ; preds = %lor.lhs.false.109
  store i32 0, i32* %check, align 4
  br label %for.end.119

for.inc.117:                                      ; preds = %if.then.115, %if.then.95
  %103 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %next118 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %103, i32 0, i32 2
  %104 = load %struct.dlink1*, %struct.dlink1** %next118, align 8
  store %struct.dlink1* %104, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.87

for.end.119:                                      ; preds = %if.end.116, %if.then.102, %for.cond.87
  %105 = load i32, i32* %check, align 4
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.then.120, label %if.else.181

if.then.120:                                      ; preds = %for.end.119
  %106 = load i32, i32* %dx, align 4
  %107 = load i32, i32* @numProbes, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* @numProbes, align 4
  %108 = load i32, i32* @edgeCount, align 4
  %add = add nsw i32 %inc, %108
  %idxprom121 = sext i32 %add to i64
  %109 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx122 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %109, i64 %idxprom121
  %start123 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx122, i32 0, i32 1
  store i32 %106, i32* %start123, align 4
  %110 = load i32, i32* %u2x, align 4
  %111 = load i32, i32* @numProbes, align 4
  %112 = load i32, i32* @edgeCount, align 4
  %add124 = add nsw i32 %111, %112
  %idxprom125 = sext i32 %add124 to i64
  %113 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx126 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %113, i64 %idxprom125
  %end127 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx126, i32 0, i32 2
  store i32 %110, i32* %end127, align 4
  %114 = load i32, i32* %dy2, align 4
  %115 = load i32, i32* @numProbes, align 4
  %116 = load i32, i32* @edgeCount, align 4
  %add128 = add nsw i32 %115, %116
  %idxprom129 = sext i32 %add128 to i64
  %117 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx130 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %117, i64 %idxprom129
  %loc131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx130, i32 0, i32 3
  store i32 %114, i32* %loc131, align 4
  %118 = load i32, i32* %u2x, align 4
  %119 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 %118, %119
  %120 = load i32, i32* @numProbes, align 4
  %121 = load i32, i32* @edgeCount, align 4
  %add132 = add nsw i32 %120, %121
  %idxprom133 = sext i32 %add132 to i64
  %122 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx134 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %122, i64 %idxprom133
  %length = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx134, i32 0, i32 4
  store i32 %sub, i32* %length, align 4
  %123 = load i32, i32* @numProbes, align 4
  %124 = load i32, i32* @edgeCount, align 4
  %add135 = add nsw i32 %123, %124
  %idxprom136 = sext i32 %add135 to i64
  %125 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx137 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %125, i64 %idxprom136
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx137, i32 0, i32 6
  store i32 0, i32* %fixed, align 4
  %126 = load i32, i32* @numProbes, align 4
  %127 = load i32, i32* @edgeCount, align 4
  %add138 = add nsw i32 %126, %127
  %idxprom139 = sext i32 %add138 to i64
  %128 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx140 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %128, i64 %idxprom139
  %cell = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx140, i32 0, i32 0
  store i32 0, i32* %cell, align 4
  %129 = load i32, i32* @numProbes, align 4
  %130 = load i32, i32* @edgeCount, align 4
  %add141 = add nsw i32 %129, %130
  %idxprom142 = sext i32 %add141 to i64
  %131 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx143 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %131, i64 %idxprom142
  %UorR144 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx143, i32 0, i32 5
  store i32 1, i32* %UorR144, align 4
  %132 = load i32, i32* %dy2, align 4
  %133 = load i32, i32* @numProbes, align 4
  %134 = load i32, i32* @edgeCount, align 4
  %add145 = add nsw i32 %133, %134
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %132, i32 %add145)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %136 = load i32, i32* @numProbes, align 4
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %136)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %138 = load i32, i32* %dx, align 4
  %139 = load i32, i32* %u2x, align 4
  %140 = load i32, i32* %dy2, align 4
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %138, i32 %139, i32 %140, i32 1)
  %141 = load i32, i32* %dx, align 4
  %142 = load i32, i32* @numProbes, align 4
  %inc148 = add nsw i32 %142, 1
  store i32 %inc148, i32* @numProbes, align 4
  %143 = load i32, i32* @edgeCount, align 4
  %add149 = add nsw i32 %inc148, %143
  %idxprom150 = sext i32 %add149 to i64
  %144 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx151 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %144, i64 %idxprom150
  %start152 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx151, i32 0, i32 1
  store i32 %141, i32* %start152, align 4
  %145 = load i32, i32* %u2x, align 4
  %146 = load i32, i32* @numProbes, align 4
  %147 = load i32, i32* @edgeCount, align 4
  %add153 = add nsw i32 %146, %147
  %idxprom154 = sext i32 %add153 to i64
  %148 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx155 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %148, i64 %idxprom154
  %end156 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx155, i32 0, i32 2
  store i32 %145, i32* %end156, align 4
  %149 = load i32, i32* %dy1, align 4
  %150 = load i32, i32* @numProbes, align 4
  %151 = load i32, i32* @edgeCount, align 4
  %add157 = add nsw i32 %150, %151
  %idxprom158 = sext i32 %add157 to i64
  %152 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx159 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %152, i64 %idxprom158
  %loc160 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx159, i32 0, i32 3
  store i32 %149, i32* %loc160, align 4
  %153 = load i32, i32* %u2x, align 4
  %154 = load i32, i32* %dx, align 4
  %sub161 = sub nsw i32 %153, %154
  %155 = load i32, i32* @numProbes, align 4
  %156 = load i32, i32* @edgeCount, align 4
  %add162 = add nsw i32 %155, %156
  %idxprom163 = sext i32 %add162 to i64
  %157 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx164 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %157, i64 %idxprom163
  %length165 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx164, i32 0, i32 4
  store i32 %sub161, i32* %length165, align 4
  %158 = load i32, i32* @numProbes, align 4
  %159 = load i32, i32* @edgeCount, align 4
  %add166 = add nsw i32 %158, %159
  %idxprom167 = sext i32 %add166 to i64
  %160 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx168 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %160, i64 %idxprom167
  %fixed169 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx168, i32 0, i32 6
  store i32 0, i32* %fixed169, align 4
  %161 = load i32, i32* @numProbes, align 4
  %162 = load i32, i32* @edgeCount, align 4
  %add170 = add nsw i32 %161, %162
  %idxprom171 = sext i32 %add170 to i64
  %163 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx172 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %163, i64 %idxprom171
  %cell173 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx172, i32 0, i32 0
  store i32 0, i32* %cell173, align 4
  %164 = load i32, i32* @numProbes, align 4
  %165 = load i32, i32* @edgeCount, align 4
  %add174 = add nsw i32 %164, %165
  %idxprom175 = sext i32 %add174 to i64
  %166 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx176 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %166, i64 %idxprom175
  %UorR177 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx176, i32 0, i32 5
  store i32 -1, i32* %UorR177, align 4
  %167 = load i32, i32* %dy1, align 4
  %168 = load i32, i32* @numProbes, align 4
  %169 = load i32, i32* @edgeCount, align 4
  %add178 = add nsw i32 %168, %169
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %167, i32 %add178)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %171 = load i32, i32* @numProbes, align 4
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %171)
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %173 = load i32, i32* %dx, align 4
  %174 = load i32, i32* %u2x, align 4
  %175 = load i32, i32* %dy1, align 4
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %173, i32 %174, i32 %175, i32 -1)
  br label %if.end.182

if.else.181:                                      ; preds = %for.end.119
  %176 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  call void @doubleBack(%struct.dlink1* %176)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181, %if.then.120
  br label %for.inc.515

if.end.183:                                       ; preds = %land.lhs.true, %if.end.80
  %177 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %cmp184 = icmp ne %struct.dlink1* %177, null
  br i1 %cmp184, label %land.lhs.true.185, label %if.end.348

land.lhs.true.185:                                ; preds = %if.end.183
  %178 = load %struct.dlink1*, %struct.dlink1** %up2ptr, align 8
  %edge186 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %178, i32 0, i32 0
  %179 = load i32, i32* %edge186, align 4
  %idxprom187 = sext i32 %179 to i64
  %180 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx188 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %180, i64 %idxprom187
  %prevEdge189 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx188, i32 0, i32 7
  %181 = load i32, i32* %prevEdge189, align 4
  %idxprom190 = sext i32 %181 to i64
  %182 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx191 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %182, i64 %idxprom190
  %UorR192 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx191, i32 0, i32 5
  %183 = load i32, i32* %UorR192, align 4
  %cmp193 = icmp eq i32 %183, -1
  br i1 %cmp193, label %if.then.194, label %if.end.348

if.then.194:                                      ; preds = %land.lhs.true.185
  %184 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %185 = load i32, i32* %u2x, align 4
  %call195 = call i32 @tprop(%struct.tnode* %184, i32 %185)
  %idxprom196 = sext i32 %call195 to i64
  %186 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx197 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %186, i64 %idxprom196
  %187 = load %struct.dlink1*, %struct.dlink1** %arrayidx197, align 8
  store %struct.dlink1* %187, %struct.dlink1** %ptr, align 8
  %188 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next198 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %188, i32 0, i32 2
  %189 = load %struct.dlink1*, %struct.dlink1** %next198, align 8
  store %struct.dlink1* %189, %struct.dlink1** %ptr, align 8
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.209, %if.then.194
  %190 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp200 = icmp ne %struct.dlink1* %190, null
  br i1 %cmp200, label %for.body.201, label %for.end.211

for.body.201:                                     ; preds = %for.cond.199
  %191 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge202 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %191, i32 0, i32 0
  %192 = load i32, i32* %edge202, align 4
  %idxprom203 = sext i32 %192 to i64
  %193 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx204 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %193, i64 %idxprom203
  %loc205 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx204, i32 0, i32 3
  %194 = load i32, i32* %loc205, align 4
  %195 = load i32, i32* %u2x, align 4
  %cmp206 = icmp sgt i32 %194, %195
  br i1 %cmp206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %for.body.201
  br label %for.end.211

if.end.208:                                       ; preds = %for.body.201
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %196 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next210 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %196, i32 0, i32 2
  %197 = load %struct.dlink1*, %struct.dlink1** %next210, align 8
  store %struct.dlink1* %197, %struct.dlink1** %ptr, align 8
  br label %for.cond.199

for.end.211:                                      ; preds = %if.then.207, %for.cond.199
  %198 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp212 = icmp eq %struct.dlink1* %198, null
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %for.end.211
  %199 = load %struct.dlink1*, %struct.dlink1** @vFixedEnd, align 8
  store %struct.dlink1* %199, %struct.dlink1** %ptr, align 8
  br label %if.end.215

if.else.214:                                      ; preds = %for.end.211
  %200 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev = getelementptr inbounds %struct.dlink1, %struct.dlink1* %200, i32 0, i32 1
  %201 = load %struct.dlink1*, %struct.dlink1** %prev, align 8
  store %struct.dlink1* %201, %struct.dlink1** %ptr, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.214, %if.then.213
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.237, %if.end.215
  %202 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp217 = icmp ne %struct.dlink1* %202, null
  br i1 %cmp217, label %for.body.218, label %for.end.239

for.body.218:                                     ; preds = %for.cond.216
  %203 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge219 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %203, i32 0, i32 0
  %204 = load i32, i32* %edge219, align 4
  store i32 %204, i32* %edge, align 4
  %205 = load i32, i32* %edge, align 4
  %idxprom220 = sext i32 %205 to i64
  %206 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx221 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %206, i64 %idxprom220
  %UorR222 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx221, i32 0, i32 5
  %207 = load i32, i32* %UorR222, align 4
  %cmp223 = icmp sgt i32 %207, 0
  br i1 %cmp223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %for.body.218
  br label %for.inc.237

if.end.225:                                       ; preds = %for.body.218
  %208 = load i32, i32* %edge, align 4
  %idxprom226 = sext i32 %208 to i64
  %209 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx227 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %209, i64 %idxprom226
  %start228 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx227, i32 0, i32 1
  %210 = load i32, i32* %start228, align 4
  store i32 %210, i32* %by1, align 4
  %211 = load i32, i32* %edge, align 4
  %idxprom229 = sext i32 %211 to i64
  %212 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx230 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %212, i64 %idxprom229
  %end231 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx230, i32 0, i32 2
  %213 = load i32, i32* %end231, align 4
  store i32 %213, i32* %by2, align 4
  %214 = load i32, i32* %by2, align 4
  %215 = load i32, i32* %u2y1, align 4
  %cmp232 = icmp sle i32 %214, %215
  br i1 %cmp232, label %if.then.235, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.end.225
  %216 = load i32, i32* %by1, align 4
  %217 = load i32, i32* %u2y1, align 4
  %cmp234 = icmp sgt i32 %216, %217
  br i1 %cmp234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %lor.lhs.false.233, %if.end.225
  br label %for.inc.237

if.end.236:                                       ; preds = %lor.lhs.false.233
  br label %for.end.239

for.inc.237:                                      ; preds = %if.then.235, %if.then.224
  %218 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev238 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %218, i32 0, i32 1
  %219 = load %struct.dlink1*, %struct.dlink1** %prev238, align 8
  store %struct.dlink1* %219, %struct.dlink1** %ptr, align 8
  br label %for.cond.216

for.end.239:                                      ; preds = %if.end.236, %for.cond.216
  %220 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  %221 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp240 = icmp eq %struct.dlink1* %220, %221
  br i1 %cmp240, label %if.then.241, label %if.end.347

if.then.241:                                      ; preds = %for.end.239
  store i32 1, i32* %check, align 4
  %222 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %223 = load i32, i32* %dx, align 4
  %call242 = call i32 @tprop(%struct.tnode* %222, i32 %223)
  %idxprom243 = sext i32 %call242 to i64
  %224 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx244 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %224, i64 %idxprom243
  %225 = load %struct.dlink1*, %struct.dlink1** %arrayidx244, align 8
  store %struct.dlink1* %225, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.275, %if.then.241
  %226 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %cmp246 = icmp ne %struct.dlink1* %226, null
  br i1 %cmp246, label %for.body.247, label %for.end.277

for.body.247:                                     ; preds = %for.cond.245
  %227 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge248 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %227, i32 0, i32 0
  %228 = load i32, i32* %edge248, align 4
  %idxprom249 = sext i32 %228 to i64
  %229 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx250 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %229, i64 %idxprom249
  %UorR251 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx250, i32 0, i32 5
  %230 = load i32, i32* %UorR251, align 4
  %cmp252 = icmp slt i32 %230, 0
  br i1 %cmp252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %for.body.247
  br label %for.inc.275

if.end.254:                                       ; preds = %for.body.247
  %231 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge255 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %231, i32 0, i32 0
  %232 = load i32, i32* %edge255, align 4
  %idxprom256 = sext i32 %232 to i64
  %233 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx257 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %233, i64 %idxprom256
  %loc258 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx257, i32 0, i32 3
  %234 = load i32, i32* %loc258, align 4
  %235 = load i32, i32* %u2x, align 4
  %cmp259 = icmp sge i32 %234, %235
  br i1 %cmp259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.end.254
  br label %for.end.277

if.end.261:                                       ; preds = %if.end.254
  %236 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge262 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %236, i32 0, i32 0
  %237 = load i32, i32* %edge262, align 4
  %idxprom263 = sext i32 %237 to i64
  %238 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx264 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %238, i64 %idxprom263
  %start265 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx264, i32 0, i32 1
  %239 = load i32, i32* %start265, align 4
  %240 = load i32, i32* %dy2, align 4
  %cmp266 = icmp sge i32 %239, %240
  br i1 %cmp266, label %if.then.273, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %if.end.261
  %241 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge268 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %241, i32 0, i32 0
  %242 = load i32, i32* %edge268, align 4
  %idxprom269 = sext i32 %242 to i64
  %243 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx270 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %243, i64 %idxprom269
  %end271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx270, i32 0, i32 2
  %244 = load i32, i32* %end271, align 4
  %245 = load i32, i32* %u2y1, align 4
  %cmp272 = icmp sle i32 %244, %245
  br i1 %cmp272, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %lor.lhs.false.267, %if.end.261
  br label %for.inc.275

if.end.274:                                       ; preds = %lor.lhs.false.267
  store i32 0, i32* %check, align 4
  br label %for.end.277

for.inc.275:                                      ; preds = %if.then.273, %if.then.253
  %246 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %next276 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %246, i32 0, i32 2
  %247 = load %struct.dlink1*, %struct.dlink1** %next276, align 8
  store %struct.dlink1* %247, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.245

for.end.277:                                      ; preds = %if.end.274, %if.then.260, %for.cond.245
  %248 = load i32, i32* %check, align 4
  %tobool278 = icmp ne i32 %248, 0
  br i1 %tobool278, label %if.then.279, label %if.end.346

if.then.279:                                      ; preds = %for.end.277
  %249 = load i32, i32* %dx, align 4
  %250 = load i32, i32* @numProbes, align 4
  %inc280 = add nsw i32 %250, 1
  store i32 %inc280, i32* @numProbes, align 4
  %251 = load i32, i32* @edgeCount, align 4
  %add281 = add nsw i32 %inc280, %251
  %idxprom282 = sext i32 %add281 to i64
  %252 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx283 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %252, i64 %idxprom282
  %start284 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx283, i32 0, i32 1
  store i32 %249, i32* %start284, align 4
  %253 = load i32, i32* %u2x, align 4
  %254 = load i32, i32* @numProbes, align 4
  %255 = load i32, i32* @edgeCount, align 4
  %add285 = add nsw i32 %254, %255
  %idxprom286 = sext i32 %add285 to i64
  %256 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx287 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %256, i64 %idxprom286
  %end288 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx287, i32 0, i32 2
  store i32 %253, i32* %end288, align 4
  %257 = load i32, i32* %dy2, align 4
  %258 = load i32, i32* @numProbes, align 4
  %259 = load i32, i32* @edgeCount, align 4
  %add289 = add nsw i32 %258, %259
  %idxprom290 = sext i32 %add289 to i64
  %260 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx291 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %260, i64 %idxprom290
  %loc292 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx291, i32 0, i32 3
  store i32 %257, i32* %loc292, align 4
  %261 = load i32, i32* %u2x, align 4
  %262 = load i32, i32* %dx, align 4
  %sub293 = sub nsw i32 %261, %262
  %263 = load i32, i32* @numProbes, align 4
  %264 = load i32, i32* @edgeCount, align 4
  %add294 = add nsw i32 %263, %264
  %idxprom295 = sext i32 %add294 to i64
  %265 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx296 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %265, i64 %idxprom295
  %length297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx296, i32 0, i32 4
  store i32 %sub293, i32* %length297, align 4
  %266 = load i32, i32* @numProbes, align 4
  %267 = load i32, i32* @edgeCount, align 4
  %add298 = add nsw i32 %266, %267
  %idxprom299 = sext i32 %add298 to i64
  %268 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx300 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %268, i64 %idxprom299
  %fixed301 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx300, i32 0, i32 6
  store i32 0, i32* %fixed301, align 4
  %269 = load i32, i32* @numProbes, align 4
  %270 = load i32, i32* @edgeCount, align 4
  %add302 = add nsw i32 %269, %270
  %idxprom303 = sext i32 %add302 to i64
  %271 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx304 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %271, i64 %idxprom303
  %cell305 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx304, i32 0, i32 0
  store i32 0, i32* %cell305, align 4
  %272 = load i32, i32* @numProbes, align 4
  %273 = load i32, i32* @edgeCount, align 4
  %add306 = add nsw i32 %272, %273
  %idxprom307 = sext i32 %add306 to i64
  %274 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx308 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %274, i64 %idxprom307
  %UorR309 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx308, i32 0, i32 5
  store i32 1, i32* %UorR309, align 4
  %275 = load i32, i32* %dy2, align 4
  %276 = load i32, i32* @numProbes, align 4
  %277 = load i32, i32* @edgeCount, align 4
  %add310 = add nsw i32 %276, %277
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %275, i32 %add310)
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %279 = load i32, i32* @numProbes, align 4
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %279)
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %281 = load i32, i32* %dx, align 4
  %282 = load i32, i32* %u2x, align 4
  %283 = load i32, i32* %dy2, align 4
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %281, i32 %282, i32 %283, i32 1)
  %284 = load i32, i32* %dx, align 4
  %285 = load i32, i32* @numProbes, align 4
  %inc313 = add nsw i32 %285, 1
  store i32 %inc313, i32* @numProbes, align 4
  %286 = load i32, i32* @edgeCount, align 4
  %add314 = add nsw i32 %inc313, %286
  %idxprom315 = sext i32 %add314 to i64
  %287 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx316 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %287, i64 %idxprom315
  %start317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx316, i32 0, i32 1
  store i32 %284, i32* %start317, align 4
  %288 = load i32, i32* %u2x, align 4
  %289 = load i32, i32* @numProbes, align 4
  %290 = load i32, i32* @edgeCount, align 4
  %add318 = add nsw i32 %289, %290
  %idxprom319 = sext i32 %add318 to i64
  %291 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx320 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %291, i64 %idxprom319
  %end321 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx320, i32 0, i32 2
  store i32 %288, i32* %end321, align 4
  %292 = load i32, i32* %u2y1, align 4
  %293 = load i32, i32* @numProbes, align 4
  %294 = load i32, i32* @edgeCount, align 4
  %add322 = add nsw i32 %293, %294
  %idxprom323 = sext i32 %add322 to i64
  %295 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx324 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %295, i64 %idxprom323
  %loc325 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx324, i32 0, i32 3
  store i32 %292, i32* %loc325, align 4
  %296 = load i32, i32* %u2x, align 4
  %297 = load i32, i32* %dx, align 4
  %sub326 = sub nsw i32 %296, %297
  %298 = load i32, i32* @numProbes, align 4
  %299 = load i32, i32* @edgeCount, align 4
  %add327 = add nsw i32 %298, %299
  %idxprom328 = sext i32 %add327 to i64
  %300 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx329 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %300, i64 %idxprom328
  %length330 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx329, i32 0, i32 4
  store i32 %sub326, i32* %length330, align 4
  %301 = load i32, i32* @numProbes, align 4
  %302 = load i32, i32* @edgeCount, align 4
  %add331 = add nsw i32 %301, %302
  %idxprom332 = sext i32 %add331 to i64
  %303 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx333 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %303, i64 %idxprom332
  %fixed334 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx333, i32 0, i32 6
  store i32 0, i32* %fixed334, align 4
  %304 = load i32, i32* @numProbes, align 4
  %305 = load i32, i32* @edgeCount, align 4
  %add335 = add nsw i32 %304, %305
  %idxprom336 = sext i32 %add335 to i64
  %306 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx337 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %306, i64 %idxprom336
  %cell338 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx337, i32 0, i32 0
  store i32 0, i32* %cell338, align 4
  %307 = load i32, i32* @numProbes, align 4
  %308 = load i32, i32* @edgeCount, align 4
  %add339 = add nsw i32 %307, %308
  %idxprom340 = sext i32 %add339 to i64
  %309 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx341 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %309, i64 %idxprom340
  %UorR342 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx341, i32 0, i32 5
  store i32 -1, i32* %UorR342, align 4
  %310 = load i32, i32* %u2y1, align 4
  %311 = load i32, i32* @numProbes, align 4
  %312 = load i32, i32* @edgeCount, align 4
  %add343 = add nsw i32 %311, %312
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %310, i32 %add343)
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %314 = load i32, i32* @numProbes, align 4
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %314)
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %316 = load i32, i32* %dx, align 4
  %317 = load i32, i32* %u2x, align 4
  %318 = load i32, i32* %u2y1, align 4
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %316, i32 %317, i32 %318, i32 -1)
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.279, %for.end.277
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %for.end.239
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %land.lhs.true.185, %if.end.183
  %319 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %cmp349 = icmp ne %struct.dlink1* %319, null
  br i1 %cmp349, label %land.lhs.true.350, label %if.end.514

land.lhs.true.350:                                ; preds = %if.end.348
  %320 = load %struct.dlink1*, %struct.dlink1** %up1ptr, align 8
  %edge351 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %320, i32 0, i32 0
  %321 = load i32, i32* %edge351, align 4
  %idxprom352 = sext i32 %321 to i64
  %322 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx353 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %322, i64 %idxprom352
  %nextEdge354 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx353, i32 0, i32 8
  %323 = load i32, i32* %nextEdge354, align 4
  %idxprom355 = sext i32 %323 to i64
  %324 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx356 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %324, i64 %idxprom355
  %UorR357 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx356, i32 0, i32 5
  %325 = load i32, i32* %UorR357, align 4
  %cmp358 = icmp eq i32 %325, 1
  br i1 %cmp358, label %if.then.359, label %if.end.514

if.then.359:                                      ; preds = %land.lhs.true.350
  %326 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %327 = load i32, i32* %u1x, align 4
  %call360 = call i32 @tprop(%struct.tnode* %326, i32 %327)
  %idxprom361 = sext i32 %call360 to i64
  %328 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx362 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %328, i64 %idxprom361
  %329 = load %struct.dlink1*, %struct.dlink1** %arrayidx362, align 8
  store %struct.dlink1* %329, %struct.dlink1** %ptr, align 8
  %330 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next363 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %330, i32 0, i32 2
  %331 = load %struct.dlink1*, %struct.dlink1** %next363, align 8
  store %struct.dlink1* %331, %struct.dlink1** %ptr, align 8
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.374, %if.then.359
  %332 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp365 = icmp ne %struct.dlink1* %332, null
  br i1 %cmp365, label %for.body.366, label %for.end.376

for.body.366:                                     ; preds = %for.cond.364
  %333 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge367 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %333, i32 0, i32 0
  %334 = load i32, i32* %edge367, align 4
  %idxprom368 = sext i32 %334 to i64
  %335 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx369 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %335, i64 %idxprom368
  %loc370 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx369, i32 0, i32 3
  %336 = load i32, i32* %loc370, align 4
  %337 = load i32, i32* %u1x, align 4
  %cmp371 = icmp sgt i32 %336, %337
  br i1 %cmp371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %for.body.366
  br label %for.end.376

if.end.373:                                       ; preds = %for.body.366
  br label %for.inc.374

for.inc.374:                                      ; preds = %if.end.373
  %338 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next375 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %338, i32 0, i32 2
  %339 = load %struct.dlink1*, %struct.dlink1** %next375, align 8
  store %struct.dlink1* %339, %struct.dlink1** %ptr, align 8
  br label %for.cond.364

for.end.376:                                      ; preds = %if.then.372, %for.cond.364
  %340 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp377 = icmp eq %struct.dlink1* %340, null
  br i1 %cmp377, label %if.then.378, label %if.else.379

if.then.378:                                      ; preds = %for.end.376
  %341 = load %struct.dlink1*, %struct.dlink1** @vFixedEnd, align 8
  store %struct.dlink1* %341, %struct.dlink1** %ptr, align 8
  br label %if.end.381

if.else.379:                                      ; preds = %for.end.376
  %342 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev380 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %342, i32 0, i32 1
  %343 = load %struct.dlink1*, %struct.dlink1** %prev380, align 8
  store %struct.dlink1* %343, %struct.dlink1** %ptr, align 8
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.378
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.403, %if.end.381
  %344 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp383 = icmp ne %struct.dlink1* %344, null
  br i1 %cmp383, label %for.body.384, label %for.end.405

for.body.384:                                     ; preds = %for.cond.382
  %345 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge385 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %345, i32 0, i32 0
  %346 = load i32, i32* %edge385, align 4
  store i32 %346, i32* %edge, align 4
  %347 = load i32, i32* %edge, align 4
  %idxprom386 = sext i32 %347 to i64
  %348 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx387 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %348, i64 %idxprom386
  %UorR388 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx387, i32 0, i32 5
  %349 = load i32, i32* %UorR388, align 4
  %cmp389 = icmp sgt i32 %349, 0
  br i1 %cmp389, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %for.body.384
  br label %for.inc.403

if.end.391:                                       ; preds = %for.body.384
  %350 = load i32, i32* %edge, align 4
  %idxprom392 = sext i32 %350 to i64
  %351 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx393 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %351, i64 %idxprom392
  %start394 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx393, i32 0, i32 1
  %352 = load i32, i32* %start394, align 4
  store i32 %352, i32* %by1, align 4
  %353 = load i32, i32* %edge, align 4
  %idxprom395 = sext i32 %353 to i64
  %354 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx396 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %354, i64 %idxprom395
  %end397 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx396, i32 0, i32 2
  %355 = load i32, i32* %end397, align 4
  store i32 %355, i32* %by2, align 4
  %356 = load i32, i32* %by2, align 4
  %357 = load i32, i32* %u1y2, align 4
  %cmp398 = icmp slt i32 %356, %357
  br i1 %cmp398, label %if.then.401, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %if.end.391
  %358 = load i32, i32* %by1, align 4
  %359 = load i32, i32* %u1y2, align 4
  %cmp400 = icmp sge i32 %358, %359
  br i1 %cmp400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %lor.lhs.false.399, %if.end.391
  br label %for.inc.403

if.end.402:                                       ; preds = %lor.lhs.false.399
  br label %for.end.405

for.inc.403:                                      ; preds = %if.then.401, %if.then.390
  %360 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev404 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %360, i32 0, i32 1
  %361 = load %struct.dlink1*, %struct.dlink1** %prev404, align 8
  store %struct.dlink1* %361, %struct.dlink1** %ptr, align 8
  br label %for.cond.382

for.end.405:                                      ; preds = %if.end.402, %for.cond.382
  %362 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  %363 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp406 = icmp eq %struct.dlink1* %362, %363
  br i1 %cmp406, label %if.then.407, label %if.end.513

if.then.407:                                      ; preds = %for.end.405
  store i32 1, i32* %check, align 4
  %364 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %365 = load i32, i32* %dx, align 4
  %call408 = call i32 @tprop(%struct.tnode* %364, i32 %365)
  %idxprom409 = sext i32 %call408 to i64
  %366 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx410 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %366, i64 %idxprom409
  %367 = load %struct.dlink1*, %struct.dlink1** %arrayidx410, align 8
  store %struct.dlink1* %367, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.441, %if.then.407
  %368 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %cmp412 = icmp ne %struct.dlink1* %368, null
  br i1 %cmp412, label %for.body.413, label %for.end.443

for.body.413:                                     ; preds = %for.cond.411
  %369 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge414 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %369, i32 0, i32 0
  %370 = load i32, i32* %edge414, align 4
  %idxprom415 = sext i32 %370 to i64
  %371 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx416 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %371, i64 %idxprom415
  %UorR417 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx416, i32 0, i32 5
  %372 = load i32, i32* %UorR417, align 4
  %cmp418 = icmp slt i32 %372, 0
  br i1 %cmp418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %for.body.413
  br label %for.inc.441

if.end.420:                                       ; preds = %for.body.413
  %373 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge421 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %373, i32 0, i32 0
  %374 = load i32, i32* %edge421, align 4
  %idxprom422 = sext i32 %374 to i64
  %375 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx423 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %375, i64 %idxprom422
  %loc424 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx423, i32 0, i32 3
  %376 = load i32, i32* %loc424, align 4
  %377 = load i32, i32* %u1x, align 4
  %cmp425 = icmp sge i32 %376, %377
  br i1 %cmp425, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.420
  br label %for.end.443

if.end.427:                                       ; preds = %if.end.420
  %378 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge428 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %378, i32 0, i32 0
  %379 = load i32, i32* %edge428, align 4
  %idxprom429 = sext i32 %379 to i64
  %380 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx430 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %380, i64 %idxprom429
  %start431 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx430, i32 0, i32 1
  %381 = load i32, i32* %start431, align 4
  %382 = load i32, i32* %u1y2, align 4
  %cmp432 = icmp sge i32 %381, %382
  br i1 %cmp432, label %if.then.439, label %lor.lhs.false.433

lor.lhs.false.433:                                ; preds = %if.end.427
  %383 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge434 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %383, i32 0, i32 0
  %384 = load i32, i32* %edge434, align 4
  %idxprom435 = sext i32 %384 to i64
  %385 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx436 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %385, i64 %idxprom435
  %end437 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx436, i32 0, i32 2
  %386 = load i32, i32* %end437, align 4
  %387 = load i32, i32* %dy1, align 4
  %cmp438 = icmp sle i32 %386, %387
  br i1 %cmp438, label %if.then.439, label %if.end.440

if.then.439:                                      ; preds = %lor.lhs.false.433, %if.end.427
  br label %for.inc.441

if.end.440:                                       ; preds = %lor.lhs.false.433
  store i32 0, i32* %check, align 4
  br label %for.end.443

for.inc.441:                                      ; preds = %if.then.439, %if.then.419
  %388 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %next442 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %388, i32 0, i32 2
  %389 = load %struct.dlink1*, %struct.dlink1** %next442, align 8
  store %struct.dlink1* %389, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.411

for.end.443:                                      ; preds = %if.end.440, %if.then.426, %for.cond.411
  %390 = load i32, i32* %check, align 4
  %tobool444 = icmp ne i32 %390, 0
  br i1 %tobool444, label %if.then.445, label %if.end.512

if.then.445:                                      ; preds = %for.end.443
  %391 = load i32, i32* %dx, align 4
  %392 = load i32, i32* @numProbes, align 4
  %inc446 = add nsw i32 %392, 1
  store i32 %inc446, i32* @numProbes, align 4
  %393 = load i32, i32* @edgeCount, align 4
  %add447 = add nsw i32 %inc446, %393
  %idxprom448 = sext i32 %add447 to i64
  %394 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx449 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %394, i64 %idxprom448
  %start450 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx449, i32 0, i32 1
  store i32 %391, i32* %start450, align 4
  %395 = load i32, i32* %u1x, align 4
  %396 = load i32, i32* @numProbes, align 4
  %397 = load i32, i32* @edgeCount, align 4
  %add451 = add nsw i32 %396, %397
  %idxprom452 = sext i32 %add451 to i64
  %398 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx453 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %398, i64 %idxprom452
  %end454 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx453, i32 0, i32 2
  store i32 %395, i32* %end454, align 4
  %399 = load i32, i32* %u1y2, align 4
  %400 = load i32, i32* @numProbes, align 4
  %401 = load i32, i32* @edgeCount, align 4
  %add455 = add nsw i32 %400, %401
  %idxprom456 = sext i32 %add455 to i64
  %402 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx457 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %402, i64 %idxprom456
  %loc458 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx457, i32 0, i32 3
  store i32 %399, i32* %loc458, align 4
  %403 = load i32, i32* %u1x, align 4
  %404 = load i32, i32* %dx, align 4
  %sub459 = sub nsw i32 %403, %404
  %405 = load i32, i32* @numProbes, align 4
  %406 = load i32, i32* @edgeCount, align 4
  %add460 = add nsw i32 %405, %406
  %idxprom461 = sext i32 %add460 to i64
  %407 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx462 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %407, i64 %idxprom461
  %length463 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx462, i32 0, i32 4
  store i32 %sub459, i32* %length463, align 4
  %408 = load i32, i32* @numProbes, align 4
  %409 = load i32, i32* @edgeCount, align 4
  %add464 = add nsw i32 %408, %409
  %idxprom465 = sext i32 %add464 to i64
  %410 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx466 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %410, i64 %idxprom465
  %fixed467 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx466, i32 0, i32 6
  store i32 0, i32* %fixed467, align 4
  %411 = load i32, i32* @numProbes, align 4
  %412 = load i32, i32* @edgeCount, align 4
  %add468 = add nsw i32 %411, %412
  %idxprom469 = sext i32 %add468 to i64
  %413 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx470 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %413, i64 %idxprom469
  %cell471 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx470, i32 0, i32 0
  store i32 0, i32* %cell471, align 4
  %414 = load i32, i32* @numProbes, align 4
  %415 = load i32, i32* @edgeCount, align 4
  %add472 = add nsw i32 %414, %415
  %idxprom473 = sext i32 %add472 to i64
  %416 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx474 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %416, i64 %idxprom473
  %UorR475 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx474, i32 0, i32 5
  store i32 1, i32* %UorR475, align 4
  %417 = load i32, i32* %u1y2, align 4
  %418 = load i32, i32* @numProbes, align 4
  %419 = load i32, i32* @edgeCount, align 4
  %add476 = add nsw i32 %418, %419
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %417, i32 %add476)
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %421 = load i32, i32* @numProbes, align 4
  %call477 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %421)
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %423 = load i32, i32* %dx, align 4
  %424 = load i32, i32* %u1x, align 4
  %425 = load i32, i32* %u1y2, align 4
  %call478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %422, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %423, i32 %424, i32 %425, i32 1)
  %426 = load i32, i32* %dx, align 4
  %427 = load i32, i32* @numProbes, align 4
  %inc479 = add nsw i32 %427, 1
  store i32 %inc479, i32* @numProbes, align 4
  %428 = load i32, i32* @edgeCount, align 4
  %add480 = add nsw i32 %inc479, %428
  %idxprom481 = sext i32 %add480 to i64
  %429 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx482 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %429, i64 %idxprom481
  %start483 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx482, i32 0, i32 1
  store i32 %426, i32* %start483, align 4
  %430 = load i32, i32* %u1x, align 4
  %431 = load i32, i32* @numProbes, align 4
  %432 = load i32, i32* @edgeCount, align 4
  %add484 = add nsw i32 %431, %432
  %idxprom485 = sext i32 %add484 to i64
  %433 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx486 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %433, i64 %idxprom485
  %end487 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx486, i32 0, i32 2
  store i32 %430, i32* %end487, align 4
  %434 = load i32, i32* %dy1, align 4
  %435 = load i32, i32* @numProbes, align 4
  %436 = load i32, i32* @edgeCount, align 4
  %add488 = add nsw i32 %435, %436
  %idxprom489 = sext i32 %add488 to i64
  %437 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx490 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %437, i64 %idxprom489
  %loc491 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx490, i32 0, i32 3
  store i32 %434, i32* %loc491, align 4
  %438 = load i32, i32* %u1x, align 4
  %439 = load i32, i32* %dx, align 4
  %sub492 = sub nsw i32 %438, %439
  %440 = load i32, i32* @numProbes, align 4
  %441 = load i32, i32* @edgeCount, align 4
  %add493 = add nsw i32 %440, %441
  %idxprom494 = sext i32 %add493 to i64
  %442 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx495 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %442, i64 %idxprom494
  %length496 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx495, i32 0, i32 4
  store i32 %sub492, i32* %length496, align 4
  %443 = load i32, i32* @numProbes, align 4
  %444 = load i32, i32* @edgeCount, align 4
  %add497 = add nsw i32 %443, %444
  %idxprom498 = sext i32 %add497 to i64
  %445 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx499 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %445, i64 %idxprom498
  %fixed500 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx499, i32 0, i32 6
  store i32 0, i32* %fixed500, align 4
  %446 = load i32, i32* @numProbes, align 4
  %447 = load i32, i32* @edgeCount, align 4
  %add501 = add nsw i32 %446, %447
  %idxprom502 = sext i32 %add501 to i64
  %448 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx503 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %448, i64 %idxprom502
  %cell504 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx503, i32 0, i32 0
  store i32 0, i32* %cell504, align 4
  %449 = load i32, i32* @numProbes, align 4
  %450 = load i32, i32* @edgeCount, align 4
  %add505 = add nsw i32 %449, %450
  %idxprom506 = sext i32 %add505 to i64
  %451 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx507 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %451, i64 %idxprom506
  %UorR508 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx507, i32 0, i32 5
  store i32 -1, i32* %UorR508, align 4
  %452 = load i32, i32* %dy1, align 4
  %453 = load i32, i32* @numProbes, align 4
  %454 = load i32, i32* @edgeCount, align 4
  %add509 = add nsw i32 %453, %454
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %452, i32 %add509)
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %456 = load i32, i32* @numProbes, align 4
  %call510 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %456)
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %458 = load i32, i32* %dx, align 4
  %459 = load i32, i32* %u1x, align 4
  %460 = load i32, i32* %dy1, align 4
  %call511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 %458, i32 %459, i32 %460, i32 -1)
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.445, %for.end.443
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %for.end.405
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %land.lhs.true.350, %if.end.348
  %461 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  call void @doubleBack(%struct.dlink1* %461)
  br label %for.inc.515

for.inc.515:                                      ; preds = %if.end.514, %if.end.182, %if.then
  %462 = load %struct.dlink1*, %struct.dlink1** %downPtr, align 8
  %next516 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %462, i32 0, i32 2
  %463 = load %struct.dlink1*, %struct.dlink1** %next516, align 8
  store %struct.dlink1* %463, %struct.dlink1** %downPtr, align 8
  br label %for.cond

for.end.517:                                      ; preds = %for.cond
  ret void
}

declare i32 @tprop(%struct.tnode*, i32) #1

declare void @tinsert(%struct.tnode**, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @doubleBack(%struct.dlink1* %dptr) #0 {
entry:
  %dptr.addr = alloca %struct.dlink1*, align 8
  %dx = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %ux = alloca i32, align 4
  %uy1 = alloca i32, align 4
  %uy2 = alloca i32, align 4
  %check = alloca i32, align 4
  %edge = alloca i32, align 4
  %checkPtr = alloca %struct.dlink1*, align 8
  %ptr = alloca %struct.dlink1*, align 8
  store %struct.dlink1* %dptr, %struct.dlink1** %dptr.addr, align 8
  %0 = load %struct.dlink1*, %struct.dlink1** %dptr.addr, align 8
  %edge1 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %0, i32 0, i32 0
  %1 = load i32, i32* %edge1, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx = getelementptr inbounds %struct.edgebox, %struct.edgebox* %2, i64 %idxprom
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx, i32 0, i32 3
  %3 = load i32, i32* %loc, align 4
  store i32 %3, i32* %dx, align 4
  %4 = load %struct.dlink1*, %struct.dlink1** %dptr.addr, align 8
  %edge2 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %4, i32 0, i32 0
  %5 = load i32, i32* %edge2, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx4 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %idxprom3
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx4, i32 0, i32 2
  %7 = load i32, i32* %end, align 4
  store i32 %7, i32* %dy2, align 4
  %8 = load %struct.dlink1*, %struct.dlink1** %dptr.addr, align 8
  %edge5 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %8, i32 0, i32 0
  %9 = load i32, i32* %edge5, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx7 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %10, i64 %idxprom6
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx7, i32 0, i32 1
  %11 = load i32, i32* %start, align 4
  store i32 %11, i32* %dy1, align 4
  %12 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %13 = load i32, i32* %dx, align 4
  %call = call i32 @tprop(%struct.tnode* %12, i32 %13)
  %idxprom8 = sext i32 %call to i64
  %14 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx9 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %14, i64 %idxprom8
  %15 = load %struct.dlink1*, %struct.dlink1** %arrayidx9, align 8
  store %struct.dlink1* %15, %struct.dlink1** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %entry
  %16 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %cmp = icmp ne %struct.dlink1* %16, null
  br i1 %cmp, label %for.body, label %for.end.139

for.body:                                         ; preds = %for.cond
  %17 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge10 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %17, i32 0, i32 0
  %18 = load i32, i32* %edge10, align 4
  store i32 %18, i32* %edge, align 4
  %19 = load i32, i32* %edge, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx12 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %20, i64 %idxprom11
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx12, i32 0, i32 5
  %21 = load i32, i32* %UorR, align 4
  %cmp13 = icmp slt i32 %21, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.137

if.end:                                           ; preds = %for.body
  %22 = load i32, i32* %edge, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx15 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %23, i64 %idxprom14
  %loc16 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx15, i32 0, i32 3
  %24 = load i32, i32* %loc16, align 4
  store i32 %24, i32* %ux, align 4
  %25 = load i32, i32* %edge, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx18 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %26, i64 %idxprom17
  %start19 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx18, i32 0, i32 1
  %27 = load i32, i32* %start19, align 4
  store i32 %27, i32* %uy1, align 4
  %28 = load i32, i32* %edge, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx21 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %29, i64 %idxprom20
  %end22 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx21, i32 0, i32 2
  %30 = load i32, i32* %end22, align 4
  store i32 %30, i32* %uy2, align 4
  %31 = load i32, i32* %uy2, align 4
  %32 = load i32, i32* %dy2, align 4
  %cmp23 = icmp slt i32 %31, %32
  br i1 %cmp23, label %land.lhs.true, label %if.then.25

land.lhs.true:                                    ; preds = %if.end
  %33 = load i32, i32* %uy1, align 4
  %34 = load i32, i32* %dy1, align 4
  %cmp24 = icmp sgt i32 %33, %34
  br i1 %cmp24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true, %if.end
  br label %for.inc.137

if.end.26:                                        ; preds = %land.lhs.true
  %35 = load i32, i32* %edge, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx28 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %36, i64 %idxprom27
  %prevEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx28, i32 0, i32 7
  %37 = load i32, i32* %prevEdge, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx30 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %idxprom29
  %UorR31 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx30, i32 0, i32 5
  %39 = load i32, i32* %UorR31, align 4
  %cmp32 = icmp eq i32 %39, -1
  br i1 %cmp32, label %land.lhs.true.33, label %if.else

land.lhs.true.33:                                 ; preds = %if.end.26
  %40 = load i32, i32* %edge, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %41, i64 %idxprom34
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx35, i32 0, i32 8
  %42 = load i32, i32* %nextEdge, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx37 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %43, i64 %idxprom36
  %UorR38 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx37, i32 0, i32 5
  %44 = load i32, i32* %UorR38, align 4
  %cmp39 = icmp eq i32 %44, 1
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %check, align 4
  %45 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %46 = load i32, i32* %dx, align 4
  %call41 = call i32 @tprop(%struct.tnode* %45, i32 %46)
  %idxprom42 = sext i32 %call41 to i64
  %47 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx43 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %47, i64 %idxprom42
  %48 = load %struct.dlink1*, %struct.dlink1** %arrayidx43, align 8
  store %struct.dlink1* %48, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.then.40
  %49 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %cmp45 = icmp ne %struct.dlink1* %49, null
  br i1 %cmp45, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.44
  %50 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %51 = load %struct.dlink1*, %struct.dlink1** %dptr.addr, align 8
  %cmp47 = icmp eq %struct.dlink1* %50, %51
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.46
  br label %for.inc

if.end.49:                                        ; preds = %for.body.46
  %52 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge50 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %52, i32 0, i32 0
  %53 = load i32, i32* %edge50, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx52 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %54, i64 %idxprom51
  %UorR53 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx52, i32 0, i32 5
  %55 = load i32, i32* %UorR53, align 4
  %cmp54 = icmp sgt i32 %55, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  br label %for.inc

if.end.56:                                        ; preds = %if.end.49
  %56 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge57 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %56, i32 0, i32 0
  %57 = load i32, i32* %edge57, align 4
  %idxprom58 = sext i32 %57 to i64
  %58 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %58, i64 %idxprom58
  %loc60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx59, i32 0, i32 3
  %59 = load i32, i32* %loc60, align 4
  %60 = load i32, i32* %ux, align 4
  %cmp61 = icmp sgt i32 %59, %60
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  br label %for.end

if.end.63:                                        ; preds = %if.end.56
  %61 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge64 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %61, i32 0, i32 0
  %62 = load i32, i32* %edge64, align 4
  %idxprom65 = sext i32 %62 to i64
  %63 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx66 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %63, i64 %idxprom65
  %start67 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx66, i32 0, i32 1
  %64 = load i32, i32* %start67, align 4
  %65 = load i32, i32* %uy2, align 4
  %cmp68 = icmp sge i32 %64, %65
  br i1 %cmp68, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.63
  %66 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %edge69 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %66, i32 0, i32 0
  %67 = load i32, i32* %edge69, align 4
  %idxprom70 = sext i32 %67 to i64
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx71 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %idxprom70
  %end72 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx71, i32 0, i32 2
  %69 = load i32, i32* %end72, align 4
  %70 = load i32, i32* %uy1, align 4
  %cmp73 = icmp sle i32 %69, %70
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false, %if.end.63
  br label %for.inc

if.end.75:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %check, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then.74, %if.then.55, %if.then.48
  %71 = load %struct.dlink1*, %struct.dlink1** %checkPtr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %71, i32 0, i32 2
  %72 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %72, %struct.dlink1** %checkPtr, align 8
  br label %for.cond.44

for.end:                                          ; preds = %if.end.75, %if.then.62, %for.cond.44
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true.33, %if.end.26
  store i32 0, i32* %check, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %for.end
  %73 = load i32, i32* %check, align 4
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then.77, label %if.end.136

if.then.77:                                       ; preds = %if.end.76
  %74 = load i32, i32* %dx, align 4
  %75 = load i32, i32* @numProbes, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* @numProbes, align 4
  %76 = load i32, i32* @edgeCount, align 4
  %add = add nsw i32 %inc, %76
  %idxprom78 = sext i32 %add to i64
  %77 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx79 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %77, i64 %idxprom78
  %start80 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx79, i32 0, i32 1
  store i32 %74, i32* %start80, align 4
  %78 = load i32, i32* %ux, align 4
  %79 = load i32, i32* @numProbes, align 4
  %80 = load i32, i32* @edgeCount, align 4
  %add81 = add nsw i32 %79, %80
  %idxprom82 = sext i32 %add81 to i64
  %81 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx83 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %81, i64 %idxprom82
  %end84 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx83, i32 0, i32 2
  store i32 %78, i32* %end84, align 4
  %82 = load i32, i32* %uy2, align 4
  %83 = load i32, i32* @numProbes, align 4
  %84 = load i32, i32* @edgeCount, align 4
  %add85 = add nsw i32 %83, %84
  %idxprom86 = sext i32 %add85 to i64
  %85 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx87 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %85, i64 %idxprom86
  %loc88 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx87, i32 0, i32 3
  store i32 %82, i32* %loc88, align 4
  %86 = load i32, i32* %ux, align 4
  %87 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 %86, %87
  %88 = load i32, i32* @numProbes, align 4
  %89 = load i32, i32* @edgeCount, align 4
  %add89 = add nsw i32 %88, %89
  %idxprom90 = sext i32 %add89 to i64
  %90 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx91 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %90, i64 %idxprom90
  %length = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx91, i32 0, i32 4
  store i32 %sub, i32* %length, align 4
  %91 = load i32, i32* @numProbes, align 4
  %92 = load i32, i32* @edgeCount, align 4
  %add92 = add nsw i32 %91, %92
  %idxprom93 = sext i32 %add92 to i64
  %93 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx94 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %93, i64 %idxprom93
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx94, i32 0, i32 6
  store i32 0, i32* %fixed, align 4
  %94 = load i32, i32* @numProbes, align 4
  %95 = load i32, i32* @edgeCount, align 4
  %add95 = add nsw i32 %94, %95
  %idxprom96 = sext i32 %add95 to i64
  %96 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx97 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %96, i64 %idxprom96
  %cell = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx97, i32 0, i32 0
  store i32 0, i32* %cell, align 4
  %97 = load i32, i32* @numProbes, align 4
  %98 = load i32, i32* @edgeCount, align 4
  %add98 = add nsw i32 %97, %98
  %idxprom99 = sext i32 %add98 to i64
  %99 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx100 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %99, i64 %idxprom99
  %UorR101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx100, i32 0, i32 5
  store i32 1, i32* %UorR101, align 4
  %100 = load i32, i32* %uy2, align 4
  %101 = load i32, i32* @numProbes, align 4
  %102 = load i32, i32* @edgeCount, align 4
  %add102 = add nsw i32 %101, %102
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %100, i32 %add102)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %104 = load i32, i32* @numProbes, align 4
  %105 = load i32, i32* %dx, align 4
  %106 = load i32, i32* %ux, align 4
  %107 = load i32, i32* %uy2, align 4
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %104, i32 %105, i32 %106, i32 %107, i32 1)
  %108 = load i32, i32* %dx, align 4
  %109 = load i32, i32* @numProbes, align 4
  %inc104 = add nsw i32 %109, 1
  store i32 %inc104, i32* @numProbes, align 4
  %110 = load i32, i32* @edgeCount, align 4
  %add105 = add nsw i32 %inc104, %110
  %idxprom106 = sext i32 %add105 to i64
  %111 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx107 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %111, i64 %idxprom106
  %start108 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx107, i32 0, i32 1
  store i32 %108, i32* %start108, align 4
  %112 = load i32, i32* %ux, align 4
  %113 = load i32, i32* @numProbes, align 4
  %114 = load i32, i32* @edgeCount, align 4
  %add109 = add nsw i32 %113, %114
  %idxprom110 = sext i32 %add109 to i64
  %115 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx111 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %115, i64 %idxprom110
  %end112 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx111, i32 0, i32 2
  store i32 %112, i32* %end112, align 4
  %116 = load i32, i32* %uy1, align 4
  %117 = load i32, i32* @numProbes, align 4
  %118 = load i32, i32* @edgeCount, align 4
  %add113 = add nsw i32 %117, %118
  %idxprom114 = sext i32 %add113 to i64
  %119 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx115 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %119, i64 %idxprom114
  %loc116 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx115, i32 0, i32 3
  store i32 %116, i32* %loc116, align 4
  %120 = load i32, i32* %ux, align 4
  %121 = load i32, i32* %dx, align 4
  %sub117 = sub nsw i32 %120, %121
  %122 = load i32, i32* @numProbes, align 4
  %123 = load i32, i32* @edgeCount, align 4
  %add118 = add nsw i32 %122, %123
  %idxprom119 = sext i32 %add118 to i64
  %124 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx120 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %124, i64 %idxprom119
  %length121 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx120, i32 0, i32 4
  store i32 %sub117, i32* %length121, align 4
  %125 = load i32, i32* @numProbes, align 4
  %126 = load i32, i32* @edgeCount, align 4
  %add122 = add nsw i32 %125, %126
  %idxprom123 = sext i32 %add122 to i64
  %127 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx124 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %127, i64 %idxprom123
  %fixed125 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx124, i32 0, i32 6
  store i32 0, i32* %fixed125, align 4
  %128 = load i32, i32* @numProbes, align 4
  %129 = load i32, i32* @edgeCount, align 4
  %add126 = add nsw i32 %128, %129
  %idxprom127 = sext i32 %add126 to i64
  %130 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx128 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %130, i64 %idxprom127
  %cell129 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx128, i32 0, i32 0
  store i32 0, i32* %cell129, align 4
  %131 = load i32, i32* @numProbes, align 4
  %132 = load i32, i32* @edgeCount, align 4
  %add130 = add nsw i32 %131, %132
  %idxprom131 = sext i32 %add130 to i64
  %133 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx132 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %133, i64 %idxprom131
  %UorR133 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx132, i32 0, i32 5
  store i32 -1, i32* %UorR133, align 4
  %134 = load i32, i32* %uy1, align 4
  %135 = load i32, i32* @numProbes, align 4
  %136 = load i32, i32* @edgeCount, align 4
  %add134 = add nsw i32 %135, %136
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %134, i32 %add134)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %138 = load i32, i32* @numProbes, align 4
  %139 = load i32, i32* %dx, align 4
  %140 = load i32, i32* %ux, align 4
  %141 = load i32, i32* %uy1, align 4
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %138, i32 %139, i32 %140, i32 %141, i32 -1)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.77, %if.end.76
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136, %if.then.25, %if.then
  %142 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next138 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %142, i32 0, i32 2
  %143 = load %struct.dlink1*, %struct.dlink1** %next138, align 8
  store %struct.dlink1* %143, %struct.dlink1** %ptr, align 8
  br label %for.cond

for.end.139:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
