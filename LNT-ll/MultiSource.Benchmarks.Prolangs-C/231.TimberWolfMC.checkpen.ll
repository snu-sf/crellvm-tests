; ModuleID = './MultiSource.Benchmarks.Prolangs-C/231.TimberWolfMC.checkpen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
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
define i32 @checkpen() #0 {
entry:
  %cell = alloca i32, align 4
  %check = alloca i32, align 4
  store i32 0, i32* %check, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %3 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %idxprom
  %5 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 2
  %6 = load i32, i32* %xcenter, align 4
  %7 = load i32, i32* %cell, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx2 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %idxprom1
  %9 = load %struct.cellbox*, %struct.cellbox** %arrayidx2, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 3
  %10 = load i32, i32* %ycenter, align 4
  %11 = load i32, i32* %cell, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %12, i64 %idxprom3
  %13 = load %struct.cellbox*, %struct.cellbox** %arrayidx4, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 5
  %14 = load i32, i32* %orient, align 4
  %call = call i32 @checkover(i32 %2, i32 %6, i32 %10, i32 %14, i32 0, i32 1, i32 0)
  %15 = load i32, i32* %check, align 4
  %add = add nsw i32 %15, %call
  store i32 %add, i32* %check, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %check, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @checkover(i32 %cell, i32 %xc, i32 %yc, i32 %orient, i32 %b, i32 %flag, i32 %borient) #0 {
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
  %18 = load i32, i32* %startx01, align 4
  %19 = load i32, i32* @binOffsetX, align 4
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* @binWidthX, align 4
  %div = sdiv i32 %sub, %20
  store i32 %div, i32* %lowBinX, align 4
  %21 = load i32, i32* %lowBinX, align 4
  %cmp = icmp slt i32 %21, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %lowBinX, align 4
  %23 = load i32, i32* @numBinsX, align 4
  %cmp6 = icmp sgt i32 %22, %23
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %24 = load i32, i32* @numBinsX, align 4
  store i32 %24, i32* %lowBinX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %25 = load i32, i32* %endx01, align 4
  %26 = load i32, i32* @binOffsetX, align 4
  %sub9 = sub nsw i32 %25, %26
  %27 = load i32, i32* @binWidthX, align 4
  %div10 = sdiv i32 %sub9, %27
  store i32 %div10, i32* %highBinX, align 4
  %28 = load i32, i32* %highBinX, align 4
  %29 = load i32, i32* @numBinsX, align 4
  %cmp11 = icmp sgt i32 %28, %29
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.8
  %30 = load i32, i32* @numBinsX, align 4
  store i32 %30, i32* %highBinX, align 4
  br label %if.end.17

if.else.13:                                       ; preds = %if.end.8
  %31 = load i32, i32* %highBinX, align 4
  %cmp14 = icmp slt i32 %31, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  store i32 1, i32* %highBinX, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  %32 = load i32, i32* %starty01, align 4
  %33 = load i32, i32* @binOffsetY, align 4
  %sub18 = sub nsw i32 %32, %33
  %34 = load i32, i32* @binWidthY, align 4
  %div19 = sdiv i32 %sub18, %34
  store i32 %div19, i32* %lowBinY, align 4
  %35 = load i32, i32* %lowBinY, align 4
  %cmp20 = icmp slt i32 %35, 1
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.17
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.26

if.else.22:                                       ; preds = %if.end.17
  %36 = load i32, i32* %lowBinY, align 4
  %37 = load i32, i32* @numBinsY, align 4
  %cmp23 = icmp sgt i32 %36, %37
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.22
  %38 = load i32, i32* @numBinsY, align 4
  store i32 %38, i32* %lowBinY, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.21
  %39 = load i32, i32* %endy01, align 4
  %40 = load i32, i32* @binOffsetY, align 4
  %sub27 = sub nsw i32 %39, %40
  %41 = load i32, i32* @binWidthY, align 4
  %div28 = sdiv i32 %sub27, %41
  store i32 %div28, i32* %highBinY, align 4
  %42 = load i32, i32* %highBinY, align 4
  %43 = load i32, i32* @numBinsY, align 4
  %cmp29 = icmp sgt i32 %42, %43
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.26
  %44 = load i32, i32* @numBinsY, align 4
  store i32 %44, i32* %highBinY, align 4
  br label %if.end.35

if.else.31:                                       ; preds = %if.end.26
  %45 = load i32, i32* %highBinY, align 4
  %cmp32 = icmp slt i32 %45, 1
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.31
  store i32 1, i32* %highBinY, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.30
  %46 = load i32, i32* %lowBinX, align 4
  %47 = load i32, i32* %highBinX, align 4
  %cmp36 = icmp eq i32 %46, %47
  br i1 %cmp36, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %if.end.35
  %48 = load i32, i32* %lowBinY, align 4
  %49 = load i32, i32* %highBinY, align 4
  %cmp37 = icmp eq i32 %48, %49
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %lowBinX, align 4
  store i32 %50, i32* @binX, align 4
  %51 = load i32, i32* %lowBinY, align 4
  store i32 %51, i32* @binY, align 4
  br label %if.end.40

if.else.39:                                       ; preds = %land.lhs.true, %if.end.35
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.224, %if.end.40
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %highBinX, align 4
  %cmp41 = icmp sle i32 %52, %53
  br i1 %cmp41, label %for.body, label %for.end.226

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %cmp42 = icmp eq i32 %54, 0
  br i1 %cmp42, label %if.end.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %lowBinX, align 4
  %cmp43 = icmp sge i32 %55, %56
  br i1 %cmp43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false
  br label %for.inc.224

if.end.45:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.221, %if.end.45
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %highBinY, align 4
  %cmp47 = icmp sle i32 %57, %58
  br i1 %cmp47, label %for.body.48, label %for.end.223

for.body.48:                                      ; preds = %for.cond.46
  %59 = load i32, i32* %i, align 4
  %cmp49 = icmp eq i32 %59, 0
  br i1 %cmp49, label %land.lhs.true.50, label %lor.lhs.false.52

land.lhs.true.50:                                 ; preds = %for.body.48
  %60 = load i32, i32* %j, align 4
  %cmp51 = icmp eq i32 %60, 0
  br i1 %cmp51, label %if.end.57, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.50, %for.body.48
  %61 = load i32, i32* %i, align 4
  %cmp53 = icmp sgt i32 %61, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.then.56

land.lhs.true.54:                                 ; preds = %lor.lhs.false.52
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %lowBinY, align 4
  %cmp55 = icmp sge i32 %62, %63
  br i1 %cmp55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.54, %lor.lhs.false.52
  br label %for.inc.221

if.end.57:                                        ; preds = %land.lhs.true.54, %land.lhs.true.50
  %64 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load i32***, i32**** @blockarray, align 8
  %arrayidx60 = getelementptr inbounds i32**, i32*** %66, i64 %idxprom59
  %67 = load i32**, i32*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %67, i64 %idxprom58
  %68 = load i32*, i32** %arrayidx61, align 8
  store i32* %68, i32** %occuptr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.219, %if.end.57
  %69 = load i32, i32* %k, align 4
  %70 = load i32*, i32** %occuptr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sle i32 %69, %71
  br i1 %cmp64, label %for.body.65, label %for.end.220

for.body.65:                                      ; preds = %for.cond.62
  %72 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %72 to i64
  %73 = load i32*, i32** %occuptr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %73, i64 %idxprom66
  %74 = load i32, i32* %arrayidx67, align 4
  store i32 %74, i32* %othercell, align 4
  %75 = load i32, i32* %othercell, align 4
  %76 = load i32, i32* %cell.addr, align 4
  %cmp68 = icmp eq i32 %75, %76
  br i1 %cmp68, label %if.then.71, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %for.body.65
  %77 = load i32, i32* %othercell, align 4
  %78 = load i32, i32* @numcells, align 4
  %cmp70 = icmp sgt i32 %77, %78
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false.69, %for.body.65
  br label %for.inc.219

if.end.72:                                        ; preds = %lor.lhs.false.69
  %79 = load i32, i32* %othercell, align 4
  %idxprom73 = sext i32 %79 to i64
  %80 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx74 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %80, i64 %idxprom73
  %81 = load %struct.cellbox*, %struct.cellbox** %arrayidx74, align 8
  store %struct.cellbox* %81, %struct.cellbox** %cellptr2, align 8
  %82 = load i32, i32* %othercell, align 4
  %83 = load i32, i32* %b.addr, align 4
  %cmp75 = icmp ne i32 %82, %83
  br i1 %cmp75, label %if.then.76, label %if.else.83

if.then.76:                                       ; preds = %if.end.72
  %84 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %orient77 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 5
  %85 = load i32, i32* %orient77, align 4
  %idxprom78 = sext i32 %85 to i64
  %86 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %86, i32 0, i32 21
  %arrayidx80 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config79, i32 0, i64 %idxprom78
  %87 = load %struct.tilebox*, %struct.tilebox** %arrayidx80, align 8
  store %struct.tilebox* %87, %struct.tilebox** %tileptr02, align 8
  %88 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %xcenter81 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %88, i32 0, i32 2
  %89 = load i32, i32* %xcenter81, align 4
  store i32 %89, i32* %xcenter, align 4
  %90 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %ycenter82 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 3
  %91 = load i32, i32* %ycenter82, align 4
  store i32 %91, i32* %ycenter, align 4
  br label %if.end.93

if.else.83:                                       ; preds = %if.end.72
  %92 = load i32, i32* %flag.addr, align 4
  %cmp84 = icmp eq i32 %92, 0
  br i1 %cmp84, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %if.else.83
  %93 = load i32, i32* %borient.addr, align 4
  %idxprom86 = sext i32 %93 to i64
  %94 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %94, i32 0, i32 21
  %arrayidx88 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config87, i32 0, i64 %idxprom86
  %95 = load %struct.tilebox*, %struct.tilebox** %arrayidx88, align 8
  store %struct.tilebox* %95, %struct.tilebox** %tileptr02, align 8
  %96 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %96, i32 0, i32 2
  %97 = load i32, i32* %xcenter89, align 4
  store i32 %97, i32* %xcenter, align 4
  %98 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %98, i32 0, i32 3
  %99 = load i32, i32* %ycenter90, align 4
  store i32 %99, i32* %ycenter, align 4
  br label %if.end.92

if.else.91:                                       ; preds = %if.else.83
  br label %for.inc.219

if.end.92:                                        ; preds = %if.then.85
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.76
  %100 = load i32, i32* %xcenter, align 4
  %101 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %left94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 9
  %102 = load i32, i32* %left94, align 4
  %add95 = add nsw i32 %100, %102
  store i32 %add95, i32* %startx02, align 4
  %103 = load i32, i32* %xcenter, align 4
  %104 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %right96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %104, i32 0, i32 10
  %105 = load i32, i32* %right96, align 4
  %add97 = add nsw i32 %103, %105
  store i32 %add97, i32* %endx02, align 4
  %106 = load i32, i32* %ycenter, align 4
  %107 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bottom98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %107, i32 0, i32 11
  %108 = load i32, i32* %bottom98, align 4
  %add99 = add nsw i32 %106, %108
  store i32 %add99, i32* %starty02, align 4
  %109 = load i32, i32* %ycenter, align 4
  %110 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %top100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 12
  %111 = load i32, i32* %top100, align 4
  %add101 = add nsw i32 %109, %111
  store i32 %add101, i32* %endy02, align 4
  %112 = load i32, i32* %startx02, align 4
  %113 = load i32, i32* %endx01, align 4
  %cmp102 = icmp sge i32 %112, %113
  br i1 %cmp102, label %if.then.109, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.end.93
  %114 = load i32, i32* %startx01, align 4
  %115 = load i32, i32* %endx02, align 4
  %cmp104 = icmp sge i32 %114, %115
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.103
  %116 = load i32, i32* %starty02, align 4
  %117 = load i32, i32* %endy01, align 4
  %cmp106 = icmp sge i32 %116, %117
  br i1 %cmp106, label %if.then.109, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.105
  %118 = load i32, i32* %starty01, align 4
  %119 = load i32, i32* %endy02, align 4
  %cmp108 = icmp sge i32 %118, %119
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %lor.lhs.false.107, %lor.lhs.false.105, %lor.lhs.false.103, %if.end.93
  br label %for.inc.219

if.end.110:                                       ; preds = %lor.lhs.false.107
  %120 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %120, i32 0, i32 6
  %121 = load i32, i32* %numtiles, align 4
  %cmp111 = icmp eq i32 %121, 1
  br i1 %cmp111, label %land.lhs.true.112, label %if.else.138

land.lhs.true.112:                                ; preds = %if.end.110
  %122 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 6
  %123 = load i32, i32* %numtiles113, align 4
  %cmp114 = icmp eq i32 %123, 1
  br i1 %cmp114, label %if.then.115, label %if.else.138

if.then.115:                                      ; preds = %land.lhs.true.112
  %124 = load i32, i32* %startx01, align 4
  %125 = load i32, i32* %startx02, align 4
  %cmp116 = icmp sge i32 %124, %125
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.115
  %126 = load i32, i32* %startx01, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.115
  %127 = load i32, i32* %startx02, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %126, %cond.true ], [ %127, %cond.false ]
  store i32 %cond, i32* %startx, align 4
  %128 = load i32, i32* %endx01, align 4
  %129 = load i32, i32* %endx02, align 4
  %cmp117 = icmp sle i32 %128, %129
  br i1 %cmp117, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.end
  %130 = load i32, i32* %endx01, align 4
  br label %cond.end.120

cond.false.119:                                   ; preds = %cond.end
  %131 = load i32, i32* %endx02, align 4
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.118
  %cond121 = phi i32 [ %130, %cond.true.118 ], [ %131, %cond.false.119 ]
  store i32 %cond121, i32* %endx, align 4
  %132 = load i32, i32* %starty01, align 4
  %133 = load i32, i32* %starty02, align 4
  %cmp122 = icmp sge i32 %132, %133
  br i1 %cmp122, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.120
  %134 = load i32, i32* %starty01, align 4
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.end.120
  %135 = load i32, i32* %starty02, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ %134, %cond.true.123 ], [ %135, %cond.false.124 ]
  store i32 %cond126, i32* %starty, align 4
  %136 = load i32, i32* %endy01, align 4
  %137 = load i32, i32* %endy02, align 4
  %cmp127 = icmp sle i32 %136, %137
  br i1 %cmp127, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.end.125
  %138 = load i32, i32* %endy01, align 4
  br label %cond.end.130

cond.false.129:                                   ; preds = %cond.end.125
  %139 = load i32, i32* %endy02, align 4
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.128
  %cond131 = phi i32 [ %138, %cond.true.128 ], [ %139, %cond.false.129 ]
  store i32 %cond131, i32* %endy, align 4
  %140 = load double, double* @lapFactor, align 8
  %141 = load i32, i32* %endy, align 4
  %142 = load i32, i32* %starty, align 4
  %sub132 = sub nsw i32 %141, %142
  %143 = load i32, i32* %endx, align 4
  %144 = load i32, i32* %startx, align 4
  %sub133 = sub nsw i32 %143, %144
  %mul = mul nsw i32 %sub132, %sub133
  %145 = load i32, i32* @offset, align 4
  %add134 = add nsw i32 %mul, %145
  %conv = sitofp i32 %add134 to double
  %mul135 = fmul double %140, %conv
  %conv136 = fptosi double %mul135 to i32
  %146 = load i32, i32* %value, align 4
  %add137 = add nsw i32 %146, %conv136
  store i32 %add137, i32* %value, align 4
  br label %if.end.218

if.else.138:                                      ; preds = %land.lhs.true.112, %if.end.110
  store i32 0, i32* %tempval, align 4
  %147 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %147, i32 0, i32 0
  %148 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %148, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.206, %if.else.138
  %149 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp140 = icmp ne %struct.tilebox* %149, null
  br i1 %cmp140, label %for.body.142, label %for.end.208

for.body.142:                                     ; preds = %for.cond.139
  %150 = load i32, i32* %xc.addr, align 4
  %151 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %151, i32 0, i32 9
  %152 = load i32, i32* %left143, align 4
  %add144 = add nsw i32 %150, %152
  store i32 %add144, i32* %startx1, align 4
  %153 = load i32, i32* %xc.addr, align 4
  %154 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %154, i32 0, i32 10
  %155 = load i32, i32* %right145, align 4
  %add146 = add nsw i32 %153, %155
  store i32 %add146, i32* %endx1, align 4
  %156 = load i32, i32* %yc.addr, align 4
  %157 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %157, i32 0, i32 11
  %158 = load i32, i32* %bottom147, align 4
  %add148 = add nsw i32 %156, %158
  store i32 %add148, i32* %starty1, align 4
  %159 = load i32, i32* %yc.addr, align 4
  %160 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %160, i32 0, i32 12
  %161 = load i32, i32* %top149, align 4
  %add150 = add nsw i32 %159, %161
  store i32 %add150, i32* %endy1, align 4
  %162 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %162, i32 0, i32 0
  %163 = load %struct.tilebox*, %struct.tilebox** %nexttile151, align 8
  store %struct.tilebox* %163, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc, %for.body.142
  %164 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp153 = icmp ne %struct.tilebox* %164, null
  br i1 %cmp153, label %for.body.155, label %for.end

for.body.155:                                     ; preds = %for.cond.152
  %165 = load i32, i32* %xcenter, align 4
  %166 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i32 0, i32 9
  %167 = load i32, i32* %left156, align 4
  %add157 = add nsw i32 %165, %167
  store i32 %add157, i32* %startx2, align 4
  %168 = load i32, i32* %xcenter, align 4
  %169 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i32 0, i32 10
  %170 = load i32, i32* %right158, align 4
  %add159 = add nsw i32 %168, %170
  store i32 %add159, i32* %endx2, align 4
  %171 = load i32, i32* %ycenter, align 4
  %172 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom160 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %172, i32 0, i32 11
  %173 = load i32, i32* %bottom160, align 4
  %add161 = add nsw i32 %171, %173
  store i32 %add161, i32* %starty2, align 4
  %174 = load i32, i32* %ycenter, align 4
  %175 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 12
  %176 = load i32, i32* %top162, align 4
  %add163 = add nsw i32 %174, %176
  store i32 %add163, i32* %endy2, align 4
  %177 = load i32, i32* %startx2, align 4
  %178 = load i32, i32* %endx1, align 4
  %cmp164 = icmp sge i32 %177, %178
  br i1 %cmp164, label %if.then.175, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %for.body.155
  %179 = load i32, i32* %startx1, align 4
  %180 = load i32, i32* %endx2, align 4
  %cmp167 = icmp sge i32 %179, %180
  br i1 %cmp167, label %if.then.175, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %lor.lhs.false.166
  %181 = load i32, i32* %starty2, align 4
  %182 = load i32, i32* %endy1, align 4
  %cmp170 = icmp sge i32 %181, %182
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false.169
  %183 = load i32, i32* %starty1, align 4
  %184 = load i32, i32* %endy2, align 4
  %cmp173 = icmp sge i32 %183, %184
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false.172, %lor.lhs.false.169, %lor.lhs.false.166, %for.body.155
  br label %for.inc

if.end.176:                                       ; preds = %lor.lhs.false.172
  %185 = load i32, i32* %startx1, align 4
  %186 = load i32, i32* %startx2, align 4
  %cmp177 = icmp sge i32 %185, %186
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %if.end.176
  %187 = load i32, i32* %startx1, align 4
  br label %cond.end.181

cond.false.180:                                   ; preds = %if.end.176
  %188 = load i32, i32* %startx2, align 4
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.179
  %cond182 = phi i32 [ %187, %cond.true.179 ], [ %188, %cond.false.180 ]
  store i32 %cond182, i32* %startx, align 4
  %189 = load i32, i32* %endx1, align 4
  %190 = load i32, i32* %endx2, align 4
  %cmp183 = icmp sle i32 %189, %190
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %cond.end.181
  %191 = load i32, i32* %endx1, align 4
  br label %cond.end.187

cond.false.186:                                   ; preds = %cond.end.181
  %192 = load i32, i32* %endx2, align 4
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.185
  %cond188 = phi i32 [ %191, %cond.true.185 ], [ %192, %cond.false.186 ]
  store i32 %cond188, i32* %endx, align 4
  %193 = load i32, i32* %starty1, align 4
  %194 = load i32, i32* %starty2, align 4
  %cmp189 = icmp sge i32 %193, %194
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.end.187
  %195 = load i32, i32* %starty1, align 4
  br label %cond.end.193

cond.false.192:                                   ; preds = %cond.end.187
  %196 = load i32, i32* %starty2, align 4
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.192, %cond.true.191
  %cond194 = phi i32 [ %195, %cond.true.191 ], [ %196, %cond.false.192 ]
  store i32 %cond194, i32* %starty, align 4
  %197 = load i32, i32* %endy1, align 4
  %198 = load i32, i32* %endy2, align 4
  %cmp195 = icmp sle i32 %197, %198
  br i1 %cmp195, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %cond.end.193
  %199 = load i32, i32* %endy1, align 4
  br label %cond.end.199

cond.false.198:                                   ; preds = %cond.end.193
  %200 = load i32, i32* %endy2, align 4
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.198, %cond.true.197
  %cond200 = phi i32 [ %199, %cond.true.197 ], [ %200, %cond.false.198 ]
  store i32 %cond200, i32* %endy, align 4
  %201 = load i32, i32* %endy, align 4
  %202 = load i32, i32* %starty, align 4
  %sub201 = sub nsw i32 %201, %202
  %203 = load i32, i32* %endx, align 4
  %204 = load i32, i32* %startx, align 4
  %sub202 = sub nsw i32 %203, %204
  %mul203 = mul nsw i32 %sub201, %sub202
  %205 = load i32, i32* %tempval, align 4
  %add204 = add nsw i32 %205, %mul203
  store i32 %add204, i32* %tempval, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.199, %if.then.175
  %206 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile205 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 0
  %207 = load %struct.tilebox*, %struct.tilebox** %nexttile205, align 8
  store %struct.tilebox* %207, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.152

for.end:                                          ; preds = %for.cond.152
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end
  %208 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile207 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %208, i32 0, i32 0
  %209 = load %struct.tilebox*, %struct.tilebox** %nexttile207, align 8
  store %struct.tilebox* %209, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.139

for.end.208:                                      ; preds = %for.cond.139
  %210 = load i32, i32* %tempval, align 4
  %cmp209 = icmp ne i32 %210, 0
  br i1 %cmp209, label %if.then.211, label %if.end.217

if.then.211:                                      ; preds = %for.end.208
  %211 = load double, double* @lapFactor, align 8
  %212 = load i32, i32* %tempval, align 4
  %213 = load i32, i32* @offset, align 4
  %add212 = add nsw i32 %212, %213
  %conv213 = sitofp i32 %add212 to double
  %mul214 = fmul double %211, %conv213
  %conv215 = fptosi double %mul214 to i32
  %214 = load i32, i32* %value, align 4
  %add216 = add nsw i32 %214, %conv215
  store i32 %add216, i32* %value, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.211, %for.end.208
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %cond.end.130
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218, %if.then.109, %if.else.91, %if.then.71
  %215 = load i32, i32* %k, align 4
  %inc = add nsw i32 %215, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.62

for.end.220:                                      ; preds = %for.cond.62
  br label %for.inc.221

for.inc.221:                                      ; preds = %for.end.220, %if.then.56
  %216 = load i32, i32* %j, align 4
  %inc222 = add nsw i32 %216, 1
  store i32 %inc222, i32* %j, align 4
  br label %for.cond.46

for.end.223:                                      ; preds = %for.cond.46
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.223, %if.then.44
  %217 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %217, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond

for.end.226:                                      ; preds = %for.cond
  %218 = load i32, i32* %value, align 4
  ret i32 %218
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
