; ModuleID = './MultiSource.Benchmarks.Prolangs-C/221.TimberWolfMC.woverlapx.bc'
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
@binOffsetX = external global i32, align 4
@binWidthX = external global i32, align 4
@numBinsX = external global i32, align 4
@binOffsetY = external global i32, align 4
@binWidthY = external global i32, align 4
@numBinsY = external global i32, align 4
@binX = external global i32, align 4
@binY = external global i32, align 4
@blockarray = external global i32***, align 8
@numcells = external global i32, align 4
@lapFactor = external global double, align 8
@offset = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @woverlapx(i32 %cell, i32 %oleft, i32 %obottom, i32 %Wdiv2, i32 %Hdiv2, double %aspFactor) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %oleft.addr = alloca i32, align 4
  %obottom.addr = alloca i32, align 4
  %Wdiv2.addr = alloca i32, align 4
  %Hdiv2.addr = alloca i32, align 4
  %aspFactor.addr = alloca double, align 8
  %cellptr1 = alloca %struct.cellbox*, align 8
  %cellptr2 = alloca %struct.cellbox*, align 8
  %tileptr01 = alloca %struct.tilebox*, align 8
  %tileptr1 = alloca %struct.tilebox*, align 8
  %tileptr02 = alloca %struct.tilebox*, align 8
  %tileptr2 = alloca %struct.tilebox*, align 8
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
  %val = alloca double, align 8
  store i32 %cell, i32* %cell.addr, align 4
  store i32 %oleft, i32* %oleft.addr, align 4
  store i32 %obottom, i32* %obottom.addr, align 4
  store i32 %Wdiv2, i32* %Wdiv2.addr, align 4
  store i32 %Hdiv2, i32* %Hdiv2.addr, align 4
  store double %aspFactor, double* %aspFactor.addr, align 8
  store i32 0, i32* %value, align 4
  %0 = load i32, i32* %cell.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %1, i64 %idxprom
  %2 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %2, %struct.cellbox** %cellptr1, align 8
  %3 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 5
  %4 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %6 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  store %struct.tilebox* %6, %struct.tilebox** %tileptr01, align 8
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 2
  %8 = load i32, i32* %xcenter3, align 4
  %9 = load i32, i32* %Wdiv2.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %startx01, align 4
  %10 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %oright = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 14
  %11 = load i32, i32* %oright, align 4
  %12 = load i32, i32* %oleft.addr, align 4
  %sub4 = sub nsw i32 %11, %12
  %conv = sitofp i32 %sub4 to double
  %13 = load double, double* %aspFactor.addr, align 8
  %div = fdiv double %conv, %13
  store double %div, double* %val, align 8
  %14 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 2
  %15 = load i32, i32* %xcenter5, align 4
  %16 = load double, double* %val, align 8
  %17 = load double, double* %val, align 8
  %conv6 = fptosi double %17 to i32
  %conv7 = sitofp i32 %conv6 to double
  %sub8 = fsub double %16, %conv7
  %cmp = fcmp oge double %sub8, 5.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load double, double* %val, align 8
  %conv10 = fptosi double %18 to i32
  %add = add nsw i32 %conv10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load double, double* %val, align 8
  %conv11 = fptosi double %19 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv11, %cond.false ]
  %add12 = add nsw i32 %15, %cond
  %20 = load i32, i32* %Wdiv2.addr, align 4
  %sub13 = sub nsw i32 %add12, %20
  store i32 %sub13, i32* %endx01, align 4
  %21 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 3
  %22 = load i32, i32* %ycenter14, align 4
  %23 = load i32, i32* %Hdiv2.addr, align 4
  %sub15 = sub nsw i32 %22, %23
  store i32 %sub15, i32* %starty01, align 4
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %otop = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 16
  %25 = load i32, i32* %otop, align 4
  %26 = load i32, i32* %obottom.addr, align 4
  %sub16 = sub nsw i32 %25, %26
  %conv17 = sitofp i32 %sub16 to double
  %27 = load double, double* %aspFactor.addr, align 8
  %mul = fmul double %conv17, %27
  store double %mul, double* %val, align 8
  %28 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 3
  %29 = load i32, i32* %ycenter18, align 4
  %30 = load double, double* %val, align 8
  %31 = load double, double* %val, align 8
  %conv19 = fptosi double %31 to i32
  %conv20 = sitofp i32 %conv19 to double
  %sub21 = fsub double %30, %conv20
  %cmp22 = fcmp oge double %sub21, 5.000000e-01
  br i1 %cmp22, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.end
  %32 = load double, double* %val, align 8
  %conv25 = fptosi double %32 to i32
  %add26 = add nsw i32 %conv25, 1
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.end
  %33 = load double, double* %val, align 8
  %conv28 = fptosi double %33 to i32
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.24
  %cond30 = phi i32 [ %add26, %cond.true.24 ], [ %conv28, %cond.false.27 ]
  %add31 = add nsw i32 %29, %cond30
  %34 = load i32, i32* %Hdiv2.addr, align 4
  %sub32 = sub nsw i32 %add31, %34
  store i32 %sub32, i32* %endy01, align 4
  %35 = load i32, i32* %startx01, align 4
  %36 = load i32, i32* %starty01, align 4
  %37 = load i32, i32* %endy01, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 1
  %39 = load double, double* %lweight, align 8
  %call = call i32 @wireestx(i32 %35, i32 %36, i32 %37, double %39)
  %40 = load i32, i32* %startx01, align 4
  %sub33 = sub nsw i32 %40, %call
  store i32 %sub33, i32* %startx01, align 4
  %41 = load i32, i32* %endx01, align 4
  %42 = load i32, i32* %starty01, align 4
  %43 = load i32, i32* %endy01, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 2
  %45 = load double, double* %rweight, align 8
  %call34 = call i32 @wireestx(i32 %41, i32 %42, i32 %43, double %45)
  %46 = load i32, i32* %endx01, align 4
  %add35 = add nsw i32 %46, %call34
  store i32 %add35, i32* %endx01, align 4
  %47 = load i32, i32* %starty01, align 4
  %48 = load i32, i32* %startx01, align 4
  %49 = load i32, i32* %endx01, align 4
  %50 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 3
  %51 = load double, double* %bweight, align 8
  %call36 = call i32 @wireesty(i32 %47, i32 %48, i32 %49, double %51)
  %52 = load i32, i32* %starty01, align 4
  %sub37 = sub nsw i32 %52, %call36
  store i32 %sub37, i32* %starty01, align 4
  %53 = load i32, i32* %endy01, align 4
  %54 = load i32, i32* %startx01, align 4
  %55 = load i32, i32* %endx01, align 4
  %56 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %56, i32 0, i32 4
  %57 = load double, double* %tweight, align 8
  %call38 = call i32 @wireesty(i32 %53, i32 %54, i32 %55, double %57)
  %58 = load i32, i32* %endy01, align 4
  %add39 = add nsw i32 %58, %call38
  store i32 %add39, i32* %endy01, align 4
  %59 = load i32, i32* %startx01, align 4
  %60 = load i32, i32* @binOffsetX, align 4
  %sub40 = sub nsw i32 %59, %60
  %61 = load i32, i32* @binWidthX, align 4
  %div41 = sdiv i32 %sub40, %61
  store i32 %div41, i32* %lowBinX, align 4
  %62 = load i32, i32* %lowBinX, align 4
  %cmp42 = icmp slt i32 %62, 1
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.29
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.47

if.else:                                          ; preds = %cond.end.29
  %63 = load i32, i32* %lowBinX, align 4
  %64 = load i32, i32* @numBinsX, align 4
  %cmp44 = icmp sgt i32 %63, %64
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.else
  %65 = load i32, i32* @numBinsX, align 4
  store i32 %65, i32* %lowBinX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %if.then
  %66 = load i32, i32* %endx01, align 4
  %67 = load i32, i32* @binOffsetX, align 4
  %sub48 = sub nsw i32 %66, %67
  %68 = load i32, i32* @binWidthX, align 4
  %div49 = sdiv i32 %sub48, %68
  store i32 %div49, i32* %highBinX, align 4
  %69 = load i32, i32* %highBinX, align 4
  %70 = load i32, i32* @numBinsX, align 4
  %cmp50 = icmp sgt i32 %69, %70
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.47
  %71 = load i32, i32* @numBinsX, align 4
  store i32 %71, i32* %highBinX, align 4
  br label %if.end.58

if.else.53:                                       ; preds = %if.end.47
  %72 = load i32, i32* %highBinX, align 4
  %cmp54 = icmp slt i32 %72, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.53
  store i32 1, i32* %highBinX, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.52
  %73 = load i32, i32* %starty01, align 4
  %74 = load i32, i32* @binOffsetY, align 4
  %sub59 = sub nsw i32 %73, %74
  %75 = load i32, i32* @binWidthY, align 4
  %div60 = sdiv i32 %sub59, %75
  store i32 %div60, i32* %lowBinY, align 4
  %76 = load i32, i32* %lowBinY, align 4
  %cmp61 = icmp slt i32 %76, 1
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.58
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.69

if.else.64:                                       ; preds = %if.end.58
  %77 = load i32, i32* %lowBinY, align 4
  %78 = load i32, i32* @numBinsY, align 4
  %cmp65 = icmp sgt i32 %77, %78
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.64
  %79 = load i32, i32* @numBinsY, align 4
  store i32 %79, i32* %lowBinY, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.63
  %80 = load i32, i32* %endy01, align 4
  %81 = load i32, i32* @binOffsetY, align 4
  %sub70 = sub nsw i32 %80, %81
  %82 = load i32, i32* @binWidthY, align 4
  %div71 = sdiv i32 %sub70, %82
  store i32 %div71, i32* %highBinY, align 4
  %83 = load i32, i32* %highBinY, align 4
  %84 = load i32, i32* @numBinsY, align 4
  %cmp72 = icmp sgt i32 %83, %84
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.69
  %85 = load i32, i32* @numBinsY, align 4
  store i32 %85, i32* %highBinY, align 4
  br label %if.end.80

if.else.75:                                       ; preds = %if.end.69
  %86 = load i32, i32* %highBinY, align 4
  %cmp76 = icmp slt i32 %86, 1
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else.75
  store i32 1, i32* %highBinY, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.74
  %87 = load i32, i32* %lowBinX, align 4
  %88 = load i32, i32* %highBinX, align 4
  %cmp81 = icmp eq i32 %87, %88
  br i1 %cmp81, label %land.lhs.true, label %if.else.86

land.lhs.true:                                    ; preds = %if.end.80
  %89 = load i32, i32* %lowBinY, align 4
  %90 = load i32, i32* %highBinY, align 4
  %cmp83 = icmp eq i32 %89, %90
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true
  %91 = load i32, i32* %lowBinX, align 4
  store i32 %91, i32* @binX, align 4
  %92 = load i32, i32* %lowBinY, align 4
  store i32 %92, i32* @binY, align 4
  br label %if.end.87

if.else.86:                                       ; preds = %land.lhs.true, %if.end.80
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.85
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.390, %if.end.87
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %highBinX, align 4
  %cmp88 = icmp sle i32 %93, %94
  br i1 %cmp88, label %for.body, label %for.end.392

for.body:                                         ; preds = %for.cond
  %95 = load i32, i32* %i, align 4
  %cmp90 = icmp eq i32 %95, 0
  br i1 %cmp90, label %if.end.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %lowBinX, align 4
  %cmp92 = icmp sge i32 %96, %97
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false
  br label %for.inc.390

if.end.95:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.387, %if.end.95
  %98 = load i32, i32* %j, align 4
  %99 = load i32, i32* %highBinY, align 4
  %cmp97 = icmp sle i32 %98, %99
  br i1 %cmp97, label %for.body.99, label %for.end.389

for.body.99:                                      ; preds = %for.cond.96
  %100 = load i32, i32* %i, align 4
  %cmp100 = icmp eq i32 %100, 0
  br i1 %cmp100, label %land.lhs.true.102, label %lor.lhs.false.105

land.lhs.true.102:                                ; preds = %for.body.99
  %101 = load i32, i32* %j, align 4
  %cmp103 = icmp eq i32 %101, 0
  br i1 %cmp103, label %if.end.112, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.102, %for.body.99
  %102 = load i32, i32* %i, align 4
  %cmp106 = icmp sgt i32 %102, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.then.111

land.lhs.true.108:                                ; preds = %lor.lhs.false.105
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %lowBinY, align 4
  %cmp109 = icmp sge i32 %103, %104
  br i1 %cmp109, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.108, %lor.lhs.false.105
  br label %for.inc.387

if.end.112:                                       ; preds = %land.lhs.true.108, %land.lhs.true.102
  %105 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %106 to i64
  %107 = load i32***, i32**** @blockarray, align 8
  %arrayidx115 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom114
  %108 = load i32**, i32*** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %108, i64 %idxprom113
  %109 = load i32*, i32** %arrayidx116, align 8
  store i32* %109, i32** %occuptr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.385, %if.end.112
  %110 = load i32, i32* %k, align 4
  %111 = load i32*, i32** %occuptr, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %111, i64 0
  %112 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp sle i32 %110, %112
  br i1 %cmp119, label %for.body.121, label %for.end.386

for.body.121:                                     ; preds = %for.cond.117
  %113 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %113 to i64
  %114 = load i32*, i32** %occuptr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %114, i64 %idxprom122
  %115 = load i32, i32* %arrayidx123, align 4
  store i32 %115, i32* %othercell, align 4
  %116 = load i32, i32* %othercell, align 4
  %117 = load i32, i32* %cell.addr, align 4
  %cmp124 = icmp eq i32 %116, %117
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.body.121
  br label %for.inc.385

if.end.127:                                       ; preds = %for.body.121
  %118 = load i32, i32* %othercell, align 4
  %idxprom128 = sext i32 %118 to i64
  %119 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx129 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %119, i64 %idxprom128
  %120 = load %struct.cellbox*, %struct.cellbox** %arrayidx129, align 8
  store %struct.cellbox* %120, %struct.cellbox** %cellptr2, align 8
  %121 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %orient130 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 5
  %122 = load i32, i32* %orient130, align 4
  %idxprom131 = sext i32 %122 to i64
  %123 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config132 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 21
  %arrayidx133 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config132, i32 0, i64 %idxprom131
  %124 = load %struct.tilebox*, %struct.tilebox** %arrayidx133, align 8
  store %struct.tilebox* %124, %struct.tilebox** %tileptr02, align 8
  %125 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %xcenter134 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %125, i32 0, i32 2
  %126 = load i32, i32* %xcenter134, align 4
  store i32 %126, i32* %xcenter, align 4
  %127 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %ycenter135 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %127, i32 0, i32 3
  %128 = load i32, i32* %ycenter135, align 4
  store i32 %128, i32* %ycenter, align 4
  %129 = load i32, i32* %xcenter, align 4
  %130 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 9
  %131 = load i32, i32* %left, align 4
  %add136 = add nsw i32 %129, %131
  store i32 %add136, i32* %startx02, align 4
  %132 = load i32, i32* %xcenter, align 4
  %133 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %133, i32 0, i32 10
  %134 = load i32, i32* %right, align 4
  %add137 = add nsw i32 %132, %134
  store i32 %add137, i32* %endx02, align 4
  %135 = load i32, i32* %ycenter, align 4
  %136 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 11
  %137 = load i32, i32* %bottom, align 4
  %add138 = add nsw i32 %135, %137
  store i32 %add138, i32* %starty02, align 4
  %138 = load i32, i32* %ycenter, align 4
  %139 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %139, i32 0, i32 12
  %140 = load i32, i32* %top, align 4
  %add139 = add nsw i32 %138, %140
  store i32 %add139, i32* %endy02, align 4
  %141 = load i32, i32* %othercell, align 4
  %142 = load i32, i32* @numcells, align 4
  %cmp140 = icmp sle i32 %141, %142
  br i1 %cmp140, label %if.then.142, label %if.end.155

if.then.142:                                      ; preds = %if.end.127
  %143 = load i32, i32* %startx02, align 4
  %144 = load i32, i32* %starty02, align 4
  %145 = load i32, i32* %endy02, align 4
  %146 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %lweight143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %146, i32 0, i32 1
  %147 = load double, double* %lweight143, align 8
  %call144 = call i32 @wireestx(i32 %143, i32 %144, i32 %145, double %147)
  %148 = load i32, i32* %startx02, align 4
  %sub145 = sub nsw i32 %148, %call144
  store i32 %sub145, i32* %startx02, align 4
  %149 = load i32, i32* %endx02, align 4
  %150 = load i32, i32* %starty02, align 4
  %151 = load i32, i32* %endy02, align 4
  %152 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %rweight146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i32 0, i32 2
  %153 = load double, double* %rweight146, align 8
  %call147 = call i32 @wireestx(i32 %149, i32 %150, i32 %151, double %153)
  %154 = load i32, i32* %endx02, align 4
  %add148 = add nsw i32 %154, %call147
  store i32 %add148, i32* %endx02, align 4
  %155 = load i32, i32* %starty02, align 4
  %156 = load i32, i32* %startx02, align 4
  %157 = load i32, i32* %endx02, align 4
  %158 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bweight149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %158, i32 0, i32 3
  %159 = load double, double* %bweight149, align 8
  %call150 = call i32 @wireesty(i32 %155, i32 %156, i32 %157, double %159)
  %160 = load i32, i32* %starty02, align 4
  %sub151 = sub nsw i32 %160, %call150
  store i32 %sub151, i32* %starty02, align 4
  %161 = load i32, i32* %endy02, align 4
  %162 = load i32, i32* %startx02, align 4
  %163 = load i32, i32* %endx02, align 4
  %164 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %tweight152 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 4
  %165 = load double, double* %tweight152, align 8
  %call153 = call i32 @wireesty(i32 %161, i32 %162, i32 %163, double %165)
  %166 = load i32, i32* %endy02, align 4
  %add154 = add nsw i32 %166, %call153
  store i32 %add154, i32* %endy02, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.142, %if.end.127
  %167 = load i32, i32* %startx02, align 4
  %168 = load i32, i32* %endx01, align 4
  %cmp156 = icmp sge i32 %167, %168
  br i1 %cmp156, label %if.then.167, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %if.end.155
  %169 = load i32, i32* %startx01, align 4
  %170 = load i32, i32* %endx02, align 4
  %cmp159 = icmp sge i32 %169, %170
  br i1 %cmp159, label %if.then.167, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.158
  %171 = load i32, i32* %starty02, align 4
  %172 = load i32, i32* %endy01, align 4
  %cmp162 = icmp sge i32 %171, %172
  br i1 %cmp162, label %if.then.167, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %lor.lhs.false.161
  %173 = load i32, i32* %starty01, align 4
  %174 = load i32, i32* %endy02, align 4
  %cmp165 = icmp sge i32 %173, %174
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %lor.lhs.false.164, %lor.lhs.false.161, %lor.lhs.false.158, %if.end.155
  br label %for.inc.385

if.end.168:                                       ; preds = %lor.lhs.false.164
  %175 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i32 0, i32 6
  %176 = load i32, i32* %numtiles, align 4
  %cmp169 = icmp eq i32 %176, 1
  br i1 %cmp169, label %land.lhs.true.171, label %if.else.208

land.lhs.true.171:                                ; preds = %if.end.168
  %177 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles172 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %177, i32 0, i32 6
  %178 = load i32, i32* %numtiles172, align 4
  %cmp173 = icmp eq i32 %178, 1
  br i1 %cmp173, label %if.then.175, label %if.else.208

if.then.175:                                      ; preds = %land.lhs.true.171
  %179 = load i32, i32* %startx01, align 4
  %180 = load i32, i32* %startx02, align 4
  %cmp176 = icmp sge i32 %179, %180
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %if.then.175
  %181 = load i32, i32* %startx01, align 4
  br label %cond.end.180

cond.false.179:                                   ; preds = %if.then.175
  %182 = load i32, i32* %startx02, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ %181, %cond.true.178 ], [ %182, %cond.false.179 ]
  store i32 %cond181, i32* %startx, align 4
  %183 = load i32, i32* %endx01, align 4
  %184 = load i32, i32* %endx02, align 4
  %cmp182 = icmp sle i32 %183, %184
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.end.180
  %185 = load i32, i32* %endx01, align 4
  br label %cond.end.186

cond.false.185:                                   ; preds = %cond.end.180
  %186 = load i32, i32* %endx02, align 4
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.184
  %cond187 = phi i32 [ %185, %cond.true.184 ], [ %186, %cond.false.185 ]
  store i32 %cond187, i32* %endx, align 4
  %187 = load i32, i32* %starty01, align 4
  %188 = load i32, i32* %starty02, align 4
  %cmp188 = icmp sge i32 %187, %188
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %cond.end.186
  %189 = load i32, i32* %starty01, align 4
  br label %cond.end.192

cond.false.191:                                   ; preds = %cond.end.186
  %190 = load i32, i32* %starty02, align 4
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.190
  %cond193 = phi i32 [ %189, %cond.true.190 ], [ %190, %cond.false.191 ]
  store i32 %cond193, i32* %starty, align 4
  %191 = load i32, i32* %endy01, align 4
  %192 = load i32, i32* %endy02, align 4
  %cmp194 = icmp sle i32 %191, %192
  br i1 %cmp194, label %cond.true.196, label %cond.false.197

cond.true.196:                                    ; preds = %cond.end.192
  %193 = load i32, i32* %endy01, align 4
  br label %cond.end.198

cond.false.197:                                   ; preds = %cond.end.192
  %194 = load i32, i32* %endy02, align 4
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.196
  %cond199 = phi i32 [ %193, %cond.true.196 ], [ %194, %cond.false.197 ]
  store i32 %cond199, i32* %endy, align 4
  %195 = load double, double* @lapFactor, align 8
  %196 = load i32, i32* %endy, align 4
  %197 = load i32, i32* %starty, align 4
  %sub200 = sub nsw i32 %196, %197
  %198 = load i32, i32* %endx, align 4
  %199 = load i32, i32* %startx, align 4
  %sub201 = sub nsw i32 %198, %199
  %mul202 = mul nsw i32 %sub200, %sub201
  %200 = load i32, i32* @offset, align 4
  %add203 = add nsw i32 %mul202, %200
  %conv204 = sitofp i32 %add203 to double
  %mul205 = fmul double %195, %conv204
  %conv206 = fptosi double %mul205 to i32
  %201 = load i32, i32* %value, align 4
  %add207 = add nsw i32 %201, %conv206
  store i32 %add207, i32* %value, align 4
  br label %if.end.384

if.else.208:                                      ; preds = %land.lhs.true.171, %if.end.168
  store i32 0, i32* %tempval, align 4
  %202 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 0
  %203 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %203, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.372, %if.else.208
  %204 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp210 = icmp ne %struct.tilebox* %204, null
  br i1 %cmp210, label %for.body.212, label %for.end.374

for.body.212:                                     ; preds = %for.cond.209
  %205 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oleft213 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 13
  %206 = load i32, i32* %oleft213, align 4
  %207 = load i32, i32* %oleft.addr, align 4
  %sub214 = sub nsw i32 %206, %207
  %conv215 = sitofp i32 %sub214 to double
  %208 = load double, double* %aspFactor.addr, align 8
  %div216 = fdiv double %conv215, %208
  store double %div216, double* %val, align 8
  %209 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter217 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %209, i32 0, i32 2
  %210 = load i32, i32* %xcenter217, align 4
  %211 = load double, double* %val, align 8
  %212 = load double, double* %val, align 8
  %conv218 = fptosi double %212 to i32
  %conv219 = sitofp i32 %conv218 to double
  %sub220 = fsub double %211, %conv219
  %cmp221 = fcmp oge double %sub220, 5.000000e-01
  br i1 %cmp221, label %cond.true.223, label %cond.false.226

cond.true.223:                                    ; preds = %for.body.212
  %213 = load double, double* %val, align 8
  %conv224 = fptosi double %213 to i32
  %add225 = add nsw i32 %conv224, 1
  br label %cond.end.228

cond.false.226:                                   ; preds = %for.body.212
  %214 = load double, double* %val, align 8
  %conv227 = fptosi double %214 to i32
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.226, %cond.true.223
  %cond229 = phi i32 [ %add225, %cond.true.223 ], [ %conv227, %cond.false.226 ]
  %add230 = add nsw i32 %210, %cond229
  %215 = load i32, i32* %Wdiv2.addr, align 4
  %sub231 = sub nsw i32 %add230, %215
  store i32 %sub231, i32* %startx1, align 4
  %216 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oright232 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %216, i32 0, i32 14
  %217 = load i32, i32* %oright232, align 4
  %218 = load i32, i32* %oleft.addr, align 4
  %sub233 = sub nsw i32 %217, %218
  %conv234 = sitofp i32 %sub233 to double
  %219 = load double, double* %aspFactor.addr, align 8
  %div235 = fdiv double %conv234, %219
  store double %div235, double* %val, align 8
  %220 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter236 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %220, i32 0, i32 2
  %221 = load i32, i32* %xcenter236, align 4
  %222 = load double, double* %val, align 8
  %223 = load double, double* %val, align 8
  %conv237 = fptosi double %223 to i32
  %conv238 = sitofp i32 %conv237 to double
  %sub239 = fsub double %222, %conv238
  %cmp240 = fcmp oge double %sub239, 5.000000e-01
  br i1 %cmp240, label %cond.true.242, label %cond.false.245

cond.true.242:                                    ; preds = %cond.end.228
  %224 = load double, double* %val, align 8
  %conv243 = fptosi double %224 to i32
  %add244 = add nsw i32 %conv243, 1
  br label %cond.end.247

cond.false.245:                                   ; preds = %cond.end.228
  %225 = load double, double* %val, align 8
  %conv246 = fptosi double %225 to i32
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.245, %cond.true.242
  %cond248 = phi i32 [ %add244, %cond.true.242 ], [ %conv246, %cond.false.245 ]
  %add249 = add nsw i32 %221, %cond248
  %226 = load i32, i32* %Wdiv2.addr, align 4
  %sub250 = sub nsw i32 %add249, %226
  store i32 %sub250, i32* %endx1, align 4
  %227 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %obottom251 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %227, i32 0, i32 15
  %228 = load i32, i32* %obottom251, align 4
  %229 = load i32, i32* %obottom.addr, align 4
  %sub252 = sub nsw i32 %228, %229
  %conv253 = sitofp i32 %sub252 to double
  %230 = load double, double* %aspFactor.addr, align 8
  %mul254 = fmul double %conv253, %230
  store double %mul254, double* %val, align 8
  %231 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter255 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %231, i32 0, i32 3
  %232 = load i32, i32* %ycenter255, align 4
  %233 = load double, double* %val, align 8
  %234 = load double, double* %val, align 8
  %conv256 = fptosi double %234 to i32
  %conv257 = sitofp i32 %conv256 to double
  %sub258 = fsub double %233, %conv257
  %cmp259 = fcmp oge double %sub258, 5.000000e-01
  br i1 %cmp259, label %cond.true.261, label %cond.false.264

cond.true.261:                                    ; preds = %cond.end.247
  %235 = load double, double* %val, align 8
  %conv262 = fptosi double %235 to i32
  %add263 = add nsw i32 %conv262, 1
  br label %cond.end.266

cond.false.264:                                   ; preds = %cond.end.247
  %236 = load double, double* %val, align 8
  %conv265 = fptosi double %236 to i32
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.264, %cond.true.261
  %cond267 = phi i32 [ %add263, %cond.true.261 ], [ %conv265, %cond.false.264 ]
  %add268 = add nsw i32 %232, %cond267
  %237 = load i32, i32* %Hdiv2.addr, align 4
  %sub269 = sub nsw i32 %add268, %237
  store i32 %sub269, i32* %starty1, align 4
  %238 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %otop270 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 16
  %239 = load i32, i32* %otop270, align 4
  %240 = load i32, i32* %obottom.addr, align 4
  %sub271 = sub nsw i32 %239, %240
  %conv272 = sitofp i32 %sub271 to double
  %241 = load double, double* %aspFactor.addr, align 8
  %mul273 = fmul double %conv272, %241
  store double %mul273, double* %val, align 8
  %242 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter274 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %242, i32 0, i32 3
  %243 = load i32, i32* %ycenter274, align 4
  %244 = load double, double* %val, align 8
  %245 = load double, double* %val, align 8
  %conv275 = fptosi double %245 to i32
  %conv276 = sitofp i32 %conv275 to double
  %sub277 = fsub double %244, %conv276
  %cmp278 = fcmp oge double %sub277, 5.000000e-01
  br i1 %cmp278, label %cond.true.280, label %cond.false.283

cond.true.280:                                    ; preds = %cond.end.266
  %246 = load double, double* %val, align 8
  %conv281 = fptosi double %246 to i32
  %add282 = add nsw i32 %conv281, 1
  br label %cond.end.285

cond.false.283:                                   ; preds = %cond.end.266
  %247 = load double, double* %val, align 8
  %conv284 = fptosi double %247 to i32
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.283, %cond.true.280
  %cond286 = phi i32 [ %add282, %cond.true.280 ], [ %conv284, %cond.false.283 ]
  %add287 = add nsw i32 %243, %cond286
  %248 = load i32, i32* %Hdiv2.addr, align 4
  %sub288 = sub nsw i32 %add287, %248
  store i32 %sub288, i32* %endy1, align 4
  %249 = load i32, i32* %startx1, align 4
  %250 = load i32, i32* %starty1, align 4
  %251 = load i32, i32* %endy1, align 4
  %252 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %lweight289 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %252, i32 0, i32 1
  %253 = load double, double* %lweight289, align 8
  %call290 = call i32 @wireestx(i32 %249, i32 %250, i32 %251, double %253)
  %254 = load i32, i32* %startx1, align 4
  %sub291 = sub nsw i32 %254, %call290
  store i32 %sub291, i32* %startx1, align 4
  %255 = load i32, i32* %endx1, align 4
  %256 = load i32, i32* %starty1, align 4
  %257 = load i32, i32* %endy1, align 4
  %258 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %rweight292 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %258, i32 0, i32 2
  %259 = load double, double* %rweight292, align 8
  %call293 = call i32 @wireestx(i32 %255, i32 %256, i32 %257, double %259)
  %260 = load i32, i32* %endx1, align 4
  %add294 = add nsw i32 %260, %call293
  store i32 %add294, i32* %endx1, align 4
  %261 = load i32, i32* %starty1, align 4
  %262 = load i32, i32* %startx1, align 4
  %263 = load i32, i32* %endx1, align 4
  %264 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bweight295 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %264, i32 0, i32 3
  %265 = load double, double* %bweight295, align 8
  %call296 = call i32 @wireesty(i32 %261, i32 %262, i32 %263, double %265)
  %266 = load i32, i32* %starty1, align 4
  %sub297 = sub nsw i32 %266, %call296
  store i32 %sub297, i32* %starty1, align 4
  %267 = load i32, i32* %endy1, align 4
  %268 = load i32, i32* %startx1, align 4
  %269 = load i32, i32* %endx1, align 4
  %270 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %tweight298 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %270, i32 0, i32 4
  %271 = load double, double* %tweight298, align 8
  %call299 = call i32 @wireesty(i32 %267, i32 %268, i32 %269, double %271)
  %272 = load i32, i32* %endy1, align 4
  %add300 = add nsw i32 %272, %call299
  store i32 %add300, i32* %endy1, align 4
  %273 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile301 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %273, i32 0, i32 0
  %274 = load %struct.tilebox*, %struct.tilebox** %nexttile301, align 8
  store %struct.tilebox* %274, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc, %cond.end.285
  %275 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp303 = icmp ne %struct.tilebox* %275, null
  br i1 %cmp303, label %for.body.305, label %for.end

for.body.305:                                     ; preds = %for.cond.302
  %276 = load i32, i32* %xcenter, align 4
  %277 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left306 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %277, i32 0, i32 9
  %278 = load i32, i32* %left306, align 4
  %add307 = add nsw i32 %276, %278
  store i32 %add307, i32* %startx2, align 4
  %279 = load i32, i32* %xcenter, align 4
  %280 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right308 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %280, i32 0, i32 10
  %281 = load i32, i32* %right308, align 4
  %add309 = add nsw i32 %279, %281
  store i32 %add309, i32* %endx2, align 4
  %282 = load i32, i32* %ycenter, align 4
  %283 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom310 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %283, i32 0, i32 11
  %284 = load i32, i32* %bottom310, align 4
  %add311 = add nsw i32 %282, %284
  store i32 %add311, i32* %starty2, align 4
  %285 = load i32, i32* %ycenter, align 4
  %286 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top312 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %286, i32 0, i32 12
  %287 = load i32, i32* %top312, align 4
  %add313 = add nsw i32 %285, %287
  store i32 %add313, i32* %endy2, align 4
  %288 = load i32, i32* %othercell, align 4
  %289 = load i32, i32* @numcells, align 4
  %cmp314 = icmp sle i32 %288, %289
  br i1 %cmp314, label %if.then.316, label %if.end.329

if.then.316:                                      ; preds = %for.body.305
  %290 = load i32, i32* %startx2, align 4
  %291 = load i32, i32* %starty2, align 4
  %292 = load i32, i32* %endy2, align 4
  %293 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %lweight317 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %293, i32 0, i32 1
  %294 = load double, double* %lweight317, align 8
  %call318 = call i32 @wireestx(i32 %290, i32 %291, i32 %292, double %294)
  %295 = load i32, i32* %startx2, align 4
  %sub319 = sub nsw i32 %295, %call318
  store i32 %sub319, i32* %startx2, align 4
  %296 = load i32, i32* %endx2, align 4
  %297 = load i32, i32* %starty2, align 4
  %298 = load i32, i32* %endy2, align 4
  %299 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %rweight320 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %299, i32 0, i32 2
  %300 = load double, double* %rweight320, align 8
  %call321 = call i32 @wireestx(i32 %296, i32 %297, i32 %298, double %300)
  %301 = load i32, i32* %endx2, align 4
  %add322 = add nsw i32 %301, %call321
  store i32 %add322, i32* %endx2, align 4
  %302 = load i32, i32* %starty2, align 4
  %303 = load i32, i32* %startx2, align 4
  %304 = load i32, i32* %endx2, align 4
  %305 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bweight323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %305, i32 0, i32 3
  %306 = load double, double* %bweight323, align 8
  %call324 = call i32 @wireesty(i32 %302, i32 %303, i32 %304, double %306)
  %307 = load i32, i32* %starty2, align 4
  %sub325 = sub nsw i32 %307, %call324
  store i32 %sub325, i32* %starty2, align 4
  %308 = load i32, i32* %endy2, align 4
  %309 = load i32, i32* %startx2, align 4
  %310 = load i32, i32* %endx2, align 4
  %311 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %tweight326 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %311, i32 0, i32 4
  %312 = load double, double* %tweight326, align 8
  %call327 = call i32 @wireesty(i32 %308, i32 %309, i32 %310, double %312)
  %313 = load i32, i32* %endy2, align 4
  %add328 = add nsw i32 %313, %call327
  store i32 %add328, i32* %endy2, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.316, %for.body.305
  %314 = load i32, i32* %startx2, align 4
  %315 = load i32, i32* %endx1, align 4
  %cmp330 = icmp sge i32 %314, %315
  br i1 %cmp330, label %if.then.341, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %if.end.329
  %316 = load i32, i32* %startx1, align 4
  %317 = load i32, i32* %endx2, align 4
  %cmp333 = icmp sge i32 %316, %317
  br i1 %cmp333, label %if.then.341, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %lor.lhs.false.332
  %318 = load i32, i32* %starty2, align 4
  %319 = load i32, i32* %endy1, align 4
  %cmp336 = icmp sge i32 %318, %319
  br i1 %cmp336, label %if.then.341, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %lor.lhs.false.335
  %320 = load i32, i32* %starty1, align 4
  %321 = load i32, i32* %endy2, align 4
  %cmp339 = icmp sge i32 %320, %321
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %lor.lhs.false.338, %lor.lhs.false.335, %lor.lhs.false.332, %if.end.329
  br label %for.inc

if.end.342:                                       ; preds = %lor.lhs.false.338
  %322 = load i32, i32* %startx1, align 4
  %323 = load i32, i32* %startx2, align 4
  %cmp343 = icmp sge i32 %322, %323
  br i1 %cmp343, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %if.end.342
  %324 = load i32, i32* %startx1, align 4
  br label %cond.end.347

cond.false.346:                                   ; preds = %if.end.342
  %325 = load i32, i32* %startx2, align 4
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.346, %cond.true.345
  %cond348 = phi i32 [ %324, %cond.true.345 ], [ %325, %cond.false.346 ]
  store i32 %cond348, i32* %startx, align 4
  %326 = load i32, i32* %endx1, align 4
  %327 = load i32, i32* %endx2, align 4
  %cmp349 = icmp sle i32 %326, %327
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.end.347
  %328 = load i32, i32* %endx1, align 4
  br label %cond.end.353

cond.false.352:                                   ; preds = %cond.end.347
  %329 = load i32, i32* %endx2, align 4
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.351
  %cond354 = phi i32 [ %328, %cond.true.351 ], [ %329, %cond.false.352 ]
  store i32 %cond354, i32* %endx, align 4
  %330 = load i32, i32* %starty1, align 4
  %331 = load i32, i32* %starty2, align 4
  %cmp355 = icmp sge i32 %330, %331
  br i1 %cmp355, label %cond.true.357, label %cond.false.358

cond.true.357:                                    ; preds = %cond.end.353
  %332 = load i32, i32* %starty1, align 4
  br label %cond.end.359

cond.false.358:                                   ; preds = %cond.end.353
  %333 = load i32, i32* %starty2, align 4
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.357
  %cond360 = phi i32 [ %332, %cond.true.357 ], [ %333, %cond.false.358 ]
  store i32 %cond360, i32* %starty, align 4
  %334 = load i32, i32* %endy1, align 4
  %335 = load i32, i32* %endy2, align 4
  %cmp361 = icmp sle i32 %334, %335
  br i1 %cmp361, label %cond.true.363, label %cond.false.364

cond.true.363:                                    ; preds = %cond.end.359
  %336 = load i32, i32* %endy1, align 4
  br label %cond.end.365

cond.false.364:                                   ; preds = %cond.end.359
  %337 = load i32, i32* %endy2, align 4
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.364, %cond.true.363
  %cond366 = phi i32 [ %336, %cond.true.363 ], [ %337, %cond.false.364 ]
  store i32 %cond366, i32* %endy, align 4
  %338 = load i32, i32* %endy, align 4
  %339 = load i32, i32* %starty, align 4
  %sub367 = sub nsw i32 %338, %339
  %340 = load i32, i32* %endx, align 4
  %341 = load i32, i32* %startx, align 4
  %sub368 = sub nsw i32 %340, %341
  %mul369 = mul nsw i32 %sub367, %sub368
  %342 = load i32, i32* %tempval, align 4
  %add370 = add nsw i32 %342, %mul369
  store i32 %add370, i32* %tempval, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.365, %if.then.341
  %343 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile371 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %343, i32 0, i32 0
  %344 = load %struct.tilebox*, %struct.tilebox** %nexttile371, align 8
  store %struct.tilebox* %344, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.302

for.end:                                          ; preds = %for.cond.302
  br label %for.inc.372

for.inc.372:                                      ; preds = %for.end
  %345 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile373 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %345, i32 0, i32 0
  %346 = load %struct.tilebox*, %struct.tilebox** %nexttile373, align 8
  store %struct.tilebox* %346, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.209

for.end.374:                                      ; preds = %for.cond.209
  %347 = load i32, i32* %tempval, align 4
  %cmp375 = icmp ne i32 %347, 0
  br i1 %cmp375, label %if.then.377, label %if.end.383

if.then.377:                                      ; preds = %for.end.374
  %348 = load double, double* @lapFactor, align 8
  %349 = load i32, i32* %tempval, align 4
  %350 = load i32, i32* @offset, align 4
  %add378 = add nsw i32 %349, %350
  %conv379 = sitofp i32 %add378 to double
  %mul380 = fmul double %348, %conv379
  %conv381 = fptosi double %mul380 to i32
  %351 = load i32, i32* %value, align 4
  %add382 = add nsw i32 %351, %conv381
  store i32 %add382, i32* %value, align 4
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.377, %for.end.374
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %cond.end.198
  br label %for.inc.385

for.inc.385:                                      ; preds = %if.end.384, %if.then.167, %if.then.126
  %352 = load i32, i32* %k, align 4
  %inc = add nsw i32 %352, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.117

for.end.386:                                      ; preds = %for.cond.117
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.end.386, %if.then.111
  %353 = load i32, i32* %j, align 4
  %inc388 = add nsw i32 %353, 1
  store i32 %inc388, i32* %j, align 4
  br label %for.cond.96

for.end.389:                                      ; preds = %for.cond.96
  br label %for.inc.390

for.inc.390:                                      ; preds = %for.end.389, %if.then.94
  %354 = load i32, i32* %i, align 4
  %inc391 = add nsw i32 %354, 1
  store i32 %inc391, i32* %i, align 4
  br label %for.cond

for.end.392:                                      ; preds = %for.cond
  %355 = load i32, i32* %value, align 4
  ret i32 %355
}

declare i32 @wireestx(i32, i32, i32, double) #1

declare i32 @wireesty(i32, i32, i32, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
