; ModuleID = './MultiSource.Benchmarks.Prolangs-C/203.TimberWolfMC.goverlapx.bc'
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
define i32 @goverlapx(i32 %cell, i32 %oleft, i32 %obottom, i32 %Wdiv2, i32 %Hdiv2, double %aspFactor) #0 {
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
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 5
  %36 = load i32, i32* %lborder, align 4
  %37 = load i32, i32* %startx01, align 4
  %sub33 = sub nsw i32 %37, %36
  store i32 %sub33, i32* %startx01, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 6
  %39 = load i32, i32* %rborder, align 4
  %40 = load i32, i32* %endx01, align 4
  %add34 = add nsw i32 %40, %39
  store i32 %add34, i32* %endx01, align 4
  %41 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 7
  %42 = load i32, i32* %bborder, align 4
  %43 = load i32, i32* %starty01, align 4
  %sub35 = sub nsw i32 %43, %42
  store i32 %sub35, i32* %starty01, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 8
  %45 = load i32, i32* %tborder, align 4
  %46 = load i32, i32* %endy01, align 4
  %add36 = add nsw i32 %46, %45
  store i32 %add36, i32* %endy01, align 4
  %47 = load i32, i32* %startx01, align 4
  %48 = load i32, i32* @binOffsetX, align 4
  %sub37 = sub nsw i32 %47, %48
  %49 = load i32, i32* @binWidthX, align 4
  %div38 = sdiv i32 %sub37, %49
  store i32 %div38, i32* %lowBinX, align 4
  %50 = load i32, i32* %lowBinX, align 4
  %cmp39 = icmp slt i32 %50, 1
  br i1 %cmp39, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.29
  store i32 1, i32* %lowBinX, align 4
  br label %if.end.44

if.else:                                          ; preds = %cond.end.29
  %51 = load i32, i32* %lowBinX, align 4
  %52 = load i32, i32* @numBinsX, align 4
  %cmp41 = icmp sgt i32 %51, %52
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else
  %53 = load i32, i32* @numBinsX, align 4
  store i32 %53, i32* %lowBinX, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.then
  %54 = load i32, i32* %endx01, align 4
  %55 = load i32, i32* @binOffsetX, align 4
  %sub45 = sub nsw i32 %54, %55
  %56 = load i32, i32* @binWidthX, align 4
  %div46 = sdiv i32 %sub45, %56
  store i32 %div46, i32* %highBinX, align 4
  %57 = load i32, i32* %highBinX, align 4
  %58 = load i32, i32* @numBinsX, align 4
  %cmp47 = icmp sgt i32 %57, %58
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.44
  %59 = load i32, i32* @numBinsX, align 4
  store i32 %59, i32* %highBinX, align 4
  br label %if.end.55

if.else.50:                                       ; preds = %if.end.44
  %60 = load i32, i32* %highBinX, align 4
  %cmp51 = icmp slt i32 %60, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.50
  store i32 1, i32* %highBinX, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.49
  %61 = load i32, i32* %starty01, align 4
  %62 = load i32, i32* @binOffsetY, align 4
  %sub56 = sub nsw i32 %61, %62
  %63 = load i32, i32* @binWidthY, align 4
  %div57 = sdiv i32 %sub56, %63
  store i32 %div57, i32* %lowBinY, align 4
  %64 = load i32, i32* %lowBinY, align 4
  %cmp58 = icmp slt i32 %64, 1
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.55
  store i32 1, i32* %lowBinY, align 4
  br label %if.end.66

if.else.61:                                       ; preds = %if.end.55
  %65 = load i32, i32* %lowBinY, align 4
  %66 = load i32, i32* @numBinsY, align 4
  %cmp62 = icmp sgt i32 %65, %66
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.61
  %67 = load i32, i32* @numBinsY, align 4
  store i32 %67, i32* %lowBinY, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.else.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.60
  %68 = load i32, i32* %endy01, align 4
  %69 = load i32, i32* @binOffsetY, align 4
  %sub67 = sub nsw i32 %68, %69
  %70 = load i32, i32* @binWidthY, align 4
  %div68 = sdiv i32 %sub67, %70
  store i32 %div68, i32* %highBinY, align 4
  %71 = load i32, i32* %highBinY, align 4
  %72 = load i32, i32* @numBinsY, align 4
  %cmp69 = icmp sgt i32 %71, %72
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.66
  %73 = load i32, i32* @numBinsY, align 4
  store i32 %73, i32* %highBinY, align 4
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.66
  %74 = load i32, i32* %highBinY, align 4
  %cmp73 = icmp slt i32 %74, 1
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.else.72
  store i32 1, i32* %highBinY, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.else.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.71
  %75 = load i32, i32* %lowBinX, align 4
  %76 = load i32, i32* %highBinX, align 4
  %cmp78 = icmp eq i32 %75, %76
  br i1 %cmp78, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %if.end.77
  %77 = load i32, i32* %lowBinY, align 4
  %78 = load i32, i32* %highBinY, align 4
  %cmp80 = icmp eq i32 %77, %78
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %land.lhs.true
  %79 = load i32, i32* %lowBinX, align 4
  store i32 %79, i32* @binX, align 4
  %80 = load i32, i32* %lowBinY, align 4
  store i32 %80, i32* @binY, align 4
  br label %if.end.84

if.else.83:                                       ; preds = %land.lhs.true, %if.end.77
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.375, %if.end.84
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %highBinX, align 4
  %cmp85 = icmp sle i32 %81, %82
  br i1 %cmp85, label %for.body, label %for.end.377

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %i, align 4
  %cmp87 = icmp eq i32 %83, 0
  br i1 %cmp87, label %if.end.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %lowBinX, align 4
  %cmp89 = icmp sge i32 %84, %85
  br i1 %cmp89, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false
  br label %for.inc.375

if.end.92:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.372, %if.end.92
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* %highBinY, align 4
  %cmp94 = icmp sle i32 %86, %87
  br i1 %cmp94, label %for.body.96, label %for.end.374

for.body.96:                                      ; preds = %for.cond.93
  %88 = load i32, i32* %i, align 4
  %cmp97 = icmp eq i32 %88, 0
  br i1 %cmp97, label %land.lhs.true.99, label %lor.lhs.false.102

land.lhs.true.99:                                 ; preds = %for.body.96
  %89 = load i32, i32* %j, align 4
  %cmp100 = icmp eq i32 %89, 0
  br i1 %cmp100, label %if.end.109, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.99, %for.body.96
  %90 = load i32, i32* %i, align 4
  %cmp103 = icmp sgt i32 %90, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.then.108

land.lhs.true.105:                                ; preds = %lor.lhs.false.102
  %91 = load i32, i32* %j, align 4
  %92 = load i32, i32* %lowBinY, align 4
  %cmp106 = icmp sge i32 %91, %92
  br i1 %cmp106, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.102
  br label %for.inc.372

if.end.109:                                       ; preds = %land.lhs.true.105, %land.lhs.true.99
  %93 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %94 to i64
  %95 = load i32***, i32**** @blockarray, align 8
  %arrayidx112 = getelementptr inbounds i32**, i32*** %95, i64 %idxprom111
  %96 = load i32**, i32*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %96, i64 %idxprom110
  %97 = load i32*, i32** %arrayidx113, align 8
  store i32* %97, i32** %occuptr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.370, %if.end.109
  %98 = load i32, i32* %k, align 4
  %99 = load i32*, i32** %occuptr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp sle i32 %98, %100
  br i1 %cmp116, label %for.body.118, label %for.end.371

for.body.118:                                     ; preds = %for.cond.114
  %101 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %101 to i64
  %102 = load i32*, i32** %occuptr, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %102, i64 %idxprom119
  %103 = load i32, i32* %arrayidx120, align 4
  store i32 %103, i32* %othercell, align 4
  %104 = load i32, i32* %othercell, align 4
  %105 = load i32, i32* %cell.addr, align 4
  %cmp121 = icmp eq i32 %104, %105
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.118
  br label %for.inc.370

if.end.124:                                       ; preds = %for.body.118
  %106 = load i32, i32* %othercell, align 4
  %idxprom125 = sext i32 %106 to i64
  %107 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx126 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %107, i64 %idxprom125
  %108 = load %struct.cellbox*, %struct.cellbox** %arrayidx126, align 8
  store %struct.cellbox* %108, %struct.cellbox** %cellptr2, align 8
  %109 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %orient127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 5
  %110 = load i32, i32* %orient127, align 4
  %idxprom128 = sext i32 %110 to i64
  %111 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %config129 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %111, i32 0, i32 21
  %arrayidx130 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config129, i32 0, i64 %idxprom128
  %112 = load %struct.tilebox*, %struct.tilebox** %arrayidx130, align 8
  store %struct.tilebox* %112, %struct.tilebox** %tileptr02, align 8
  %113 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %xcenter131 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 2
  %114 = load i32, i32* %xcenter131, align 4
  store i32 %114, i32* %xcenter, align 4
  %115 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %ycenter132 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %115, i32 0, i32 3
  %116 = load i32, i32* %ycenter132, align 4
  store i32 %116, i32* %ycenter, align 4
  %117 = load i32, i32* %xcenter, align 4
  %118 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 9
  %119 = load i32, i32* %left, align 4
  %add133 = add nsw i32 %117, %119
  store i32 %add133, i32* %startx02, align 4
  %120 = load i32, i32* %xcenter, align 4
  %121 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %121, i32 0, i32 10
  %122 = load i32, i32* %right, align 4
  %add134 = add nsw i32 %120, %122
  store i32 %add134, i32* %endx02, align 4
  %123 = load i32, i32* %ycenter, align 4
  %124 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 11
  %125 = load i32, i32* %bottom, align 4
  %add135 = add nsw i32 %123, %125
  store i32 %add135, i32* %starty02, align 4
  %126 = load i32, i32* %ycenter, align 4
  %127 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i32 0, i32 12
  %128 = load i32, i32* %top, align 4
  %add136 = add nsw i32 %126, %128
  store i32 %add136, i32* %endy02, align 4
  %129 = load i32, i32* %othercell, align 4
  %130 = load i32, i32* @numcells, align 4
  %cmp137 = icmp sle i32 %129, %130
  br i1 %cmp137, label %if.then.139, label %if.end.148

if.then.139:                                      ; preds = %if.end.124
  %131 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %lborder140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %131, i32 0, i32 5
  %132 = load i32, i32* %lborder140, align 4
  %133 = load i32, i32* %startx02, align 4
  %sub141 = sub nsw i32 %133, %132
  store i32 %sub141, i32* %startx02, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %rborder142 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 6
  %135 = load i32, i32* %rborder142, align 4
  %136 = load i32, i32* %endx02, align 4
  %add143 = add nsw i32 %136, %135
  store i32 %add143, i32* %endx02, align 4
  %137 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %bborder144 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %137, i32 0, i32 7
  %138 = load i32, i32* %bborder144, align 4
  %139 = load i32, i32* %starty02, align 4
  %sub145 = sub nsw i32 %139, %138
  store i32 %sub145, i32* %starty02, align 4
  %140 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %tborder146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 8
  %141 = load i32, i32* %tborder146, align 4
  %142 = load i32, i32* %endy02, align 4
  %add147 = add nsw i32 %142, %141
  store i32 %add147, i32* %endy02, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.139, %if.end.124
  %143 = load i32, i32* %startx02, align 4
  %144 = load i32, i32* %endx01, align 4
  %cmp149 = icmp sge i32 %143, %144
  br i1 %cmp149, label %if.then.160, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.148
  %145 = load i32, i32* %startx01, align 4
  %146 = load i32, i32* %endx02, align 4
  %cmp152 = icmp sge i32 %145, %146
  br i1 %cmp152, label %if.then.160, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.151
  %147 = load i32, i32* %starty02, align 4
  %148 = load i32, i32* %endy01, align 4
  %cmp155 = icmp sge i32 %147, %148
  br i1 %cmp155, label %if.then.160, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.154
  %149 = load i32, i32* %starty01, align 4
  %150 = load i32, i32* %endy02, align 4
  %cmp158 = icmp sge i32 %149, %150
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %lor.lhs.false.157, %lor.lhs.false.154, %lor.lhs.false.151, %if.end.148
  br label %for.inc.370

if.end.161:                                       ; preds = %lor.lhs.false.157
  %151 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 6
  %152 = load i32, i32* %numtiles, align 4
  %cmp162 = icmp eq i32 %152, 1
  br i1 %cmp162, label %land.lhs.true.164, label %if.else.201

land.lhs.true.164:                                ; preds = %if.end.161
  %153 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles165 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %153, i32 0, i32 6
  %154 = load i32, i32* %numtiles165, align 4
  %cmp166 = icmp eq i32 %154, 1
  br i1 %cmp166, label %if.then.168, label %if.else.201

if.then.168:                                      ; preds = %land.lhs.true.164
  %155 = load i32, i32* %startx01, align 4
  %156 = load i32, i32* %startx02, align 4
  %cmp169 = icmp sge i32 %155, %156
  br i1 %cmp169, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %if.then.168
  %157 = load i32, i32* %startx01, align 4
  br label %cond.end.173

cond.false.172:                                   ; preds = %if.then.168
  %158 = load i32, i32* %startx02, align 4
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.171
  %cond174 = phi i32 [ %157, %cond.true.171 ], [ %158, %cond.false.172 ]
  store i32 %cond174, i32* %startx, align 4
  %159 = load i32, i32* %endx01, align 4
  %160 = load i32, i32* %endx02, align 4
  %cmp175 = icmp sle i32 %159, %160
  br i1 %cmp175, label %cond.true.177, label %cond.false.178

cond.true.177:                                    ; preds = %cond.end.173
  %161 = load i32, i32* %endx01, align 4
  br label %cond.end.179

cond.false.178:                                   ; preds = %cond.end.173
  %162 = load i32, i32* %endx02, align 4
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.178, %cond.true.177
  %cond180 = phi i32 [ %161, %cond.true.177 ], [ %162, %cond.false.178 ]
  store i32 %cond180, i32* %endx, align 4
  %163 = load i32, i32* %starty01, align 4
  %164 = load i32, i32* %starty02, align 4
  %cmp181 = icmp sge i32 %163, %164
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %cond.end.179
  %165 = load i32, i32* %starty01, align 4
  br label %cond.end.185

cond.false.184:                                   ; preds = %cond.end.179
  %166 = load i32, i32* %starty02, align 4
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.184, %cond.true.183
  %cond186 = phi i32 [ %165, %cond.true.183 ], [ %166, %cond.false.184 ]
  store i32 %cond186, i32* %starty, align 4
  %167 = load i32, i32* %endy01, align 4
  %168 = load i32, i32* %endy02, align 4
  %cmp187 = icmp sle i32 %167, %168
  br i1 %cmp187, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %cond.end.185
  %169 = load i32, i32* %endy01, align 4
  br label %cond.end.191

cond.false.190:                                   ; preds = %cond.end.185
  %170 = load i32, i32* %endy02, align 4
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.189
  %cond192 = phi i32 [ %169, %cond.true.189 ], [ %170, %cond.false.190 ]
  store i32 %cond192, i32* %endy, align 4
  %171 = load double, double* @lapFactor, align 8
  %172 = load i32, i32* %endy, align 4
  %173 = load i32, i32* %starty, align 4
  %sub193 = sub nsw i32 %172, %173
  %174 = load i32, i32* %endx, align 4
  %175 = load i32, i32* %startx, align 4
  %sub194 = sub nsw i32 %174, %175
  %mul195 = mul nsw i32 %sub193, %sub194
  %176 = load i32, i32* @offset, align 4
  %add196 = add nsw i32 %mul195, %176
  %conv197 = sitofp i32 %add196 to double
  %mul198 = fmul double %171, %conv197
  %conv199 = fptosi double %mul198 to i32
  %177 = load i32, i32* %value, align 4
  %add200 = add nsw i32 %177, %conv199
  store i32 %add200, i32* %value, align 4
  br label %if.end.369

if.else.201:                                      ; preds = %land.lhs.true.164, %if.end.161
  store i32 0, i32* %tempval, align 4
  %178 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %178, i32 0, i32 0
  %179 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %179, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.357, %if.else.201
  %180 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp203 = icmp ne %struct.tilebox* %180, null
  br i1 %cmp203, label %for.body.205, label %for.end.359

for.body.205:                                     ; preds = %for.cond.202
  %181 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oleft206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 13
  %182 = load i32, i32* %oleft206, align 4
  %183 = load i32, i32* %oleft.addr, align 4
  %sub207 = sub nsw i32 %182, %183
  %conv208 = sitofp i32 %sub207 to double
  %184 = load double, double* %aspFactor.addr, align 8
  %div209 = fdiv double %conv208, %184
  store double %div209, double* %val, align 8
  %185 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter210 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %185, i32 0, i32 2
  %186 = load i32, i32* %xcenter210, align 4
  %187 = load double, double* %val, align 8
  %188 = load double, double* %val, align 8
  %conv211 = fptosi double %188 to i32
  %conv212 = sitofp i32 %conv211 to double
  %sub213 = fsub double %187, %conv212
  %cmp214 = fcmp oge double %sub213, 5.000000e-01
  br i1 %cmp214, label %cond.true.216, label %cond.false.219

cond.true.216:                                    ; preds = %for.body.205
  %189 = load double, double* %val, align 8
  %conv217 = fptosi double %189 to i32
  %add218 = add nsw i32 %conv217, 1
  br label %cond.end.221

cond.false.219:                                   ; preds = %for.body.205
  %190 = load double, double* %val, align 8
  %conv220 = fptosi double %190 to i32
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.216
  %cond222 = phi i32 [ %add218, %cond.true.216 ], [ %conv220, %cond.false.219 ]
  %add223 = add nsw i32 %186, %cond222
  %191 = load i32, i32* %Wdiv2.addr, align 4
  %sub224 = sub nsw i32 %add223, %191
  store i32 %sub224, i32* %startx1, align 4
  %192 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %oright225 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %192, i32 0, i32 14
  %193 = load i32, i32* %oright225, align 4
  %194 = load i32, i32* %oleft.addr, align 4
  %sub226 = sub nsw i32 %193, %194
  %conv227 = sitofp i32 %sub226 to double
  %195 = load double, double* %aspFactor.addr, align 8
  %div228 = fdiv double %conv227, %195
  store double %div228, double* %val, align 8
  %196 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %xcenter229 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 2
  %197 = load i32, i32* %xcenter229, align 4
  %198 = load double, double* %val, align 8
  %199 = load double, double* %val, align 8
  %conv230 = fptosi double %199 to i32
  %conv231 = sitofp i32 %conv230 to double
  %sub232 = fsub double %198, %conv231
  %cmp233 = fcmp oge double %sub232, 5.000000e-01
  br i1 %cmp233, label %cond.true.235, label %cond.false.238

cond.true.235:                                    ; preds = %cond.end.221
  %200 = load double, double* %val, align 8
  %conv236 = fptosi double %200 to i32
  %add237 = add nsw i32 %conv236, 1
  br label %cond.end.240

cond.false.238:                                   ; preds = %cond.end.221
  %201 = load double, double* %val, align 8
  %conv239 = fptosi double %201 to i32
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.238, %cond.true.235
  %cond241 = phi i32 [ %add237, %cond.true.235 ], [ %conv239, %cond.false.238 ]
  %add242 = add nsw i32 %197, %cond241
  %202 = load i32, i32* %Wdiv2.addr, align 4
  %sub243 = sub nsw i32 %add242, %202
  store i32 %sub243, i32* %endx1, align 4
  %203 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %obottom244 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 15
  %204 = load i32, i32* %obottom244, align 4
  %205 = load i32, i32* %obottom.addr, align 4
  %sub245 = sub nsw i32 %204, %205
  %conv246 = sitofp i32 %sub245 to double
  %206 = load double, double* %aspFactor.addr, align 8
  %mul247 = fmul double %conv246, %206
  store double %mul247, double* %val, align 8
  %207 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter248 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %207, i32 0, i32 3
  %208 = load i32, i32* %ycenter248, align 4
  %209 = load double, double* %val, align 8
  %210 = load double, double* %val, align 8
  %conv249 = fptosi double %210 to i32
  %conv250 = sitofp i32 %conv249 to double
  %sub251 = fsub double %209, %conv250
  %cmp252 = fcmp oge double %sub251, 5.000000e-01
  br i1 %cmp252, label %cond.true.254, label %cond.false.257

cond.true.254:                                    ; preds = %cond.end.240
  %211 = load double, double* %val, align 8
  %conv255 = fptosi double %211 to i32
  %add256 = add nsw i32 %conv255, 1
  br label %cond.end.259

cond.false.257:                                   ; preds = %cond.end.240
  %212 = load double, double* %val, align 8
  %conv258 = fptosi double %212 to i32
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.257, %cond.true.254
  %cond260 = phi i32 [ %add256, %cond.true.254 ], [ %conv258, %cond.false.257 ]
  %add261 = add nsw i32 %208, %cond260
  %213 = load i32, i32* %Hdiv2.addr, align 4
  %sub262 = sub nsw i32 %add261, %213
  store i32 %sub262, i32* %starty1, align 4
  %214 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %otop263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i32 0, i32 16
  %215 = load i32, i32* %otop263, align 4
  %216 = load i32, i32* %obottom.addr, align 4
  %sub264 = sub nsw i32 %215, %216
  %conv265 = sitofp i32 %sub264 to double
  %217 = load double, double* %aspFactor.addr, align 8
  %mul266 = fmul double %conv265, %217
  store double %mul266, double* %val, align 8
  %218 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %ycenter267 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %218, i32 0, i32 3
  %219 = load i32, i32* %ycenter267, align 4
  %220 = load double, double* %val, align 8
  %221 = load double, double* %val, align 8
  %conv268 = fptosi double %221 to i32
  %conv269 = sitofp i32 %conv268 to double
  %sub270 = fsub double %220, %conv269
  %cmp271 = fcmp oge double %sub270, 5.000000e-01
  br i1 %cmp271, label %cond.true.273, label %cond.false.276

cond.true.273:                                    ; preds = %cond.end.259
  %222 = load double, double* %val, align 8
  %conv274 = fptosi double %222 to i32
  %add275 = add nsw i32 %conv274, 1
  br label %cond.end.278

cond.false.276:                                   ; preds = %cond.end.259
  %223 = load double, double* %val, align 8
  %conv277 = fptosi double %223 to i32
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.276, %cond.true.273
  %cond279 = phi i32 [ %add275, %cond.true.273 ], [ %conv277, %cond.false.276 ]
  %add280 = add nsw i32 %219, %cond279
  %224 = load i32, i32* %Hdiv2.addr, align 4
  %sub281 = sub nsw i32 %add280, %224
  store i32 %sub281, i32* %endy1, align 4
  %225 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %lborder282 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %225, i32 0, i32 5
  %226 = load i32, i32* %lborder282, align 4
  %227 = load i32, i32* %startx1, align 4
  %sub283 = sub nsw i32 %227, %226
  store i32 %sub283, i32* %startx1, align 4
  %228 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %rborder284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %228, i32 0, i32 6
  %229 = load i32, i32* %rborder284, align 4
  %230 = load i32, i32* %endx1, align 4
  %add285 = add nsw i32 %230, %229
  store i32 %add285, i32* %endx1, align 4
  %231 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bborder286 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %231, i32 0, i32 7
  %232 = load i32, i32* %bborder286, align 4
  %233 = load i32, i32* %starty1, align 4
  %sub287 = sub nsw i32 %233, %232
  store i32 %sub287, i32* %starty1, align 4
  %234 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %tborder288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 8
  %235 = load i32, i32* %tborder288, align 4
  %236 = load i32, i32* %endy1, align 4
  %add289 = add nsw i32 %236, %235
  store i32 %add289, i32* %endy1, align 4
  %237 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile290 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %237, i32 0, i32 0
  %238 = load %struct.tilebox*, %struct.tilebox** %nexttile290, align 8
  store %struct.tilebox* %238, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc, %cond.end.278
  %239 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp292 = icmp ne %struct.tilebox* %239, null
  br i1 %cmp292, label %for.body.294, label %for.end

for.body.294:                                     ; preds = %for.cond.291
  %240 = load i32, i32* %xcenter, align 4
  %241 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left295 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 9
  %242 = load i32, i32* %left295, align 4
  %add296 = add nsw i32 %240, %242
  store i32 %add296, i32* %startx2, align 4
  %243 = load i32, i32* %xcenter, align 4
  %244 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right297 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %244, i32 0, i32 10
  %245 = load i32, i32* %right297, align 4
  %add298 = add nsw i32 %243, %245
  store i32 %add298, i32* %endx2, align 4
  %246 = load i32, i32* %ycenter, align 4
  %247 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom299 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i32 0, i32 11
  %248 = load i32, i32* %bottom299, align 4
  %add300 = add nsw i32 %246, %248
  store i32 %add300, i32* %starty2, align 4
  %249 = load i32, i32* %ycenter, align 4
  %250 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top301 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %250, i32 0, i32 12
  %251 = load i32, i32* %top301, align 4
  %add302 = add nsw i32 %249, %251
  store i32 %add302, i32* %endy2, align 4
  %252 = load i32, i32* %othercell, align 4
  %253 = load i32, i32* @numcells, align 4
  %cmp303 = icmp sle i32 %252, %253
  br i1 %cmp303, label %if.then.305, label %if.end.314

if.then.305:                                      ; preds = %for.body.294
  %254 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %lborder306 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %254, i32 0, i32 5
  %255 = load i32, i32* %lborder306, align 4
  %256 = load i32, i32* %startx2, align 4
  %sub307 = sub nsw i32 %256, %255
  store i32 %sub307, i32* %startx2, align 4
  %257 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %rborder308 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %257, i32 0, i32 6
  %258 = load i32, i32* %rborder308, align 4
  %259 = load i32, i32* %endx2, align 4
  %add309 = add nsw i32 %259, %258
  store i32 %add309, i32* %endx2, align 4
  %260 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bborder310 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %260, i32 0, i32 7
  %261 = load i32, i32* %bborder310, align 4
  %262 = load i32, i32* %starty2, align 4
  %sub311 = sub nsw i32 %262, %261
  store i32 %sub311, i32* %starty2, align 4
  %263 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %tborder312 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %263, i32 0, i32 8
  %264 = load i32, i32* %tborder312, align 4
  %265 = load i32, i32* %endy2, align 4
  %add313 = add nsw i32 %265, %264
  store i32 %add313, i32* %endy2, align 4
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.305, %for.body.294
  %266 = load i32, i32* %startx2, align 4
  %267 = load i32, i32* %endx1, align 4
  %cmp315 = icmp sge i32 %266, %267
  br i1 %cmp315, label %if.then.326, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %if.end.314
  %268 = load i32, i32* %startx1, align 4
  %269 = load i32, i32* %endx2, align 4
  %cmp318 = icmp sge i32 %268, %269
  br i1 %cmp318, label %if.then.326, label %lor.lhs.false.320

lor.lhs.false.320:                                ; preds = %lor.lhs.false.317
  %270 = load i32, i32* %starty2, align 4
  %271 = load i32, i32* %endy1, align 4
  %cmp321 = icmp sge i32 %270, %271
  br i1 %cmp321, label %if.then.326, label %lor.lhs.false.323

lor.lhs.false.323:                                ; preds = %lor.lhs.false.320
  %272 = load i32, i32* %starty1, align 4
  %273 = load i32, i32* %endy2, align 4
  %cmp324 = icmp sge i32 %272, %273
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %lor.lhs.false.323, %lor.lhs.false.320, %lor.lhs.false.317, %if.end.314
  br label %for.inc

if.end.327:                                       ; preds = %lor.lhs.false.323
  %274 = load i32, i32* %startx1, align 4
  %275 = load i32, i32* %startx2, align 4
  %cmp328 = icmp sge i32 %274, %275
  br i1 %cmp328, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %if.end.327
  %276 = load i32, i32* %startx1, align 4
  br label %cond.end.332

cond.false.331:                                   ; preds = %if.end.327
  %277 = load i32, i32* %startx2, align 4
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.331, %cond.true.330
  %cond333 = phi i32 [ %276, %cond.true.330 ], [ %277, %cond.false.331 ]
  store i32 %cond333, i32* %startx, align 4
  %278 = load i32, i32* %endx1, align 4
  %279 = load i32, i32* %endx2, align 4
  %cmp334 = icmp sle i32 %278, %279
  br i1 %cmp334, label %cond.true.336, label %cond.false.337

cond.true.336:                                    ; preds = %cond.end.332
  %280 = load i32, i32* %endx1, align 4
  br label %cond.end.338

cond.false.337:                                   ; preds = %cond.end.332
  %281 = load i32, i32* %endx2, align 4
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.337, %cond.true.336
  %cond339 = phi i32 [ %280, %cond.true.336 ], [ %281, %cond.false.337 ]
  store i32 %cond339, i32* %endx, align 4
  %282 = load i32, i32* %starty1, align 4
  %283 = load i32, i32* %starty2, align 4
  %cmp340 = icmp sge i32 %282, %283
  br i1 %cmp340, label %cond.true.342, label %cond.false.343

cond.true.342:                                    ; preds = %cond.end.338
  %284 = load i32, i32* %starty1, align 4
  br label %cond.end.344

cond.false.343:                                   ; preds = %cond.end.338
  %285 = load i32, i32* %starty2, align 4
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.343, %cond.true.342
  %cond345 = phi i32 [ %284, %cond.true.342 ], [ %285, %cond.false.343 ]
  store i32 %cond345, i32* %starty, align 4
  %286 = load i32, i32* %endy1, align 4
  %287 = load i32, i32* %endy2, align 4
  %cmp346 = icmp sle i32 %286, %287
  br i1 %cmp346, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %cond.end.344
  %288 = load i32, i32* %endy1, align 4
  br label %cond.end.350

cond.false.349:                                   ; preds = %cond.end.344
  %289 = load i32, i32* %endy2, align 4
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.349, %cond.true.348
  %cond351 = phi i32 [ %288, %cond.true.348 ], [ %289, %cond.false.349 ]
  store i32 %cond351, i32* %endy, align 4
  %290 = load i32, i32* %endy, align 4
  %291 = load i32, i32* %starty, align 4
  %sub352 = sub nsw i32 %290, %291
  %292 = load i32, i32* %endx, align 4
  %293 = load i32, i32* %startx, align 4
  %sub353 = sub nsw i32 %292, %293
  %mul354 = mul nsw i32 %sub352, %sub353
  %294 = load i32, i32* %tempval, align 4
  %add355 = add nsw i32 %294, %mul354
  store i32 %add355, i32* %tempval, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.350, %if.then.326
  %295 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile356 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i32 0, i32 0
  %296 = load %struct.tilebox*, %struct.tilebox** %nexttile356, align 8
  store %struct.tilebox* %296, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.291

for.end:                                          ; preds = %for.cond.291
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.end
  %297 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile358 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %297, i32 0, i32 0
  %298 = load %struct.tilebox*, %struct.tilebox** %nexttile358, align 8
  store %struct.tilebox* %298, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.202

for.end.359:                                      ; preds = %for.cond.202
  %299 = load i32, i32* %tempval, align 4
  %cmp360 = icmp ne i32 %299, 0
  br i1 %cmp360, label %if.then.362, label %if.end.368

if.then.362:                                      ; preds = %for.end.359
  %300 = load double, double* @lapFactor, align 8
  %301 = load i32, i32* %tempval, align 4
  %302 = load i32, i32* @offset, align 4
  %add363 = add nsw i32 %301, %302
  %conv364 = sitofp i32 %add363 to double
  %mul365 = fmul double %300, %conv364
  %conv366 = fptosi double %mul365 to i32
  %303 = load i32, i32* %value, align 4
  %add367 = add nsw i32 %303, %conv366
  store i32 %add367, i32* %value, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.362, %for.end.359
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %cond.end.191
  br label %for.inc.370

for.inc.370:                                      ; preds = %if.end.369, %if.then.160, %if.then.123
  %304 = load i32, i32* %k, align 4
  %inc = add nsw i32 %304, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.114

for.end.371:                                      ; preds = %for.cond.114
  br label %for.inc.372

for.inc.372:                                      ; preds = %for.end.371, %if.then.108
  %305 = load i32, i32* %j, align 4
  %inc373 = add nsw i32 %305, 1
  store i32 %inc373, i32* %j, align 4
  br label %for.cond.93

for.end.374:                                      ; preds = %for.cond.93
  br label %for.inc.375

for.inc.375:                                      ; preds = %for.end.374, %if.then.91
  %306 = load i32, i32* %i, align 4
  %inc376 = add nsw i32 %306, 1
  store i32 %inc376, i32* %i, align 4
  br label %for.cond

for.end.377:                                      ; preds = %for.cond
  %307 = load i32, i32* %value, align 4
  ret i32 %307
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
