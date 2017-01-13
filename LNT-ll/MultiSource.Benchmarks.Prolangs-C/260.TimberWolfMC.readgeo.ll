; ModuleID = './MultiSource.Benchmarks.Prolangs-C/260.TimberWolfMC.readgeo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@bbr = external global i32, align 4
@bbt = external global i32, align 4
@bbl = external global i32, align 4
@bbb = external global i32, align 4
@edgeCount = external global i32, align 4
@hFixedEdgeRoot = external global %struct.tnode*, align 8
@vFixedEdgeRoot = external global %struct.tnode*, align 8
@hEdgeRoot = external global %struct.tnode*, align 8
@vEdgeRoot = external global %struct.tnode*, align 8
@edgeList = external global %struct.edgebox*, align 8
@cellList = external global %struct.clbox**, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpdebug = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Found unparsable keyword: < %s > in \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"the .geo file\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Current cell: %d\0A\00", align 1
@numberCells = external global i32, align 4
@numProbes = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @readgeo(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %input = alloca [32 x i8], align 16
  %vertices = alloca i32, align 4
  %v = alloca i32, align 4
  %vx = alloca i32, align 4
  %vy = alloca i32, align 4
  %ux = alloca i32, align 4
  %uy = alloca i32, align 4
  %ux0 = alloca i32, align 4
  %uy0 = alloca i32, align 4
  %rippleCount = alloca i32, align 4
  %cell = alloca i32, align 4
  %i = alloca i32, align 4
  %clptr = alloca %struct.clbox*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* @bbr, align 4
  store i32 0, i32* @bbt, align 4
  store i32 10000000, i32* @bbl, align 4
  store i32 10000000, i32* @bbb, align 4
  store i32 0, i32* @edgeCount, align 4
  store i32 0, i32* %rippleCount, align 4
  store i32 0, i32* %cell, align 4
  store %struct.tnode* null, %struct.tnode** @hFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @hEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vEdgeRoot, align 8
  %call = call noalias i8* @malloc(i64 16040) #5
  %0 = bitcast i8* %call to %struct.edgebox*
  store %struct.edgebox* %0, %struct.edgebox** @edgeList, align 8
  %call1 = call noalias i8* @malloc(i64 400) #5
  %1 = bitcast i8* %call1 to %struct.clbox**
  store %struct.clbox** %1, %struct.clbox*** @cellList, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx = getelementptr inbounds %struct.clbox*, %struct.clbox** %4, i64 %idxprom
  store %struct.clbox* null, %struct.clbox** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.244, %for.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call5 = call i32 @strcmp(i8* %arraydecay4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else.239

if.then:                                          ; preds = %while.body
  store %struct.clbox* null, %struct.clbox** %clptr, align 8
  %7 = load i32, i32* %cell, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %cell, align 4
  %rem = srem i32 %inc7, 50
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %8 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %9 = bitcast %struct.clbox** %8 to i8*
  %10 = load i32, i32* %cell, align 4
  %add = add nsw i32 %10, 50
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call10 = call i8* @realloc(i8* %9, i64 %mul) #5
  %11 = bitcast i8* %call10 to %struct.clbox**
  store %struct.clbox** %11, %struct.clbox*** @cellList, align 8
  %12 = load i32, i32* %cell, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %if.then.9
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %cell, align 4
  %add12 = add nsw i32 %14, 49
  %cmp13 = icmp sle i32 %13, %add12
  br i1 %cmp13, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx17 = getelementptr inbounds %struct.clbox*, %struct.clbox** %16, i64 %idxprom16
  store %struct.clbox* null, %struct.clbox** %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %17 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  br label %if.end

if.end:                                           ; preds = %for.end.20, %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay21)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32* %vertices)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay24 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %arraydecay24)
  store i32 1, i32* %v, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.167, %if.end
  %21 = load i32, i32* %v, align 4
  %22 = load i32, i32* %vertices, align 4
  %cmp27 = icmp sle i32 %21, %22
  br i1 %cmp27, label %for.body.29, label %for.end.169

for.body.29:                                      ; preds = %for.cond.26
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32* %vx, i32* %vy)
  %24 = load i32, i32* %vx, align 4
  %25 = load i32, i32* @bbr, align 4
  %cmp31 = icmp sgt i32 %24, %25
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.29
  %26 = load i32, i32* %vx, align 4
  store i32 %26, i32* @bbr, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %for.body.29
  %27 = load i32, i32* %vx, align 4
  %28 = load i32, i32* @bbl, align 4
  %cmp35 = icmp slt i32 %27, %28
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %29 = load i32, i32* %vx, align 4
  store i32 %29, i32* @bbl, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %30 = load i32, i32* %vy, align 4
  %31 = load i32, i32* @bbt, align 4
  %cmp39 = icmp sgt i32 %30, %31
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %32 = load i32, i32* %vy, align 4
  store i32 %32, i32* @bbt, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %33 = load i32, i32* %vy, align 4
  %34 = load i32, i32* @bbb, align 4
  %cmp43 = icmp slt i32 %33, %34
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %35 = load i32, i32* %vy, align 4
  store i32 %35, i32* @bbb, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %36 = load i32, i32* %v, align 4
  %cmp47 = icmp eq i32 %36, 1
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.46
  %37 = load i32, i32* %vx, align 4
  store i32 %37, i32* %ux, align 4
  store i32 %37, i32* %ux0, align 4
  %38 = load i32, i32* %vy, align 4
  store i32 %38, i32* %uy, align 4
  store i32 %38, i32* %uy0, align 4
  br label %if.end.166

if.else:                                          ; preds = %if.end.46
  %39 = load i32, i32* @edgeCount, align 4
  %inc50 = add nsw i32 %39, 1
  store i32 %inc50, i32* @edgeCount, align 4
  %40 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %cmp51 = icmp eq %struct.clbox* %40, null
  br i1 %cmp51, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.else
  %call54 = call noalias i8* @malloc(i64 40) #5
  %41 = bitcast i8* %call54 to %struct.clbox*
  %42 = load i32, i32* %cell, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx56 = getelementptr inbounds %struct.clbox*, %struct.clbox** %43, i64 %idxprom55
  store %struct.clbox* %41, %struct.clbox** %arrayidx56, align 8
  %44 = load i32, i32* %cell, align 4
  %idxprom57 = sext i32 %44 to i64
  %45 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx58 = getelementptr inbounds %struct.clbox*, %struct.clbox** %45, i64 %idxprom57
  %46 = load %struct.clbox*, %struct.clbox** %arrayidx58, align 8
  store %struct.clbox* %46, %struct.clbox** %clptr, align 8
  br label %if.end.62

if.else.59:                                       ; preds = %if.else
  %call60 = call noalias i8* @malloc(i64 40) #5
  %47 = bitcast i8* %call60 to %struct.clbox*
  %48 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next = getelementptr inbounds %struct.clbox, %struct.clbox* %48, i32 0, i32 7
  store %struct.clbox* %47, %struct.clbox** %next, align 8
  %49 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next61 = getelementptr inbounds %struct.clbox, %struct.clbox* %49, i32 0, i32 7
  %50 = load %struct.clbox*, %struct.clbox** %next61, align 8
  store %struct.clbox* %50, %struct.clbox** %clptr, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.53
  %51 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next63 = getelementptr inbounds %struct.clbox, %struct.clbox* %51, i32 0, i32 7
  store %struct.clbox* null, %struct.clbox** %next63, align 8
  %52 = load i32, i32* @edgeCount, align 4
  %53 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge = getelementptr inbounds %struct.clbox, %struct.clbox* %53, i32 0, i32 0
  store i32 %52, i32* %edge, align 4
  %54 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace = getelementptr inbounds %struct.clbox, %struct.clbox* %54, i32 0, i32 1
  store i32 0, i32* %extraSpace, align 4
  %55 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact = getelementptr inbounds %struct.clbox, %struct.clbox* %55, i32 0, i32 6
  store i32 1000000, i32* %compact, align 4
  %56 = load i32, i32* %rippleCount, align 4
  %inc64 = add nsw i32 %56, 1
  store i32 %inc64, i32* %rippleCount, align 4
  %cmp65 = icmp sgt i32 %inc64, 400
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.62
  %57 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %58 = bitcast %struct.edgebox* %57 to i8*
  %59 = load i32, i32* @edgeCount, align 4
  %add68 = add nsw i32 %59, 400
  %conv69 = sext i32 %add68 to i64
  %mul70 = mul i64 %conv69, 40
  %call71 = call i8* @realloc(i8* %58, i64 %mul70) #5
  %60 = bitcast i8* %call71 to %struct.edgebox*
  store %struct.edgebox* %60, %struct.edgebox** @edgeList, align 8
  store i32 1, i32* %rippleCount, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.62
  %61 = load i32, i32* %v, align 4
  %rem73 = srem i32 %61, 2
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.105

if.then.76:                                       ; preds = %if.end.72
  %62 = load i32, i32* %uy, align 4
  %63 = load i32, i32* %vy, align 4
  %cmp77 = icmp sle i32 %62, %63
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.76
  %64 = load i32, i32* %uy, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.76
  %65 = load i32, i32* %vy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %65, %cond.false ]
  %66 = load i32, i32* @edgeCount, align 4
  %idxprom79 = sext i32 %66 to i64
  %67 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx80 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %67, i64 %idxprom79
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx80, i32 0, i32 1
  store i32 %cond, i32* %start, align 4
  %68 = load i32, i32* %uy, align 4
  %69 = load i32, i32* %vy, align 4
  %cmp81 = icmp sle i32 %68, %69
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  %70 = load i32, i32* %vy, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end
  %71 = load i32, i32* %uy, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %70, %cond.true.83 ], [ %71, %cond.false.84 ]
  %72 = load i32, i32* @edgeCount, align 4
  %idxprom87 = sext i32 %72 to i64
  %73 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx88 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %73, i64 %idxprom87
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx88, i32 0, i32 2
  store i32 %cond86, i32* %end, align 4
  %74 = load i32, i32* %ux, align 4
  %75 = load i32, i32* @edgeCount, align 4
  %idxprom89 = sext i32 %75 to i64
  %76 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx90 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %76, i64 %idxprom89
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx90, i32 0, i32 3
  store i32 %74, i32* %loc, align 4
  %77 = load i32, i32* %uy, align 4
  %78 = load i32, i32* %vy, align 4
  %cmp91 = icmp sle i32 %77, %78
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end.85
  %79 = load i32, i32* %vy, align 4
  %80 = load i32, i32* %uy, align 4
  %sub = sub nsw i32 %79, %80
  br label %cond.end.96

cond.false.94:                                    ; preds = %cond.end.85
  %81 = load i32, i32* %uy, align 4
  %82 = load i32, i32* %vy, align 4
  %sub95 = sub nsw i32 %81, %82
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.94, %cond.true.93
  %cond97 = phi i32 [ %sub, %cond.true.93 ], [ %sub95, %cond.false.94 ]
  %83 = load i32, i32* @edgeCount, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx99 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %84, i64 %idxprom98
  %length = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx99, i32 0, i32 4
  store i32 %cond97, i32* %length, align 4
  %85 = load i32, i32* %uy, align 4
  %86 = load i32, i32* %vy, align 4
  %cmp100 = icmp sle i32 %85, %86
  %cond102 = select i1 %cmp100, i32 1, i32 -1
  %87 = load i32, i32* @edgeCount, align 4
  %idxprom103 = sext i32 %87 to i64
  %88 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx104 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %88, i64 %idxprom103
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx104, i32 0, i32 5
  store i32 %cond102, i32* %UorR, align 4
  %89 = load i32, i32* %ux, align 4
  %90 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @vFixedEdgeRoot, i32 %89, i32 %90)
  %91 = load i32, i32* %ux, align 4
  %92 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @vEdgeRoot, i32 %91, i32 %92)
  br label %if.end.144

if.else.105:                                      ; preds = %if.end.72
  %93 = load i32, i32* %ux, align 4
  %94 = load i32, i32* %vx, align 4
  %cmp106 = icmp sle i32 %93, %94
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.else.105
  %95 = load i32, i32* %ux, align 4
  br label %cond.end.110

cond.false.109:                                   ; preds = %if.else.105
  %96 = load i32, i32* %vx, align 4
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.108
  %cond111 = phi i32 [ %95, %cond.true.108 ], [ %96, %cond.false.109 ]
  %97 = load i32, i32* @edgeCount, align 4
  %idxprom112 = sext i32 %97 to i64
  %98 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx113 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %98, i64 %idxprom112
  %start114 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx113, i32 0, i32 1
  store i32 %cond111, i32* %start114, align 4
  %99 = load i32, i32* %ux, align 4
  %100 = load i32, i32* %vx, align 4
  %cmp115 = icmp sle i32 %99, %100
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end.110
  %101 = load i32, i32* %vx, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end.110
  %102 = load i32, i32* %ux, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %101, %cond.true.117 ], [ %102, %cond.false.118 ]
  %103 = load i32, i32* @edgeCount, align 4
  %idxprom121 = sext i32 %103 to i64
  %104 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx122 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %104, i64 %idxprom121
  %end123 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx122, i32 0, i32 2
  store i32 %cond120, i32* %end123, align 4
  %105 = load i32, i32* %uy, align 4
  %106 = load i32, i32* @edgeCount, align 4
  %idxprom124 = sext i32 %106 to i64
  %107 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx125 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %107, i64 %idxprom124
  %loc126 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx125, i32 0, i32 3
  store i32 %105, i32* %loc126, align 4
  %108 = load i32, i32* %ux, align 4
  %109 = load i32, i32* %vx, align 4
  %cmp127 = icmp sle i32 %108, %109
  br i1 %cmp127, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.end.119
  %110 = load i32, i32* %vx, align 4
  %111 = load i32, i32* %ux, align 4
  %sub130 = sub nsw i32 %110, %111
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.end.119
  %112 = load i32, i32* %ux, align 4
  %113 = load i32, i32* %vx, align 4
  %sub132 = sub nsw i32 %112, %113
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.129
  %cond134 = phi i32 [ %sub130, %cond.true.129 ], [ %sub132, %cond.false.131 ]
  %114 = load i32, i32* @edgeCount, align 4
  %idxprom135 = sext i32 %114 to i64
  %115 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx136 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %115, i64 %idxprom135
  %length137 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx136, i32 0, i32 4
  store i32 %cond134, i32* %length137, align 4
  %116 = load i32, i32* %ux, align 4
  %117 = load i32, i32* %vx, align 4
  %cmp138 = icmp sle i32 %116, %117
  %cond140 = select i1 %cmp138, i32 1, i32 -1
  %118 = load i32, i32* @edgeCount, align 4
  %idxprom141 = sext i32 %118 to i64
  %119 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx142 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %119, i64 %idxprom141
  %UorR143 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx142, i32 0, i32 5
  store i32 %cond140, i32* %UorR143, align 4
  %120 = load i32, i32* %uy, align 4
  %121 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @hFixedEdgeRoot, i32 %120, i32 %121)
  %122 = load i32, i32* %uy, align 4
  %123 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %122, i32 %123)
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.133, %cond.end.96
  %124 = load i32, i32* %cell, align 4
  %125 = load i32, i32* @edgeCount, align 4
  %idxprom145 = sext i32 %125 to i64
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %idxprom145
  %cell147 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx146, i32 0, i32 0
  store i32 %124, i32* %cell147, align 4
  %127 = load i32, i32* @edgeCount, align 4
  %idxprom148 = sext i32 %127 to i64
  %128 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx149 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %128, i64 %idxprom148
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx149, i32 0, i32 6
  store i32 1, i32* %fixed, align 4
  %129 = load i32, i32* @edgeCount, align 4
  %add150 = add nsw i32 %129, 1
  %130 = load i32, i32* @edgeCount, align 4
  %idxprom151 = sext i32 %130 to i64
  %131 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx152 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %131, i64 %idxprom151
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx152, i32 0, i32 8
  store i32 %add150, i32* %nextEdge, align 4
  %132 = load i32, i32* %v, align 4
  %cmp153 = icmp eq i32 %132, 2
  br i1 %cmp153, label %if.then.155, label %if.else.160

if.then.155:                                      ; preds = %if.end.144
  %133 = load i32, i32* @edgeCount, align 4
  %134 = load i32, i32* %vertices, align 4
  %add156 = add nsw i32 %133, %134
  %sub157 = sub nsw i32 %add156, 1
  %135 = load i32, i32* @edgeCount, align 4
  %idxprom158 = sext i32 %135 to i64
  %136 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx159 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %136, i64 %idxprom158
  %prevEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx159, i32 0, i32 7
  store i32 %sub157, i32* %prevEdge, align 4
  br label %if.end.165

if.else.160:                                      ; preds = %if.end.144
  %137 = load i32, i32* @edgeCount, align 4
  %sub161 = sub nsw i32 %137, 1
  %138 = load i32, i32* @edgeCount, align 4
  %idxprom162 = sext i32 %138 to i64
  %139 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx163 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %139, i64 %idxprom162
  %prevEdge164 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx163, i32 0, i32 7
  store i32 %sub161, i32* %prevEdge164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.160, %if.then.155
  %140 = load i32, i32* %vx, align 4
  store i32 %140, i32* %ux, align 4
  %141 = load i32, i32* %vy, align 4
  store i32 %141, i32* %uy, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.49
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %142 = load i32, i32* %v, align 4
  %inc168 = add nsw i32 %142, 1
  store i32 %inc168, i32* %v, align 4
  br label %for.cond.26

for.end.169:                                      ; preds = %for.cond.26
  %143 = load i32, i32* %ux0, align 4
  store i32 %143, i32* %vx, align 4
  %144 = load i32, i32* %uy0, align 4
  store i32 %144, i32* %vy, align 4
  %145 = load i32, i32* @edgeCount, align 4
  %inc170 = add nsw i32 %145, 1
  store i32 %inc170, i32* @edgeCount, align 4
  %call171 = call noalias i8* @malloc(i64 40) #5
  %146 = bitcast i8* %call171 to %struct.clbox*
  %147 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next172 = getelementptr inbounds %struct.clbox, %struct.clbox* %147, i32 0, i32 7
  store %struct.clbox* %146, %struct.clbox** %next172, align 8
  store %struct.clbox* %146, %struct.clbox** %clptr, align 8
  %148 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next173 = getelementptr inbounds %struct.clbox, %struct.clbox* %148, i32 0, i32 7
  store %struct.clbox* null, %struct.clbox** %next173, align 8
  %149 = load i32, i32* @edgeCount, align 4
  %150 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %edge174 = getelementptr inbounds %struct.clbox, %struct.clbox* %150, i32 0, i32 0
  store i32 %149, i32* %edge174, align 4
  %151 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace175 = getelementptr inbounds %struct.clbox, %struct.clbox* %151, i32 0, i32 1
  store i32 0, i32* %extraSpace175, align 4
  %152 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %compact176 = getelementptr inbounds %struct.clbox, %struct.clbox* %152, i32 0, i32 6
  store i32 1000000, i32* %compact176, align 4
  %153 = load i32, i32* %rippleCount, align 4
  %inc177 = add nsw i32 %153, 1
  store i32 %inc177, i32* %rippleCount, align 4
  %cmp178 = icmp sgt i32 %inc177, 400
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %for.end.169
  %154 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %155 = bitcast %struct.edgebox* %154 to i8*
  %156 = load i32, i32* @edgeCount, align 4
  %add181 = add nsw i32 %156, 400
  %conv182 = sext i32 %add181 to i64
  %mul183 = mul i64 %conv182, 40
  %call184 = call i8* @realloc(i8* %155, i64 %mul183) #5
  %157 = bitcast i8* %call184 to %struct.edgebox*
  store %struct.edgebox* %157, %struct.edgebox** @edgeList, align 8
  store i32 1, i32* %rippleCount, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %for.end.169
  %158 = load i32, i32* %cell, align 4
  %159 = load i32, i32* @edgeCount, align 4
  %idxprom186 = sext i32 %159 to i64
  %160 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx187 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %160, i64 %idxprom186
  %cell188 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx187, i32 0, i32 0
  store i32 %158, i32* %cell188, align 4
  %161 = load i32, i32* %ux, align 4
  %162 = load i32, i32* %vx, align 4
  %cmp189 = icmp sle i32 %161, %162
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %if.end.185
  %163 = load i32, i32* %ux, align 4
  br label %cond.end.193

cond.false.192:                                   ; preds = %if.end.185
  %164 = load i32, i32* %vx, align 4
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.192, %cond.true.191
  %cond194 = phi i32 [ %163, %cond.true.191 ], [ %164, %cond.false.192 ]
  %165 = load i32, i32* @edgeCount, align 4
  %idxprom195 = sext i32 %165 to i64
  %166 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx196 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %166, i64 %idxprom195
  %start197 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx196, i32 0, i32 1
  store i32 %cond194, i32* %start197, align 4
  %167 = load i32, i32* %ux, align 4
  %168 = load i32, i32* %vx, align 4
  %cmp198 = icmp sle i32 %167, %168
  br i1 %cmp198, label %cond.true.200, label %cond.false.201

cond.true.200:                                    ; preds = %cond.end.193
  %169 = load i32, i32* %vx, align 4
  br label %cond.end.202

cond.false.201:                                   ; preds = %cond.end.193
  %170 = load i32, i32* %ux, align 4
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.200
  %cond203 = phi i32 [ %169, %cond.true.200 ], [ %170, %cond.false.201 ]
  %171 = load i32, i32* @edgeCount, align 4
  %idxprom204 = sext i32 %171 to i64
  %172 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx205 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %172, i64 %idxprom204
  %end206 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx205, i32 0, i32 2
  store i32 %cond203, i32* %end206, align 4
  %173 = load i32, i32* %uy, align 4
  %174 = load i32, i32* @edgeCount, align 4
  %idxprom207 = sext i32 %174 to i64
  %175 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx208 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %175, i64 %idxprom207
  %loc209 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx208, i32 0, i32 3
  store i32 %173, i32* %loc209, align 4
  %176 = load i32, i32* %ux, align 4
  %177 = load i32, i32* %vx, align 4
  %cmp210 = icmp sle i32 %176, %177
  br i1 %cmp210, label %cond.true.212, label %cond.false.214

cond.true.212:                                    ; preds = %cond.end.202
  %178 = load i32, i32* %vx, align 4
  %179 = load i32, i32* %ux, align 4
  %sub213 = sub nsw i32 %178, %179
  br label %cond.end.216

cond.false.214:                                   ; preds = %cond.end.202
  %180 = load i32, i32* %ux, align 4
  %181 = load i32, i32* %vx, align 4
  %sub215 = sub nsw i32 %180, %181
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.214, %cond.true.212
  %cond217 = phi i32 [ %sub213, %cond.true.212 ], [ %sub215, %cond.false.214 ]
  %182 = load i32, i32* @edgeCount, align 4
  %idxprom218 = sext i32 %182 to i64
  %183 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx219 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %183, i64 %idxprom218
  %length220 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx219, i32 0, i32 4
  store i32 %cond217, i32* %length220, align 4
  %184 = load i32, i32* %ux, align 4
  %185 = load i32, i32* %vx, align 4
  %cmp221 = icmp sle i32 %184, %185
  %cond223 = select i1 %cmp221, i32 1, i32 -1
  %186 = load i32, i32* @edgeCount, align 4
  %idxprom224 = sext i32 %186 to i64
  %187 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx225 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %187, i64 %idxprom224
  %UorR226 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx225, i32 0, i32 5
  store i32 %cond223, i32* %UorR226, align 4
  %188 = load i32, i32* @edgeCount, align 4
  %sub227 = sub nsw i32 %188, 1
  %189 = load i32, i32* @edgeCount, align 4
  %idxprom228 = sext i32 %189 to i64
  %190 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx229 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %190, i64 %idxprom228
  %prevEdge230 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx229, i32 0, i32 7
  store i32 %sub227, i32* %prevEdge230, align 4
  %191 = load i32, i32* @edgeCount, align 4
  %192 = load i32, i32* %vertices, align 4
  %sub231 = sub nsw i32 %192, 1
  %sub232 = sub nsw i32 %191, %sub231
  %193 = load i32, i32* @edgeCount, align 4
  %idxprom233 = sext i32 %193 to i64
  %194 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx234 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %194, i64 %idxprom233
  %nextEdge235 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx234, i32 0, i32 8
  store i32 %sub232, i32* %nextEdge235, align 4
  %195 = load i32, i32* @edgeCount, align 4
  %idxprom236 = sext i32 %195 to i64
  %196 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx237 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %196, i64 %idxprom236
  %fixed238 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx237, i32 0, i32 6
  store i32 1, i32* %fixed238, align 4
  %197 = load i32, i32* %uy, align 4
  %198 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @hFixedEdgeRoot, i32 %197, i32 %198)
  %199 = load i32, i32* %uy, align 4
  %200 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** @hEdgeRoot, i32 %199, i32 %200)
  br label %if.end.244

if.else.239:                                      ; preds = %while.body
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %arraydecay240 = getelementptr inbounds [32 x i8], [32 x i8]* %input, i32 0, i32 0
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay240)
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %204 = load i32, i32* %cell, align 4
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %204)
  call void @exit(i32 0) #7
  unreachable

if.end.244:                                       ; preds = %cond.end.216
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %205 = load i32, i32* %cell, align 4
  store i32 %205, i32* @numberCells, align 4
  %206 = load i32, i32* @bbb, align 4
  %dec = add nsw i32 %206, -1
  store i32 %dec, i32* @bbb, align 4
  %207 = load i32, i32* @bbt, align 4
  %inc245 = add nsw i32 %207, 1
  store i32 %inc245, i32* @bbt, align 4
  %208 = load i32, i32* @bbl, align 4
  %dec246 = add nsw i32 %208, -1
  store i32 %dec246, i32* @bbl, align 4
  %209 = load i32, i32* @bbr, align 4
  %inc247 = add nsw i32 %209, 1
  store i32 %inc247, i32* @bbr, align 4
  %210 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %211 = bitcast %struct.edgebox* %210 to i8*
  %212 = load i32, i32* @edgeCount, align 4
  %mul248 = mul nsw i32 3, %212
  %add249 = add nsw i32 %mul248, 5
  %conv250 = sext i32 %add249 to i64
  %mul251 = mul i64 %conv250, 40
  %call252 = call i8* @realloc(i8* %211, i64 %mul251) #5
  %213 = bitcast i8* %call252 to %struct.edgebox*
  store %struct.edgebox* %213, %struct.edgebox** @edgeList, align 8
  %214 = load i32, i32* @bbb, align 4
  %215 = load i32, i32* @edgeCount, align 4
  %inc253 = add nsw i32 %215, 1
  store i32 %inc253, i32* @edgeCount, align 4
  %idxprom254 = sext i32 %inc253 to i64
  %216 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx255 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %216, i64 %idxprom254
  %start256 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx255, i32 0, i32 1
  store i32 %214, i32* %start256, align 4
  %217 = load i32, i32* @bbt, align 4
  %218 = load i32, i32* @edgeCount, align 4
  %idxprom257 = sext i32 %218 to i64
  %219 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx258 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %219, i64 %idxprom257
  %end259 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx258, i32 0, i32 2
  store i32 %217, i32* %end259, align 4
  %220 = load i32, i32* @bbl, align 4
  %221 = load i32, i32* @edgeCount, align 4
  %idxprom260 = sext i32 %221 to i64
  %222 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx261 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %222, i64 %idxprom260
  %loc262 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx261, i32 0, i32 3
  store i32 %220, i32* %loc262, align 4
  %223 = load i32, i32* @bbt, align 4
  %224 = load i32, i32* @bbb, align 4
  %sub263 = sub nsw i32 %223, %224
  %225 = load i32, i32* @edgeCount, align 4
  %idxprom264 = sext i32 %225 to i64
  %226 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx265 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %226, i64 %idxprom264
  %length266 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx265, i32 0, i32 4
  store i32 %sub263, i32* %length266, align 4
  %227 = load i32, i32* @edgeCount, align 4
  %idxprom267 = sext i32 %227 to i64
  %228 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx268 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %228, i64 %idxprom267
  %fixed269 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx268, i32 0, i32 6
  store i32 1, i32* %fixed269, align 4
  %229 = load i32, i32* @edgeCount, align 4
  %idxprom270 = sext i32 %229 to i64
  %230 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx271 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %230, i64 %idxprom270
  %UorR272 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx271, i32 0, i32 5
  store i32 -1, i32* %UorR272, align 4
  %231 = load i32, i32* @edgeCount, align 4
  %add273 = add nsw i32 %231, 1
  %232 = load i32, i32* @edgeCount, align 4
  %idxprom274 = sext i32 %232 to i64
  %233 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx275 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %233, i64 %idxprom274
  %prevEdge276 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx275, i32 0, i32 7
  store i32 %add273, i32* %prevEdge276, align 4
  %234 = load i32, i32* @edgeCount, align 4
  %add277 = add nsw i32 %234, 3
  %235 = load i32, i32* @edgeCount, align 4
  %idxprom278 = sext i32 %235 to i64
  %236 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx279 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %236, i64 %idxprom278
  %nextEdge280 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx279, i32 0, i32 8
  store i32 %add277, i32* %nextEdge280, align 4
  %237 = load i32, i32* @edgeCount, align 4
  %idxprom281 = sext i32 %237 to i64
  %238 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx282 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %238, i64 %idxprom281
  %cell283 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx282, i32 0, i32 0
  store i32 -1, i32* %cell283, align 4
  %239 = load i32, i32* @bbl, align 4
  %240 = load i32, i32* @edgeCount, align 4
  %inc284 = add nsw i32 %240, 1
  store i32 %inc284, i32* @edgeCount, align 4
  %idxprom285 = sext i32 %inc284 to i64
  %241 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx286 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %241, i64 %idxprom285
  %start287 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx286, i32 0, i32 1
  store i32 %239, i32* %start287, align 4
  %242 = load i32, i32* @bbr, align 4
  %243 = load i32, i32* @edgeCount, align 4
  %idxprom288 = sext i32 %243 to i64
  %244 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx289 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %244, i64 %idxprom288
  %end290 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx289, i32 0, i32 2
  store i32 %242, i32* %end290, align 4
  %245 = load i32, i32* @bbt, align 4
  %246 = load i32, i32* @edgeCount, align 4
  %idxprom291 = sext i32 %246 to i64
  %247 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx292 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %247, i64 %idxprom291
  %loc293 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx292, i32 0, i32 3
  store i32 %245, i32* %loc293, align 4
  %248 = load i32, i32* @bbr, align 4
  %249 = load i32, i32* @bbl, align 4
  %sub294 = sub nsw i32 %248, %249
  %250 = load i32, i32* @edgeCount, align 4
  %idxprom295 = sext i32 %250 to i64
  %251 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx296 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %251, i64 %idxprom295
  %length297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx296, i32 0, i32 4
  store i32 %sub294, i32* %length297, align 4
  %252 = load i32, i32* @edgeCount, align 4
  %idxprom298 = sext i32 %252 to i64
  %253 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx299 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %253, i64 %idxprom298
  %fixed300 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx299, i32 0, i32 6
  store i32 1, i32* %fixed300, align 4
  %254 = load i32, i32* @edgeCount, align 4
  %idxprom301 = sext i32 %254 to i64
  %255 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx302 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %255, i64 %idxprom301
  %UorR303 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx302, i32 0, i32 5
  store i32 -1, i32* %UorR303, align 4
  %256 = load i32, i32* @edgeCount, align 4
  %add304 = add nsw i32 %256, 1
  %257 = load i32, i32* @edgeCount, align 4
  %idxprom305 = sext i32 %257 to i64
  %258 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %258, i64 %idxprom305
  %prevEdge307 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx306, i32 0, i32 7
  store i32 %add304, i32* %prevEdge307, align 4
  %259 = load i32, i32* @edgeCount, align 4
  %sub308 = sub nsw i32 %259, 1
  %260 = load i32, i32* @edgeCount, align 4
  %idxprom309 = sext i32 %260 to i64
  %261 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx310 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %261, i64 %idxprom309
  %nextEdge311 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx310, i32 0, i32 8
  store i32 %sub308, i32* %nextEdge311, align 4
  %262 = load i32, i32* @edgeCount, align 4
  %idxprom312 = sext i32 %262 to i64
  %263 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx313 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %263, i64 %idxprom312
  %cell314 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx313, i32 0, i32 0
  store i32 -1, i32* %cell314, align 4
  %264 = load i32, i32* @bbb, align 4
  %265 = load i32, i32* @edgeCount, align 4
  %inc315 = add nsw i32 %265, 1
  store i32 %inc315, i32* @edgeCount, align 4
  %idxprom316 = sext i32 %inc315 to i64
  %266 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i64 %idxprom316
  %start318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx317, i32 0, i32 1
  store i32 %264, i32* %start318, align 4
  %267 = load i32, i32* @bbt, align 4
  %268 = load i32, i32* @edgeCount, align 4
  %idxprom319 = sext i32 %268 to i64
  %269 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx320 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %269, i64 %idxprom319
  %end321 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx320, i32 0, i32 2
  store i32 %267, i32* %end321, align 4
  %270 = load i32, i32* @bbr, align 4
  %271 = load i32, i32* @edgeCount, align 4
  %idxprom322 = sext i32 %271 to i64
  %272 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx323 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %272, i64 %idxprom322
  %loc324 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx323, i32 0, i32 3
  store i32 %270, i32* %loc324, align 4
  %273 = load i32, i32* @bbt, align 4
  %274 = load i32, i32* @bbb, align 4
  %sub325 = sub nsw i32 %273, %274
  %275 = load i32, i32* @edgeCount, align 4
  %idxprom326 = sext i32 %275 to i64
  %276 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx327 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %276, i64 %idxprom326
  %length328 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx327, i32 0, i32 4
  store i32 %sub325, i32* %length328, align 4
  %277 = load i32, i32* @edgeCount, align 4
  %idxprom329 = sext i32 %277 to i64
  %278 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx330 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %278, i64 %idxprom329
  %fixed331 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx330, i32 0, i32 6
  store i32 1, i32* %fixed331, align 4
  %279 = load i32, i32* @edgeCount, align 4
  %idxprom332 = sext i32 %279 to i64
  %280 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx333 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %280, i64 %idxprom332
  %UorR334 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx333, i32 0, i32 5
  store i32 1, i32* %UorR334, align 4
  %281 = load i32, i32* @edgeCount, align 4
  %add335 = add nsw i32 %281, 1
  %282 = load i32, i32* @edgeCount, align 4
  %idxprom336 = sext i32 %282 to i64
  %283 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx337 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %283, i64 %idxprom336
  %prevEdge338 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx337, i32 0, i32 7
  store i32 %add335, i32* %prevEdge338, align 4
  %284 = load i32, i32* @edgeCount, align 4
  %sub339 = sub nsw i32 %284, 1
  %285 = load i32, i32* @edgeCount, align 4
  %idxprom340 = sext i32 %285 to i64
  %286 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx341 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %286, i64 %idxprom340
  %nextEdge342 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx341, i32 0, i32 8
  store i32 %sub339, i32* %nextEdge342, align 4
  %287 = load i32, i32* @edgeCount, align 4
  %idxprom343 = sext i32 %287 to i64
  %288 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx344 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %288, i64 %idxprom343
  %cell345 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx344, i32 0, i32 0
  store i32 -1, i32* %cell345, align 4
  %289 = load i32, i32* @bbl, align 4
  %290 = load i32, i32* @edgeCount, align 4
  %inc346 = add nsw i32 %290, 1
  store i32 %inc346, i32* @edgeCount, align 4
  %idxprom347 = sext i32 %inc346 to i64
  %291 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx348 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %291, i64 %idxprom347
  %start349 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx348, i32 0, i32 1
  store i32 %289, i32* %start349, align 4
  %292 = load i32, i32* @bbr, align 4
  %293 = load i32, i32* @edgeCount, align 4
  %idxprom350 = sext i32 %293 to i64
  %294 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx351 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %294, i64 %idxprom350
  %end352 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx351, i32 0, i32 2
  store i32 %292, i32* %end352, align 4
  %295 = load i32, i32* @bbb, align 4
  %296 = load i32, i32* @edgeCount, align 4
  %idxprom353 = sext i32 %296 to i64
  %297 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx354 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %297, i64 %idxprom353
  %loc355 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx354, i32 0, i32 3
  store i32 %295, i32* %loc355, align 4
  %298 = load i32, i32* @bbr, align 4
  %299 = load i32, i32* @bbl, align 4
  %sub356 = sub nsw i32 %298, %299
  %300 = load i32, i32* @edgeCount, align 4
  %idxprom357 = sext i32 %300 to i64
  %301 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx358 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %301, i64 %idxprom357
  %length359 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx358, i32 0, i32 4
  store i32 %sub356, i32* %length359, align 4
  %302 = load i32, i32* @edgeCount, align 4
  %idxprom360 = sext i32 %302 to i64
  %303 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx361 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %303, i64 %idxprom360
  %fixed362 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx361, i32 0, i32 6
  store i32 1, i32* %fixed362, align 4
  %304 = load i32, i32* @edgeCount, align 4
  %idxprom363 = sext i32 %304 to i64
  %305 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx364 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %305, i64 %idxprom363
  %UorR365 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx364, i32 0, i32 5
  store i32 1, i32* %UorR365, align 4
  %306 = load i32, i32* @edgeCount, align 4
  %sub366 = sub nsw i32 %306, 3
  %307 = load i32, i32* @edgeCount, align 4
  %idxprom367 = sext i32 %307 to i64
  %308 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx368 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %308, i64 %idxprom367
  %prevEdge369 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx368, i32 0, i32 7
  store i32 %sub366, i32* %prevEdge369, align 4
  %309 = load i32, i32* @edgeCount, align 4
  %sub370 = sub nsw i32 %309, 1
  %310 = load i32, i32* @edgeCount, align 4
  %idxprom371 = sext i32 %310 to i64
  %311 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx372 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %311, i64 %idxprom371
  %nextEdge373 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx372, i32 0, i32 8
  store i32 %sub370, i32* %nextEdge373, align 4
  %312 = load i32, i32* @edgeCount, align 4
  %idxprom374 = sext i32 %312 to i64
  %313 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx375 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %313, i64 %idxprom374
  %cell376 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx375, i32 0, i32 0
  store i32 -1, i32* %cell376, align 4
  store i32 0, i32* @numProbes, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare void @tinsert(%struct.tnode**, i32, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
