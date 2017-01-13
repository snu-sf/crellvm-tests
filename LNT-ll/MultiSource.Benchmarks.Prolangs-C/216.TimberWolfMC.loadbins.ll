; ModuleID = './MultiSource.Benchmarks.Prolangs-C/216.TimberWolfMC.loadbins.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external global i32, align 4
@numBinsY = external global i32, align 4
@numcells = external global i32, align 4
@blockarray = external global i32***, align 8
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@finalShot = external global i32, align 4
@binOffsetX = external global i32, align 4
@binWidthX = external global i32, align 4
@binOffsetY = external global i32, align 4
@binWidthY = external global i32, align 4
@bucket = external global i32*, align 8

; Function Attrs: nounwind uwtable
define void @loadbins(i32 %new) #0 {
entry:
  %new.addr = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %tptr = alloca %struct.tilebox*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %startx = alloca i32, align 4
  %endx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endy = alloca i32, align 4
  %occuptr = alloca i32*, align 8
  %lowBinX = alloca i32, align 4
  %highBinX = alloca i32, align 4
  %lowBinY = alloca i32, align 4
  %highBinY = alloca i32, align 4
  %cell = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %bottom = alloca i32, align 4
  %top = alloca i32, align 4
  %rl = alloca i32, align 4
  %tb = alloca i32, align 4
  %maxhalfdim = alloca i32, align 4
  store i32 %new, i32* %new.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numBinsX, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @numBinsY, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @numcells, align 4
  %add = add nsw i32 4, %5
  %cmp5 = icmp sle i32 %4, %add
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32***, i32**** @blockarray, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %9, i64 %idxprom8
  %10 = load i32**, i32*** %arrayidx, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %10, i64 %idxprom7
  %11 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end.13
  %14 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %15 = load i32, i32* @blockl, align 4
  store i32 %15, i32* %left, align 4
  %16 = load i32, i32* @blockr, align 4
  store i32 %16, i32* %right, align 4
  %17 = load i32, i32* @blockb, align 4
  store i32 %17, i32* %bottom, align 4
  %18 = load i32, i32* @blockt, align 4
  store i32 %18, i32* %top, align 4
  %19 = load i32, i32* %right, align 4
  %20 = load i32, i32* %left, align 4
  %sub = sub nsw i32 %19, %20
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %rl, align 4
  %21 = load i32, i32* %top, align 4
  %22 = load i32, i32* %bottom, align 4
  %sub17 = sub nsw i32 %21, %22
  %div18 = sdiv i32 %sub17, 2
  store i32 %div18, i32* %tb, align 4
  %23 = load i32, i32* %right, align 4
  %24 = load i32, i32* %left, align 4
  %sub19 = sub nsw i32 %23, %24
  %25 = load i32, i32* %top, align 4
  %26 = load i32, i32* %bottom, align 4
  %sub20 = sub nsw i32 %25, %26
  %cmp21 = icmp sge i32 %sub19, %sub20
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.16
  %27 = load i32, i32* %right, align 4
  %28 = load i32, i32* %left, align 4
  %sub22 = sub nsw i32 %27, %28
  br label %cond.end

cond.false:                                       ; preds = %for.end.16
  %29 = load i32, i32* %top, align 4
  %30 = load i32, i32* %bottom, align 4
  %sub23 = sub nsw i32 %29, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ %sub23, %cond.false ]
  store i32 %cond, i32* %maxhalfdim, align 4
  %31 = load i32, i32* %new.addr, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %i, align 4
  %call = call noalias i8* @malloc(i64 224) #3
  %32 = bitcast i8* %call to %struct.cellbox*
  %33 = load i32, i32* @numcells, align 4
  %34 = load i32, i32* @numpads, align 4
  %add24 = add nsw i32 %33, %34
  %35 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %35, 1
  store i32 %inc25, i32* %i, align 4
  %add26 = add nsw i32 %add24, %inc25
  %idxprom27 = sext i32 %add26 to i64
  %36 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx28 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %36, i64 %idxprom27
  store %struct.cellbox* %32, %struct.cellbox** %arrayidx28, align 8
  store %struct.cellbox* %32, %struct.cellbox** %ptr, align 8
  %37 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 6
  store i32 1, i32* %numtiles, align 4
  %38 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 8
  store i32 0, i32* %numterms, align 4
  %39 = load i32, i32* %left, align 4
  %40 = load i32, i32* %maxhalfdim, align 4
  %div29 = sdiv i32 %40, 2
  %sub30 = sub nsw i32 %39, %div29
  %41 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 2
  store i32 %sub30, i32* %xcenter, align 4
  %42 = load i32, i32* %top, align 4
  %43 = load i32, i32* %bottom, align 4
  %add31 = add nsw i32 %42, %43
  %div32 = sdiv i32 %add31, 2
  %44 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 3
  store i32 %div32, i32* %ycenter, align 4
  %call33 = call noalias i8* @malloc(i64 104) #3
  %45 = bitcast i8* %call33 to %struct.tilebox*
  %46 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 21
  %arrayidx34 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  store %struct.tilebox* %45, %struct.tilebox** %arrayidx34, align 8
  store %struct.tilebox* %45, %struct.tilebox** %tptr, align 8
  %47 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr, align 8
  %call35 = call noalias i8* @malloc(i64 104) #3
  %48 = bitcast i8* %call35 to %struct.tilebox*
  %49 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 0
  store %struct.tilebox* %48, %struct.tilebox** %nexttile, align 8
  %50 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 0
  %51 = load %struct.tilebox*, %struct.tilebox** %nexttile36, align 8
  %nexttile37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile37, align 8
  %52 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 0
  %53 = load %struct.tilebox*, %struct.tilebox** %nexttile38, align 8
  %termptr39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %53, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr39, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.46, %if.then
  %54 = load i32, i32* %j, align 4
  %cmp41 = icmp slt i32 %54, 8
  br i1 %cmp41, label %for.body.42, label %for.end.48

for.body.42:                                      ; preds = %for.cond.40
  %55 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 21
  %arrayidx45 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config44, i32 0, i64 %idxprom43
  store %struct.tilebox* null, %struct.tilebox** %arrayidx45, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.42
  %57 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %57, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.40

for.end.48:                                       ; preds = %for.cond.40
  %58 = load i32, i32* %maxhalfdim, align 4
  %sub49 = sub nsw i32 0, %58
  %div50 = sdiv i32 %sub49, 2
  %59 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %59, i32 0, i32 9
  store i32 %div50, i32* %left51, align 4
  %60 = load i32, i32* %maxhalfdim, align 4
  %sub52 = sub nsw i32 0, %60
  %div53 = sdiv i32 %sub52, 2
  %61 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile54 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i32 0, i32 0
  %62 = load %struct.tilebox*, %struct.tilebox** %nexttile54, align 8
  %left55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 9
  store i32 %div53, i32* %left55, align 4
  %63 = load i32, i32* %maxhalfdim, align 4
  %div56 = sdiv i32 %63, 2
  %64 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %64, i32 0, i32 10
  store i32 %div56, i32* %right57, align 4
  %65 = load i32, i32* %maxhalfdim, align 4
  %div58 = sdiv i32 %65, 2
  %66 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %66, i32 0, i32 0
  %67 = load %struct.tilebox*, %struct.tilebox** %nexttile59, align 8
  %right60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %67, i32 0, i32 10
  store i32 %div58, i32* %right60, align 4
  %68 = load i32, i32* %tb, align 4
  %sub61 = sub nsw i32 0, %68
  %69 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %69, i32 0, i32 11
  store i32 %sub61, i32* %bottom62, align 4
  %70 = load i32, i32* %tb, align 4
  %sub63 = sub nsw i32 0, %70
  %71 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 0
  %72 = load %struct.tilebox*, %struct.tilebox** %nexttile64, align 8
  %bottom65 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %72, i32 0, i32 11
  store i32 %sub63, i32* %bottom65, align 4
  %73 = load i32, i32* %top, align 4
  %74 = load i32, i32* %bottom, align 4
  %sub66 = sub nsw i32 %73, %74
  %75 = load i32, i32* %tb, align 4
  %sub67 = sub nsw i32 %sub66, %75
  %76 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top68 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 12
  store i32 %sub67, i32* %top68, align 4
  %77 = load i32, i32* %top, align 4
  %78 = load i32, i32* %bottom, align 4
  %sub69 = sub nsw i32 %77, %78
  %79 = load i32, i32* %tb, align 4
  %sub70 = sub nsw i32 %sub69, %79
  %80 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %80, i32 0, i32 0
  %81 = load %struct.tilebox*, %struct.tilebox** %nexttile71, align 8
  %top72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 12
  store i32 %sub70, i32* %top72, align 4
  %call73 = call noalias i8* @malloc(i64 224) #3
  %82 = bitcast i8* %call73 to %struct.cellbox*
  %83 = load i32, i32* @numcells, align 4
  %84 = load i32, i32* @numpads, align 4
  %add74 = add nsw i32 %83, %84
  %85 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %85, 1
  store i32 %inc75, i32* %i, align 4
  %add76 = add nsw i32 %add74, %inc75
  %idxprom77 = sext i32 %add76 to i64
  %86 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx78 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %86, i64 %idxprom77
  store %struct.cellbox* %82, %struct.cellbox** %arrayidx78, align 8
  store %struct.cellbox* %82, %struct.cellbox** %ptr, align 8
  %87 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %87, i32 0, i32 6
  store i32 1, i32* %numtiles79, align 4
  %88 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms80 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %88, i32 0, i32 8
  store i32 0, i32* %numterms80, align 4
  %89 = load i32, i32* %right, align 4
  %90 = load i32, i32* %maxhalfdim, align 4
  %div81 = sdiv i32 %90, 2
  %add82 = add nsw i32 %89, %div81
  %91 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %91, i32 0, i32 2
  store i32 %add82, i32* %xcenter83, align 4
  %92 = load i32, i32* %top, align 4
  %93 = load i32, i32* %bottom, align 4
  %add84 = add nsw i32 %92, %93
  %div85 = sdiv i32 %add84, 2
  %94 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %94, i32 0, i32 3
  store i32 %div85, i32* %ycenter86, align 4
  %call87 = call noalias i8* @malloc(i64 104) #3
  %95 = bitcast i8* %call87 to %struct.tilebox*
  %96 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %96, i32 0, i32 21
  %arrayidx89 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config88, i32 0, i64 0
  store %struct.tilebox* %95, %struct.tilebox** %arrayidx89, align 8
  store %struct.tilebox* %95, %struct.tilebox** %tptr, align 8
  %97 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr90, align 8
  %call91 = call noalias i8* @malloc(i64 104) #3
  %98 = bitcast i8* %call91 to %struct.tilebox*
  %99 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile92 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %99, i32 0, i32 0
  store %struct.tilebox* %98, %struct.tilebox** %nexttile92, align 8
  %100 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile93 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 0
  %101 = load %struct.tilebox*, %struct.tilebox** %nexttile93, align 8
  %nexttile94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile94, align 8
  %102 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %102, i32 0, i32 0
  %103 = load %struct.tilebox*, %struct.tilebox** %nexttile95, align 8
  %termptr96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %103, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr96, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.103, %for.end.48
  %104 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %104, 8
  br i1 %cmp98, label %for.body.99, label %for.end.105

for.body.99:                                      ; preds = %for.cond.97
  %105 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i32 0, i32 21
  %arrayidx102 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config101, i32 0, i64 %idxprom100
  store %struct.tilebox* null, %struct.tilebox** %arrayidx102, align 8
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.99
  %107 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %107, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.97

for.end.105:                                      ; preds = %for.cond.97
  %108 = load i32, i32* %maxhalfdim, align 4
  %sub106 = sub nsw i32 0, %108
  %div107 = sdiv i32 %sub106, 2
  %109 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %109, i32 0, i32 9
  store i32 %div107, i32* %left108, align 4
  %110 = load i32, i32* %maxhalfdim, align 4
  %sub109 = sub nsw i32 0, %110
  %div110 = sdiv i32 %sub109, 2
  %111 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %111, i32 0, i32 0
  %112 = load %struct.tilebox*, %struct.tilebox** %nexttile111, align 8
  %left112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %112, i32 0, i32 9
  store i32 %div110, i32* %left112, align 4
  %113 = load i32, i32* %maxhalfdim, align 4
  %div113 = sdiv i32 %113, 2
  %114 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %114, i32 0, i32 10
  store i32 %div113, i32* %right114, align 4
  %115 = load i32, i32* %maxhalfdim, align 4
  %div115 = sdiv i32 %115, 2
  %116 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i32 0, i32 0
  %117 = load %struct.tilebox*, %struct.tilebox** %nexttile116, align 8
  %right117 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i32 0, i32 10
  store i32 %div115, i32* %right117, align 4
  %118 = load i32, i32* %tb, align 4
  %sub118 = sub nsw i32 0, %118
  %119 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 11
  store i32 %sub118, i32* %bottom119, align 4
  %120 = load i32, i32* %tb, align 4
  %sub120 = sub nsw i32 0, %120
  %121 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %121, i32 0, i32 0
  %122 = load %struct.tilebox*, %struct.tilebox** %nexttile121, align 8
  %bottom122 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 11
  store i32 %sub120, i32* %bottom122, align 4
  %123 = load i32, i32* %top, align 4
  %124 = load i32, i32* %bottom, align 4
  %sub123 = sub nsw i32 %123, %124
  %125 = load i32, i32* %tb, align 4
  %sub124 = sub nsw i32 %sub123, %125
  %126 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i32 0, i32 12
  store i32 %sub124, i32* %top125, align 4
  %127 = load i32, i32* %top, align 4
  %128 = load i32, i32* %bottom, align 4
  %sub126 = sub nsw i32 %127, %128
  %129 = load i32, i32* %tb, align 4
  %sub127 = sub nsw i32 %sub126, %129
  %130 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 0
  %131 = load %struct.tilebox*, %struct.tilebox** %nexttile128, align 8
  %top129 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %131, i32 0, i32 12
  store i32 %sub127, i32* %top129, align 4
  %call130 = call noalias i8* @malloc(i64 224) #3
  %132 = bitcast i8* %call130 to %struct.cellbox*
  %133 = load i32, i32* @numcells, align 4
  %134 = load i32, i32* @numpads, align 4
  %add131 = add nsw i32 %133, %134
  %135 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %135, 1
  store i32 %inc132, i32* %i, align 4
  %add133 = add nsw i32 %add131, %inc132
  %idxprom134 = sext i32 %add133 to i64
  %136 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx135 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %136, i64 %idxprom134
  store %struct.cellbox* %132, %struct.cellbox** %arrayidx135, align 8
  store %struct.cellbox* %132, %struct.cellbox** %ptr, align 8
  %137 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles136 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %137, i32 0, i32 6
  store i32 1, i32* %numtiles136, align 4
  %138 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms137 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i32 0, i32 8
  store i32 0, i32* %numterms137, align 4
  %139 = load i32, i32* %left, align 4
  %140 = load i32, i32* %right, align 4
  %add138 = add nsw i32 %139, %140
  %div139 = sdiv i32 %add138, 2
  %141 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter140 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %141, i32 0, i32 2
  store i32 %div139, i32* %xcenter140, align 4
  %142 = load i32, i32* %bottom, align 4
  %143 = load i32, i32* %maxhalfdim, align 4
  %div141 = sdiv i32 %143, 2
  %sub142 = sub nsw i32 %142, %div141
  %144 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter143 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %144, i32 0, i32 3
  store i32 %sub142, i32* %ycenter143, align 4
  %call144 = call noalias i8* @malloc(i64 104) #3
  %145 = bitcast i8* %call144 to %struct.tilebox*
  %146 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config145 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %146, i32 0, i32 21
  %arrayidx146 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config145, i32 0, i64 0
  store %struct.tilebox* %145, %struct.tilebox** %arrayidx146, align 8
  store %struct.tilebox* %145, %struct.tilebox** %tptr, align 8
  %147 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %147, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr147, align 8
  %call148 = call noalias i8* @malloc(i64 104) #3
  %148 = bitcast i8* %call148 to %struct.tilebox*
  %149 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %149, i32 0, i32 0
  store %struct.tilebox* %148, %struct.tilebox** %nexttile149, align 8
  %150 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %150, i32 0, i32 0
  %151 = load %struct.tilebox*, %struct.tilebox** %nexttile150, align 8
  %nexttile151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %151, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile151, align 8
  %152 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile152 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i32 0, i32 0
  %153 = load %struct.tilebox*, %struct.tilebox** %nexttile152, align 8
  %termptr153 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %153, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr153, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.160, %for.end.105
  %154 = load i32, i32* %j, align 4
  %cmp155 = icmp slt i32 %154, 8
  br i1 %cmp155, label %for.body.156, label %for.end.162

for.body.156:                                     ; preds = %for.cond.154
  %155 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %155 to i64
  %156 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config158 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %156, i32 0, i32 21
  %arrayidx159 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config158, i32 0, i64 %idxprom157
  store %struct.tilebox* null, %struct.tilebox** %arrayidx159, align 8
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.156
  %157 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %157, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.154

for.end.162:                                      ; preds = %for.cond.154
  %158 = load i32, i32* %maxhalfdim, align 4
  %sub163 = sub nsw i32 0, %158
  %div164 = sdiv i32 %sub163, 2
  %159 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %159, i32 0, i32 11
  store i32 %div164, i32* %bottom165, align 4
  %160 = load i32, i32* %maxhalfdim, align 4
  %sub166 = sub nsw i32 0, %160
  %div167 = sdiv i32 %sub166, 2
  %161 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %161, i32 0, i32 0
  %162 = load %struct.tilebox*, %struct.tilebox** %nexttile168, align 8
  %bottom169 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %162, i32 0, i32 11
  store i32 %div167, i32* %bottom169, align 4
  %163 = load i32, i32* %maxhalfdim, align 4
  %div170 = sdiv i32 %163, 2
  %164 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top171 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 12
  store i32 %div170, i32* %top171, align 4
  %165 = load i32, i32* %maxhalfdim, align 4
  %div172 = sdiv i32 %165, 2
  %166 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile173 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i32 0, i32 0
  %167 = load %struct.tilebox*, %struct.tilebox** %nexttile173, align 8
  %top174 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %167, i32 0, i32 12
  store i32 %div172, i32* %top174, align 4
  %168 = load i32, i32* %rl, align 4
  %sub175 = sub nsw i32 0, %168
  %169 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i32 0, i32 9
  store i32 %sub175, i32* %left176, align 4
  %170 = load i32, i32* %rl, align 4
  %sub177 = sub nsw i32 0, %170
  %171 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i32 0, i32 0
  %172 = load %struct.tilebox*, %struct.tilebox** %nexttile178, align 8
  %left179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %172, i32 0, i32 9
  store i32 %sub177, i32* %left179, align 4
  %173 = load i32, i32* %right, align 4
  %174 = load i32, i32* %left, align 4
  %sub180 = sub nsw i32 %173, %174
  %175 = load i32, i32* %rl, align 4
  %sub181 = sub nsw i32 %sub180, %175
  %176 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %176, i32 0, i32 10
  store i32 %sub181, i32* %right182, align 4
  %177 = load i32, i32* %right, align 4
  %178 = load i32, i32* %left, align 4
  %sub183 = sub nsw i32 %177, %178
  %179 = load i32, i32* %rl, align 4
  %sub184 = sub nsw i32 %sub183, %179
  %180 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile185 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i32 0, i32 0
  %181 = load %struct.tilebox*, %struct.tilebox** %nexttile185, align 8
  %right186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 10
  store i32 %sub184, i32* %right186, align 4
  %call187 = call noalias i8* @malloc(i64 224) #3
  %182 = bitcast i8* %call187 to %struct.cellbox*
  %183 = load i32, i32* @numcells, align 4
  %184 = load i32, i32* @numpads, align 4
  %add188 = add nsw i32 %183, %184
  %185 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %185, 1
  store i32 %inc189, i32* %i, align 4
  %add190 = add nsw i32 %add188, %inc189
  %idxprom191 = sext i32 %add190 to i64
  %186 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx192 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %186, i64 %idxprom191
  store %struct.cellbox* %182, %struct.cellbox** %arrayidx192, align 8
  store %struct.cellbox* %182, %struct.cellbox** %ptr, align 8
  %187 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles193 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i32 0, i32 6
  store i32 1, i32* %numtiles193, align 4
  %188 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms194 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %188, i32 0, i32 8
  store i32 0, i32* %numterms194, align 4
  %189 = load i32, i32* %left, align 4
  %190 = load i32, i32* %right, align 4
  %add195 = add nsw i32 %189, %190
  %div196 = sdiv i32 %add195, 2
  %191 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 2
  store i32 %div196, i32* %xcenter197, align 4
  %192 = load i32, i32* %top, align 4
  %193 = load i32, i32* %maxhalfdim, align 4
  %div198 = sdiv i32 %193, 2
  %add199 = add nsw i32 %192, %div198
  %194 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter200 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %194, i32 0, i32 3
  store i32 %add199, i32* %ycenter200, align 4
  %call201 = call noalias i8* @malloc(i64 104) #3
  %195 = bitcast i8* %call201 to %struct.tilebox*
  %196 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config202 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 21
  %arrayidx203 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config202, i32 0, i64 0
  store %struct.tilebox* %195, %struct.tilebox** %arrayidx203, align 8
  store %struct.tilebox* %195, %struct.tilebox** %tptr, align 8
  %197 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr204 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr204, align 8
  %call205 = call noalias i8* @malloc(i64 104) #3
  %198 = bitcast i8* %call205 to %struct.tilebox*
  %199 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 0
  store %struct.tilebox* %198, %struct.tilebox** %nexttile206, align 8
  %200 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile207 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %200, i32 0, i32 0
  %201 = load %struct.tilebox*, %struct.tilebox** %nexttile207, align 8
  %nexttile208 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %201, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile208, align 8
  %202 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 0
  %203 = load %struct.tilebox*, %struct.tilebox** %nexttile209, align 8
  %termptr210 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr210, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.217, %for.end.162
  %204 = load i32, i32* %j, align 4
  %cmp212 = icmp slt i32 %204, 8
  br i1 %cmp212, label %for.body.213, label %for.end.219

for.body.213:                                     ; preds = %for.cond.211
  %205 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %205 to i64
  %206 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config215 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %206, i32 0, i32 21
  %arrayidx216 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config215, i32 0, i64 %idxprom214
  store %struct.tilebox* null, %struct.tilebox** %arrayidx216, align 8
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.213
  %207 = load i32, i32* %j, align 4
  %inc218 = add nsw i32 %207, 1
  store i32 %inc218, i32* %j, align 4
  br label %for.cond.211

for.end.219:                                      ; preds = %for.cond.211
  %208 = load i32, i32* %maxhalfdim, align 4
  %sub220 = sub nsw i32 0, %208
  %div221 = sdiv i32 %sub220, 2
  %209 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %209, i32 0, i32 11
  store i32 %div221, i32* %bottom222, align 4
  %210 = load i32, i32* %maxhalfdim, align 4
  %sub223 = sub nsw i32 0, %210
  %div224 = sdiv i32 %sub223, 2
  %211 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile225 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %211, i32 0, i32 0
  %212 = load %struct.tilebox*, %struct.tilebox** %nexttile225, align 8
  %bottom226 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i32 0, i32 11
  store i32 %div224, i32* %bottom226, align 4
  %213 = load i32, i32* %maxhalfdim, align 4
  %div227 = sdiv i32 %213, 2
  %214 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top228 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i32 0, i32 12
  store i32 %div227, i32* %top228, align 4
  %215 = load i32, i32* %maxhalfdim, align 4
  %div229 = sdiv i32 %215, 2
  %216 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %216, i32 0, i32 0
  %217 = load %struct.tilebox*, %struct.tilebox** %nexttile230, align 8
  %top231 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 12
  store i32 %div229, i32* %top231, align 4
  %218 = load i32, i32* %rl, align 4
  %sub232 = sub nsw i32 0, %218
  %219 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left233 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %219, i32 0, i32 9
  store i32 %sub232, i32* %left233, align 4
  %220 = load i32, i32* %rl, align 4
  %sub234 = sub nsw i32 0, %220
  %221 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %221, i32 0, i32 0
  %222 = load %struct.tilebox*, %struct.tilebox** %nexttile235, align 8
  %left236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %222, i32 0, i32 9
  store i32 %sub234, i32* %left236, align 4
  %223 = load i32, i32* %right, align 4
  %224 = load i32, i32* %left, align 4
  %sub237 = sub nsw i32 %223, %224
  %225 = load i32, i32* %rl, align 4
  %sub238 = sub nsw i32 %sub237, %225
  %226 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right239 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %226, i32 0, i32 10
  store i32 %sub238, i32* %right239, align 4
  %227 = load i32, i32* %right, align 4
  %228 = load i32, i32* %left, align 4
  %sub240 = sub nsw i32 %227, %228
  %229 = load i32, i32* %rl, align 4
  %sub241 = sub nsw i32 %sub240, %229
  %230 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile242 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %230, i32 0, i32 0
  %231 = load %struct.tilebox*, %struct.tilebox** %nexttile242, align 8
  %right243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %231, i32 0, i32 10
  store i32 %sub241, i32* %right243, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %i, align 4
  %232 = load i32, i32* @numcells, align 4
  %233 = load i32, i32* @numpads, align 4
  %add244 = add nsw i32 %232, %233
  %234 = load i32, i32* %i, align 4
  %inc245 = add nsw i32 %234, 1
  store i32 %inc245, i32* %i, align 4
  %add246 = add nsw i32 %add244, %inc245
  %idxprom247 = sext i32 %add246 to i64
  %235 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx248 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %235, i64 %idxprom247
  %236 = load %struct.cellbox*, %struct.cellbox** %arrayidx248, align 8
  store %struct.cellbox* %236, %struct.cellbox** %ptr, align 8
  %237 = load i32, i32* %left, align 4
  %238 = load i32, i32* %maxhalfdim, align 4
  %div249 = sdiv i32 %238, 2
  %sub250 = sub nsw i32 %237, %div249
  %239 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter251 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 2
  store i32 %sub250, i32* %xcenter251, align 4
  %240 = load i32, i32* %top, align 4
  %241 = load i32, i32* %bottom, align 4
  %add252 = add nsw i32 %240, %241
  %div253 = sdiv i32 %add252, 2
  %242 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter254 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %242, i32 0, i32 3
  store i32 %div253, i32* %ycenter254, align 4
  %243 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config255 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %243, i32 0, i32 21
  %arrayidx256 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config255, i32 0, i64 0
  %244 = load %struct.tilebox*, %struct.tilebox** %arrayidx256, align 8
  store %struct.tilebox* %244, %struct.tilebox** %tptr, align 8
  %245 = load i32, i32* %maxhalfdim, align 4
  %sub257 = sub nsw i32 0, %245
  %div258 = sdiv i32 %sub257, 2
  %246 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left259 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %246, i32 0, i32 9
  store i32 %div258, i32* %left259, align 4
  %247 = load i32, i32* %maxhalfdim, align 4
  %sub260 = sub nsw i32 0, %247
  %div261 = sdiv i32 %sub260, 2
  %248 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %248, i32 0, i32 0
  %249 = load %struct.tilebox*, %struct.tilebox** %nexttile262, align 8
  %left263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %249, i32 0, i32 9
  store i32 %div261, i32* %left263, align 4
  %250 = load i32, i32* %maxhalfdim, align 4
  %div264 = sdiv i32 %250, 2
  %251 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right265 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %251, i32 0, i32 10
  store i32 %div264, i32* %right265, align 4
  %252 = load i32, i32* %maxhalfdim, align 4
  %div266 = sdiv i32 %252, 2
  %253 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile267 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %253, i32 0, i32 0
  %254 = load %struct.tilebox*, %struct.tilebox** %nexttile267, align 8
  %right268 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %254, i32 0, i32 10
  store i32 %div266, i32* %right268, align 4
  %255 = load i32, i32* %tb, align 4
  %sub269 = sub nsw i32 0, %255
  %256 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom270 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %256, i32 0, i32 11
  store i32 %sub269, i32* %bottom270, align 4
  %257 = load i32, i32* %tb, align 4
  %sub271 = sub nsw i32 0, %257
  %258 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile272 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %258, i32 0, i32 0
  %259 = load %struct.tilebox*, %struct.tilebox** %nexttile272, align 8
  %bottom273 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %259, i32 0, i32 11
  store i32 %sub271, i32* %bottom273, align 4
  %260 = load i32, i32* %top, align 4
  %261 = load i32, i32* %bottom, align 4
  %sub274 = sub nsw i32 %260, %261
  %262 = load i32, i32* %tb, align 4
  %sub275 = sub nsw i32 %sub274, %262
  %263 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top276 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %263, i32 0, i32 12
  store i32 %sub275, i32* %top276, align 4
  %264 = load i32, i32* %top, align 4
  %265 = load i32, i32* %bottom, align 4
  %sub277 = sub nsw i32 %264, %265
  %266 = load i32, i32* %tb, align 4
  %sub278 = sub nsw i32 %sub277, %266
  %267 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %267, i32 0, i32 0
  %268 = load %struct.tilebox*, %struct.tilebox** %nexttile279, align 8
  %top280 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %268, i32 0, i32 12
  store i32 %sub278, i32* %top280, align 4
  %269 = load i32, i32* @numcells, align 4
  %270 = load i32, i32* @numpads, align 4
  %add281 = add nsw i32 %269, %270
  %271 = load i32, i32* %i, align 4
  %inc282 = add nsw i32 %271, 1
  store i32 %inc282, i32* %i, align 4
  %add283 = add nsw i32 %add281, %inc282
  %idxprom284 = sext i32 %add283 to i64
  %272 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx285 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %272, i64 %idxprom284
  %273 = load %struct.cellbox*, %struct.cellbox** %arrayidx285, align 8
  store %struct.cellbox* %273, %struct.cellbox** %ptr, align 8
  %274 = load i32, i32* %right, align 4
  %275 = load i32, i32* %maxhalfdim, align 4
  %div286 = sdiv i32 %275, 2
  %add287 = add nsw i32 %274, %div286
  %276 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter288 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %276, i32 0, i32 2
  store i32 %add287, i32* %xcenter288, align 4
  %277 = load i32, i32* %top, align 4
  %278 = load i32, i32* %bottom, align 4
  %add289 = add nsw i32 %277, %278
  %div290 = sdiv i32 %add289, 2
  %279 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter291 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %279, i32 0, i32 3
  store i32 %div290, i32* %ycenter291, align 4
  %280 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config292 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %280, i32 0, i32 21
  %arrayidx293 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config292, i32 0, i64 0
  %281 = load %struct.tilebox*, %struct.tilebox** %arrayidx293, align 8
  store %struct.tilebox* %281, %struct.tilebox** %tptr, align 8
  %282 = load i32, i32* %maxhalfdim, align 4
  %sub294 = sub nsw i32 0, %282
  %div295 = sdiv i32 %sub294, 2
  %283 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left296 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %283, i32 0, i32 9
  store i32 %div295, i32* %left296, align 4
  %284 = load i32, i32* %maxhalfdim, align 4
  %sub297 = sub nsw i32 0, %284
  %div298 = sdiv i32 %sub297, 2
  %285 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile299 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %285, i32 0, i32 0
  %286 = load %struct.tilebox*, %struct.tilebox** %nexttile299, align 8
  %left300 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %286, i32 0, i32 9
  store i32 %div298, i32* %left300, align 4
  %287 = load i32, i32* %maxhalfdim, align 4
  %div301 = sdiv i32 %287, 2
  %288 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right302 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %288, i32 0, i32 10
  store i32 %div301, i32* %right302, align 4
  %289 = load i32, i32* %maxhalfdim, align 4
  %div303 = sdiv i32 %289, 2
  %290 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile304 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %290, i32 0, i32 0
  %291 = load %struct.tilebox*, %struct.tilebox** %nexttile304, align 8
  %right305 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %291, i32 0, i32 10
  store i32 %div303, i32* %right305, align 4
  %292 = load i32, i32* %tb, align 4
  %sub306 = sub nsw i32 0, %292
  %293 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom307 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %293, i32 0, i32 11
  store i32 %sub306, i32* %bottom307, align 4
  %294 = load i32, i32* %tb, align 4
  %sub308 = sub nsw i32 0, %294
  %295 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i32 0, i32 0
  %296 = load %struct.tilebox*, %struct.tilebox** %nexttile309, align 8
  %bottom310 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %296, i32 0, i32 11
  store i32 %sub308, i32* %bottom310, align 4
  %297 = load i32, i32* %top, align 4
  %298 = load i32, i32* %bottom, align 4
  %sub311 = sub nsw i32 %297, %298
  %299 = load i32, i32* %tb, align 4
  %sub312 = sub nsw i32 %sub311, %299
  %300 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top313 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %300, i32 0, i32 12
  store i32 %sub312, i32* %top313, align 4
  %301 = load i32, i32* %top, align 4
  %302 = load i32, i32* %bottom, align 4
  %sub314 = sub nsw i32 %301, %302
  %303 = load i32, i32* %tb, align 4
  %sub315 = sub nsw i32 %sub314, %303
  %304 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile316 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i32 0, i32 0
  %305 = load %struct.tilebox*, %struct.tilebox** %nexttile316, align 8
  %top317 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %305, i32 0, i32 12
  store i32 %sub315, i32* %top317, align 4
  %306 = load i32, i32* @numcells, align 4
  %307 = load i32, i32* @numpads, align 4
  %add318 = add nsw i32 %306, %307
  %308 = load i32, i32* %i, align 4
  %inc319 = add nsw i32 %308, 1
  store i32 %inc319, i32* %i, align 4
  %add320 = add nsw i32 %add318, %inc319
  %idxprom321 = sext i32 %add320 to i64
  %309 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx322 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %309, i64 %idxprom321
  %310 = load %struct.cellbox*, %struct.cellbox** %arrayidx322, align 8
  store %struct.cellbox* %310, %struct.cellbox** %ptr, align 8
  %311 = load i32, i32* %left, align 4
  %312 = load i32, i32* %right, align 4
  %add323 = add nsw i32 %311, %312
  %div324 = sdiv i32 %add323, 2
  %313 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter325 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %313, i32 0, i32 2
  store i32 %div324, i32* %xcenter325, align 4
  %314 = load i32, i32* %bottom, align 4
  %315 = load i32, i32* %maxhalfdim, align 4
  %div326 = sdiv i32 %315, 2
  %sub327 = sub nsw i32 %314, %div326
  %316 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter328 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %316, i32 0, i32 3
  store i32 %sub327, i32* %ycenter328, align 4
  %317 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config329 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 21
  %arrayidx330 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config329, i32 0, i64 0
  %318 = load %struct.tilebox*, %struct.tilebox** %arrayidx330, align 8
  store %struct.tilebox* %318, %struct.tilebox** %tptr, align 8
  %319 = load i32, i32* %maxhalfdim, align 4
  %sub331 = sub nsw i32 0, %319
  %div332 = sdiv i32 %sub331, 2
  %320 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom333 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %320, i32 0, i32 11
  store i32 %div332, i32* %bottom333, align 4
  %321 = load i32, i32* %maxhalfdim, align 4
  %sub334 = sub nsw i32 0, %321
  %div335 = sdiv i32 %sub334, 2
  %322 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile336 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %322, i32 0, i32 0
  %323 = load %struct.tilebox*, %struct.tilebox** %nexttile336, align 8
  %bottom337 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %323, i32 0, i32 11
  store i32 %div335, i32* %bottom337, align 4
  %324 = load i32, i32* %maxhalfdim, align 4
  %div338 = sdiv i32 %324, 2
  %325 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top339 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %325, i32 0, i32 12
  store i32 %div338, i32* %top339, align 4
  %326 = load i32, i32* %maxhalfdim, align 4
  %div340 = sdiv i32 %326, 2
  %327 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile341 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %327, i32 0, i32 0
  %328 = load %struct.tilebox*, %struct.tilebox** %nexttile341, align 8
  %top342 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %328, i32 0, i32 12
  store i32 %div340, i32* %top342, align 4
  %329 = load i32, i32* %rl, align 4
  %sub343 = sub nsw i32 0, %329
  %330 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left344 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %330, i32 0, i32 9
  store i32 %sub343, i32* %left344, align 4
  %331 = load i32, i32* %rl, align 4
  %sub345 = sub nsw i32 0, %331
  %332 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile346 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %332, i32 0, i32 0
  %333 = load %struct.tilebox*, %struct.tilebox** %nexttile346, align 8
  %left347 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %333, i32 0, i32 9
  store i32 %sub345, i32* %left347, align 4
  %334 = load i32, i32* %right, align 4
  %335 = load i32, i32* %left, align 4
  %sub348 = sub nsw i32 %334, %335
  %336 = load i32, i32* %rl, align 4
  %sub349 = sub nsw i32 %sub348, %336
  %337 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right350 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %337, i32 0, i32 10
  store i32 %sub349, i32* %right350, align 4
  %338 = load i32, i32* %right, align 4
  %339 = load i32, i32* %left, align 4
  %sub351 = sub nsw i32 %338, %339
  %340 = load i32, i32* %rl, align 4
  %sub352 = sub nsw i32 %sub351, %340
  %341 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile353 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %341, i32 0, i32 0
  %342 = load %struct.tilebox*, %struct.tilebox** %nexttile353, align 8
  %right354 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %342, i32 0, i32 10
  store i32 %sub352, i32* %right354, align 4
  %343 = load i32, i32* @numcells, align 4
  %344 = load i32, i32* @numpads, align 4
  %add355 = add nsw i32 %343, %344
  %345 = load i32, i32* %i, align 4
  %inc356 = add nsw i32 %345, 1
  store i32 %inc356, i32* %i, align 4
  %add357 = add nsw i32 %add355, %inc356
  %idxprom358 = sext i32 %add357 to i64
  %346 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx359 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %346, i64 %idxprom358
  %347 = load %struct.cellbox*, %struct.cellbox** %arrayidx359, align 8
  store %struct.cellbox* %347, %struct.cellbox** %ptr, align 8
  %348 = load i32, i32* %left, align 4
  %349 = load i32, i32* %right, align 4
  %add360 = add nsw i32 %348, %349
  %div361 = sdiv i32 %add360, 2
  %350 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter362 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %350, i32 0, i32 2
  store i32 %div361, i32* %xcenter362, align 4
  %351 = load i32, i32* %top, align 4
  %352 = load i32, i32* %maxhalfdim, align 4
  %div363 = sdiv i32 %352, 2
  %add364 = add nsw i32 %351, %div363
  %353 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter365 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %353, i32 0, i32 3
  store i32 %add364, i32* %ycenter365, align 4
  %354 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config366 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %354, i32 0, i32 21
  %arrayidx367 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config366, i32 0, i64 0
  %355 = load %struct.tilebox*, %struct.tilebox** %arrayidx367, align 8
  store %struct.tilebox* %355, %struct.tilebox** %tptr, align 8
  %356 = load i32, i32* %maxhalfdim, align 4
  %sub368 = sub nsw i32 0, %356
  %div369 = sdiv i32 %sub368, 2
  %357 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom370 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %357, i32 0, i32 11
  store i32 %div369, i32* %bottom370, align 4
  %358 = load i32, i32* %maxhalfdim, align 4
  %sub371 = sub nsw i32 0, %358
  %div372 = sdiv i32 %sub371, 2
  %359 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile373 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %359, i32 0, i32 0
  %360 = load %struct.tilebox*, %struct.tilebox** %nexttile373, align 8
  %bottom374 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %360, i32 0, i32 11
  store i32 %div372, i32* %bottom374, align 4
  %361 = load i32, i32* %maxhalfdim, align 4
  %div375 = sdiv i32 %361, 2
  %362 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top376 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %362, i32 0, i32 12
  store i32 %div375, i32* %top376, align 4
  %363 = load i32, i32* %maxhalfdim, align 4
  %div377 = sdiv i32 %363, 2
  %364 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile378 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %364, i32 0, i32 0
  %365 = load %struct.tilebox*, %struct.tilebox** %nexttile378, align 8
  %top379 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %365, i32 0, i32 12
  store i32 %div377, i32* %top379, align 4
  %366 = load i32, i32* %rl, align 4
  %sub380 = sub nsw i32 0, %366
  %367 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left381 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %367, i32 0, i32 9
  store i32 %sub380, i32* %left381, align 4
  %368 = load i32, i32* %rl, align 4
  %sub382 = sub nsw i32 0, %368
  %369 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile383 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %369, i32 0, i32 0
  %370 = load %struct.tilebox*, %struct.tilebox** %nexttile383, align 8
  %left384 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %370, i32 0, i32 9
  store i32 %sub382, i32* %left384, align 4
  %371 = load i32, i32* %right, align 4
  %372 = load i32, i32* %left, align 4
  %sub385 = sub nsw i32 %371, %372
  %373 = load i32, i32* %rl, align 4
  %sub386 = sub nsw i32 %sub385, %373
  %374 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right387 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %374, i32 0, i32 10
  store i32 %sub386, i32* %right387, align 4
  %375 = load i32, i32* %right, align 4
  %376 = load i32, i32* %left, align 4
  %sub388 = sub nsw i32 %375, %376
  %377 = load i32, i32* %rl, align 4
  %sub389 = sub nsw i32 %sub388, %377
  %378 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile390 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %378, i32 0, i32 0
  %379 = load %struct.tilebox*, %struct.tilebox** %nexttile390, align 8
  %right391 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %379, i32 0, i32 10
  store i32 %sub389, i32* %right391, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.219
  store i32 1, i32* %cell, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.490, %if.end
  %380 = load i32, i32* %cell, align 4
  %381 = load i32, i32* @numcells, align 4
  %382 = load i32, i32* @numpads, align 4
  %add393 = add nsw i32 %381, %382
  %add394 = add nsw i32 %add393, 4
  %cmp395 = icmp sle i32 %380, %add394
  br i1 %cmp395, label %for.body.396, label %for.end.492

for.body.396:                                     ; preds = %for.cond.392
  %383 = load i32, i32* %cell, align 4
  %384 = load i32, i32* @numcells, align 4
  %cmp397 = icmp sgt i32 %383, %384
  br i1 %cmp397, label %land.lhs.true, label %if.end.401

land.lhs.true:                                    ; preds = %for.body.396
  %385 = load i32, i32* %cell, align 4
  %386 = load i32, i32* @numcells, align 4
  %387 = load i32, i32* @numpads, align 4
  %add398 = add nsw i32 %386, %387
  %cmp399 = icmp sle i32 %385, %add398
  br i1 %cmp399, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %land.lhs.true
  br label %for.inc.490

if.end.401:                                       ; preds = %land.lhs.true, %for.body.396
  %388 = load i32, i32* %cell, align 4
  %idxprom402 = sext i32 %388 to i64
  %389 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx403 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %389, i64 %idxprom402
  %390 = load %struct.cellbox*, %struct.cellbox** %arrayidx403, align 8
  store %struct.cellbox* %390, %struct.cellbox** %ptr, align 8
  %391 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %391, i32 0, i32 5
  %392 = load i32, i32* %orient, align 4
  %idxprom404 = sext i32 %392 to i64
  %393 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config405 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %393, i32 0, i32 21
  %arrayidx406 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config405, i32 0, i64 %idxprom404
  %394 = load %struct.tilebox*, %struct.tilebox** %arrayidx406, align 8
  store %struct.tilebox* %394, %struct.tilebox** %tileptr, align 8
  %395 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter407 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %395, i32 0, i32 2
  %396 = load i32, i32* %xcenter407, align 4
  %397 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left408 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %397, i32 0, i32 9
  %398 = load i32, i32* %left408, align 4
  %add409 = add nsw i32 %396, %398
  store i32 %add409, i32* %startx, align 4
  %399 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter410 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %399, i32 0, i32 2
  %400 = load i32, i32* %xcenter410, align 4
  %401 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right411 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %401, i32 0, i32 10
  %402 = load i32, i32* %right411, align 4
  %add412 = add nsw i32 %400, %402
  store i32 %add412, i32* %endx, align 4
  %403 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter413 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %403, i32 0, i32 3
  %404 = load i32, i32* %ycenter413, align 4
  %405 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom414 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %405, i32 0, i32 11
  %406 = load i32, i32* %bottom414, align 4
  %add415 = add nsw i32 %404, %406
  store i32 %add415, i32* %starty, align 4
  %407 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter416 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %407, i32 0, i32 3
  %408 = load i32, i32* %ycenter416, align 4
  %409 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top417 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %409, i32 0, i32 12
  %410 = load i32, i32* %top417, align 4
  %add418 = add nsw i32 %408, %410
  store i32 %add418, i32* %endy, align 4
  %411 = load i32, i32* %cell, align 4
  %412 = load i32, i32* @numcells, align 4
  %cmp419 = icmp sle i32 %411, %412
  br i1 %cmp419, label %if.then.420, label %if.end.437

if.then.420:                                      ; preds = %if.end.401
  %413 = load i32, i32* @finalShot, align 4
  %cmp421 = icmp eq i32 %413, 0
  br i1 %cmp421, label %if.then.422, label %if.else.431

if.then.422:                                      ; preds = %if.then.420
  %414 = load i32, i32* %startx, align 4
  %415 = load i32, i32* %starty, align 4
  %416 = load i32, i32* %endy, align 4
  %417 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %417, i32 0, i32 1
  %418 = load double, double* %lweight, align 8
  %call423 = call i32 @wireestx(i32 %414, i32 %415, i32 %416, double %418)
  %419 = load i32, i32* %startx, align 4
  %sub424 = sub nsw i32 %419, %call423
  store i32 %sub424, i32* %startx, align 4
  %420 = load i32, i32* %endx, align 4
  %421 = load i32, i32* %starty, align 4
  %422 = load i32, i32* %endy, align 4
  %423 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %423, i32 0, i32 2
  %424 = load double, double* %rweight, align 8
  %call425 = call i32 @wireestx(i32 %420, i32 %421, i32 %422, double %424)
  %425 = load i32, i32* %endx, align 4
  %add426 = add nsw i32 %425, %call425
  store i32 %add426, i32* %endx, align 4
  %426 = load i32, i32* %starty, align 4
  %427 = load i32, i32* %startx, align 4
  %428 = load i32, i32* %endx, align 4
  %429 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i32 0, i32 3
  %430 = load double, double* %bweight, align 8
  %call427 = call i32 @wireesty(i32 %426, i32 %427, i32 %428, double %430)
  %431 = load i32, i32* %starty, align 4
  %sub428 = sub nsw i32 %431, %call427
  store i32 %sub428, i32* %starty, align 4
  %432 = load i32, i32* %endy, align 4
  %433 = load i32, i32* %startx, align 4
  %434 = load i32, i32* %endx, align 4
  %435 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %435, i32 0, i32 4
  %436 = load double, double* %tweight, align 8
  %call429 = call i32 @wireesty(i32 %432, i32 %433, i32 %434, double %436)
  %437 = load i32, i32* %endy, align 4
  %add430 = add nsw i32 %437, %call429
  store i32 %add430, i32* %endy, align 4
  br label %if.end.436

if.else.431:                                      ; preds = %if.then.420
  %438 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %438, i32 0, i32 5
  %439 = load i32, i32* %lborder, align 4
  %440 = load i32, i32* %startx, align 4
  %sub432 = sub nsw i32 %440, %439
  store i32 %sub432, i32* %startx, align 4
  %441 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %441, i32 0, i32 6
  %442 = load i32, i32* %rborder, align 4
  %443 = load i32, i32* %endx, align 4
  %add433 = add nsw i32 %443, %442
  store i32 %add433, i32* %endx, align 4
  %444 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %444, i32 0, i32 7
  %445 = load i32, i32* %bborder, align 4
  %446 = load i32, i32* %starty, align 4
  %sub434 = sub nsw i32 %446, %445
  store i32 %sub434, i32* %starty, align 4
  %447 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %447, i32 0, i32 8
  %448 = load i32, i32* %tborder, align 4
  %449 = load i32, i32* %endy, align 4
  %add435 = add nsw i32 %449, %448
  store i32 %add435, i32* %endy, align 4
  br label %if.end.436

if.end.436:                                       ; preds = %if.else.431, %if.then.422
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %if.end.401
  %450 = load i32, i32* %startx, align 4
  %451 = load i32, i32* @binOffsetX, align 4
  %sub438 = sub nsw i32 %450, %451
  %452 = load i32, i32* @binWidthX, align 4
  %div439 = sdiv i32 %sub438, %452
  store i32 %div439, i32* %lowBinX, align 4
  %453 = load i32, i32* %lowBinX, align 4
  %cmp440 = icmp slt i32 %453, 1
  br i1 %cmp440, label %if.then.441, label %if.else.442

if.then.441:                                      ; preds = %if.end.437
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.446

if.else.442:                                      ; preds = %if.end.437
  %454 = load i32, i32* %lowBinX, align 4
  %455 = load i32, i32* @numBinsX, align 4
  %cmp443 = icmp sgt i32 %454, %455
  br i1 %cmp443, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %if.else.442
  %456 = load i32, i32* @numBinsX, align 4
  store i32 %456, i32* %lowBinX, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %if.else.442
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.then.441
  %457 = load i32, i32* %endx, align 4
  %458 = load i32, i32* @binOffsetX, align 4
  %sub447 = sub nsw i32 %457, %458
  %459 = load i32, i32* @binWidthX, align 4
  %div448 = sdiv i32 %sub447, %459
  store i32 %div448, i32* %highBinX, align 4
  %460 = load i32, i32* %highBinX, align 4
  %461 = load i32, i32* @numBinsX, align 4
  %cmp449 = icmp sgt i32 %460, %461
  br i1 %cmp449, label %if.then.450, label %if.else.451

if.then.450:                                      ; preds = %if.end.446
  %462 = load i32, i32* @numBinsX, align 4
  store i32 %462, i32* %highBinX, align 4
  br label %if.end.455

if.else.451:                                      ; preds = %if.end.446
  %463 = load i32, i32* %highBinX, align 4
  %cmp452 = icmp slt i32 %463, 1
  br i1 %cmp452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %if.else.451
  store i32 1, i32* %highBinX, align 4
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.453, %if.else.451
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.454, %if.then.450
  %464 = load i32, i32* %lowBinX, align 4
  %465 = load i32, i32* %highBinX, align 4
  %cmp456 = icmp eq i32 %464, %465
  br i1 %cmp456, label %if.then.457, label %if.else.484

if.then.457:                                      ; preds = %if.end.455
  %466 = load i32, i32* %starty, align 4
  %467 = load i32, i32* @binOffsetY, align 4
  %sub458 = sub nsw i32 %466, %467
  %468 = load i32, i32* @binWidthY, align 4
  %div459 = sdiv i32 %sub458, %468
  store i32 %div459, i32* %lowBinY, align 4
  %469 = load i32, i32* %lowBinY, align 4
  %cmp460 = icmp slt i32 %469, 1
  br i1 %cmp460, label %if.then.461, label %if.else.462

if.then.461:                                      ; preds = %if.then.457
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.466

if.else.462:                                      ; preds = %if.then.457
  %470 = load i32, i32* %lowBinY, align 4
  %471 = load i32, i32* @numBinsY, align 4
  %cmp463 = icmp sgt i32 %470, %471
  br i1 %cmp463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.else.462
  %472 = load i32, i32* @numBinsY, align 4
  store i32 %472, i32* %lowBinY, align 4
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %if.else.462
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.then.461
  %473 = load i32, i32* %endy, align 4
  %474 = load i32, i32* @binOffsetY, align 4
  %sub467 = sub nsw i32 %473, %474
  %475 = load i32, i32* @binWidthY, align 4
  %div468 = sdiv i32 %sub467, %475
  store i32 %div468, i32* %highBinY, align 4
  %476 = load i32, i32* %highBinY, align 4
  %477 = load i32, i32* @numBinsY, align 4
  %cmp469 = icmp sgt i32 %476, %477
  br i1 %cmp469, label %if.then.470, label %if.else.471

if.then.470:                                      ; preds = %if.end.466
  %478 = load i32, i32* @numBinsY, align 4
  store i32 %478, i32* %highBinY, align 4
  br label %if.end.475

if.else.471:                                      ; preds = %if.end.466
  %479 = load i32, i32* %highBinY, align 4
  %cmp472 = icmp slt i32 %479, 1
  br i1 %cmp472, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.else.471
  store i32 1, i32* %highBinY, align 4
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.else.471
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.474, %if.then.470
  %480 = load i32, i32* %lowBinY, align 4
  %481 = load i32, i32* %highBinY, align 4
  %cmp476 = icmp eq i32 %480, %481
  br i1 %cmp476, label %if.then.477, label %if.else.482

if.then.477:                                      ; preds = %if.end.475
  %482 = load i32, i32* %lowBinY, align 4
  %idxprom478 = sext i32 %482 to i64
  %483 = load i32, i32* %lowBinX, align 4
  %idxprom479 = sext i32 %483 to i64
  %484 = load i32***, i32**** @blockarray, align 8
  %arrayidx480 = getelementptr inbounds i32**, i32*** %484, i64 %idxprom479
  %485 = load i32**, i32*** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i32*, i32** %485, i64 %idxprom478
  %486 = load i32*, i32** %arrayidx481, align 8
  store i32* %486, i32** %occuptr, align 8
  br label %if.end.483

if.else.482:                                      ; preds = %if.end.475
  %487 = load i32*, i32** @bucket, align 8
  store i32* %487, i32** %occuptr, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.482, %if.then.477
  br label %if.end.485

if.else.484:                                      ; preds = %if.end.455
  %488 = load i32*, i32** @bucket, align 8
  store i32* %488, i32** %occuptr, align 8
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.484, %if.end.483
  %489 = load i32, i32* %cell, align 4
  %490 = load i32*, i32** %occuptr, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %490, i64 0
  %491 = load i32, i32* %arrayidx486, align 4
  %inc487 = add nsw i32 %491, 1
  store i32 %inc487, i32* %arrayidx486, align 4
  %idxprom488 = sext i32 %inc487 to i64
  %492 = load i32*, i32** %occuptr, align 8
  %arrayidx489 = getelementptr inbounds i32, i32* %492, i64 %idxprom488
  store i32 %489, i32* %arrayidx489, align 4
  br label %for.inc.490

for.inc.490:                                      ; preds = %if.end.485, %if.then.400
  %493 = load i32, i32* %cell, align 4
  %inc491 = add nsw i32 %493, 1
  store i32 %inc491, i32* %cell, align 4
  br label %for.cond.392

for.end.492:                                      ; preds = %for.cond.392
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @wireestx(i32, i32, i32, double) #2

declare i32 @wireesty(i32, i32, i32, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
