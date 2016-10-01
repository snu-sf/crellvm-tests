; ModuleID = './MultiSource.Benchmarks.Prolangs-C/250.TimberWolfMC.fixpenal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@blockr = external global i32, align 4
@blockl = external global i32, align 4
@blockt = external global i32, align 4
@blockb = external global i32, align 4
@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@dx = common global i32 0, align 4
@dy = common global i32 0, align 4
@binOffsetX = external global i32, align 4
@binWidthX = external global i32, align 4
@numBinsX = external global i32, align 4
@binOffsetY = external global i32, align 4
@binWidthY = external global i32, align 4
@numBinsY = external global i32, align 4
@binX = external global i32, align 4
@binY = external global i32, align 4
@blockarray = external global i32***, align 8
@numpads = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @fixpenal() #0 {
entry:
  %cell = alloca i32, align 4
  %other = alloca i32, align 4
  %d = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %problems = alloca i32, align 4
  %0 = load i32, i32* @blockr, align 4
  %1 = load i32, i32* @blockl, align 4
  %add = add nsw i32 %0, %1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %bx, align 4
  %2 = load i32, i32* @blockt, align 4
  %3 = load i32, i32* @blockb, align 4
  %add1 = add nsw i32 %2, %3
  %div2 = sdiv i32 %add1, 2
  store i32 %div2, i32* %by, align 4
  store i32 1, i32* %problems, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i32, i32* %problems, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %problems, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %cell, align 4
  %6 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %cell, align 4
  %8 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %9, i64 %idxprom
  %10 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 2
  %11 = load i32, i32* %xcenter, align 4
  %12 = load i32, i32* %cell, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %13, i64 %idxprom3
  %14 = load %struct.cellbox*, %struct.cellbox** %arrayidx4, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i32 0, i32 3
  %15 = load i32, i32* %ycenter, align 4
  %16 = load i32, i32* %cell, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %17, i64 %idxprom5
  %18 = load %struct.cellbox*, %struct.cellbox** %arrayidx6, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 5
  %19 = load i32, i32* %orient, align 4
  %call = call i32 @whoOverlaps(i32 %7, i32 %11, i32 %15, i32 %19, i32 0, i32 1, i32 0)
  store i32 %call, i32* %other, align 4
  %20 = load i32, i32* %other, align 4
  %cmp7 = icmp sgt i32 %20, 0
  br i1 %cmp7, label %if.then, label %if.end.252

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %cell, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %22, i64 %idxprom8
  %23 = load %struct.cellbox*, %struct.cellbox** %arrayidx9, align 8
  %xcenter10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 2
  %24 = load i32, i32* %xcenter10, align 4
  %25 = load i32, i32* %bx, align 4
  %sub = sub nsw i32 %24, %25
  %cmp11 = icmp sge i32 %sub, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %26 = load i32, i32* %cell, align 4
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx13 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %27, i64 %idxprom12
  %28 = load %struct.cellbox*, %struct.cellbox** %arrayidx13, align 8
  %xcenter14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 2
  %29 = load i32, i32* %xcenter14, align 4
  %30 = load i32, i32* %bx, align 4
  %sub15 = sub nsw i32 %29, %30
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %31 = load i32, i32* %cell, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx17 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %32, i64 %idxprom16
  %33 = load %struct.cellbox*, %struct.cellbox** %arrayidx17, align 8
  %xcenter18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %33, i32 0, i32 2
  %34 = load i32, i32* %xcenter18, align 4
  %35 = load i32, i32* %bx, align 4
  %sub19 = sub nsw i32 %34, %35
  %sub20 = sub nsw i32 0, %sub19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ %sub20, %cond.false ]
  %36 = load i32, i32* %cell, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx22 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %37, i64 %idxprom21
  %38 = load %struct.cellbox*, %struct.cellbox** %arrayidx22, align 8
  %xcenter23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 2
  %39 = load i32, i32* %xcenter23, align 4
  %40 = load i32, i32* %bx, align 4
  %sub24 = sub nsw i32 %39, %40
  %cmp25 = icmp sge i32 %sub24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.31

cond.true.26:                                     ; preds = %cond.end
  %41 = load i32, i32* %cell, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx28 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %42, i64 %idxprom27
  %43 = load %struct.cellbox*, %struct.cellbox** %arrayidx28, align 8
  %xcenter29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 2
  %44 = load i32, i32* %xcenter29, align 4
  %45 = load i32, i32* %bx, align 4
  %sub30 = sub nsw i32 %44, %45
  br label %cond.end.37

cond.false.31:                                    ; preds = %cond.end
  %46 = load i32, i32* %cell, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx33 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %47, i64 %idxprom32
  %48 = load %struct.cellbox*, %struct.cellbox** %arrayidx33, align 8
  %xcenter34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 2
  %49 = load i32, i32* %xcenter34, align 4
  %50 = load i32, i32* %bx, align 4
  %sub35 = sub nsw i32 %49, %50
  %sub36 = sub nsw i32 0, %sub35
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.31, %cond.true.26
  %cond38 = phi i32 [ %sub30, %cond.true.26 ], [ %sub36, %cond.false.31 ]
  %mul = mul nsw i32 %cond, %cond38
  %51 = load i32, i32* %cell, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx40 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %52, i64 %idxprom39
  %53 = load %struct.cellbox*, %struct.cellbox** %arrayidx40, align 8
  %ycenter41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %53, i32 0, i32 3
  %54 = load i32, i32* %ycenter41, align 4
  %55 = load i32, i32* %by, align 4
  %sub42 = sub nsw i32 %54, %55
  %cmp43 = icmp sge i32 %sub42, 0
  br i1 %cmp43, label %cond.true.44, label %cond.false.49

cond.true.44:                                     ; preds = %cond.end.37
  %56 = load i32, i32* %cell, align 4
  %idxprom45 = sext i32 %56 to i64
  %57 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %57, i64 %idxprom45
  %58 = load %struct.cellbox*, %struct.cellbox** %arrayidx46, align 8
  %ycenter47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %58, i32 0, i32 3
  %59 = load i32, i32* %ycenter47, align 4
  %60 = load i32, i32* %by, align 4
  %sub48 = sub nsw i32 %59, %60
  br label %cond.end.55

cond.false.49:                                    ; preds = %cond.end.37
  %61 = load i32, i32* %cell, align 4
  %idxprom50 = sext i32 %61 to i64
  %62 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx51 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %62, i64 %idxprom50
  %63 = load %struct.cellbox*, %struct.cellbox** %arrayidx51, align 8
  %ycenter52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 3
  %64 = load i32, i32* %ycenter52, align 4
  %65 = load i32, i32* %by, align 4
  %sub53 = sub nsw i32 %64, %65
  %sub54 = sub nsw i32 0, %sub53
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.49, %cond.true.44
  %cond56 = phi i32 [ %sub48, %cond.true.44 ], [ %sub54, %cond.false.49 ]
  %66 = load i32, i32* %cell, align 4
  %idxprom57 = sext i32 %66 to i64
  %67 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx58 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %67, i64 %idxprom57
  %68 = load %struct.cellbox*, %struct.cellbox** %arrayidx58, align 8
  %ycenter59 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %68, i32 0, i32 3
  %69 = load i32, i32* %ycenter59, align 4
  %70 = load i32, i32* %by, align 4
  %sub60 = sub nsw i32 %69, %70
  %cmp61 = icmp sge i32 %sub60, 0
  br i1 %cmp61, label %cond.true.62, label %cond.false.67

cond.true.62:                                     ; preds = %cond.end.55
  %71 = load i32, i32* %cell, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx64 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %72, i64 %idxprom63
  %73 = load %struct.cellbox*, %struct.cellbox** %arrayidx64, align 8
  %ycenter65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %73, i32 0, i32 3
  %74 = load i32, i32* %ycenter65, align 4
  %75 = load i32, i32* %by, align 4
  %sub66 = sub nsw i32 %74, %75
  br label %cond.end.73

cond.false.67:                                    ; preds = %cond.end.55
  %76 = load i32, i32* %cell, align 4
  %idxprom68 = sext i32 %76 to i64
  %77 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx69 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %77, i64 %idxprom68
  %78 = load %struct.cellbox*, %struct.cellbox** %arrayidx69, align 8
  %ycenter70 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i32 0, i32 3
  %79 = load i32, i32* %ycenter70, align 4
  %80 = load i32, i32* %by, align 4
  %sub71 = sub nsw i32 %79, %80
  %sub72 = sub nsw i32 0, %sub71
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.67, %cond.true.62
  %cond74 = phi i32 [ %sub66, %cond.true.62 ], [ %sub72, %cond.false.67 ]
  %mul75 = mul nsw i32 %cond56, %cond74
  %add76 = add nsw i32 %mul, %mul75
  %conv = sitofp i32 %add76 to double
  %call77 = call double @sqrt(double %conv) #2
  %conv78 = fptosi double %call77 to i32
  store i32 %conv78, i32* %d1, align 4
  %81 = load i32, i32* %other, align 4
  %idxprom79 = sext i32 %81 to i64
  %82 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx80 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %82, i64 %idxprom79
  %83 = load %struct.cellbox*, %struct.cellbox** %arrayidx80, align 8
  %xcenter81 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %83, i32 0, i32 2
  %84 = load i32, i32* %xcenter81, align 4
  %85 = load i32, i32* %bx, align 4
  %sub82 = sub nsw i32 %84, %85
  %cmp83 = icmp sge i32 %sub82, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.90

cond.true.85:                                     ; preds = %cond.end.73
  %86 = load i32, i32* %other, align 4
  %idxprom86 = sext i32 %86 to i64
  %87 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx87 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %87, i64 %idxprom86
  %88 = load %struct.cellbox*, %struct.cellbox** %arrayidx87, align 8
  %xcenter88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %88, i32 0, i32 2
  %89 = load i32, i32* %xcenter88, align 4
  %90 = load i32, i32* %bx, align 4
  %sub89 = sub nsw i32 %89, %90
  br label %cond.end.96

cond.false.90:                                    ; preds = %cond.end.73
  %91 = load i32, i32* %other, align 4
  %idxprom91 = sext i32 %91 to i64
  %92 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx92 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %92, i64 %idxprom91
  %93 = load %struct.cellbox*, %struct.cellbox** %arrayidx92, align 8
  %xcenter93 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 2
  %94 = load i32, i32* %xcenter93, align 4
  %95 = load i32, i32* %bx, align 4
  %sub94 = sub nsw i32 %94, %95
  %sub95 = sub nsw i32 0, %sub94
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.90, %cond.true.85
  %cond97 = phi i32 [ %sub89, %cond.true.85 ], [ %sub95, %cond.false.90 ]
  %96 = load i32, i32* %other, align 4
  %idxprom98 = sext i32 %96 to i64
  %97 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx99 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %97, i64 %idxprom98
  %98 = load %struct.cellbox*, %struct.cellbox** %arrayidx99, align 8
  %xcenter100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %98, i32 0, i32 2
  %99 = load i32, i32* %xcenter100, align 4
  %100 = load i32, i32* %bx, align 4
  %sub101 = sub nsw i32 %99, %100
  %cmp102 = icmp sge i32 %sub101, 0
  br i1 %cmp102, label %cond.true.104, label %cond.false.109

cond.true.104:                                    ; preds = %cond.end.96
  %101 = load i32, i32* %other, align 4
  %idxprom105 = sext i32 %101 to i64
  %102 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx106 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %102, i64 %idxprom105
  %103 = load %struct.cellbox*, %struct.cellbox** %arrayidx106, align 8
  %xcenter107 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %103, i32 0, i32 2
  %104 = load i32, i32* %xcenter107, align 4
  %105 = load i32, i32* %bx, align 4
  %sub108 = sub nsw i32 %104, %105
  br label %cond.end.115

cond.false.109:                                   ; preds = %cond.end.96
  %106 = load i32, i32* %other, align 4
  %idxprom110 = sext i32 %106 to i64
  %107 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx111 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %107, i64 %idxprom110
  %108 = load %struct.cellbox*, %struct.cellbox** %arrayidx111, align 8
  %xcenter112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i32 0, i32 2
  %109 = load i32, i32* %xcenter112, align 4
  %110 = load i32, i32* %bx, align 4
  %sub113 = sub nsw i32 %109, %110
  %sub114 = sub nsw i32 0, %sub113
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.109, %cond.true.104
  %cond116 = phi i32 [ %sub108, %cond.true.104 ], [ %sub114, %cond.false.109 ]
  %mul117 = mul nsw i32 %cond97, %cond116
  %111 = load i32, i32* %other, align 4
  %idxprom118 = sext i32 %111 to i64
  %112 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx119 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %112, i64 %idxprom118
  %113 = load %struct.cellbox*, %struct.cellbox** %arrayidx119, align 8
  %ycenter120 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 3
  %114 = load i32, i32* %ycenter120, align 4
  %115 = load i32, i32* %by, align 4
  %sub121 = sub nsw i32 %114, %115
  %cmp122 = icmp sge i32 %sub121, 0
  br i1 %cmp122, label %cond.true.124, label %cond.false.129

cond.true.124:                                    ; preds = %cond.end.115
  %116 = load i32, i32* %other, align 4
  %idxprom125 = sext i32 %116 to i64
  %117 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx126 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %117, i64 %idxprom125
  %118 = load %struct.cellbox*, %struct.cellbox** %arrayidx126, align 8
  %ycenter127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i32 0, i32 3
  %119 = load i32, i32* %ycenter127, align 4
  %120 = load i32, i32* %by, align 4
  %sub128 = sub nsw i32 %119, %120
  br label %cond.end.135

cond.false.129:                                   ; preds = %cond.end.115
  %121 = load i32, i32* %other, align 4
  %idxprom130 = sext i32 %121 to i64
  %122 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx131 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %122, i64 %idxprom130
  %123 = load %struct.cellbox*, %struct.cellbox** %arrayidx131, align 8
  %ycenter132 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 3
  %124 = load i32, i32* %ycenter132, align 4
  %125 = load i32, i32* %by, align 4
  %sub133 = sub nsw i32 %124, %125
  %sub134 = sub nsw i32 0, %sub133
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.129, %cond.true.124
  %cond136 = phi i32 [ %sub128, %cond.true.124 ], [ %sub134, %cond.false.129 ]
  %126 = load i32, i32* %other, align 4
  %idxprom137 = sext i32 %126 to i64
  %127 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx138 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %127, i64 %idxprom137
  %128 = load %struct.cellbox*, %struct.cellbox** %arrayidx138, align 8
  %ycenter139 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %128, i32 0, i32 3
  %129 = load i32, i32* %ycenter139, align 4
  %130 = load i32, i32* %by, align 4
  %sub140 = sub nsw i32 %129, %130
  %cmp141 = icmp sge i32 %sub140, 0
  br i1 %cmp141, label %cond.true.143, label %cond.false.148

cond.true.143:                                    ; preds = %cond.end.135
  %131 = load i32, i32* %other, align 4
  %idxprom144 = sext i32 %131 to i64
  %132 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx145 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %132, i64 %idxprom144
  %133 = load %struct.cellbox*, %struct.cellbox** %arrayidx145, align 8
  %ycenter146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i32 0, i32 3
  %134 = load i32, i32* %ycenter146, align 4
  %135 = load i32, i32* %by, align 4
  %sub147 = sub nsw i32 %134, %135
  br label %cond.end.154

cond.false.148:                                   ; preds = %cond.end.135
  %136 = load i32, i32* %other, align 4
  %idxprom149 = sext i32 %136 to i64
  %137 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx150 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %137, i64 %idxprom149
  %138 = load %struct.cellbox*, %struct.cellbox** %arrayidx150, align 8
  %ycenter151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i32 0, i32 3
  %139 = load i32, i32* %ycenter151, align 4
  %140 = load i32, i32* %by, align 4
  %sub152 = sub nsw i32 %139, %140
  %sub153 = sub nsw i32 0, %sub152
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.148, %cond.true.143
  %cond155 = phi i32 [ %sub147, %cond.true.143 ], [ %sub153, %cond.false.148 ]
  %mul156 = mul nsw i32 %cond136, %cond155
  %add157 = add nsw i32 %mul117, %mul156
  %conv158 = sitofp i32 %add157 to double
  %call159 = call double @sqrt(double %conv158) #2
  %conv160 = fptosi double %call159 to i32
  store i32 %conv160, i32* %d2, align 4
  %141 = load i32, i32* @dx, align 4
  %cmp161 = icmp eq i32 %141, 0
  br i1 %cmp161, label %if.then.163, label %if.end

if.then.163:                                      ; preds = %cond.end.154
  store i32 1000000, i32* @dx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.163, %cond.end.154
  %142 = load i32, i32* @dy, align 4
  %cmp164 = icmp eq i32 %142, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end
  store i32 1000000, i32* @dy, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end
  %143 = load i32, i32* @dx, align 4
  %144 = load i32, i32* @dy, align 4
  %cmp168 = icmp sle i32 %143, %144
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.end.167
  %145 = load i32, i32* @dx, align 4
  br label %cond.end.172

cond.false.171:                                   ; preds = %if.end.167
  %146 = load i32, i32* @dy, align 4
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i32 [ %145, %cond.true.170 ], [ %146, %cond.false.171 ]
  store i32 %cond173, i32* %d, align 4
  %147 = load i32, i32* %d, align 4
  %148 = load i32, i32* @dx, align 4
  %cmp174 = icmp eq i32 %147, %148
  br i1 %cmp174, label %if.then.176, label %if.else.213

if.then.176:                                      ; preds = %cond.end.172
  %149 = load i32, i32* %d1, align 4
  %150 = load i32, i32* %d2, align 4
  %cmp177 = icmp sgt i32 %149, %150
  br i1 %cmp177, label %if.then.179, label %if.else.195

if.then.179:                                      ; preds = %if.then.176
  %151 = load i32, i32* %cell, align 4
  %idxprom180 = sext i32 %151 to i64
  %152 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx181 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %152, i64 %idxprom180
  %153 = load %struct.cellbox*, %struct.cellbox** %arrayidx181, align 8
  %xcenter182 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %153, i32 0, i32 2
  %154 = load i32, i32* %xcenter182, align 4
  %155 = load i32, i32* %bx, align 4
  %cmp183 = icmp sgt i32 %154, %155
  br i1 %cmp183, label %if.then.185, label %if.else

if.then.185:                                      ; preds = %if.then.179
  %156 = load i32, i32* %d, align 4
  %157 = load i32, i32* %cell, align 4
  %idxprom186 = sext i32 %157 to i64
  %158 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx187 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %158, i64 %idxprom186
  %159 = load %struct.cellbox*, %struct.cellbox** %arrayidx187, align 8
  %xcenter188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 2
  %160 = load i32, i32* %xcenter188, align 4
  %add189 = add nsw i32 %160, %156
  store i32 %add189, i32* %xcenter188, align 4
  br label %if.end.194

if.else:                                          ; preds = %if.then.179
  %161 = load i32, i32* %d, align 4
  %162 = load i32, i32* %cell, align 4
  %idxprom190 = sext i32 %162 to i64
  %163 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx191 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %163, i64 %idxprom190
  %164 = load %struct.cellbox*, %struct.cellbox** %arrayidx191, align 8
  %xcenter192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %164, i32 0, i32 2
  %165 = load i32, i32* %xcenter192, align 4
  %sub193 = sub nsw i32 %165, %161
  store i32 %sub193, i32* %xcenter192, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else, %if.then.185
  br label %if.end.212

if.else.195:                                      ; preds = %if.then.176
  %166 = load i32, i32* %other, align 4
  %idxprom196 = sext i32 %166 to i64
  %167 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx197 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %167, i64 %idxprom196
  %168 = load %struct.cellbox*, %struct.cellbox** %arrayidx197, align 8
  %xcenter198 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %168, i32 0, i32 2
  %169 = load i32, i32* %xcenter198, align 4
  %170 = load i32, i32* %bx, align 4
  %cmp199 = icmp sgt i32 %169, %170
  br i1 %cmp199, label %if.then.201, label %if.else.206

if.then.201:                                      ; preds = %if.else.195
  %171 = load i32, i32* %d, align 4
  %172 = load i32, i32* %other, align 4
  %idxprom202 = sext i32 %172 to i64
  %173 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx203 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %173, i64 %idxprom202
  %174 = load %struct.cellbox*, %struct.cellbox** %arrayidx203, align 8
  %xcenter204 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %174, i32 0, i32 2
  %175 = load i32, i32* %xcenter204, align 4
  %add205 = add nsw i32 %175, %171
  store i32 %add205, i32* %xcenter204, align 4
  br label %if.end.211

if.else.206:                                      ; preds = %if.else.195
  %176 = load i32, i32* %d, align 4
  %177 = load i32, i32* %other, align 4
  %idxprom207 = sext i32 %177 to i64
  %178 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx208 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %178, i64 %idxprom207
  %179 = load %struct.cellbox*, %struct.cellbox** %arrayidx208, align 8
  %xcenter209 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %179, i32 0, i32 2
  %180 = load i32, i32* %xcenter209, align 4
  %sub210 = sub nsw i32 %180, %176
  store i32 %sub210, i32* %xcenter209, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.206, %if.then.201
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.194
  br label %if.end.251

if.else.213:                                      ; preds = %cond.end.172
  %181 = load i32, i32* %d1, align 4
  %182 = load i32, i32* %d2, align 4
  %cmp214 = icmp sgt i32 %181, %182
  br i1 %cmp214, label %if.then.216, label %if.else.233

if.then.216:                                      ; preds = %if.else.213
  %183 = load i32, i32* %cell, align 4
  %idxprom217 = sext i32 %183 to i64
  %184 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx218 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %184, i64 %idxprom217
  %185 = load %struct.cellbox*, %struct.cellbox** %arrayidx218, align 8
  %ycenter219 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %185, i32 0, i32 3
  %186 = load i32, i32* %ycenter219, align 4
  %187 = load i32, i32* %by, align 4
  %cmp220 = icmp sgt i32 %186, %187
  br i1 %cmp220, label %if.then.222, label %if.else.227

if.then.222:                                      ; preds = %if.then.216
  %188 = load i32, i32* %d, align 4
  %189 = load i32, i32* %cell, align 4
  %idxprom223 = sext i32 %189 to i64
  %190 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx224 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %190, i64 %idxprom223
  %191 = load %struct.cellbox*, %struct.cellbox** %arrayidx224, align 8
  %ycenter225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 3
  %192 = load i32, i32* %ycenter225, align 4
  %add226 = add nsw i32 %192, %188
  store i32 %add226, i32* %ycenter225, align 4
  br label %if.end.232

if.else.227:                                      ; preds = %if.then.216
  %193 = load i32, i32* %d, align 4
  %194 = load i32, i32* %cell, align 4
  %idxprom228 = sext i32 %194 to i64
  %195 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx229 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %195, i64 %idxprom228
  %196 = load %struct.cellbox*, %struct.cellbox** %arrayidx229, align 8
  %ycenter230 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 3
  %197 = load i32, i32* %ycenter230, align 4
  %sub231 = sub nsw i32 %197, %193
  store i32 %sub231, i32* %ycenter230, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.227, %if.then.222
  br label %if.end.250

if.else.233:                                      ; preds = %if.else.213
  %198 = load i32, i32* %other, align 4
  %idxprom234 = sext i32 %198 to i64
  %199 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx235 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %199, i64 %idxprom234
  %200 = load %struct.cellbox*, %struct.cellbox** %arrayidx235, align 8
  %ycenter236 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %200, i32 0, i32 3
  %201 = load i32, i32* %ycenter236, align 4
  %202 = load i32, i32* %by, align 4
  %cmp237 = icmp sgt i32 %201, %202
  br i1 %cmp237, label %if.then.239, label %if.else.244

if.then.239:                                      ; preds = %if.else.233
  %203 = load i32, i32* %d, align 4
  %204 = load i32, i32* %other, align 4
  %idxprom240 = sext i32 %204 to i64
  %205 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx241 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %205, i64 %idxprom240
  %206 = load %struct.cellbox*, %struct.cellbox** %arrayidx241, align 8
  %ycenter242 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %206, i32 0, i32 3
  %207 = load i32, i32* %ycenter242, align 4
  %add243 = add nsw i32 %207, %203
  store i32 %add243, i32* %ycenter242, align 4
  br label %if.end.249

if.else.244:                                      ; preds = %if.else.233
  %208 = load i32, i32* %d, align 4
  %209 = load i32, i32* %other, align 4
  %idxprom245 = sext i32 %209 to i64
  %210 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx246 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %210, i64 %idxprom245
  %211 = load %struct.cellbox*, %struct.cellbox** %arrayidx246, align 8
  %ycenter247 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %211, i32 0, i32 3
  %212 = load i32, i32* %ycenter247, align 4
  %sub248 = sub nsw i32 %212, %208
  store i32 %sub248, i32* %ycenter247, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.244, %if.then.239
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.232
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.212
  %213 = load i32, i32* %cell, align 4
  %dec = add nsw i32 %213, -1
  store i32 %dec, i32* %cell, align 4
  store i32 1, i32* %problems, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.252
  %214 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %214, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @padOverlaps()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @whoOverlaps(i32 %cell, i32 %xc, i32 %yc, i32 %orient, i32 %b, i32 %flag, i32 %borient) #0 {
entry:
  %retval = alloca i32, align 4
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
  store i32 0, i32* @dx, align 4
  store i32 0, i32* @dy, align 4
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

for.cond:                                         ; preds = %for.inc.222, %if.end.40
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %highBinX, align 4
  %cmp41 = icmp sle i32 %52, %53
  br i1 %cmp41, label %for.body, label %for.end.224

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
  br label %for.inc.222

if.end.45:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.219, %if.end.45
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %highBinY, align 4
  %cmp47 = icmp sle i32 %57, %58
  br i1 %cmp47, label %for.body.48, label %for.end.221

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
  br label %for.inc.219

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

for.cond.62:                                      ; preds = %for.inc.217, %if.end.57
  %69 = load i32, i32* %k, align 4
  %70 = load i32*, i32** %occuptr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sle i32 %69, %71
  br i1 %cmp64, label %for.body.65, label %for.end.218

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
  br label %for.inc.217

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
  br label %for.inc.217

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
  br label %for.inc.217

if.end.110:                                       ; preds = %lor.lhs.false.107
  %120 = load %struct.cellbox*, %struct.cellbox** %cellptr1, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %120, i32 0, i32 6
  %121 = load i32, i32* %numtiles, align 4
  %cmp111 = icmp eq i32 %121, 1
  br i1 %cmp111, label %land.lhs.true.112, label %if.else.134

land.lhs.true.112:                                ; preds = %if.end.110
  %122 = load %struct.cellbox*, %struct.cellbox** %cellptr2, align 8
  %numtiles113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 6
  %123 = load i32, i32* %numtiles113, align 4
  %cmp114 = icmp eq i32 %123, 1
  br i1 %cmp114, label %if.then.115, label %if.else.134

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
  %140 = load i32, i32* %endx, align 4
  %141 = load i32, i32* %startx, align 4
  %sub132 = sub nsw i32 %140, %141
  store i32 %sub132, i32* @dx, align 4
  %142 = load i32, i32* %endy, align 4
  %143 = load i32, i32* %starty, align 4
  %sub133 = sub nsw i32 %142, %143
  store i32 %sub133, i32* @dy, align 4
  %144 = load i32, i32* %othercell, align 4
  store i32 %144, i32* %retval
  br label %return

if.else.134:                                      ; preds = %land.lhs.true.112, %if.end.110
  %145 = load %struct.tilebox*, %struct.tilebox** %tileptr01, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %145, i32 0, i32 0
  %146 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %146, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.208, %if.else.134
  %147 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %cmp136 = icmp ne %struct.tilebox* %147, null
  br i1 %cmp136, label %for.body.137, label %for.end.210

for.body.137:                                     ; preds = %for.cond.135
  %148 = load i32, i32* %xc.addr, align 4
  %149 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %left138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %149, i32 0, i32 9
  %150 = load i32, i32* %left138, align 4
  %add139 = add nsw i32 %148, %150
  store i32 %add139, i32* %startx1, align 4
  %151 = load i32, i32* %xc.addr, align 4
  %152 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %right140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i32 0, i32 10
  %153 = load i32, i32* %right140, align 4
  %add141 = add nsw i32 %151, %153
  store i32 %add141, i32* %endx1, align 4
  %154 = load i32, i32* %yc.addr, align 4
  %155 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %bottom142 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %155, i32 0, i32 11
  %156 = load i32, i32* %bottom142, align 4
  %add143 = add nsw i32 %154, %156
  store i32 %add143, i32* %starty1, align 4
  %157 = load i32, i32* %yc.addr, align 4
  %158 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %top144 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %158, i32 0, i32 12
  %159 = load i32, i32* %top144, align 4
  %add145 = add nsw i32 %157, %159
  store i32 %add145, i32* %endy1, align 4
  %160 = load %struct.tilebox*, %struct.tilebox** %tileptr02, align 8
  %nexttile146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %160, i32 0, i32 0
  %161 = load %struct.tilebox*, %struct.tilebox** %nexttile146, align 8
  store %struct.tilebox* %161, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc, %for.body.137
  %162 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %cmp148 = icmp ne %struct.tilebox* %162, null
  br i1 %cmp148, label %for.body.149, label %for.end

for.body.149:                                     ; preds = %for.cond.147
  %163 = load i32, i32* %xcenter, align 4
  %164 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %left150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 9
  %165 = load i32, i32* %left150, align 4
  %add151 = add nsw i32 %163, %165
  store i32 %add151, i32* %startx2, align 4
  %166 = load i32, i32* %xcenter, align 4
  %167 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %right152 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %167, i32 0, i32 10
  %168 = load i32, i32* %right152, align 4
  %add153 = add nsw i32 %166, %168
  store i32 %add153, i32* %endx2, align 4
  %169 = load i32, i32* %ycenter, align 4
  %170 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %bottom154 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %170, i32 0, i32 11
  %171 = load i32, i32* %bottom154, align 4
  %add155 = add nsw i32 %169, %171
  store i32 %add155, i32* %starty2, align 4
  %172 = load i32, i32* %ycenter, align 4
  %173 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %top156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i32 0, i32 12
  %174 = load i32, i32* %top156, align 4
  %add157 = add nsw i32 %172, %174
  store i32 %add157, i32* %endy2, align 4
  %175 = load i32, i32* %startx2, align 4
  %176 = load i32, i32* %endx1, align 4
  %cmp158 = icmp sge i32 %175, %176
  br i1 %cmp158, label %if.then.165, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %for.body.149
  %177 = load i32, i32* %startx1, align 4
  %178 = load i32, i32* %endx2, align 4
  %cmp160 = icmp sge i32 %177, %178
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.159
  %179 = load i32, i32* %starty2, align 4
  %180 = load i32, i32* %endy1, align 4
  %cmp162 = icmp sge i32 %179, %180
  br i1 %cmp162, label %if.then.165, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.161
  %181 = load i32, i32* %starty1, align 4
  %182 = load i32, i32* %endy2, align 4
  %cmp164 = icmp sge i32 %181, %182
  br i1 %cmp164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %lor.lhs.false.163, %lor.lhs.false.161, %lor.lhs.false.159, %for.body.149
  br label %for.inc

if.end.166:                                       ; preds = %lor.lhs.false.163
  %183 = load i32, i32* %startx1, align 4
  %184 = load i32, i32* %startx2, align 4
  %cmp167 = icmp sge i32 %183, %184
  br i1 %cmp167, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.end.166
  %185 = load i32, i32* %startx1, align 4
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.end.166
  %186 = load i32, i32* %startx2, align 4
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.168
  %cond171 = phi i32 [ %185, %cond.true.168 ], [ %186, %cond.false.169 ]
  store i32 %cond171, i32* %startx, align 4
  %187 = load i32, i32* %endx1, align 4
  %188 = load i32, i32* %endx2, align 4
  %cmp172 = icmp sle i32 %187, %188
  br i1 %cmp172, label %cond.true.173, label %cond.false.174

cond.true.173:                                    ; preds = %cond.end.170
  %189 = load i32, i32* %endx1, align 4
  br label %cond.end.175

cond.false.174:                                   ; preds = %cond.end.170
  %190 = load i32, i32* %endx2, align 4
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.173
  %cond176 = phi i32 [ %189, %cond.true.173 ], [ %190, %cond.false.174 ]
  store i32 %cond176, i32* %endx, align 4
  %191 = load i32, i32* %starty1, align 4
  %192 = load i32, i32* %starty2, align 4
  %cmp177 = icmp sge i32 %191, %192
  br i1 %cmp177, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.end.175
  %193 = load i32, i32* %starty1, align 4
  br label %cond.end.180

cond.false.179:                                   ; preds = %cond.end.175
  %194 = load i32, i32* %starty2, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.178
  %cond181 = phi i32 [ %193, %cond.true.178 ], [ %194, %cond.false.179 ]
  store i32 %cond181, i32* %starty, align 4
  %195 = load i32, i32* %endy1, align 4
  %196 = load i32, i32* %endy2, align 4
  %cmp182 = icmp sle i32 %195, %196
  br i1 %cmp182, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %cond.end.180
  %197 = load i32, i32* %endy1, align 4
  br label %cond.end.185

cond.false.184:                                   ; preds = %cond.end.180
  %198 = load i32, i32* %endy2, align 4
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.184, %cond.true.183
  %cond186 = phi i32 [ %197, %cond.true.183 ], [ %198, %cond.false.184 ]
  store i32 %cond186, i32* %endy, align 4
  %199 = load i32, i32* @dx, align 4
  %cmp187 = icmp sgt i32 %199, 0
  br i1 %cmp187, label %if.then.188, label %if.else.194

if.then.188:                                      ; preds = %cond.end.185
  %200 = load i32, i32* %endx, align 4
  %201 = load i32, i32* %startx, align 4
  %sub189 = sub nsw i32 %200, %201
  %202 = load i32, i32* @dx, align 4
  %cmp190 = icmp slt i32 %sub189, %202
  br i1 %cmp190, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.then.188
  %203 = load i32, i32* %endx, align 4
  %204 = load i32, i32* %startx, align 4
  %sub192 = sub nsw i32 %203, %204
  store i32 %sub192, i32* @dx, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.then.188
  br label %if.end.196

if.else.194:                                      ; preds = %cond.end.185
  %205 = load i32, i32* %endx, align 4
  %206 = load i32, i32* %startx, align 4
  %sub195 = sub nsw i32 %205, %206
  store i32 %sub195, i32* @dx, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.194, %if.end.193
  %207 = load i32, i32* @dy, align 4
  %cmp197 = icmp sgt i32 %207, 0
  br i1 %cmp197, label %if.then.198, label %if.else.204

if.then.198:                                      ; preds = %if.end.196
  %208 = load i32, i32* %endy, align 4
  %209 = load i32, i32* %starty, align 4
  %sub199 = sub nsw i32 %208, %209
  %210 = load i32, i32* @dy, align 4
  %cmp200 = icmp slt i32 %sub199, %210
  br i1 %cmp200, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.then.198
  %211 = load i32, i32* %endy, align 4
  %212 = load i32, i32* %starty, align 4
  %sub202 = sub nsw i32 %211, %212
  store i32 %sub202, i32* @dy, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %if.then.198
  br label %if.end.206

if.else.204:                                      ; preds = %if.end.196
  %213 = load i32, i32* %endy, align 4
  %214 = load i32, i32* %starty, align 4
  %sub205 = sub nsw i32 %213, %214
  store i32 %sub205, i32* @dy, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.end.203
  br label %for.inc

for.inc:                                          ; preds = %if.end.206, %if.then.165
  %215 = load %struct.tilebox*, %struct.tilebox** %tileptr2, align 8
  %nexttile207 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 0
  %216 = load %struct.tilebox*, %struct.tilebox** %nexttile207, align 8
  store %struct.tilebox* %216, %struct.tilebox** %tileptr2, align 8
  br label %for.cond.147

for.end:                                          ; preds = %for.cond.147
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end
  %217 = load %struct.tilebox*, %struct.tilebox** %tileptr1, align 8
  %nexttile209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 0
  %218 = load %struct.tilebox*, %struct.tilebox** %nexttile209, align 8
  store %struct.tilebox* %218, %struct.tilebox** %tileptr1, align 8
  br label %for.cond.135

for.end.210:                                      ; preds = %for.cond.135
  %219 = load i32, i32* @dx, align 4
  %cmp211 = icmp ne i32 %219, 0
  br i1 %cmp211, label %if.then.214, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %for.end.210
  %220 = load i32, i32* @dy, align 4
  %cmp213 = icmp ne i32 %220, 0
  br i1 %cmp213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %lor.lhs.false.212, %for.end.210
  %221 = load i32, i32* %othercell, align 4
  store i32 %221, i32* %retval
  br label %return

if.end.215:                                       ; preds = %lor.lhs.false.212
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216, %if.then.109, %if.else.91, %if.then.71
  %222 = load i32, i32* %k, align 4
  %inc = add nsw i32 %222, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.62

for.end.218:                                      ; preds = %for.cond.62
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218, %if.then.56
  %223 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %223, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.46

for.end.221:                                      ; preds = %for.cond.46
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221, %if.then.44
  %224 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %224, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond

for.end.224:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.224, %if.then.214, %cond.end.130
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @padOverlaps() #0 {
entry:
  %cellptr = alloca %struct.cellbox*, align 8
  %padptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %startx1 = alloca i32, align 4
  %endx1 = alloca i32, align 4
  %starty1 = alloca i32, align 4
  %endy1 = alloca i32, align 4
  %deltaX = alloca i32, align 4
  %deltaY = alloca i32, align 4
  %pad = alloca i32, align 4
  %cell = alloca i32, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.187, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.189

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 5
  %6 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %8 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  store %struct.tilebox* %8, %struct.tilebox** %tileptr, align 8
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 2
  %10 = load i32, i32* %xcenter, align 4
  %11 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 9
  %12 = load i32, i32* %left, align 4
  %add = add nsw i32 %10, %12
  store i32 %add, i32* %startx1, align 4
  %13 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 2
  %14 = load i32, i32* %xcenter3, align 4
  %15 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 10
  %16 = load i32, i32* %right, align 4
  %add4 = add nsw i32 %14, %16
  store i32 %add4, i32* %endx1, align 4
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 3
  %18 = load i32, i32* %ycenter, align 4
  %19 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %19, i32 0, i32 11
  %20 = load i32, i32* %bottom, align 4
  %add5 = add nsw i32 %18, %20
  store i32 %add5, i32* %starty1, align 4
  %21 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 3
  %22 = load i32, i32* %ycenter6, align 4
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 12
  %24 = load i32, i32* %top, align 4
  %add7 = add nsw i32 %22, %24
  store i32 %add7, i32* %endy1, align 4
  %25 = load i32, i32* %startx1, align 4
  %26 = load i32, i32* @blockl, align 4
  %cmp8 = icmp sge i32 %25, %26
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %27 = load i32, i32* %endx1, align 4
  %28 = load i32, i32* @blockr, align 4
  %cmp9 = icmp sle i32 %27, %28
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %starty1, align 4
  %30 = load i32, i32* @blockb, align 4
  %cmp11 = icmp sge i32 %29, %30
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %31 = load i32, i32* %endy1, align 4
  %32 = load i32, i32* @blockt, align 4
  %cmp13 = icmp sle i32 %31, %32
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  br label %for.inc.187

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %for.body
  %33 = load i32, i32* %startx1, align 4
  %34 = load i32, i32* @blockl, align 4
  %cmp14 = icmp slt i32 %33, %34
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %35 = load i32, i32* @numcells, align 4
  %add16 = add nsw i32 %35, 1
  store i32 %add16, i32* %pad, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.49, %if.then.15
  %36 = load i32, i32* %pad, align 4
  %37 = load i32, i32* @numcells, align 4
  %38 = load i32, i32* @numpads, align 4
  %add18 = add nsw i32 %37, %38
  %cmp19 = icmp sle i32 %36, %add18
  br i1 %cmp19, label %for.body.20, label %for.end.51

for.body.20:                                      ; preds = %for.cond.17
  %39 = load i32, i32* %pad, align 4
  %idxprom21 = sext i32 %39 to i64
  %40 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx22 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %40, i64 %idxprom21
  %41 = load %struct.cellbox*, %struct.cellbox** %arrayidx22, align 8
  store %struct.cellbox* %41, %struct.cellbox** %padptr, align 8
  %42 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 11
  %43 = load i32, i32* %padside, align 4
  %cmp23 = icmp ne i32 %43, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.20
  br label %for.inc.49

if.end.25:                                        ; preds = %for.body.20
  %44 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %xcenter26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 2
  %45 = load i32, i32* %xcenter26, align 4
  %46 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %orient27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 5
  %47 = load i32, i32* %orient27, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %config29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 21
  %arrayidx30 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config29, i32 0, i64 %idxprom28
  %49 = load %struct.tilebox*, %struct.tilebox** %arrayidx30, align 8
  %right31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 10
  %50 = load i32, i32* %right31, align 4
  %add32 = add nsw i32 %45, %50
  %51 = load i32, i32* %startx1, align 4
  %sub = sub nsw i32 %add32, %51
  store i32 %sub, i32* %deltaX, align 4
  %52 = load i32, i32* %deltaX, align 4
  %cmp33 = icmp sle i32 %52, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.25
  br label %for.end.51

if.end.35:                                        ; preds = %if.end.25
  %53 = load i32, i32* @numcells, align 4
  %add36 = add nsw i32 %53, 1
  store i32 %add36, i32* %pad, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.end.35
  %54 = load i32, i32* %pad, align 4
  %55 = load i32, i32* @numcells, align 4
  %56 = load i32, i32* @numpads, align 4
  %add38 = add nsw i32 %55, %56
  %cmp39 = icmp sle i32 %54, %add38
  br i1 %cmp39, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %57 = load i32, i32* %pad, align 4
  %idxprom41 = sext i32 %57 to i64
  %58 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx42 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %58, i64 %idxprom41
  %59 = load %struct.cellbox*, %struct.cellbox** %arrayidx42, align 8
  store %struct.cellbox* %59, %struct.cellbox** %padptr, align 8
  %60 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i32 0, i32 11
  %61 = load i32, i32* %padside43, align 4
  %cmp44 = icmp eq i32 %61, 1
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %for.body.40
  %62 = load i32, i32* %deltaX, align 4
  %63 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %xcenter46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 2
  %64 = load i32, i32* %xcenter46, align 4
  %sub47 = sub nsw i32 %64, %62
  store i32 %sub47, i32* %xcenter46, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %for.body.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %65 = load i32, i32* %pad, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %pad, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %for.end.51

for.inc.49:                                       ; preds = %if.then.24
  %66 = load i32, i32* %pad, align 4
  %inc50 = add nsw i32 %66, 1
  store i32 %inc50, i32* %pad, align 4
  br label %for.cond.17

for.end.51:                                       ; preds = %for.end, %if.then.34, %for.cond.17
  br label %if.end.186

if.else:                                          ; preds = %if.end
  %67 = load i32, i32* %endx1, align 4
  %68 = load i32, i32* @blockr, align 4
  %cmp52 = icmp sgt i32 %67, %68
  br i1 %cmp52, label %if.then.53, label %if.else.95

if.then.53:                                       ; preds = %if.else
  %69 = load i32, i32* @numcells, align 4
  %add54 = add nsw i32 %69, 1
  store i32 %add54, i32* %pad, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.92, %if.then.53
  %70 = load i32, i32* %pad, align 4
  %71 = load i32, i32* @numcells, align 4
  %72 = load i32, i32* @numpads, align 4
  %add56 = add nsw i32 %71, %72
  %cmp57 = icmp sle i32 %70, %add56
  br i1 %cmp57, label %for.body.58, label %for.end.94

for.body.58:                                      ; preds = %for.cond.55
  %73 = load i32, i32* %pad, align 4
  %idxprom59 = sext i32 %73 to i64
  %74 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx60 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %74, i64 %idxprom59
  %75 = load %struct.cellbox*, %struct.cellbox** %arrayidx60, align 8
  store %struct.cellbox* %75, %struct.cellbox** %padptr, align 8
  %76 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %76, i32 0, i32 11
  %77 = load i32, i32* %padside61, align 4
  %cmp62 = icmp ne i32 %77, 3
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body.58
  br label %for.inc.92

if.end.64:                                        ; preds = %for.body.58
  %78 = load i32, i32* %endx1, align 4
  %79 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %xcenter65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i32 0, i32 2
  %80 = load i32, i32* %xcenter65, align 4
  %81 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %orient66 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %81, i32 0, i32 5
  %82 = load i32, i32* %orient66, align 4
  %idxprom67 = sext i32 %82 to i64
  %83 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %config68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %83, i32 0, i32 21
  %arrayidx69 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config68, i32 0, i64 %idxprom67
  %84 = load %struct.tilebox*, %struct.tilebox** %arrayidx69, align 8
  %left70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %84, i32 0, i32 9
  %85 = load i32, i32* %left70, align 4
  %add71 = add nsw i32 %80, %85
  %sub72 = sub nsw i32 %78, %add71
  store i32 %sub72, i32* %deltaX, align 4
  %86 = load i32, i32* %deltaX, align 4
  %cmp73 = icmp sle i32 %86, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.64
  br label %for.end.94

if.end.75:                                        ; preds = %if.end.64
  %87 = load i32, i32* @numcells, align 4
  %add76 = add nsw i32 %87, 1
  store i32 %add76, i32* %pad, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.89, %if.end.75
  %88 = load i32, i32* %pad, align 4
  %89 = load i32, i32* @numcells, align 4
  %90 = load i32, i32* @numpads, align 4
  %add78 = add nsw i32 %89, %90
  %cmp79 = icmp sle i32 %88, %add78
  br i1 %cmp79, label %for.body.80, label %for.end.91

for.body.80:                                      ; preds = %for.cond.77
  %91 = load i32, i32* %pad, align 4
  %idxprom81 = sext i32 %91 to i64
  %92 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx82 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %92, i64 %idxprom81
  %93 = load %struct.cellbox*, %struct.cellbox** %arrayidx82, align 8
  store %struct.cellbox* %93, %struct.cellbox** %padptr, align 8
  %94 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %94, i32 0, i32 11
  %95 = load i32, i32* %padside83, align 4
  %cmp84 = icmp eq i32 %95, 3
  br i1 %cmp84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %for.body.80
  %96 = load i32, i32* %deltaX, align 4
  %97 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %xcenter86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %97, i32 0, i32 2
  %98 = load i32, i32* %xcenter86, align 4
  %add87 = add nsw i32 %98, %96
  store i32 %add87, i32* %xcenter86, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %for.body.80
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %99 = load i32, i32* %pad, align 4
  %inc90 = add nsw i32 %99, 1
  store i32 %inc90, i32* %pad, align 4
  br label %for.cond.77

for.end.91:                                       ; preds = %for.cond.77
  br label %for.end.94

for.inc.92:                                       ; preds = %if.then.63
  %100 = load i32, i32* %pad, align 4
  %inc93 = add nsw i32 %100, 1
  store i32 %inc93, i32* %pad, align 4
  br label %for.cond.55

for.end.94:                                       ; preds = %for.end.91, %if.then.74, %for.cond.55
  br label %if.end.185

if.else.95:                                       ; preds = %if.else
  %101 = load i32, i32* %starty1, align 4
  %102 = load i32, i32* @blockb, align 4
  %cmp96 = icmp slt i32 %101, %102
  br i1 %cmp96, label %if.then.97, label %if.else.139

if.then.97:                                       ; preds = %if.else.95
  %103 = load i32, i32* @numcells, align 4
  %add98 = add nsw i32 %103, 1
  store i32 %add98, i32* %pad, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.136, %if.then.97
  %104 = load i32, i32* %pad, align 4
  %105 = load i32, i32* @numcells, align 4
  %106 = load i32, i32* @numpads, align 4
  %add100 = add nsw i32 %105, %106
  %cmp101 = icmp sle i32 %104, %add100
  br i1 %cmp101, label %for.body.102, label %for.end.138

for.body.102:                                     ; preds = %for.cond.99
  %107 = load i32, i32* %pad, align 4
  %idxprom103 = sext i32 %107 to i64
  %108 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx104 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %108, i64 %idxprom103
  %109 = load %struct.cellbox*, %struct.cellbox** %arrayidx104, align 8
  store %struct.cellbox* %109, %struct.cellbox** %padptr, align 8
  %110 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside105 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %110, i32 0, i32 11
  %111 = load i32, i32* %padside105, align 4
  %cmp106 = icmp ne i32 %111, 4
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body.102
  br label %for.inc.136

if.end.108:                                       ; preds = %for.body.102
  %112 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %ycenter109 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 3
  %113 = load i32, i32* %ycenter109, align 4
  %114 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %orient110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %114, i32 0, i32 5
  %115 = load i32, i32* %orient110, align 4
  %idxprom111 = sext i32 %115 to i64
  %116 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %config112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %116, i32 0, i32 21
  %arrayidx113 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config112, i32 0, i64 %idxprom111
  %117 = load %struct.tilebox*, %struct.tilebox** %arrayidx113, align 8
  %top114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i32 0, i32 12
  %118 = load i32, i32* %top114, align 4
  %add115 = add nsw i32 %113, %118
  %119 = load i32, i32* %starty1, align 4
  %sub116 = sub nsw i32 %add115, %119
  store i32 %sub116, i32* %deltaY, align 4
  %120 = load i32, i32* %deltaY, align 4
  %cmp117 = icmp sle i32 %120, 0
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.108
  br label %for.end.138

if.end.119:                                       ; preds = %if.end.108
  %121 = load i32, i32* @numcells, align 4
  %add120 = add nsw i32 %121, 1
  store i32 %add120, i32* %pad, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.133, %if.end.119
  %122 = load i32, i32* %pad, align 4
  %123 = load i32, i32* @numcells, align 4
  %124 = load i32, i32* @numpads, align 4
  %add122 = add nsw i32 %123, %124
  %cmp123 = icmp sle i32 %122, %add122
  br i1 %cmp123, label %for.body.124, label %for.end.135

for.body.124:                                     ; preds = %for.cond.121
  %125 = load i32, i32* %pad, align 4
  %idxprom125 = sext i32 %125 to i64
  %126 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx126 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %126, i64 %idxprom125
  %127 = load %struct.cellbox*, %struct.cellbox** %arrayidx126, align 8
  store %struct.cellbox* %127, %struct.cellbox** %padptr, align 8
  %128 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %128, i32 0, i32 11
  %129 = load i32, i32* %padside127, align 4
  %cmp128 = icmp eq i32 %129, 4
  br i1 %cmp128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.body.124
  %130 = load i32, i32* %deltaY, align 4
  %131 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %ycenter130 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %131, i32 0, i32 3
  %132 = load i32, i32* %ycenter130, align 4
  %sub131 = sub nsw i32 %132, %130
  store i32 %sub131, i32* %ycenter130, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %for.body.124
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %133 = load i32, i32* %pad, align 4
  %inc134 = add nsw i32 %133, 1
  store i32 %inc134, i32* %pad, align 4
  br label %for.cond.121

for.end.135:                                      ; preds = %for.cond.121
  br label %for.end.138

for.inc.136:                                      ; preds = %if.then.107
  %134 = load i32, i32* %pad, align 4
  %inc137 = add nsw i32 %134, 1
  store i32 %inc137, i32* %pad, align 4
  br label %for.cond.99

for.end.138:                                      ; preds = %for.end.135, %if.then.118, %for.cond.99
  br label %if.end.184

if.else.139:                                      ; preds = %if.else.95
  %135 = load i32, i32* %endy1, align 4
  %136 = load i32, i32* @blockt, align 4
  %cmp140 = icmp sgt i32 %135, %136
  br i1 %cmp140, label %if.then.141, label %if.end.183

if.then.141:                                      ; preds = %if.else.139
  %137 = load i32, i32* @numcells, align 4
  %add142 = add nsw i32 %137, 1
  store i32 %add142, i32* %pad, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.180, %if.then.141
  %138 = load i32, i32* %pad, align 4
  %139 = load i32, i32* @numcells, align 4
  %140 = load i32, i32* @numpads, align 4
  %add144 = add nsw i32 %139, %140
  %cmp145 = icmp sle i32 %138, %add144
  br i1 %cmp145, label %for.body.146, label %for.end.182

for.body.146:                                     ; preds = %for.cond.143
  %141 = load i32, i32* %pad, align 4
  %idxprom147 = sext i32 %141 to i64
  %142 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx148 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %142, i64 %idxprom147
  %143 = load %struct.cellbox*, %struct.cellbox** %arrayidx148, align 8
  store %struct.cellbox* %143, %struct.cellbox** %padptr, align 8
  %144 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %144, i32 0, i32 11
  %145 = load i32, i32* %padside149, align 4
  %cmp150 = icmp ne i32 %145, 2
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %for.body.146
  br label %for.inc.180

if.end.152:                                       ; preds = %for.body.146
  %146 = load i32, i32* %endy1, align 4
  %147 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %ycenter153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %147, i32 0, i32 3
  %148 = load i32, i32* %ycenter153, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %orient154 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 5
  %150 = load i32, i32* %orient154, align 4
  %idxprom155 = sext i32 %150 to i64
  %151 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %config156 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 21
  %arrayidx157 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config156, i32 0, i64 %idxprom155
  %152 = load %struct.tilebox*, %struct.tilebox** %arrayidx157, align 8
  %bottom158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i32 0, i32 11
  %153 = load i32, i32* %bottom158, align 4
  %add159 = add nsw i32 %148, %153
  %sub160 = sub nsw i32 %146, %add159
  store i32 %sub160, i32* %deltaY, align 4
  %154 = load i32, i32* %deltaY, align 4
  %cmp161 = icmp sle i32 %154, 0
  br i1 %cmp161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.152
  br label %for.end.182

if.end.163:                                       ; preds = %if.end.152
  %155 = load i32, i32* @numcells, align 4
  %add164 = add nsw i32 %155, 1
  store i32 %add164, i32* %pad, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.177, %if.end.163
  %156 = load i32, i32* %pad, align 4
  %157 = load i32, i32* @numcells, align 4
  %158 = load i32, i32* @numpads, align 4
  %add166 = add nsw i32 %157, %158
  %cmp167 = icmp sle i32 %156, %add166
  br i1 %cmp167, label %for.body.168, label %for.end.179

for.body.168:                                     ; preds = %for.cond.165
  %159 = load i32, i32* %pad, align 4
  %idxprom169 = sext i32 %159 to i64
  %160 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx170 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %160, i64 %idxprom169
  %161 = load %struct.cellbox*, %struct.cellbox** %arrayidx170, align 8
  store %struct.cellbox* %161, %struct.cellbox** %padptr, align 8
  %162 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %padside171 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %162, i32 0, i32 11
  %163 = load i32, i32* %padside171, align 4
  %cmp172 = icmp eq i32 %163, 2
  br i1 %cmp172, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %for.body.168
  %164 = load i32, i32* %deltaY, align 4
  %165 = load %struct.cellbox*, %struct.cellbox** %padptr, align 8
  %ycenter174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 3
  %166 = load i32, i32* %ycenter174, align 4
  %add175 = add nsw i32 %166, %164
  store i32 %add175, i32* %ycenter174, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.173, %for.body.168
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %167 = load i32, i32* %pad, align 4
  %inc178 = add nsw i32 %167, 1
  store i32 %inc178, i32* %pad, align 4
  br label %for.cond.165

for.end.179:                                      ; preds = %for.cond.165
  br label %for.end.182

for.inc.180:                                      ; preds = %if.then.151
  %168 = load i32, i32* %pad, align 4
  %inc181 = add nsw i32 %168, 1
  store i32 %inc181, i32* %pad, align 4
  br label %for.cond.143

for.end.182:                                      ; preds = %for.end.179, %if.then.162, %for.cond.143
  br label %if.end.183

if.end.183:                                       ; preds = %for.end.182, %if.else.139
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %for.end.138
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %for.end.94
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %for.end.51
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186, %if.then
  %169 = load i32, i32* %cell, align 4
  %inc188 = add nsw i32 %169, 1
  store i32 %inc188, i32* %cell, align 4
  br label %for.cond

for.end.189:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
