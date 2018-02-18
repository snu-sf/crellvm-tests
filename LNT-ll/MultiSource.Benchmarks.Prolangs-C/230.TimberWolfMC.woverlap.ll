; ModuleID = './MultiSource.Benchmarks.Prolangs-C/230.TimberWolfMC.woverlap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external global %struct.cellbox**, align 8
@numcells = external global i32, align 4
@binOffsetX = external global i32, align 4
@binWidthX = external global i32, align 4
@numBinsX = external global i32, align 4
@binOffsetY = external global i32, align 4
@binWidthY = external global i32, align 4
@numBinsY = external global i32, align 4
@binX = external global i32, align 4
@binY = external global i32, align 4
@blockarray = external global i32***, align 8
@lapFactor = external global double, align 8
@offset = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @woverlap(i32 %cell, i32 %xc, i32 %yc, i32 %orient, i32 %b, i32 %flag, i32 %borient) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %borient.addr = alloca i32, align 4
  %cellptr1 = alloca %struct.cellbox*, align 8
  %cellptr2 = alloca %struct.cellbox*, align 8
  %tileptr1 = alloca %struct.tilebox*, align 8
  %tileptr2 = alloca %struct.tilebox*, align 8
  %tileptr01 = alloca %struct.tilebox*, align 8
  %tileptr02 = alloca %struct.tilebox*, align 8
  %startx01 = alloca i32, align 4
  %endx01 = alloca i32, align 4
  %starty01 = alloca i32, align 4
  %endy01 = alloca i32, align 4
  %othercell = alloca i32, align 4
  %startx02 = alloca i32, align 4
  %endx02 = alloca i32, align 4
  %starty02 = alloca i32, align 4
  %endy02 = alloca i32, align 4
  %value = alloca i32, align 4
  %tempval = alloca i32, align 4
  %startx1 = alloca i32, align 4
  %endx1 = alloca i32, align 4
  %starty1 = alloca i32, align 4
  %endy1 = alloca i32, align 4
  %startx2 = alloca i32, align 4
  %endx2 = alloca i32, align 4
  %starty2 = alloca i32, align 4
  %endy2 = alloca i32, align 4
  %startx = alloca i32, align 4
  %endx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endy = alloca i32, align 4
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %occuptr = alloca i32*, align 8
  %lowBinX = alloca i32, align 4
  %highBinX = alloca i32, align 4
  %lowBinY = alloca i32, align 4
  %highBinY = alloca i32, align 4
  store i32 %cell, i32* %cell.addr, align 4
  store i32 %xc, i32* %xc.addr, align 4
  store i32 %yc, i32* %yc.addr, align 4
  store i32 %orient, i32* %orient.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  store i32 %borient, i32* %borient.addr, align 4
  store i32 0, i32* %value, align 4
  %0 = load i32, i32* %cell.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %1, i64 %idxprom
  %2 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %2, %struct.cellbox** %cellptr1, align 8
  %3 = load i32, i32* %orient.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %4, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %5 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  store %struct.tilebox* %5, %struct.tilebox** %tileptr01, align 8
  %6 = load i32, i32* %xc.addr, align 4
  %7 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %7, i32 0, i32 9
  %8 = load i32, i32* %left, align 4
  %add = add nsw i32 %6, %8
  store i32 %add, i32* %startx01, align 4
  %9 = load i32, i32* %xc.addr, align 4
  %10 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 10
  %11 = load i32, i32* %right, align 4
  %add3 = add nsw i32 %9, %11
  store i32 %add3, i32* %endx01, align 4
  %12 = load i32, i32* %yc.addr, align 4
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 11
  %14 = load i32, i32* %bottom, align 4
  %add4 = add nsw i32 %12, %14
  store i32 %add4, i32* %starty01, align 4
  %15 = load i32, i32* %yc.addr, align 4
  %16 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i32 0, i32 12
  %17 = load i32, i32* %top, align 4
  %add5 = add nsw i32 %15, %17
  store i32 %add5, i32* %endy01, align 4
  %18 = load i32, i32* %cell.addr, align 4
  %19 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %18, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %startx01, align 4
  %21 = load i32, i32* %starty01, align 4
  %22 = load i32, i32* %endy01, align 4
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 1
  %24 = load double, double* %lweight, align 8
  %call = call i32 @wireestx(i32 %20, i32 %21, i32 %22, double %24)
  %25 = load i32, i32* %startx01, align 4
  %sub = sub nsw i32 %25, %call
  store i32 %sub, i32* %startx01, align 4
  %26 = load i32, i32* %endx01, align 4
  %27 = load i32, i32* %starty01, align 4
  %28 = load i32, i32* %endy01, align 4
  %29 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %29, i32 0, i32 2
  %30 = load double, double* %rweight, align 8
  %call6 = call i32 @wireestx(i32 %26, i32 %27, i32 %28, double %30)
  %31 = load i32, i32* %endx01, align 4
  %add7 = add nsw i32 %31, %call6
  store i32 %add7, i32* %endx01, align 4
  %32 = load i32, i32* %starty01, align 4
  %33 = load i32, i32* %startx01, align 4
  %34 = load i32, i32* %endx01, align 4
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 3
  %36 = load double, double* %bweight, align 8
  %call8 = call i32 @wireesty(i32 %32, i32 %33, i32 %34, double %36)
  %37 = load i32, i32* %starty01, align 4
  %sub9 = sub nsw i32 %37, %call8
  store i32 %sub9, i32* %starty01, align 4
  %38 = load i32, i32* %endy01, align 4
  %39 = load i32, i32* %startx01, align 4
  %40 = load i32, i32* %endx01, align 4
  %41 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 4
  %42 = load double, double* %tweight, align 8
  %call10 = call i32 @wireesty(i32 %38, i32 %39, i32 %40, double %42)
  %43 = load i32, i32* %endy01, align 4
  %add11 = add nsw i32 %43, %call10
  store i32 %add11, i32* %endy01, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %44 = load i32, i32* %startx01, align 4
  %45 = load i32, i32* @binOffsetX, align 4
  %sub12 = sub nsw i32 %44, %45
  %46 = load i32, i32* @binWidthX, align 4
  %div = sdiv i32 %sub12, %46
  store i32 %div, i32* %lowBinX, align 4
  %47 = load i32, i32* %lowBinX, align 4
  %cmp13 = icmp slt i32 %47, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %48 = load i32, i32* %lowBinX, align 4
  %49 = load i32, i32* @numBinsX, align 4
  %cmp15 = icmp sgt i32 %48, %49
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  %50 = load i32, i32* @numBinsX, align 4
  store i32 %50, i32* %lowBinX, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.14
  %51 = load i32, i32* %endx01, align 4
  %52 = load i32, i32* @binOffsetX, align 4
  %sub19 = sub nsw i32 %51, %52
  %53 = load i32, i32* @binWidthX, align 4
  %div20 = sdiv i32 %sub19, %53
  store i32 %div20, i32* %highBinX, align 4
  %54 = load i32, i32* %highBinX, align 4
  %55 = load i32, i32* @numBinsX, align 4
  %cmp21 = icmp sgt i32 %54, %55
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.18
  %56 = load i32, i32* @numBinsX, align 4
  store i32 %56, i32* %highBinX, align 4
  br label %if.end.27

if.else.23:                                       ; preds = %if.end.18
  %57 = load i32, i32* %highBinX, align 4
  %cmp24 = icmp slt i32 %57, 1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else.23
  store i32 1, i32* %highBinX, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.22
  %58 = load i32, i32* %starty01, align 4
  %59 = load i32, i32* @binOffsetY, align 4
  %sub28 = sub nsw i32 %58, %59
  %60 = load i32, i32* @binWidthY, align 4
  %div29 = sdiv i32 %sub28, %60
  store i32 %div29, i32* %lowBinY, align 4
  %61 = load i32, i32* %lowBinY, align 4
  %cmp30 = icmp slt i32 %61, 1
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.36

if.else.32:                                       ; preds = %if.end.27
  %62 = load i32, i32* %lowBinY, align 4
  %63 = load i32, i32* @numBinsY, align 4
  %cmp33 = icmp sgt i32 %62, %63
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.32
  %64 = load i32, i32* @numBinsY, align 4
  store i32 %64, i32* %lowBinY, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.31
  %65 = load i32, i32* %endy01, align 4
  %66 = load i32, i32* @binOffsetY, align 4
  %sub37 = sub nsw i32 %65, %66
  %67 = load i32, i32* @binWidthY, align 4
  %div38 = sdiv i32 %sub37, %67
  store i32 %div38, i32* %highBinY, align 4
  %68 = load i32, i32* %highBinY, align 4
  %69 = load i32, i32* @numBinsY, align 4
  %cmp39 = icmp sgt i32 %68, %69
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.36
  %70 = load i32, i32* @numBinsY, align 4
  store i32 %70, i32* %highBinY, align 4
  br label %if.end.45

if.else.41:                                       ; preds = %if.end.36
  %71 = load i32, i32* %highBinY, align 4
  %cmp42 = icmp slt i32 %71, 1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.41
  store i32 1, i32* %highBinY, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.40
  %72 = load i32, i32* %lowBinX, align 4
  %73 = load i32, i32* %highBinX, align 4
  %cmp46 = icmp eq i32 %72, %73
  br i1 %cmp46, label %land.lhs.true, label %if.else.49

land.lhs.true:                                    ; preds = %if.end.45
  %74 = load i32, i32* %lowBinY, align 4
  %75 = load i32, i32* %highBinY, align 4
  %cmp47 = icmp eq i32 %74, %75
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %land.lhs.true
  %76 = load i32, i32* %lowBinX, align 4
  store i32 %76, i32* @binX, align 4
  %77 = load i32, i32* %lowBinY, align 4
  store i32 %77, i32* @binY, align 4
  br label %if.end.50

if.else.49:                                       ; preds = %land.lhs.true, %if.end.45
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.48
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.279, %if.end.50
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %highBinX, align 4
  %cmp51 = icmp sle i32 %78, %79
  br i1 %cmp51, label %for.body, label %for.end.281

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %i, align 4
  %cmp52 = icmp eq i32 %80, 0
  br i1 %cmp52, label %if.end.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %lowBinX, align 4
  %cmp53 = icmp sge i32 %81, %82
  br i1 %cmp53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false
  br label %for.inc.279

if.end.55:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.276, %if.end.55
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %highBinY, align 4
  %cmp57 = icmp sle i32 %83, %84
  br i1 %cmp57, label %for.body.58, label %for.end.278

for.body.58:                                      ; preds = %for.cond.56
  %85 = load i32, i32* %i, align 4
  %cmp59 = icmp eq i32 %85, 0
  br i1 %cmp59, label %land.lhs.true.60, label %lor.lhs.false.62

land.lhs.true.60:                                 ; preds = %for.body.58
  %86 = load i32, i32* %j, align 4
  %cmp61 = icmp eq i32 %86, 0
  br i1 %cmp61, label %if.end.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.60, %for.body.58
  %87 = load i32, i32* %i, align 4
  %cmp63 = icmp sgt i32 %87, 0
  br i1 %cmp63, label %land.lhs.true.64, label %if.then.66

land.lhs.true.64:                                 ; preds = %lor.lhs.false.62
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %lowBinY, align 4
  %cmp65 = icmp sge i32 %88, %89
  br i1 %cmp65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64, %lor.lhs.false.62
  br label %for.inc.276

if.end.67:                                        ; preds = %land.lhs.true.64, %land.lhs.true.60
  %90 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %91 to i64
  %92 = load i32***, i32**** @blockarray, align 8
  %arrayidx70 = getelementptr inbounds i32**, i32*** %92, i64 %idxprom69
  %93 = load i32**, i32*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %93, i64 %idxprom68
  %94 = load i32*, i32** %arrayidx71, align 8
  store i32* %94, i32** %occuptr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.274, %if.end.67
  %95 = load i32, i32* %k, align 4
  %96 = load i32*, i32** %occuptr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp sle i32 %95, %97
  br i1 %cmp74, label %for.body.75, label %for.end.275

for.body.75:                                      ; preds = %for.cond.72
  %98 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %98 to i64
  %99 = load i32*, i32** %occuptr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %99, i64 %idxprom76
  %100 = load i32, i32* %arrayidx77, align 4
  store i32 %100, i32* %othercell, align 4
  %101 = load i32, i32* %othercell, align 4
  %102 = load i32, i32* %cell.addr, align 4
  %cmp78 = icmp eq i32 %101, %102
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.75
  br label %for.inc.274

if.end.80:                                        ; preds = %for.body.75
  %103 = load i32, i32* %othercell, align 4
  %idxprom81 = sext i32 %103 to i64
  %104 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx82 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %104, i64 %idxprom81
  %105 = load %struct.cellbox*, %struct.cellbox** %arrayidx82, align 8
  store %struct.cellbox* %105, %struct.cellbox** %cellptr2, align 8
  %106 = load i32, i32* %othercell, align 4
  %107 = load i32, i32* %b.addr, align 4
  %cmp83 = icmp ne i32 %106, %107
  br i1 %cmp83, label %if.then.84, label %if.else.91

if.then.84:                                       ; preds = %if.end.80
  %108 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %orient85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i32 0, i32 5
  %109 = load i32, i32* %orient85, align 4
  %idxprom86 = sext i32 %109 to i64
  %110 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %110, i32 0, i32 21
  %arrayidx88 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config87, i32 0, i64 %idxprom86
  %111 = load %struct.tilebox*, %struct.tilebox** %arrayidx88, align 8
  store %struct.tilebox* %111, %struct.tilebox** %tileptr02, align 8
  %112 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %xcenter89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 2
  %113 = load i32, i32* %xcenter89, align 4
  store i32 %113, i32* %xcenter, align 4
  %114 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %ycenter90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %114, i32 0, i32 3
  %115 = load i32, i32* %ycenter90, align 4
  store i32 %115, i32* %ycenter, align 4
  br label %if.end.101

if.else.91:                                       ; preds = %if.end.80
  %116 = load i32, i32* %flag.addr, align 4
  %cmp92 = icmp eq i32 %116, 0
  br i1 %cmp92, label %if.then.93, label %if.else.99

if.then.93:                                       ; preds = %if.else.91
  %117 = load i32, i32* %borient.addr, align 4
  %idxprom94 = sext i32 %117 to i64
  %118 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config95 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i32 0, i32 21
  %arrayidx96 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config95, i32 0, i64 %idxprom94
  %119 = load %struct.tilebox*, %struct.tilebox** %arrayidx96, align 8
  store %struct.tilebox* %119, %struct.tilebox** %tileptr02, align 8
  %120 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter97 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %120, i32 0, i32 2
  %121 = load i32, i32* %xcenter97, align 4
  store i32 %121, i32* %xcenter, align 4
  %122 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 3
  %123 = load i32, i32* %ycenter98, align 4
  store i32 %123, i32* %ycenter, align 4
  br label %if.end.100

if.else.99:                                       ; preds = %if.else.91
  br label %for.inc.274

if.end.100:                                       ; preds = %if.then.93
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.84
  %124 = load i32, i32* %xcenter, align 4
  %125 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %left102 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 9
  %126 = load i32, i32* %left102, align 4
  %add103 = add nsw i32 %124, %126
  store i32 %add103, i32* %startx02, align 4
  %127 = load i32, i32* %xcenter, align 4
  %128 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %right104 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %128, i32 0, i32 10
  %129 = load i32, i32* %right104, align 4
  %add105 = add nsw i32 %127, %129
  store i32 %add105, i32* %endx02, align 4
  %130 = load i32, i32* %ycenter, align 4
  %131 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bottom106 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %131, i32 0, i32 11
  %132 = load i32, i32* %bottom106, align 4
  %add107 = add nsw i32 %130, %132
  store i32 %add107, i32* %starty02, align 4
  %133 = load i32, i32* %ycenter, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %top108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 12
  %135 = load i32, i32* %top108, align 4
  %add109 = add nsw i32 %133, %135
  store i32 %add109, i32* %endy02, align 4
  %136 = load i32, i32* %othercell, align 4
  %137 = load i32, i32* @numcells, align 4
  %cmp110 = icmp sle i32 %136, %137
  br i1 %cmp110, label %if.then.111, label %if.end.124

if.then.111:                                      ; preds = %if.end.101
  %138 = load i32, i32* %startx02, align 4
  %139 = load i32, i32* %starty02, align 4
  %140 = load i32, i32* %endy02, align 4
  %141 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %lweight112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %141, i32 0, i32 1
  %142 = load double, double* %lweight112, align 8
  %call113 = call i32 @wireestx(i32 %138, i32 %139, i32 %140, double %142)
  %143 = load i32, i32* %startx02, align 4
  %sub114 = sub nsw i32 %143, %call113
  store i32 %sub114, i32* %startx02, align 4
  %144 = load i32, i32* %endx02, align 4
  %145 = load i32, i32* %starty02, align 4
  %146 = load i32, i32* %endy02, align 4
  %147 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %rweight115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %147, i32 0, i32 2
  %148 = load double, double* %rweight115, align 8
  %call116 = call i32 @wireestx(i32 %144, i32 %145, i32 %146, double %148)
  %149 = load i32, i32* %endx02, align 4
  %add117 = add nsw i32 %149, %call116
  store i32 %add117, i32* %endx02, align 4
  %150 = load i32, i32* %starty02, align 4
  %151 = load i32, i32* %startx02, align 4
  %152 = load i32, i32* %endx02, align 4
  %153 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bweight118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %153, i32 0, i32 3
  %154 = load double, double* %bweight118, align 8
  %call119 = call i32 @wireesty(i32 %150, i32 %151, i32 %152, double %154)
  %155 = load i32, i32* %starty02, align 4
  %sub120 = sub nsw i32 %155, %call119
  store i32 %sub120, i32* %starty02, align 4
  %156 = load i32, i32* %endy02, align 4
  %157 = load i32, i32* %startx02, align 4
  %158 = load i32, i32* %endx02, align 4
  %159 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %tweight121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %159, i32 0, i32 4
  %160 = load double, double* %tweight121, align 8
  %call122 = call i32 @wireesty(i32 %156, i32 %157, i32 %158, double %160)
  %161 = load i32, i32* %endy02, align 4
  %add123 = add nsw i32 %161, %call122
  store i32 %add123, i32* %endy02, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.111, %if.end.101
  %162 = load i32, i32* %startx02, align 4
  %163 = load i32, i32* %endx01, align 4
  %cmp125 = icmp sge i32 %162, %163
  br i1 %cmp125, label %if.then.132, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.124
  %164 = load i32, i32* %startx01, align 4
  %165 = load i32, i32* %endx02, align 4
  %cmp127 = icmp sge i32 %164, %165
  br i1 %cmp127, label %if.then.132, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.126
  %166 = load i32, i32* %starty02, align 4
  %167 = load i32, i32* %endy01, align 4
  %cmp129 = icmp sge i32 %166, %167
  br i1 %cmp129, label %if.then.132, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.128
  %168 = load i32, i32* %starty01, align 4
  %169 = load i32, i32* %endy02, align 4
  %cmp131 = icmp sge i32 %168, %169
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.128, %lor.lhs.false.126, %if.end.124
  br label %for.inc.274

if.end.133:                                       ; preds = %lor.lhs.false.130
  %170 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i32 0, i32 6
  %171 = load i32, i32* %numtiles, align 4
  %cmp134 = icmp eq i32 %171, 1
  br i1 %cmp134, label %land.lhs.true.135, label %if.else.161

land.lhs.true.135:                                ; preds = %if.end.133
  %172 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles136 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %172, i32 0, i32 6
  %173 = load i32, i32* %numtiles136, align 4
  %cmp137 = icmp eq i32 %173, 1
  br i1 %cmp137, label %if.then.138, label %if.else.161

if.then.138:                                      ; preds = %land.lhs.true.135
  %174 = load i32, i32* %startx01, align 4
  %175 = load i32, i32* %startx02, align 4
  %cmp139 = icmp sge i32 %174, %175
  br i1 %cmp139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.138
  %176 = load i32, i32* %startx01, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.138
  %177 = load i32, i32* %startx02, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %176, %cond.true ], [ %177, %cond.false ]
  store i32 %cond, i32* %startx, align 4
  %178 = load i32, i32* %endx01, align 4
  %179 = load i32, i32* %endx02, align 4
  %cmp140 = icmp sle i32 %178, %179
  br i1 %cmp140, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end
  %180 = load i32, i32* %endx01, align 4
  br label %cond.end.143

cond.false.142:                                   ; preds = %cond.end
  %181 = load i32, i32* %endx02, align 4
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi i32 [ %180, %cond.true.141 ], [ %181, %cond.false.142 ]
  store i32 %cond144, i32* %endx, align 4
  %182 = load i32, i32* %starty01, align 4
  %183 = load i32, i32* %starty02, align 4
  %cmp145 = icmp sge i32 %182, %183
  br i1 %cmp145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %cond.end.143
  %184 = load i32, i32* %starty01, align 4
  br label %cond.end.148

cond.false.147:                                   ; preds = %cond.end.143
  %185 = load i32, i32* %starty02, align 4
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.146
  %cond149 = phi i32 [ %184, %cond.true.146 ], [ %185, %cond.false.147 ]
  store i32 %cond149, i32* %starty, align 4
  %186 = load i32, i32* %endy01, align 4
  %187 = load i32, i32* %endy02, align 4
  %cmp150 = icmp sle i32 %186, %187
  br i1 %cmp150, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.end.148
  %188 = load i32, i32* %endy01, align 4
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.end.148
  %189 = load i32, i32* %endy02, align 4
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.151
  %cond154 = phi i32 [ %188, %cond.true.151 ], [ %189, %cond.false.152 ]
  store i32 %cond154, i32* %endy, align 4
  %190 = load double, double* @lapFactor, align 8
  %191 = load i32, i32* %endy, align 4
  %192 = load i32, i32* %starty, align 4
  %sub155 = sub nsw i32 %191, %192
  %193 = load i32, i32* %endx, align 4
  %194 = load i32, i32* %startx, align 4
  %sub156 = sub nsw i32 %193, %194
  %mul = mul nsw i32 %sub155, %sub156
  %195 = load i32, i32* @offset, align 4
  %add157 = add nsw i32 %mul, %195
  %conv = sitofp i32 %add157 to double
  %mul158 = fmul double %190, %conv
  %conv159 = fptosi double %mul158 to i32
  %196 = load i32, i32* %value, align 4
  %add160 = add nsw i32 %196, %conv159
  store i32 %add160, i32* %value, align 4
  br label %if.end.273

if.else.161:                                      ; preds = %land.lhs.true.135, %if.end.133
  store i32 0, i32* %tempval, align 4
  %197 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 0
  %198 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %198, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.261, %if.else.161
  %199 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp163 = icmp ne %struct.tilebox* %199, null
  br i1 %cmp163, label %for.body.165, label %for.end.263

for.body.165:                                     ; preds = %for.cond.162
  %200 = load i32, i32* %xc.addr, align 4
  %201 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %201, i32 0, i32 9
  %202 = load i32, i32* %left166, align 4
  %add167 = add nsw i32 %200, %202
  store i32 %add167, i32* %startx1, align 4
  %203 = load i32, i32* %xc.addr, align 4
  %204 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %204, i32 0, i32 10
  %205 = load i32, i32* %right168, align 4
  %add169 = add nsw i32 %203, %205
  store i32 %add169, i32* %endx1, align 4
  %206 = load i32, i32* %yc.addr, align 4
  %207 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %207, i32 0, i32 11
  %208 = load i32, i32* %bottom170, align 4
  %add171 = add nsw i32 %206, %208
  store i32 %add171, i32* %starty1, align 4
  %209 = load i32, i32* %yc.addr, align 4
  %210 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %210, i32 0, i32 12
  %211 = load i32, i32* %top172, align 4
  %add173 = add nsw i32 %209, %211
  store i32 %add173, i32* %endy1, align 4
  %212 = load i32, i32* %cell.addr, align 4
  %213 = load i32, i32* @numcells, align 4
  %cmp174 = icmp sle i32 %212, %213
  br i1 %cmp174, label %if.then.176, label %if.end.189

if.then.176:                                      ; preds = %for.body.165
  %214 = load i32, i32* %startx1, align 4
  %215 = load i32, i32* %starty1, align 4
  %216 = load i32, i32* %endy1, align 4
  %217 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %lweight177 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 1
  %218 = load double, double* %lweight177, align 8
  %call178 = call i32 @wireestx(i32 %214, i32 %215, i32 %216, double %218)
  %219 = load i32, i32* %startx1, align 4
  %sub179 = sub nsw i32 %219, %call178
  store i32 %sub179, i32* %startx1, align 4
  %220 = load i32, i32* %endx1, align 4
  %221 = load i32, i32* %starty1, align 4
  %222 = load i32, i32* %endy1, align 4
  %223 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %rweight180 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %223, i32 0, i32 2
  %224 = load double, double* %rweight180, align 8
  %call181 = call i32 @wireestx(i32 %220, i32 %221, i32 %222, double %224)
  %225 = load i32, i32* %endx1, align 4
  %add182 = add nsw i32 %225, %call181
  store i32 %add182, i32* %endx1, align 4
  %226 = load i32, i32* %starty1, align 4
  %227 = load i32, i32* %startx1, align 4
  %228 = load i32, i32* %endx1, align 4
  %229 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bweight183 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 3
  %230 = load double, double* %bweight183, align 8
  %call184 = call i32 @wireesty(i32 %226, i32 %227, i32 %228, double %230)
  %231 = load i32, i32* %starty1, align 4
  %sub185 = sub nsw i32 %231, %call184
  store i32 %sub185, i32* %starty1, align 4
  %232 = load i32, i32* %endy1, align 4
  %233 = load i32, i32* %startx1, align 4
  %234 = load i32, i32* %endx1, align 4
  %235 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %tweight186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i32 0, i32 4
  %236 = load double, double* %tweight186, align 8
  %call187 = call i32 @wireesty(i32 %232, i32 %233, i32 %234, double %236)
  %237 = load i32, i32* %endy1, align 4
  %add188 = add nsw i32 %237, %call187
  store i32 %add188, i32* %endy1, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.176, %for.body.165
  %238 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 0
  %239 = load %struct.tilebox*, %struct.tilebox** %nexttile190, align 8
  store %struct.tilebox* %239, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc, %if.end.189
  %240 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp192 = icmp ne %struct.tilebox* %240, null
  br i1 %cmp192, label %for.body.194, label %for.end

for.body.194:                                     ; preds = %for.cond.191
  %241 = load i32, i32* %xcenter, align 4
  %242 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %242, i32 0, i32 9
  %243 = load i32, i32* %left195, align 4
  %add196 = add nsw i32 %241, %243
  store i32 %add196, i32* %startx2, align 4
  %244 = load i32, i32* %xcenter, align 4
  %245 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right197 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %245, i32 0, i32 10
  %246 = load i32, i32* %right197, align 4
  %add198 = add nsw i32 %244, %246
  store i32 %add198, i32* %endx2, align 4
  %247 = load i32, i32* %ycenter, align 4
  %248 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %248, i32 0, i32 11
  %249 = load i32, i32* %bottom199, align 4
  %add200 = add nsw i32 %247, %249
  store i32 %add200, i32* %starty2, align 4
  %250 = load i32, i32* %ycenter, align 4
  %251 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top201 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %251, i32 0, i32 12
  %252 = load i32, i32* %top201, align 4
  %add202 = add nsw i32 %250, %252
  store i32 %add202, i32* %endy2, align 4
  %253 = load i32, i32* %othercell, align 4
  %254 = load i32, i32* @numcells, align 4
  %cmp203 = icmp sle i32 %253, %254
  br i1 %cmp203, label %if.then.205, label %if.end.218

if.then.205:                                      ; preds = %for.body.194
  %255 = load i32, i32* %startx2, align 4
  %256 = load i32, i32* %starty2, align 4
  %257 = load i32, i32* %endy2, align 4
  %258 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %lweight206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %258, i32 0, i32 1
  %259 = load double, double* %lweight206, align 8
  %call207 = call i32 @wireestx(i32 %255, i32 %256, i32 %257, double %259)
  %260 = load i32, i32* %startx2, align 4
  %sub208 = sub nsw i32 %260, %call207
  store i32 %sub208, i32* %startx2, align 4
  %261 = load i32, i32* %endx2, align 4
  %262 = load i32, i32* %starty2, align 4
  %263 = load i32, i32* %endy2, align 4
  %264 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %rweight209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %264, i32 0, i32 2
  %265 = load double, double* %rweight209, align 8
  %call210 = call i32 @wireestx(i32 %261, i32 %262, i32 %263, double %265)
  %266 = load i32, i32* %endx2, align 4
  %add211 = add nsw i32 %266, %call210
  store i32 %add211, i32* %endx2, align 4
  %267 = load i32, i32* %starty2, align 4
  %268 = load i32, i32* %startx2, align 4
  %269 = load i32, i32* %endx2, align 4
  %270 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bweight212 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %270, i32 0, i32 3
  %271 = load double, double* %bweight212, align 8
  %call213 = call i32 @wireesty(i32 %267, i32 %268, i32 %269, double %271)
  %272 = load i32, i32* %starty2, align 4
  %sub214 = sub nsw i32 %272, %call213
  store i32 %sub214, i32* %starty2, align 4
  %273 = load i32, i32* %endy2, align 4
  %274 = load i32, i32* %startx2, align 4
  %275 = load i32, i32* %endx2, align 4
  %276 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %tweight215 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %276, i32 0, i32 4
  %277 = load double, double* %tweight215, align 8
  %call216 = call i32 @wireesty(i32 %273, i32 %274, i32 %275, double %277)
  %278 = load i32, i32* %endy2, align 4
  %add217 = add nsw i32 %278, %call216
  store i32 %add217, i32* %endy2, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.205, %for.body.194
  %279 = load i32, i32* %startx2, align 4
  %280 = load i32, i32* %endx1, align 4
  %cmp219 = icmp sge i32 %279, %280
  br i1 %cmp219, label %if.then.230, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %if.end.218
  %281 = load i32, i32* %startx1, align 4
  %282 = load i32, i32* %endx2, align 4
  %cmp222 = icmp sge i32 %281, %282
  br i1 %cmp222, label %if.then.230, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %lor.lhs.false.221
  %283 = load i32, i32* %starty2, align 4
  %284 = load i32, i32* %endy1, align 4
  %cmp225 = icmp sge i32 %283, %284
  br i1 %cmp225, label %if.then.230, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %lor.lhs.false.224
  %285 = load i32, i32* %starty1, align 4
  %286 = load i32, i32* %endy2, align 4
  %cmp228 = icmp sge i32 %285, %286
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %lor.lhs.false.227, %lor.lhs.false.224, %lor.lhs.false.221, %if.end.218
  br label %for.inc

if.end.231:                                       ; preds = %lor.lhs.false.227
  %287 = load i32, i32* %startx1, align 4
  %288 = load i32, i32* %startx2, align 4
  %cmp232 = icmp sge i32 %287, %288
  br i1 %cmp232, label %cond.true.234, label %cond.false.235

cond.true.234:                                    ; preds = %if.end.231
  %289 = load i32, i32* %startx1, align 4
  br label %cond.end.236

cond.false.235:                                   ; preds = %if.end.231
  %290 = load i32, i32* %startx2, align 4
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.234
  %cond237 = phi i32 [ %289, %cond.true.234 ], [ %290, %cond.false.235 ]
  store i32 %cond237, i32* %startx, align 4
  %291 = load i32, i32* %endx1, align 4
  %292 = load i32, i32* %endx2, align 4
  %cmp238 = icmp sle i32 %291, %292
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %cond.end.236
  %293 = load i32, i32* %endx1, align 4
  br label %cond.end.242

cond.false.241:                                   ; preds = %cond.end.236
  %294 = load i32, i32* %endx2, align 4
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.241, %cond.true.240
  %cond243 = phi i32 [ %293, %cond.true.240 ], [ %294, %cond.false.241 ]
  store i32 %cond243, i32* %endx, align 4
  %295 = load i32, i32* %starty1, align 4
  %296 = load i32, i32* %starty2, align 4
  %cmp244 = icmp sge i32 %295, %296
  br i1 %cmp244, label %cond.true.246, label %cond.false.247

cond.true.246:                                    ; preds = %cond.end.242
  %297 = load i32, i32* %starty1, align 4
  br label %cond.end.248

cond.false.247:                                   ; preds = %cond.end.242
  %298 = load i32, i32* %starty2, align 4
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.246
  %cond249 = phi i32 [ %297, %cond.true.246 ], [ %298, %cond.false.247 ]
  store i32 %cond249, i32* %starty, align 4
  %299 = load i32, i32* %endy1, align 4
  %300 = load i32, i32* %endy2, align 4
  %cmp250 = icmp sle i32 %299, %300
  br i1 %cmp250, label %cond.true.252, label %cond.false.253

cond.true.252:                                    ; preds = %cond.end.248
  %301 = load i32, i32* %endy1, align 4
  br label %cond.end.254

cond.false.253:                                   ; preds = %cond.end.248
  %302 = load i32, i32* %endy2, align 4
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.253, %cond.true.252
  %cond255 = phi i32 [ %301, %cond.true.252 ], [ %302, %cond.false.253 ]
  store i32 %cond255, i32* %endy, align 4
  %303 = load i32, i32* %endy, align 4
  %304 = load i32, i32* %starty, align 4
  %sub256 = sub nsw i32 %303, %304
  %305 = load i32, i32* %endx, align 4
  %306 = load i32, i32* %startx, align 4
  %sub257 = sub nsw i32 %305, %306
  %mul258 = mul nsw i32 %sub256, %sub257
  %307 = load i32, i32* %tempval, align 4
  %add259 = add nsw i32 %307, %mul258
  store i32 %add259, i32* %tempval, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.254, %if.then.230
  %308 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile260 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i32 0, i32 0
  %309 = load %struct.tilebox*, %struct.tilebox** %nexttile260, align 8
  store %struct.tilebox* %309, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.191

for.end:                                          ; preds = %for.cond.191
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end
  %310 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %310, i32 0, i32 0
  %311 = load %struct.tilebox*, %struct.tilebox** %nexttile262, align 8
  store %struct.tilebox* %311, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.162

for.end.263:                                      ; preds = %for.cond.162
  %312 = load i32, i32* %tempval, align 4
  %cmp264 = icmp ne i32 %312, 0
  br i1 %cmp264, label %if.then.266, label %if.end.272

if.then.266:                                      ; preds = %for.end.263
  %313 = load double, double* @lapFactor, align 8
  %314 = load i32, i32* %tempval, align 4
  %315 = load i32, i32* @offset, align 4
  %add267 = add nsw i32 %314, %315
  %conv268 = sitofp i32 %add267 to double
  %mul269 = fmul double %313, %conv268
  %conv270 = fptosi double %mul269 to i32
  %316 = load i32, i32* %value, align 4
  %add271 = add nsw i32 %316, %conv270
  store i32 %add271, i32* %value, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.266, %for.end.263
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %cond.end.153
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273, %if.then.132, %if.else.99, %if.then.79
  %317 = load i32, i32* %k, align 4
  %inc = add nsw i32 %317, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.72

for.end.275:                                      ; preds = %for.cond.72
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.275, %if.then.66
  %318 = load i32, i32* %j, align 4
  %inc277 = add nsw i32 %318, 1
  store i32 %inc277, i32* %j, align 4
  br label %for.cond.56

for.end.278:                                      ; preds = %for.cond.56
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.end.278, %if.then.54
  %319 = load i32, i32* %i, align 4
  %inc280 = add nsw i32 %319, 1
  store i32 %inc280, i32* %i, align 4
  br label %for.cond

for.end.281:                                      ; preds = %for.cond
  %320 = load i32, i32* %value, align 4
  ret i32 %320
}

declare i32 @wireestx(i32, i32, i32, double) #1

declare i32 @wireesty(i32, i32, i32, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}