; ModuleID = './MultiSource.Benchmarks.Prolangs-C/202.TimberWolfMC.doborder.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@numberCells = external global i32, align 4
@cellList = external global %struct.clbox**, align 8

; Function Attrs: nounwind uwtable
define void @doborder() #0 {
entry:
  %cell = alloca i32, align 4
  %i = alloca i32, align 4
  %orient = alloca i32, align 4
  %l = alloca i32, align 4
  %b = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %tptr = alloca %struct.tilebox*, align 8
  %tptr0 = alloca %struct.tilebox*, align 8
  %clptr = alloca %struct.clbox*, align 8
  %cl2ptr = alloca %struct.clbox*, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.176, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.178

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 5
  %6 = load i32, i32* %orient1, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom2
  %8 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  store %struct.tilebox* %8, %struct.tilebox** %tileptr, align 8
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 2
  %10 = load i32, i32* %xcenter, align 4
  store i32 %10, i32* %xc, align 4
  %11 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 3
  %12 = load i32, i32* %ycenter, align 4
  store i32 %12, i32* %yc, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp5 = icmp ne %struct.tilebox* %13, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %14 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i32 0, i32 9
  %15 = load i32, i32* %left, align 4
  %16 = load i32, i32* %xc, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %l, align 4
  %17 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 10
  %18 = load i32, i32* %right, align 4
  %19 = load i32, i32* %xc, align 4
  %add7 = add nsw i32 %18, %19
  store i32 %add7, i32* %r, align 4
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 11
  %21 = load i32, i32* %bottom, align 4
  %22 = load i32, i32* %yc, align 4
  %add8 = add nsw i32 %21, %22
  store i32 %add8, i32* %b, align 4
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 12
  %24 = load i32, i32* %top, align 4
  %25 = load i32, i32* %yc, align 4
  %add9 = add nsw i32 %24, %25
  store i32 %add9, i32* %t, align 4
  %26 = load i32, i32* %cell, align 4
  %27 = load i32, i32* %l, align 4
  %28 = load i32, i32* %b, align 4
  %29 = load i32, i32* %t, align 4
  %call = call i32 @findBorder(i32 %26, i32 %27, i32 %28, i32 %29, i32 0)
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 5
  store i32 %call, i32* %lborder, align 4
  %31 = load i32, i32* %cell, align 4
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %t, align 4
  %call10 = call i32 @findBorder(i32 %31, i32 %32, i32 %33, i32 %34, i32 0)
  %35 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 6
  store i32 %call10, i32* %rborder, align 4
  %36 = load i32, i32* %cell, align 4
  %37 = load i32, i32* %b, align 4
  %38 = load i32, i32* %l, align 4
  %39 = load i32, i32* %r, align 4
  %call11 = call i32 @findBorder(i32 %36, i32 %37, i32 %38, i32 %39, i32 1)
  %40 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 7
  store i32 %call11, i32* %bborder, align 4
  %41 = load i32, i32* %cell, align 4
  %42 = load i32, i32* %t, align 4
  %43 = load i32, i32* %l, align 4
  %44 = load i32, i32* %r, align 4
  %call12 = call i32 @findBorder(i32 %41, i32 %42, i32 %43, i32 %44, i32 1)
  %45 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tborder = getelementptr inbounds %struct.tilebox, %struct.tilebox* %45, i32 0, i32 8
  store i32 %call12, i32* %tborder, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %46 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 0
  %47 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %47, %struct.tilebox** %tileptr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %48 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 5
  %49 = load i32, i32* %orient13, align 4
  %cmp14 = icmp ne i32 %49, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %50 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i32 0, i32 21
  %arrayidx16 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config15, i32 0, i64 0
  %51 = load %struct.tilebox*, %struct.tilebox** %arrayidx16, align 8
  store %struct.tilebox* %51, %struct.tilebox** %tptr0, align 8
  %52 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 5
  %53 = load i32, i32* %orient17, align 4
  %idxprom18 = sext i32 %53 to i64
  %54 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 21
  %arrayidx20 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config19, i32 0, i64 %idxprom18
  %55 = load %struct.tilebox*, %struct.tilebox** %arrayidx20, align 8
  store %struct.tilebox* %55, %struct.tilebox** %tptr, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.87, %if.then
  %56 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %cmp22 = icmp ne %struct.tilebox* %56, null
  br i1 %cmp22, label %for.body.23, label %for.end.90

for.body.23:                                      ; preds = %for.cond.21
  %57 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %57, i32 0, i32 5
  %58 = load i32, i32* %orient24, align 4
  switch i32 %58, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.42
    i32 4, label %sw.bb.51
    i32 5, label %sw.bb.60
    i32 6, label %sw.bb.69
    i32 7, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %for.body.23
  %59 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder25 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %59, i32 0, i32 7
  %60 = load i32, i32* %bborder25, align 4
  %61 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i32 0, i32 8
  store i32 %60, i32* %tborder26, align 4
  %62 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 8
  %63 = load i32, i32* %tborder27, align 4
  %64 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %64, i32 0, i32 7
  store i32 %63, i32* %bborder28, align 4
  %65 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder29 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 6
  %66 = load i32, i32* %rborder29, align 4
  %67 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder30 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %67, i32 0, i32 6
  store i32 %66, i32* %rborder30, align 4
  %68 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 5
  %69 = load i32, i32* %lborder31, align 4
  %70 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder32 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %70, i32 0, i32 5
  store i32 %69, i32* %lborder32, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body.23
  %71 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 5
  %72 = load i32, i32* %lborder34, align 4
  %73 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %73, i32 0, i32 6
  store i32 %72, i32* %rborder35, align 4
  %74 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 6
  %75 = load i32, i32* %rborder36, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 5
  store i32 %75, i32* %lborder37, align 4
  %77 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i32 0, i32 6
  %78 = load i32, i32* %rborder38, align 4
  %79 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 6
  store i32 %78, i32* %rborder39, align 4
  %80 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %80, i32 0, i32 5
  %81 = load i32, i32* %lborder40, align 4
  %82 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %82, i32 0, i32 5
  store i32 %81, i32* %lborder41, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body.23
  %83 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %83, i32 0, i32 7
  %84 = load i32, i32* %bborder43, align 4
  %85 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i32 0, i32 8
  store i32 %84, i32* %tborder44, align 4
  %86 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %86, i32 0, i32 8
  %87 = load i32, i32* %tborder45, align 4
  %88 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %88, i32 0, i32 7
  store i32 %87, i32* %bborder46, align 4
  %89 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %89, i32 0, i32 5
  %90 = load i32, i32* %lborder47, align 4
  %91 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i32 0, i32 6
  store i32 %90, i32* %rborder48, align 4
  %92 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder49 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 6
  %93 = load i32, i32* %rborder49, align 4
  %94 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder50 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 5
  store i32 %93, i32* %lborder50, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %for.body.23
  %95 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder52 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i32 0, i32 5
  %96 = load i32, i32* %lborder52, align 4
  %97 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i32 0, i32 8
  store i32 %96, i32* %tborder53, align 4
  %98 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder54 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %98, i32 0, i32 6
  %99 = load i32, i32* %rborder54, align 4
  %100 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 7
  store i32 %99, i32* %bborder55, align 4
  %101 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder56 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 7
  %102 = load i32, i32* %bborder56, align 4
  %103 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %103, i32 0, i32 6
  store i32 %102, i32* %rborder57, align 4
  %104 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %104, i32 0, i32 8
  %105 = load i32, i32* %tborder58, align 4
  %106 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 5
  store i32 %105, i32* %lborder59, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %for.body.23
  %107 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder61 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %107, i32 0, i32 6
  %108 = load i32, i32* %rborder61, align 4
  %109 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %109, i32 0, i32 8
  store i32 %108, i32* %tborder62, align 4
  %110 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 5
  %111 = load i32, i32* %lborder63, align 4
  %112 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %112, i32 0, i32 7
  store i32 %111, i32* %bborder64, align 4
  %113 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder65 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 8
  %114 = load i32, i32* %tborder65, align 4
  %115 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %115, i32 0, i32 6
  store i32 %114, i32* %rborder66, align 4
  %116 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i32 0, i32 7
  %117 = load i32, i32* %bborder67, align 4
  %118 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder68 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 5
  store i32 %117, i32* %lborder68, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body.23
  %119 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 7
  %120 = load i32, i32* %bborder70, align 4
  %121 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %121, i32 0, i32 5
  store i32 %120, i32* %lborder71, align 4
  %122 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 6
  %123 = load i32, i32* %rborder72, align 4
  %124 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 7
  store i32 %123, i32* %bborder73, align 4
  %125 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 8
  %126 = load i32, i32* %tborder74, align 4
  %127 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i32 0, i32 6
  store i32 %126, i32* %rborder75, align 4
  %128 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %128, i32 0, i32 5
  %129 = load i32, i32* %lborder76, align 4
  %130 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder77 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 8
  store i32 %129, i32* %tborder77, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %for.body.23
  %131 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder79 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %131, i32 0, i32 8
  %132 = load i32, i32* %tborder79, align 4
  %133 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %133, i32 0, i32 5
  store i32 %132, i32* %lborder80, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder81 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 5
  %135 = load i32, i32* %lborder81, align 4
  %136 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 7
  store i32 %135, i32* %bborder82, align 4
  %137 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder83 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %137, i32 0, i32 7
  %138 = load i32, i32* %bborder83, align 4
  %139 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder84 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %139, i32 0, i32 6
  store i32 %138, i32* %rborder84, align 4
  %140 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 6
  %141 = load i32, i32* %rborder85, align 4
  %142 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder86 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %142, i32 0, i32 8
  store i32 %141, i32* %tborder86, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.23, %sw.bb.78, %sw.bb.69, %sw.bb.60, %sw.bb.51, %sw.bb.42, %sw.bb.33, %sw.bb
  br label %for.inc.87

for.inc.87:                                       ; preds = %sw.epilog
  %143 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %143, i32 0, i32 0
  %144 = load %struct.tilebox*, %struct.tilebox** %nexttile88, align 8
  store %struct.tilebox* %144, %struct.tilebox** %tptr, align 8
  %145 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile89 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %145, i32 0, i32 0
  %146 = load %struct.tilebox*, %struct.tilebox** %nexttile89, align 8
  store %struct.tilebox* %146, %struct.tilebox** %tptr0, align 8
  br label %for.cond.21

for.end.90:                                       ; preds = %for.cond.21
  br label %if.end

if.end:                                           ; preds = %for.end.90, %for.end
  store i32 1, i32* %orient, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.174, %if.end
  %147 = load i32, i32* %orient, align 4
  %cmp92 = icmp sle i32 %147, 7
  br i1 %cmp92, label %for.body.93, label %for.end.175

for.body.93:                                      ; preds = %for.cond.91
  %148 = load i32, i32* %orient, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 5
  %150 = load i32, i32* %orient94, align 4
  %cmp95 = icmp eq i32 %148, %150
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %for.body.93
  br label %for.inc.174

if.end.97:                                        ; preds = %for.body.93
  %151 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 21
  %arrayidx99 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config98, i32 0, i64 0
  %152 = load %struct.tilebox*, %struct.tilebox** %arrayidx99, align 8
  store %struct.tilebox* %152, %struct.tilebox** %tptr0, align 8
  %153 = load i32, i32* %orient, align 4
  %idxprom100 = sext i32 %153 to i64
  %154 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %154, i32 0, i32 21
  %arrayidx102 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config101, i32 0, i64 %idxprom100
  %155 = load %struct.tilebox*, %struct.tilebox** %arrayidx102, align 8
  store %struct.tilebox* %155, %struct.tilebox** %tptr, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.170, %if.end.97
  %156 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %cmp104 = icmp ne %struct.tilebox* %156, null
  br i1 %cmp104, label %for.body.105, label %for.end.173

for.body.105:                                     ; preds = %for.cond.103
  %157 = load i32, i32* %orient, align 4
  switch i32 %157, label %sw.epilog.169 [
    i32 1, label %sw.bb.106
    i32 2, label %sw.bb.115
    i32 3, label %sw.bb.124
    i32 4, label %sw.bb.133
    i32 5, label %sw.bb.142
    i32 6, label %sw.bb.151
    i32 7, label %sw.bb.160
  ]

sw.bb.106:                                        ; preds = %for.body.105
  %158 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %158, i32 0, i32 7
  %159 = load i32, i32* %bborder107, align 4
  %160 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %160, i32 0, i32 8
  store i32 %159, i32* %tborder108, align 4
  %161 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %161, i32 0, i32 8
  %162 = load i32, i32* %tborder109, align 4
  %163 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder110 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i32 0, i32 7
  store i32 %162, i32* %bborder110, align 4
  %164 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 6
  %165 = load i32, i32* %rborder111, align 4
  %166 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i32 0, i32 6
  store i32 %165, i32* %rborder112, align 4
  %167 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder113 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %167, i32 0, i32 5
  %168 = load i32, i32* %lborder113, align 4
  %169 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i32 0, i32 5
  store i32 %168, i32* %lborder114, align 4
  br label %sw.epilog.169

sw.bb.115:                                        ; preds = %for.body.105
  %170 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %170, i32 0, i32 5
  %171 = load i32, i32* %lborder116, align 4
  %172 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder117 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %172, i32 0, i32 6
  store i32 %171, i32* %rborder117, align 4
  %173 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i32 0, i32 6
  %174 = load i32, i32* %rborder118, align 4
  %175 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 5
  store i32 %174, i32* %lborder119, align 4
  %176 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %176, i32 0, i32 6
  %177 = load i32, i32* %rborder120, align 4
  %178 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %178, i32 0, i32 6
  store i32 %177, i32* %rborder121, align 4
  %179 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder122 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %179, i32 0, i32 5
  %180 = load i32, i32* %lborder122, align 4
  %181 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder123 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 5
  store i32 %180, i32* %lborder123, align 4
  br label %sw.epilog.169

sw.bb.124:                                        ; preds = %for.body.105
  %182 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %182, i32 0, i32 7
  %183 = load i32, i32* %bborder125, align 4
  %184 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder126 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %184, i32 0, i32 8
  store i32 %183, i32* %tborder126, align 4
  %185 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder127 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %185, i32 0, i32 8
  %186 = load i32, i32* %tborder127, align 4
  %187 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %187, i32 0, i32 7
  store i32 %186, i32* %bborder128, align 4
  %188 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder129 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %188, i32 0, i32 5
  %189 = load i32, i32* %lborder129, align 4
  %190 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder130 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %190, i32 0, i32 6
  store i32 %189, i32* %rborder130, align 4
  %191 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder131 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %191, i32 0, i32 6
  %192 = load i32, i32* %rborder131, align 4
  %193 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %193, i32 0, i32 5
  store i32 %192, i32* %lborder132, align 4
  br label %sw.epilog.169

sw.bb.133:                                        ; preds = %for.body.105
  %194 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder134 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 5
  %195 = load i32, i32* %lborder134, align 4
  %196 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %196, i32 0, i32 8
  store i32 %195, i32* %tborder135, align 4
  %197 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder136 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 6
  %198 = load i32, i32* %rborder136, align 4
  %199 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder137 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 7
  store i32 %198, i32* %bborder137, align 4
  %200 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %200, i32 0, i32 7
  %201 = load i32, i32* %bborder138, align 4
  %202 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder139 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 6
  store i32 %201, i32* %rborder139, align 4
  %203 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 8
  %204 = load i32, i32* %tborder140, align 4
  %205 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 5
  store i32 %204, i32* %lborder141, align 4
  br label %sw.epilog.169

sw.bb.142:                                        ; preds = %for.body.105
  %206 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 6
  %207 = load i32, i32* %rborder143, align 4
  %208 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder144 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %208, i32 0, i32 8
  store i32 %207, i32* %tborder144, align 4
  %209 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %209, i32 0, i32 5
  %210 = load i32, i32* %lborder145, align 4
  %211 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %211, i32 0, i32 7
  store i32 %210, i32* %bborder146, align 4
  %212 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i32 0, i32 8
  %213 = load i32, i32* %tborder147, align 4
  %214 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder148 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %214, i32 0, i32 6
  store i32 %213, i32* %rborder148, align 4
  %215 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 7
  %216 = load i32, i32* %bborder149, align 4
  %217 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %217, i32 0, i32 5
  store i32 %216, i32* %lborder150, align 4
  br label %sw.epilog.169

sw.bb.151:                                        ; preds = %for.body.105
  %218 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder152 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %218, i32 0, i32 8
  %219 = load i32, i32* %tborder152, align 4
  %220 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder153 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %220, i32 0, i32 5
  store i32 %219, i32* %lborder153, align 4
  %221 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder154 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %221, i32 0, i32 5
  %222 = load i32, i32* %lborder154, align 4
  %223 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder155 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %223, i32 0, i32 7
  store i32 %222, i32* %bborder155, align 4
  %224 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %224, i32 0, i32 7
  %225 = load i32, i32* %bborder156, align 4
  %226 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder157 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %226, i32 0, i32 6
  store i32 %225, i32* %rborder157, align 4
  %227 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %227, i32 0, i32 6
  %228 = load i32, i32* %rborder158, align 4
  %229 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder159 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 8
  store i32 %228, i32* %tborder159, align 4
  br label %sw.epilog.169

sw.bb.160:                                        ; preds = %for.body.105
  %230 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bborder161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %230, i32 0, i32 7
  %231 = load i32, i32* %bborder161, align 4
  %232 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lborder162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %232, i32 0, i32 5
  store i32 %231, i32* %lborder162, align 4
  %233 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rborder163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %233, i32 0, i32 6
  %234 = load i32, i32* %rborder163, align 4
  %235 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bborder164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i32 0, i32 7
  store i32 %234, i32* %bborder164, align 4
  %236 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tborder165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %236, i32 0, i32 8
  %237 = load i32, i32* %tborder165, align 4
  %238 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rborder166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 6
  store i32 %237, i32* %rborder166, align 4
  %239 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lborder167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %239, i32 0, i32 5
  %240 = load i32, i32* %lborder167, align 4
  %241 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tborder168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 8
  store i32 %240, i32* %tborder168, align 4
  br label %sw.epilog.169

sw.epilog.169:                                    ; preds = %for.body.105, %sw.bb.160, %sw.bb.151, %sw.bb.142, %sw.bb.133, %sw.bb.124, %sw.bb.115, %sw.bb.106
  br label %for.inc.170

for.inc.170:                                      ; preds = %sw.epilog.169
  %242 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile171 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %242, i32 0, i32 0
  %243 = load %struct.tilebox*, %struct.tilebox** %nexttile171, align 8
  store %struct.tilebox* %243, %struct.tilebox** %tptr, align 8
  %244 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %244, i32 0, i32 0
  %245 = load %struct.tilebox*, %struct.tilebox** %nexttile172, align 8
  store %struct.tilebox* %245, %struct.tilebox** %tptr0, align 8
  br label %for.cond.103

for.end.173:                                      ; preds = %for.cond.103
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173, %if.then.96
  %246 = load i32, i32* %orient, align 4
  %inc = add nsw i32 %246, 1
  store i32 %inc, i32* %orient, align 4
  br label %for.cond.91

for.end.175:                                      ; preds = %for.cond.91
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.end.175
  %247 = load i32, i32* %cell, align 4
  %inc177 = add nsw i32 %247, 1
  store i32 %inc177, i32* %cell, align 4
  br label %for.cond

for.end.178:                                      ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.185, %for.end.178
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* @numberCells, align 4
  %cmp180 = icmp sle i32 %248, %249
  br i1 %cmp180, label %for.body.181, label %for.end.187

for.body.181:                                     ; preds = %for.cond.179
  %250 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %250 to i64
  %251 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx183 = getelementptr inbounds %struct.clbox*, %struct.clbox** %251, i64 %idxprom182
  %252 = load %struct.clbox*, %struct.clbox** %arrayidx183, align 8
  store %struct.clbox* %252, %struct.clbox** %clptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.181
  %253 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %cmp184 = icmp ne %struct.clbox* %253, null
  br i1 %cmp184, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %254 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next = getelementptr inbounds %struct.clbox, %struct.clbox* %254, i32 0, i32 7
  %255 = load %struct.clbox*, %struct.clbox** %next, align 8
  store %struct.clbox* %255, %struct.clbox** %cl2ptr, align 8
  %256 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %257 = bitcast %struct.clbox* %256 to i8*
  call void @free(i8* %257) #2
  %258 = load %struct.clbox*, %struct.clbox** %cl2ptr, align 8
  store %struct.clbox* %258, %struct.clbox** %clptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.185

for.inc.185:                                      ; preds = %while.end
  %259 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %259, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.179

for.end.187:                                      ; preds = %for.cond.179
  %260 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %261 = bitcast %struct.clbox** %260 to i8*
  call void @free(i8* %261) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @findBorder(i32 %c, i32 %loc, i32 %beg, i32 %end, i32 %HorV) #0 {
entry:
  %c.addr = alloca i32, align 4
  %loc.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %HorV.addr = alloca i32, align 4
  %extraSpace = alloca i32, align 4
  %clptr = alloca %struct.clbox*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %loc, i32* %loc.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %HorV, i32* %HorV.addr, align 4
  store i32 0, i32* %extraSpace, align 4
  %0 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %arrayidx = getelementptr inbounds %struct.clbox*, %struct.clbox** %1, i64 %idxprom
  %2 = load %struct.clbox*, %struct.clbox** %arrayidx, align 8
  store %struct.clbox* %2, %struct.clbox** %clptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %cmp = icmp ne %struct.clbox* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %HorV1 = getelementptr inbounds %struct.clbox, %struct.clbox* %4, i32 0, i32 2
  %5 = load i32, i32* %HorV1, align 4
  %6 = load i32, i32* %HorV.addr, align 4
  %cmp2 = icmp ne i32 %5, %6
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %loc3 = getelementptr inbounds %struct.clbox, %struct.clbox* %7, i32 0, i32 3
  %8 = load i32, i32* %loc3, align 4
  %9 = load i32, i32* %loc.addr, align 4
  %cmp4 = icmp ne i32 %8, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %end5 = getelementptr inbounds %struct.clbox, %struct.clbox* %10, i32 0, i32 5
  %11 = load i32, i32* %end5, align 4
  %12 = load i32, i32* %beg.addr, align 4
  %cmp6 = icmp sle i32 %11, %12
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %13 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %start = getelementptr inbounds %struct.clbox, %struct.clbox* %13, i32 0, i32 4
  %14 = load i32, i32* %start, align 4
  %15 = load i32, i32* %end.addr, align 4
  %cmp8 = icmp sge i32 %14, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.7, %if.end
  br label %for.inc

if.end.10:                                        ; preds = %lor.lhs.false.7
  %16 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace11 = getelementptr inbounds %struct.clbox, %struct.clbox* %16, i32 0, i32 1
  %17 = load i32, i32* %extraSpace11, align 4
  %18 = load i32, i32* %extraSpace, align 4
  %cmp12 = icmp sgt i32 %17, %18
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %19 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %extraSpace14 = getelementptr inbounds %struct.clbox, %struct.clbox* %19, i32 0, i32 1
  %20 = load i32, i32* %extraSpace14, align 4
  store i32 %20, i32* %extraSpace, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then.9, %if.then
  %21 = load %struct.clbox*, %struct.clbox** %clptr, align 8
  %next = getelementptr inbounds %struct.clbox, %struct.clbox* %21, i32 0, i32 7
  %22 = load %struct.clbox*, %struct.clbox** %next, align 8
  store %struct.clbox* %22, %struct.clbox** %clptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %extraSpace, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
