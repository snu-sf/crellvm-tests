; ModuleID = './MultiSource.Benchmarks.Prolangs-C/244.TimberWolfMC.buster.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external global %struct.bustbox*, align 8
@R = external global %struct.bustbox*, align 8

; Function Attrs: nounwind uwtable
define void @buster() #0 {
entry:
  %k = alloca i32, align 4
  %Pk = alloca [2 x i32], align 4
  %Pl = alloca [2 x i32], align 4
  %Pm = alloca [2 x i32], align 4
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %kmin = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 1000000000, i32* %ymin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx = getelementptr inbounds %struct.bustbox, %struct.bustbox* %1, i64 0
  %xc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xc, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx1 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 %idxprom
  %yc = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx1, i32 0, i32 1
  %5 = load i32, i32* %yc, align 4
  %6 = load i32, i32* %ymin, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx4 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %idxprom3
  %yc5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx4, i32 0, i32 1
  %9 = load i32, i32* %yc5, align 4
  store i32 %9, i32* %ymin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1000000000, i32* %xmin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.26, %for.end
  %11 = load i32, i32* %k, align 4
  %12 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 0
  %xc8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx7, i32 0, i32 0
  %13 = load i32, i32* %xc8, align 4
  %cmp9 = icmp sle i32 %11, %13
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.6
  %14 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %idxprom11
  %yc13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx12, i32 0, i32 1
  %16 = load i32, i32* %yc13, align 4
  %17 = load i32, i32* %ymin, align 4
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %for.body.10
  %18 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %idxprom16
  %xc18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx17, i32 0, i32 0
  %20 = load i32, i32* %xc18, align 4
  %21 = load i32, i32* %xmin, align 4
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.15
  %22 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %idxprom21
  %xc23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx22, i32 0, i32 0
  %24 = load i32, i32* %xc23, align 4
  store i32 %24, i32* %xmin, align 4
  %25 = load i32, i32* %k, align 4
  store i32 %25, i32* %kmin, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body.10
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %26 = load i32, i32* %k, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %k, align 4
  br label %for.cond.6

for.end.28:                                       ; preds = %for.cond.6
  %27 = load i32, i32* %xmin, align 4
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 0
  store i32 %27, i32* %arrayidx29, align 4
  %28 = load i32, i32* %ymin, align 4
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 1
  store i32 %28, i32* %arrayidx30, align 4
  store i32 1000000000, i32* %xmin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.54, %for.end.28
  %29 = load i32, i32* %k, align 4
  %30 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i64 0
  %xc33 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx32, i32 0, i32 0
  %31 = load i32, i32* %xc33, align 4
  %cmp34 = icmp sle i32 %29, %31
  br i1 %cmp34, label %for.body.35, label %for.end.56

for.body.35:                                      ; preds = %for.cond.31
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %kmin, align 4
  %cmp36 = icmp eq i32 %32, %33
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.35
  br label %for.inc.54

if.end.38:                                        ; preds = %for.body.35
  %34 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 %idxprom39
  %yc41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx40, i32 0, i32 1
  %36 = load i32, i32* %yc41, align 4
  %37 = load i32, i32* %ymin, align 4
  %cmp42 = icmp eq i32 %36, %37
  br i1 %cmp42, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.end.38
  %38 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 %idxprom44
  %xc46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx45, i32 0, i32 0
  %40 = load i32, i32* %xc46, align 4
  %41 = load i32, i32* %xmin, align 4
  %cmp47 = icmp slt i32 %40, %41
  br i1 %cmp47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.then.43
  %42 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 %idxprom49
  %xc51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx50, i32 0, i32 0
  %44 = load i32, i32* %xc51, align 4
  store i32 %44, i32* %xmin, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.then.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.38
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53, %if.then.37
  %45 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.31

for.end.56:                                       ; preds = %for.cond.31
  %46 = load i32, i32* %xmin, align 4
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %Pl, i32 0, i64 0
  store i32 %46, i32* %arrayidx57, align 4
  %47 = load i32, i32* %ymin, align 4
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %Pl, i32 0, i64 1
  store i32 %47, i32* %arrayidx58, align 4
  store i32 1000000000, i32* %ymin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.80, %for.end.56
  %48 = load i32, i32* %k, align 4
  %49 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx60 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 0
  %xc61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx60, i32 0, i32 0
  %50 = load i32, i32* %xc61, align 4
  %cmp62 = icmp sle i32 %48, %50
  br i1 %cmp62, label %for.body.63, label %for.end.82

for.body.63:                                      ; preds = %for.cond.59
  %51 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %51 to i64
  %52 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %52, i64 %idxprom64
  %yc66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx65, i32 0, i32 1
  %53 = load i32, i32* %yc66, align 4
  %arrayidx67 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 1
  %54 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %53, %54
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.63
  br label %for.inc.80

if.end.70:                                        ; preds = %for.body.63
  %55 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx72 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %56, i64 %idxprom71
  %yc73 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx72, i32 0, i32 1
  %57 = load i32, i32* %yc73, align 4
  %58 = load i32, i32* %ymin, align 4
  %cmp74 = icmp slt i32 %57, %58
  br i1 %cmp74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.70
  %59 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx77 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %60, i64 %idxprom76
  %yc78 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx77, i32 0, i32 1
  %61 = load i32, i32* %yc78, align 4
  store i32 %61, i32* %ymin, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.70
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79, %if.then.69
  %62 = load i32, i32* %k, align 4
  %inc81 = add nsw i32 %62, 1
  store i32 %inc81, i32* %k, align 4
  br label %for.cond.59

for.end.82:                                       ; preds = %for.cond.59
  store i32 1000000000, i32* %xmin, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.115, %for.end.82
  %63 = load i32, i32* %k, align 4
  %64 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i64 0
  %xc85 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx84, i32 0, i32 0
  %65 = load i32, i32* %xc85, align 4
  %cmp86 = icmp sle i32 %63, %65
  br i1 %cmp86, label %for.body.87, label %for.end.117

for.body.87:                                      ; preds = %for.cond.83
  %66 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx89 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i64 %idxprom88
  %yc90 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx89, i32 0, i32 1
  %68 = load i32, i32* %yc90, align 4
  %69 = load i32, i32* %ymin, align 4
  %cmp91 = icmp eq i32 %68, %69
  br i1 %cmp91, label %if.then.92, label %if.end.114

if.then.92:                                       ; preds = %for.body.87
  %70 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %70 to i64
  %71 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx94 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 %idxprom93
  %xc95 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx94, i32 0, i32 0
  %72 = load i32, i32* %xc95, align 4
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 0
  %73 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp slt i32 %72, %73
  br i1 %cmp97, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.92
  %74 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %74 to i64
  %75 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx99 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i64 %idxprom98
  %xc100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx99, i32 0, i32 0
  %76 = load i32, i32* %xc100, align 4
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %Pl, i32 0, i64 0
  %77 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp sgt i32 %76, %77
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false, %if.then.92
  br label %for.inc.115

if.end.104:                                       ; preds = %lor.lhs.false
  %78 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %78 to i64
  %79 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx106 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %79, i64 %idxprom105
  %xc107 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx106, i32 0, i32 0
  %80 = load i32, i32* %xc107, align 4
  %81 = load i32, i32* %xmin, align 4
  %cmp108 = icmp slt i32 %80, %81
  br i1 %cmp108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.end.104
  %82 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %82 to i64
  %83 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx111 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 %idxprom110
  %xc112 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx111, i32 0, i32 0
  %84 = load i32, i32* %xc112, align 4
  store i32 %84, i32* %xmin, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %for.body.87
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114, %if.then.103
  %85 = load i32, i32* %k, align 4
  %inc116 = add nsw i32 %85, 1
  store i32 %inc116, i32* %k, align 4
  br label %for.cond.83

for.end.117:                                      ; preds = %for.cond.83
  %86 = load i32, i32* %xmin, align 4
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %Pm, i32 0, i64 0
  store i32 %86, i32* %arrayidx118, align 4
  %87 = load i32, i32* %ymin, align 4
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %Pm, i32 0, i64 1
  store i32 %87, i32* %arrayidx119, align 4
  %arrayidx120 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 0
  %88 = load i32, i32* %arrayidx120, align 4
  %89 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx121 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i64 1
  %xc122 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx121, i32 0, i32 0
  store i32 %88, i32* %xc122, align 4
  %arrayidx123 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 1
  %90 = load i32, i32* %arrayidx123, align 4
  %91 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx124 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %91, i64 1
  %yc125 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx124, i32 0, i32 1
  store i32 %90, i32* %yc125, align 4
  %arrayidx126 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 0
  %92 = load i32, i32* %arrayidx126, align 4
  %93 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx127 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %93, i64 2
  %xc128 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx127, i32 0, i32 0
  store i32 %92, i32* %xc128, align 4
  %arrayidx129 = getelementptr inbounds [2 x i32], [2 x i32]* %Pm, i32 0, i64 1
  %94 = load i32, i32* %arrayidx129, align 4
  %95 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx130 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %95, i64 2
  %yc131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx130, i32 0, i32 1
  store i32 %94, i32* %yc131, align 4
  %arrayidx132 = getelementptr inbounds [2 x i32], [2 x i32]* %Pl, i32 0, i64 0
  %96 = load i32, i32* %arrayidx132, align 4
  %97 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx133 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 3
  %xc134 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx133, i32 0, i32 0
  store i32 %96, i32* %xc134, align 4
  %arrayidx135 = getelementptr inbounds [2 x i32], [2 x i32]* %Pm, i32 0, i64 1
  %98 = load i32, i32* %arrayidx135, align 4
  %99 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx136 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %99, i64 3
  %yc137 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx136, i32 0, i32 1
  store i32 %98, i32* %yc137, align 4
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %Pl, i32 0, i64 0
  %100 = load i32, i32* %arrayidx138, align 4
  %101 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx139 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %101, i64 4
  %xc140 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx139, i32 0, i32 0
  store i32 %100, i32* %xc140, align 4
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %Pk, i32 0, i64 1
  %102 = load i32, i32* %arrayidx141, align 4
  %103 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx142 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %103, i64 4
  %yc143 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx142, i32 0, i32 1
  store i32 %102, i32* %yc143, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.179, %for.end.117
  %104 = load i32, i32* %k, align 4
  %105 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx145 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %105, i64 0
  %xc146 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx145, i32 0, i32 0
  %106 = load i32, i32* %xc146, align 4
  %cmp147 = icmp sle i32 %104, %106
  br i1 %cmp147, label %for.body.148, label %for.end.181

for.body.148:                                     ; preds = %for.cond.144
  %107 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx149 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %107, i64 1
  %xc150 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx149, i32 0, i32 0
  %108 = load i32, i32* %xc150, align 4
  %109 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %109 to i64
  %110 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx152 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %110, i64 %idxprom151
  %xc153 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx152, i32 0, i32 0
  %111 = load i32, i32* %xc153, align 4
  %cmp154 = icmp eq i32 %108, %111
  br i1 %cmp154, label %land.lhs.true, label %if.end.178

land.lhs.true:                                    ; preds = %for.body.148
  %112 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx155 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %112, i64 1
  %yc156 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx155, i32 0, i32 1
  %113 = load i32, i32* %yc156, align 4
  %114 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %114 to i64
  %115 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx158 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %115, i64 %idxprom157
  %yc159 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx158, i32 0, i32 1
  %116 = load i32, i32* %yc159, align 4
  %cmp160 = icmp eq i32 %113, %116
  br i1 %cmp160, label %if.then.161, label %if.end.178

if.then.161:                                      ; preds = %land.lhs.true
  %117 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx162 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %117, i64 0
  %xc163 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx162, i32 0, i32 0
  %118 = load i32, i32* %xc163, align 4
  %idxprom164 = sext i32 %118 to i64
  %119 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx165 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %119, i64 %idxprom164
  %xc166 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx165, i32 0, i32 0
  %120 = load i32, i32* %xc166, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom167 = sext i32 %121 to i64
  %122 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx168 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %122, i64 %idxprom167
  %xc169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx168, i32 0, i32 0
  store i32 %120, i32* %xc169, align 4
  %123 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx170 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %123, i64 0
  %xc171 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx170, i32 0, i32 0
  %124 = load i32, i32* %xc171, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %xc171, align 4
  %idxprom172 = sext i32 %124 to i64
  %125 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx173 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %125, i64 %idxprom172
  %yc174 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx173, i32 0, i32 1
  %126 = load i32, i32* %yc174, align 4
  %127 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %127 to i64
  %128 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx176 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %128, i64 %idxprom175
  %yc177 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx176, i32 0, i32 1
  store i32 %126, i32* %yc177, align 4
  br label %for.end.181

if.end.178:                                       ; preds = %land.lhs.true, %for.body.148
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %129 = load i32, i32* %k, align 4
  %inc180 = add nsw i32 %129, 1
  store i32 %inc180, i32* %k, align 4
  br label %for.cond.144

for.end.181:                                      ; preds = %if.then.161, %for.cond.144
  store i32 1, i32* %k, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.219, %for.end.181
  %130 = load i32, i32* %k, align 4
  %131 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx183 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %131, i64 0
  %xc184 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx183, i32 0, i32 0
  %132 = load i32, i32* %xc184, align 4
  %cmp185 = icmp sle i32 %130, %132
  br i1 %cmp185, label %for.body.186, label %for.end.221

for.body.186:                                     ; preds = %for.cond.182
  %133 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx187 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %133, i64 4
  %xc188 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx187, i32 0, i32 0
  %134 = load i32, i32* %xc188, align 4
  %135 = load i32, i32* %k, align 4
  %idxprom189 = sext i32 %135 to i64
  %136 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx190 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %136, i64 %idxprom189
  %xc191 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx190, i32 0, i32 0
  %137 = load i32, i32* %xc191, align 4
  %cmp192 = icmp eq i32 %134, %137
  br i1 %cmp192, label %land.lhs.true.193, label %if.end.218

land.lhs.true.193:                                ; preds = %for.body.186
  %138 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx194 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 4
  %yc195 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx194, i32 0, i32 1
  %139 = load i32, i32* %yc195, align 4
  %140 = load i32, i32* %k, align 4
  %idxprom196 = sext i32 %140 to i64
  %141 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx197 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %141, i64 %idxprom196
  %yc198 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx197, i32 0, i32 1
  %142 = load i32, i32* %yc198, align 4
  %cmp199 = icmp eq i32 %139, %142
  br i1 %cmp199, label %if.then.200, label %if.end.218

if.then.200:                                      ; preds = %land.lhs.true.193
  %143 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx201 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %143, i64 0
  %xc202 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx201, i32 0, i32 0
  %144 = load i32, i32* %xc202, align 4
  %idxprom203 = sext i32 %144 to i64
  %145 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx204 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %145, i64 %idxprom203
  %xc205 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx204, i32 0, i32 0
  %146 = load i32, i32* %xc205, align 4
  %147 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %147 to i64
  %148 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx207 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %148, i64 %idxprom206
  %xc208 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx207, i32 0, i32 0
  store i32 %146, i32* %xc208, align 4
  %149 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx209 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %149, i64 0
  %xc210 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx209, i32 0, i32 0
  %150 = load i32, i32* %xc210, align 4
  %dec211 = add nsw i32 %150, -1
  store i32 %dec211, i32* %xc210, align 4
  %idxprom212 = sext i32 %150 to i64
  %151 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx213 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %151, i64 %idxprom212
  %yc214 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx213, i32 0, i32 1
  %152 = load i32, i32* %yc214, align 4
  %153 = load i32, i32* %k, align 4
  %idxprom215 = sext i32 %153 to i64
  %154 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx216 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %154, i64 %idxprom215
  %yc217 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx216, i32 0, i32 1
  store i32 %152, i32* %yc217, align 4
  br label %for.end.221

if.end.218:                                       ; preds = %land.lhs.true.193, %for.body.186
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %155 = load i32, i32* %k, align 4
  %inc220 = add nsw i32 %155, 1
  store i32 %inc220, i32* %k, align 4
  br label %for.cond.182

for.end.221:                                      ; preds = %if.then.200, %for.cond.182
  store i32 0, i32* %found, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.259, %for.end.221
  %156 = load i32, i32* %k, align 4
  %157 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx223 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %157, i64 0
  %xc224 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx223, i32 0, i32 0
  %158 = load i32, i32* %xc224, align 4
  %cmp225 = icmp sle i32 %156, %158
  br i1 %cmp225, label %for.body.226, label %for.end.261

for.body.226:                                     ; preds = %for.cond.222
  %159 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx227 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %159, i64 2
  %xc228 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx227, i32 0, i32 0
  %160 = load i32, i32* %xc228, align 4
  %161 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %161 to i64
  %162 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx230 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %162, i64 %idxprom229
  %xc231 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx230, i32 0, i32 0
  %163 = load i32, i32* %xc231, align 4
  %cmp232 = icmp eq i32 %160, %163
  br i1 %cmp232, label %land.lhs.true.233, label %if.end.258

land.lhs.true.233:                                ; preds = %for.body.226
  %164 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx234 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %164, i64 2
  %yc235 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx234, i32 0, i32 1
  %165 = load i32, i32* %yc235, align 4
  %166 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %166 to i64
  %167 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx237 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %167, i64 %idxprom236
  %yc238 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx237, i32 0, i32 1
  %168 = load i32, i32* %yc238, align 4
  %cmp239 = icmp eq i32 %165, %168
  br i1 %cmp239, label %if.then.240, label %if.end.258

if.then.240:                                      ; preds = %land.lhs.true.233
  %169 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx241 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %169, i64 0
  %xc242 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx241, i32 0, i32 0
  %170 = load i32, i32* %xc242, align 4
  %idxprom243 = sext i32 %170 to i64
  %171 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx244 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %171, i64 %idxprom243
  %xc245 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx244, i32 0, i32 0
  %172 = load i32, i32* %xc245, align 4
  %173 = load i32, i32* %k, align 4
  %idxprom246 = sext i32 %173 to i64
  %174 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx247 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %174, i64 %idxprom246
  %xc248 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx247, i32 0, i32 0
  store i32 %172, i32* %xc248, align 4
  %175 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx249 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %175, i64 0
  %xc250 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx249, i32 0, i32 0
  %176 = load i32, i32* %xc250, align 4
  %dec251 = add nsw i32 %176, -1
  store i32 %dec251, i32* %xc250, align 4
  %idxprom252 = sext i32 %176 to i64
  %177 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx253 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %177, i64 %idxprom252
  %yc254 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx253, i32 0, i32 1
  %178 = load i32, i32* %yc254, align 4
  %179 = load i32, i32* %k, align 4
  %idxprom255 = sext i32 %179 to i64
  %180 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx256 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %180, i64 %idxprom255
  %yc257 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx256, i32 0, i32 1
  store i32 %178, i32* %yc257, align 4
  store i32 1, i32* %found, align 4
  br label %for.end.261

if.end.258:                                       ; preds = %land.lhs.true.233, %for.body.226
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %181 = load i32, i32* %k, align 4
  %inc260 = add nsw i32 %181, 1
  store i32 %inc260, i32* %k, align 4
  br label %for.cond.222

for.end.261:                                      ; preds = %if.then.240, %for.cond.222
  %182 = load i32, i32* %found, align 4
  %cmp262 = icmp eq i32 %182, 0
  br i1 %cmp262, label %if.then.263, label %if.end.279

if.then.263:                                      ; preds = %for.end.261
  %183 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx264 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %183, i64 2
  %xc265 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx264, i32 0, i32 0
  %184 = load i32, i32* %xc265, align 4
  %185 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx266 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %185, i64 0
  %xc267 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx266, i32 0, i32 0
  %186 = load i32, i32* %xc267, align 4
  %inc268 = add nsw i32 %186, 1
  store i32 %inc268, i32* %xc267, align 4
  %idxprom269 = sext i32 %inc268 to i64
  %187 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx270 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %187, i64 %idxprom269
  %xc271 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx270, i32 0, i32 0
  store i32 %184, i32* %xc271, align 4
  %188 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx272 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %188, i64 2
  %yc273 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx272, i32 0, i32 1
  %189 = load i32, i32* %yc273, align 4
  %190 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx274 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %190, i64 0
  %xc275 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx274, i32 0, i32 0
  %191 = load i32, i32* %xc275, align 4
  %idxprom276 = sext i32 %191 to i64
  %192 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx277 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %192, i64 %idxprom276
  %yc278 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx277, i32 0, i32 1
  store i32 %189, i32* %yc278, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.263, %for.end.261
  store i32 0, i32* %found, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.317, %if.end.279
  %193 = load i32, i32* %k, align 4
  %194 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx281 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %194, i64 0
  %xc282 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx281, i32 0, i32 0
  %195 = load i32, i32* %xc282, align 4
  %cmp283 = icmp sle i32 %193, %195
  br i1 %cmp283, label %for.body.284, label %for.end.319

for.body.284:                                     ; preds = %for.cond.280
  %196 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx285 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %196, i64 3
  %xc286 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx285, i32 0, i32 0
  %197 = load i32, i32* %xc286, align 4
  %198 = load i32, i32* %k, align 4
  %idxprom287 = sext i32 %198 to i64
  %199 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx288 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %199, i64 %idxprom287
  %xc289 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx288, i32 0, i32 0
  %200 = load i32, i32* %xc289, align 4
  %cmp290 = icmp eq i32 %197, %200
  br i1 %cmp290, label %land.lhs.true.291, label %if.end.316

land.lhs.true.291:                                ; preds = %for.body.284
  %201 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx292 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %201, i64 3
  %yc293 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx292, i32 0, i32 1
  %202 = load i32, i32* %yc293, align 4
  %203 = load i32, i32* %k, align 4
  %idxprom294 = sext i32 %203 to i64
  %204 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx295 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %204, i64 %idxprom294
  %yc296 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx295, i32 0, i32 1
  %205 = load i32, i32* %yc296, align 4
  %cmp297 = icmp eq i32 %202, %205
  br i1 %cmp297, label %if.then.298, label %if.end.316

if.then.298:                                      ; preds = %land.lhs.true.291
  %206 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx299 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %206, i64 0
  %xc300 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx299, i32 0, i32 0
  %207 = load i32, i32* %xc300, align 4
  %idxprom301 = sext i32 %207 to i64
  %208 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx302 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %208, i64 %idxprom301
  %xc303 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx302, i32 0, i32 0
  %209 = load i32, i32* %xc303, align 4
  %210 = load i32, i32* %k, align 4
  %idxprom304 = sext i32 %210 to i64
  %211 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx305 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %211, i64 %idxprom304
  %xc306 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx305, i32 0, i32 0
  store i32 %209, i32* %xc306, align 4
  %212 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx307 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %212, i64 0
  %xc308 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx307, i32 0, i32 0
  %213 = load i32, i32* %xc308, align 4
  %dec309 = add nsw i32 %213, -1
  store i32 %dec309, i32* %xc308, align 4
  %idxprom310 = sext i32 %213 to i64
  %214 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx311 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %214, i64 %idxprom310
  %yc312 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx311, i32 0, i32 1
  %215 = load i32, i32* %yc312, align 4
  %216 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %216 to i64
  %217 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx314 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %217, i64 %idxprom313
  %yc315 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx314, i32 0, i32 1
  store i32 %215, i32* %yc315, align 4
  store i32 1, i32* %found, align 4
  br label %for.end.319

if.end.316:                                       ; preds = %land.lhs.true.291, %for.body.284
  br label %for.inc.317

for.inc.317:                                      ; preds = %if.end.316
  %218 = load i32, i32* %k, align 4
  %inc318 = add nsw i32 %218, 1
  store i32 %inc318, i32* %k, align 4
  br label %for.cond.280

for.end.319:                                      ; preds = %if.then.298, %for.cond.280
  %219 = load i32, i32* %found, align 4
  %cmp320 = icmp eq i32 %219, 0
  br i1 %cmp320, label %if.then.321, label %if.end.337

if.then.321:                                      ; preds = %for.end.319
  %220 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx322 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %220, i64 3
  %xc323 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx322, i32 0, i32 0
  %221 = load i32, i32* %xc323, align 4
  %222 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx324 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %222, i64 0
  %xc325 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx324, i32 0, i32 0
  %223 = load i32, i32* %xc325, align 4
  %inc326 = add nsw i32 %223, 1
  store i32 %inc326, i32* %xc325, align 4
  %idxprom327 = sext i32 %inc326 to i64
  %224 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx328 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %224, i64 %idxprom327
  %xc329 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx328, i32 0, i32 0
  store i32 %221, i32* %xc329, align 4
  %225 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %arrayidx330 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %225, i64 3
  %yc331 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx330, i32 0, i32 1
  %226 = load i32, i32* %yc331, align 4
  %227 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx332 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %227, i64 0
  %xc333 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx332, i32 0, i32 0
  %228 = load i32, i32* %xc333, align 4
  %idxprom334 = sext i32 %228 to i64
  %229 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %arrayidx335 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %229, i64 %idxprom334
  %yc336 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %arrayidx335, i32 0, i32 1
  store i32 %226, i32* %yc336, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.321, %for.end.319
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
