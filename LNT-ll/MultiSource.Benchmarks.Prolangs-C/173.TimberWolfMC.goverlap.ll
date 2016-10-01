; ModuleID = './MultiSource.Benchmarks.Prolangs-C/173.TimberWolfMC.goverlap.bc'
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
define i32 @goverlap(i32 %cell, i32 %xc, i32 %yc, i32 %orient, i32 %b, i32 %flag, i32 %borient) #0 {
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
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 5
  %21 = load i32, i32* %lborder, align 4
  %22 = load i32, i32* %startx01, align 4
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %startx01, align 4
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 6
  %24 = load i32, i32* %rborder, align 4
  %25 = load i32, i32* %endx01, align 4
  %add6 = add nsw i32 %25, %24
  store i32 %add6, i32* %endx01, align 4
  %26 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i32 0, i32 7
  %27 = load i32, i32* %bborder, align 4
  %28 = load i32, i32* %starty01, align 4
  %sub7 = sub nsw i32 %28, %27
  store i32 %sub7, i32* %starty01, align 4
  %29 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %29, i32 0, i32 8
  %30 = load i32, i32* %tborder, align 4
  %31 = load i32, i32* %endy01, align 4
  %add8 = add nsw i32 %31, %30
  store i32 %add8, i32* %endy01, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load i32, i32* %startx01, align 4
  %33 = load i32, i32* @binOffsetX, align 4
  %sub9 = sub nsw i32 %32, %33
  %34 = load i32, i32* @binWidthX, align 4
  %div = sdiv i32 %sub9, %34
  store i32 %div, i32* %lowBinX, align 4
  %35 = load i32, i32* %lowBinX, align 4
  %cmp10 = icmp slt i32 %35, 1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %36 = load i32, i32* %lowBinX, align 4
  %37 = load i32, i32* @numBinsX, align 4
  %cmp12 = icmp sgt i32 %36, %37
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %38 = load i32, i32* @numBinsX, align 4
  store i32 %38, i32* %lowBinX, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.11
  %39 = load i32, i32* %endx01, align 4
  %40 = load i32, i32* @binOffsetX, align 4
  %sub16 = sub nsw i32 %39, %40
  %41 = load i32, i32* @binWidthX, align 4
  %div17 = sdiv i32 %sub16, %41
  store i32 %div17, i32* %highBinX, align 4
  %42 = load i32, i32* %highBinX, align 4
  %43 = load i32, i32* @numBinsX, align 4
  %cmp18 = icmp sgt i32 %42, %43
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end.15
  %44 = load i32, i32* @numBinsX, align 4
  store i32 %44, i32* %highBinX, align 4
  br label %if.end.24

if.else.20:                                       ; preds = %if.end.15
  %45 = load i32, i32* %highBinX, align 4
  %cmp21 = icmp slt i32 %45, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.20
  store i32 1, i32* %highBinX, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.19
  %46 = load i32, i32* %starty01, align 4
  %47 = load i32, i32* @binOffsetY, align 4
  %sub25 = sub nsw i32 %46, %47
  %48 = load i32, i32* @binWidthY, align 4
  %div26 = sdiv i32 %sub25, %48
  store i32 %div26, i32* %lowBinY, align 4
  %49 = load i32, i32* %lowBinY, align 4
  %cmp27 = icmp slt i32 %49, 1
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.24
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.33

if.else.29:                                       ; preds = %if.end.24
  %50 = load i32, i32* %lowBinY, align 4
  %51 = load i32, i32* @numBinsY, align 4
  %cmp30 = icmp sgt i32 %50, %51
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else.29
  %52 = load i32, i32* @numBinsY, align 4
  store i32 %52, i32* %lowBinY, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.28
  %53 = load i32, i32* %endy01, align 4
  %54 = load i32, i32* @binOffsetY, align 4
  %sub34 = sub nsw i32 %53, %54
  %55 = load i32, i32* @binWidthY, align 4
  %div35 = sdiv i32 %sub34, %55
  store i32 %div35, i32* %highBinY, align 4
  %56 = load i32, i32* %highBinY, align 4
  %57 = load i32, i32* @numBinsY, align 4
  %cmp36 = icmp sgt i32 %56, %57
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.33
  %58 = load i32, i32* @numBinsY, align 4
  store i32 %58, i32* %highBinY, align 4
  br label %if.end.42

if.else.38:                                       ; preds = %if.end.33
  %59 = load i32, i32* %highBinY, align 4
  %cmp39 = icmp slt i32 %59, 1
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.38
  store i32 1, i32* %highBinY, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.37
  %60 = load i32, i32* %lowBinX, align 4
  %61 = load i32, i32* %highBinX, align 4
  %cmp43 = icmp eq i32 %60, %61
  br i1 %cmp43, label %land.lhs.true, label %if.else.46

land.lhs.true:                                    ; preds = %if.end.42
  %62 = load i32, i32* %lowBinY, align 4
  %63 = load i32, i32* %highBinY, align 4
  %cmp44 = icmp eq i32 %62, %63
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true
  %64 = load i32, i32* %lowBinX, align 4
  store i32 %64, i32* @binX, align 4
  %65 = load i32, i32* %lowBinY, align 4
  store i32 %65, i32* @binY, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %land.lhs.true, %if.end.42
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.45
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.264, %if.end.47
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %highBinX, align 4
  %cmp48 = icmp sle i32 %66, %67
  br i1 %cmp48, label %for.body, label %for.end.266

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %i, align 4
  %cmp49 = icmp eq i32 %68, 0
  br i1 %cmp49, label %if.end.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %lowBinX, align 4
  %cmp50 = icmp sge i32 %69, %70
  br i1 %cmp50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false
  br label %for.inc.264

if.end.52:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.261, %if.end.52
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %highBinY, align 4
  %cmp54 = icmp sle i32 %71, %72
  br i1 %cmp54, label %for.body.55, label %for.end.263

for.body.55:                                      ; preds = %for.cond.53
  %73 = load i32, i32* %i, align 4
  %cmp56 = icmp eq i32 %73, 0
  br i1 %cmp56, label %land.lhs.true.57, label %lor.lhs.false.59

land.lhs.true.57:                                 ; preds = %for.body.55
  %74 = load i32, i32* %j, align 4
  %cmp58 = icmp eq i32 %74, 0
  br i1 %cmp58, label %if.end.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.57, %for.body.55
  %75 = load i32, i32* %i, align 4
  %cmp60 = icmp sgt i32 %75, 0
  br i1 %cmp60, label %land.lhs.true.61, label %if.then.63

land.lhs.true.61:                                 ; preds = %lor.lhs.false.59
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %lowBinY, align 4
  %cmp62 = icmp sge i32 %76, %77
  br i1 %cmp62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.61, %lor.lhs.false.59
  br label %for.inc.261

if.end.64:                                        ; preds = %land.lhs.true.61, %land.lhs.true.57
  %78 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %78 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %79 to i64
  %80 = load i32***, i32**** @blockarray, align 8
  %arrayidx67 = getelementptr inbounds i32**, i32*** %80, i64 %idxprom66
  %81 = load i32**, i32*** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32*, i32** %81, i64 %idxprom65
  %82 = load i32*, i32** %arrayidx68, align 8
  store i32* %82, i32** %occuptr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.259, %if.end.64
  %83 = load i32, i32* %k, align 4
  %84 = load i32*, i32** %occuptr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp sle i32 %83, %85
  br i1 %cmp71, label %for.body.72, label %for.end.260

for.body.72:                                      ; preds = %for.cond.69
  %86 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %86 to i64
  %87 = load i32*, i32** %occuptr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %87, i64 %idxprom73
  %88 = load i32, i32* %arrayidx74, align 4
  store i32 %88, i32* %othercell, align 4
  %89 = load i32, i32* %othercell, align 4
  %90 = load i32, i32* %cell.addr, align 4
  %cmp75 = icmp eq i32 %89, %90
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body.72
  br label %for.inc.259

if.end.77:                                        ; preds = %for.body.72
  %91 = load i32, i32* %othercell, align 4
  %idxprom78 = sext i32 %91 to i64
  %92 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx79 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %92, i64 %idxprom78
  %93 = load %struct.cellbox*, %struct.cellbox** %arrayidx79, align 8
  store %struct.cellbox* %93, %struct.cellbox** %cellptr2, align 8
  %94 = load i32, i32* %othercell, align 4
  %95 = load i32, i32* %b.addr, align 4
  %cmp80 = icmp ne i32 %94, %95
  br i1 %cmp80, label %if.then.81, label %if.else.88

if.then.81:                                       ; preds = %if.end.77
  %96 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %orient82 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %96, i32 0, i32 5
  %97 = load i32, i32* %orient82, align 4
  %idxprom83 = sext i32 %97 to i64
  %98 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %98, i32 0, i32 21
  %arrayidx85 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config84, i32 0, i64 %idxprom83
  %99 = load %struct.tilebox*, %struct.tilebox** %arrayidx85, align 8
  store %struct.tilebox* %99, %struct.tilebox** %tileptr02, align 8
  %100 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %xcenter86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %100, i32 0, i32 2
  %101 = load i32, i32* %xcenter86, align 4
  store i32 %101, i32* %xcenter, align 4
  %102 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %ycenter87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %102, i32 0, i32 3
  %103 = load i32, i32* %ycenter87, align 4
  store i32 %103, i32* %ycenter, align 4
  br label %if.end.98

if.else.88:                                       ; preds = %if.end.77
  %104 = load i32, i32* %flag.addr, align 4
  %cmp89 = icmp eq i32 %104, 0
  br i1 %cmp89, label %if.then.90, label %if.else.96

if.then.90:                                       ; preds = %if.else.88
  %105 = load i32, i32* %borient.addr, align 4
  %idxprom91 = sext i32 %105 to i64
  %106 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config92 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i32 0, i32 21
  %arrayidx93 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config92, i32 0, i64 %idxprom91
  %107 = load %struct.tilebox*, %struct.tilebox** %arrayidx93, align 8
  store %struct.tilebox* %107, %struct.tilebox** %tileptr02, align 8
  %108 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i32 0, i32 2
  %109 = load i32, i32* %xcenter94, align 4
  store i32 %109, i32* %xcenter, align 4
  %110 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter95 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %110, i32 0, i32 3
  %111 = load i32, i32* %ycenter95, align 4
  store i32 %111, i32* %ycenter, align 4
  br label %if.end.97

if.else.96:                                       ; preds = %if.else.88
  br label %for.inc.259

if.end.97:                                        ; preds = %if.then.90
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.81
  %112 = load i32, i32* %xcenter, align 4
  %113 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %left99 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 9
  %114 = load i32, i32* %left99, align 4
  %add100 = add nsw i32 %112, %114
  store i32 %add100, i32* %startx02, align 4
  %115 = load i32, i32* %xcenter, align 4
  %116 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %right101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i32 0, i32 10
  %117 = load i32, i32* %right101, align 4
  %add102 = add nsw i32 %115, %117
  store i32 %add102, i32* %endx02, align 4
  %118 = load i32, i32* %ycenter, align 4
  %119 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bottom103 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 11
  %120 = load i32, i32* %bottom103, align 4
  %add104 = add nsw i32 %118, %120
  store i32 %add104, i32* %starty02, align 4
  %121 = load i32, i32* %ycenter, align 4
  %122 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %top105 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 12
  %123 = load i32, i32* %top105, align 4
  %add106 = add nsw i32 %121, %123
  store i32 %add106, i32* %endy02, align 4
  %124 = load i32, i32* %othercell, align 4
  %125 = load i32, i32* @numcells, align 4
  %cmp107 = icmp sle i32 %124, %125
  br i1 %cmp107, label %if.then.108, label %if.end.117

if.then.108:                                      ; preds = %if.end.98
  %126 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %lborder109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i32 0, i32 5
  %127 = load i32, i32* %lborder109, align 4
  %128 = load i32, i32* %startx02, align 4
  %sub110 = sub nsw i32 %128, %127
  store i32 %sub110, i32* %startx02, align 4
  %129 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %rborder111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %129, i32 0, i32 6
  %130 = load i32, i32* %rborder111, align 4
  %131 = load i32, i32* %endx02, align 4
  %add112 = add nsw i32 %131, %130
  store i32 %add112, i32* %endx02, align 4
  %132 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bborder113 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %132, i32 0, i32 7
  %133 = load i32, i32* %bborder113, align 4
  %134 = load i32, i32* %starty02, align 4
  %sub114 = sub nsw i32 %134, %133
  store i32 %sub114, i32* %starty02, align 4
  %135 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %tborder115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %135, i32 0, i32 8
  %136 = load i32, i32* %tborder115, align 4
  %137 = load i32, i32* %endy02, align 4
  %add116 = add nsw i32 %137, %136
  store i32 %add116, i32* %endy02, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.108, %if.end.98
  %138 = load i32, i32* %startx02, align 4
  %139 = load i32, i32* %endx01, align 4
  %cmp118 = icmp sge i32 %138, %139
  br i1 %cmp118, label %if.then.125, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.end.117
  %140 = load i32, i32* %startx01, align 4
  %141 = load i32, i32* %endx02, align 4
  %cmp120 = icmp sge i32 %140, %141
  br i1 %cmp120, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.119
  %142 = load i32, i32* %starty02, align 4
  %143 = load i32, i32* %endy01, align 4
  %cmp122 = icmp sge i32 %142, %143
  br i1 %cmp122, label %if.then.125, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.121
  %144 = load i32, i32* %starty01, align 4
  %145 = load i32, i32* %endy02, align 4
  %cmp124 = icmp sge i32 %144, %145
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.123, %lor.lhs.false.121, %lor.lhs.false.119, %if.end.117
  br label %for.inc.259

if.end.126:                                       ; preds = %lor.lhs.false.123
  %146 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %146, i32 0, i32 6
  %147 = load i32, i32* %numtiles, align 4
  %cmp127 = icmp eq i32 %147, 1
  br i1 %cmp127, label %land.lhs.true.128, label %if.else.154

land.lhs.true.128:                                ; preds = %if.end.126
  %148 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles129 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i32 0, i32 6
  %149 = load i32, i32* %numtiles129, align 4
  %cmp130 = icmp eq i32 %149, 1
  br i1 %cmp130, label %if.then.131, label %if.else.154

if.then.131:                                      ; preds = %land.lhs.true.128
  %150 = load i32, i32* %startx01, align 4
  %151 = load i32, i32* %startx02, align 4
  %cmp132 = icmp sge i32 %150, %151
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.131
  %152 = load i32, i32* %startx01, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.131
  %153 = load i32, i32* %startx02, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %152, %cond.true ], [ %153, %cond.false ]
  store i32 %cond, i32* %startx, align 4
  %154 = load i32, i32* %endx01, align 4
  %155 = load i32, i32* %endx02, align 4
  %cmp133 = icmp sle i32 %154, %155
  br i1 %cmp133, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end
  %156 = load i32, i32* %endx01, align 4
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.end
  %157 = load i32, i32* %endx02, align 4
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.134
  %cond137 = phi i32 [ %156, %cond.true.134 ], [ %157, %cond.false.135 ]
  store i32 %cond137, i32* %endx, align 4
  %158 = load i32, i32* %starty01, align 4
  %159 = load i32, i32* %starty02, align 4
  %cmp138 = icmp sge i32 %158, %159
  br i1 %cmp138, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.end.136
  %160 = load i32, i32* %starty01, align 4
  br label %cond.end.141

cond.false.140:                                   ; preds = %cond.end.136
  %161 = load i32, i32* %starty02, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.140, %cond.true.139
  %cond142 = phi i32 [ %160, %cond.true.139 ], [ %161, %cond.false.140 ]
  store i32 %cond142, i32* %starty, align 4
  %162 = load i32, i32* %endy01, align 4
  %163 = load i32, i32* %endy02, align 4
  %cmp143 = icmp sle i32 %162, %163
  br i1 %cmp143, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %cond.end.141
  %164 = load i32, i32* %endy01, align 4
  br label %cond.end.146

cond.false.145:                                   ; preds = %cond.end.141
  %165 = load i32, i32* %endy02, align 4
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.144
  %cond147 = phi i32 [ %164, %cond.true.144 ], [ %165, %cond.false.145 ]
  store i32 %cond147, i32* %endy, align 4
  %166 = load double, double* @lapFactor, align 8
  %167 = load i32, i32* %endy, align 4
  %168 = load i32, i32* %starty, align 4
  %sub148 = sub nsw i32 %167, %168
  %169 = load i32, i32* %endx, align 4
  %170 = load i32, i32* %startx, align 4
  %sub149 = sub nsw i32 %169, %170
  %mul = mul nsw i32 %sub148, %sub149
  %171 = load i32, i32* @offset, align 4
  %add150 = add nsw i32 %mul, %171
  %conv = sitofp i32 %add150 to double
  %mul151 = fmul double %166, %conv
  %conv152 = fptosi double %mul151 to i32
  %172 = load i32, i32* %value, align 4
  %add153 = add nsw i32 %172, %conv152
  store i32 %add153, i32* %value, align 4
  br label %if.end.258

if.else.154:                                      ; preds = %land.lhs.true.128, %if.end.126
  store i32 0, i32* %tempval, align 4
  %173 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i32 0, i32 0
  %174 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %174, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.246, %if.else.154
  %175 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp156 = icmp ne %struct.tilebox* %175, null
  br i1 %cmp156, label %for.body.158, label %for.end.248

for.body.158:                                     ; preds = %for.cond.155
  %176 = load i32, i32* %xc.addr, align 4
  %177 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left159 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %177, i32 0, i32 9
  %178 = load i32, i32* %left159, align 4
  %add160 = add nsw i32 %176, %178
  store i32 %add160, i32* %startx1, align 4
  %179 = load i32, i32* %xc.addr, align 4
  %180 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i32 0, i32 10
  %181 = load i32, i32* %right161, align 4
  %add162 = add nsw i32 %179, %181
  store i32 %add162, i32* %endx1, align 4
  %182 = load i32, i32* %yc.addr, align 4
  %183 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %183, i32 0, i32 11
  %184 = load i32, i32* %bottom163, align 4
  %add164 = add nsw i32 %182, %184
  store i32 %add164, i32* %starty1, align 4
  %185 = load i32, i32* %yc.addr, align 4
  %186 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i32 0, i32 12
  %187 = load i32, i32* %top165, align 4
  %add166 = add nsw i32 %185, %187
  store i32 %add166, i32* %endy1, align 4
  %188 = load i32, i32* %cell.addr, align 4
  %189 = load i32, i32* @numcells, align 4
  %cmp167 = icmp sle i32 %188, %189
  br i1 %cmp167, label %if.then.169, label %if.end.178

if.then.169:                                      ; preds = %for.body.158
  %190 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %lborder170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %190, i32 0, i32 5
  %191 = load i32, i32* %lborder170, align 4
  %192 = load i32, i32* %startx1, align 4
  %sub171 = sub nsw i32 %192, %191
  store i32 %sub171, i32* %startx1, align 4
  %193 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %rborder172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %193, i32 0, i32 6
  %194 = load i32, i32* %rborder172, align 4
  %195 = load i32, i32* %endx1, align 4
  %add173 = add nsw i32 %195, %194
  store i32 %add173, i32* %endx1, align 4
  %196 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bborder174 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %196, i32 0, i32 7
  %197 = load i32, i32* %bborder174, align 4
  %198 = load i32, i32* %starty1, align 4
  %sub175 = sub nsw i32 %198, %197
  store i32 %sub175, i32* %starty1, align 4
  %199 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %tborder176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 8
  %200 = load i32, i32* %tborder176, align 4
  %201 = load i32, i32* %endy1, align 4
  %add177 = add nsw i32 %201, %200
  store i32 %add177, i32* %endy1, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.169, %for.body.158
  %202 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 0
  %203 = load %struct.tilebox*, %struct.tilebox** %nexttile179, align 8
  store %struct.tilebox* %203, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc, %if.end.178
  %204 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp181 = icmp ne %struct.tilebox* %204, null
  br i1 %cmp181, label %for.body.183, label %for.end

for.body.183:                                     ; preds = %for.cond.180
  %205 = load i32, i32* %xcenter, align 4
  %206 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left184 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 9
  %207 = load i32, i32* %left184, align 4
  %add185 = add nsw i32 %205, %207
  store i32 %add185, i32* %startx2, align 4
  %208 = load i32, i32* %xcenter, align 4
  %209 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %209, i32 0, i32 10
  %210 = load i32, i32* %right186, align 4
  %add187 = add nsw i32 %208, %210
  store i32 %add187, i32* %endx2, align 4
  %211 = load i32, i32* %ycenter, align 4
  %212 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom188 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i32 0, i32 11
  %213 = load i32, i32* %bottom188, align 4
  %add189 = add nsw i32 %211, %213
  store i32 %add189, i32* %starty2, align 4
  %214 = load i32, i32* %ycenter, align 4
  %215 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 12
  %216 = load i32, i32* %top190, align 4
  %add191 = add nsw i32 %214, %216
  store i32 %add191, i32* %endy2, align 4
  %217 = load i32, i32* %othercell, align 4
  %218 = load i32, i32* @numcells, align 4
  %cmp192 = icmp sle i32 %217, %218
  br i1 %cmp192, label %if.then.194, label %if.end.203

if.then.194:                                      ; preds = %for.body.183
  %219 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %lborder195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %219, i32 0, i32 5
  %220 = load i32, i32* %lborder195, align 4
  %221 = load i32, i32* %startx2, align 4
  %sub196 = sub nsw i32 %221, %220
  store i32 %sub196, i32* %startx2, align 4
  %222 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %rborder197 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %222, i32 0, i32 6
  %223 = load i32, i32* %rborder197, align 4
  %224 = load i32, i32* %endx2, align 4
  %add198 = add nsw i32 %224, %223
  store i32 %add198, i32* %endx2, align 4
  %225 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bborder199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %225, i32 0, i32 7
  %226 = load i32, i32* %bborder199, align 4
  %227 = load i32, i32* %starty2, align 4
  %sub200 = sub nsw i32 %227, %226
  store i32 %sub200, i32* %starty2, align 4
  %228 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %tborder201 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %228, i32 0, i32 8
  %229 = load i32, i32* %tborder201, align 4
  %230 = load i32, i32* %endy2, align 4
  %add202 = add nsw i32 %230, %229
  store i32 %add202, i32* %endy2, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.194, %for.body.183
  %231 = load i32, i32* %startx2, align 4
  %232 = load i32, i32* %endx1, align 4
  %cmp204 = icmp sge i32 %231, %232
  br i1 %cmp204, label %if.then.215, label %lor.lhs.false.206

lor.lhs.false.206:                                ; preds = %if.end.203
  %233 = load i32, i32* %startx1, align 4
  %234 = load i32, i32* %endx2, align 4
  %cmp207 = icmp sge i32 %233, %234
  br i1 %cmp207, label %if.then.215, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %lor.lhs.false.206
  %235 = load i32, i32* %starty2, align 4
  %236 = load i32, i32* %endy1, align 4
  %cmp210 = icmp sge i32 %235, %236
  br i1 %cmp210, label %if.then.215, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.209
  %237 = load i32, i32* %starty1, align 4
  %238 = load i32, i32* %endy2, align 4
  %cmp213 = icmp sge i32 %237, %238
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %lor.lhs.false.212, %lor.lhs.false.209, %lor.lhs.false.206, %if.end.203
  br label %for.inc

if.end.216:                                       ; preds = %lor.lhs.false.212
  %239 = load i32, i32* %startx1, align 4
  %240 = load i32, i32* %startx2, align 4
  %cmp217 = icmp sge i32 %239, %240
  br i1 %cmp217, label %cond.true.219, label %cond.false.220

cond.true.219:                                    ; preds = %if.end.216
  %241 = load i32, i32* %startx1, align 4
  br label %cond.end.221

cond.false.220:                                   ; preds = %if.end.216
  %242 = load i32, i32* %startx2, align 4
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.219
  %cond222 = phi i32 [ %241, %cond.true.219 ], [ %242, %cond.false.220 ]
  store i32 %cond222, i32* %startx, align 4
  %243 = load i32, i32* %endx1, align 4
  %244 = load i32, i32* %endx2, align 4
  %cmp223 = icmp sle i32 %243, %244
  br i1 %cmp223, label %cond.true.225, label %cond.false.226

cond.true.225:                                    ; preds = %cond.end.221
  %245 = load i32, i32* %endx1, align 4
  br label %cond.end.227

cond.false.226:                                   ; preds = %cond.end.221
  %246 = load i32, i32* %endx2, align 4
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.226, %cond.true.225
  %cond228 = phi i32 [ %245, %cond.true.225 ], [ %246, %cond.false.226 ]
  store i32 %cond228, i32* %endx, align 4
  %247 = load i32, i32* %starty1, align 4
  %248 = load i32, i32* %starty2, align 4
  %cmp229 = icmp sge i32 %247, %248
  br i1 %cmp229, label %cond.true.231, label %cond.false.232

cond.true.231:                                    ; preds = %cond.end.227
  %249 = load i32, i32* %starty1, align 4
  br label %cond.end.233

cond.false.232:                                   ; preds = %cond.end.227
  %250 = load i32, i32* %starty2, align 4
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.231
  %cond234 = phi i32 [ %249, %cond.true.231 ], [ %250, %cond.false.232 ]
  store i32 %cond234, i32* %starty, align 4
  %251 = load i32, i32* %endy1, align 4
  %252 = load i32, i32* %endy2, align 4
  %cmp235 = icmp sle i32 %251, %252
  br i1 %cmp235, label %cond.true.237, label %cond.false.238

cond.true.237:                                    ; preds = %cond.end.233
  %253 = load i32, i32* %endy1, align 4
  br label %cond.end.239

cond.false.238:                                   ; preds = %cond.end.233
  %254 = load i32, i32* %endy2, align 4
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.238, %cond.true.237
  %cond240 = phi i32 [ %253, %cond.true.237 ], [ %254, %cond.false.238 ]
  store i32 %cond240, i32* %endy, align 4
  %255 = load i32, i32* %endy, align 4
  %256 = load i32, i32* %starty, align 4
  %sub241 = sub nsw i32 %255, %256
  %257 = load i32, i32* %endx, align 4
  %258 = load i32, i32* %startx, align 4
  %sub242 = sub nsw i32 %257, %258
  %mul243 = mul nsw i32 %sub241, %sub242
  %259 = load i32, i32* %tempval, align 4
  %add244 = add nsw i32 %259, %mul243
  store i32 %add244, i32* %tempval, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.239, %if.then.215
  %260 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %260, i32 0, i32 0
  %261 = load %struct.tilebox*, %struct.tilebox** %nexttile245, align 8
  store %struct.tilebox* %261, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.180

for.end:                                          ; preds = %for.cond.180
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.end
  %262 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile247 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %262, i32 0, i32 0
  %263 = load %struct.tilebox*, %struct.tilebox** %nexttile247, align 8
  store %struct.tilebox* %263, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.155

for.end.248:                                      ; preds = %for.cond.155
  %264 = load i32, i32* %tempval, align 4
  %cmp249 = icmp ne i32 %264, 0
  br i1 %cmp249, label %if.then.251, label %if.end.257

if.then.251:                                      ; preds = %for.end.248
  %265 = load double, double* @lapFactor, align 8
  %266 = load i32, i32* %tempval, align 4
  %267 = load i32, i32* @offset, align 4
  %add252 = add nsw i32 %266, %267
  %conv253 = sitofp i32 %add252 to double
  %mul254 = fmul double %265, %conv253
  %conv255 = fptosi double %mul254 to i32
  %268 = load i32, i32* %value, align 4
  %add256 = add nsw i32 %268, %conv255
  store i32 %add256, i32* %value, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.251, %for.end.248
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %cond.end.146
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258, %if.then.125, %if.else.96, %if.then.76
  %269 = load i32, i32* %k, align 4
  %inc = add nsw i32 %269, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.69

for.end.260:                                      ; preds = %for.cond.69
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end.260, %if.then.63
  %270 = load i32, i32* %j, align 4
  %inc262 = add nsw i32 %270, 1
  store i32 %inc262, i32* %j, align 4
  br label %for.cond.53

for.end.263:                                      ; preds = %for.cond.53
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.end.263, %if.then.51
  %271 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %271, 1
  store i32 %inc265, i32* %i, align 4
  br label %for.cond

for.end.266:                                      ; preds = %for.cond
  %272 = load i32, i32* %value, align 4
  ret i32 %272
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
