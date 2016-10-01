; ModuleID = './MultiSource.Benchmarks.Prolangs-C/164.TimberWolfMC.genorient.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@termarray = external global %struct.termnets**, align 8

; Function Attrs: nounwind uwtable
define void @genorient() #0 {
entry:
  %cell = alloca i32, align 4
  %orient = alloca i32, align 4
  %tilenum = alloca i32, align 4
  %termnum = alloca i32, align 4
  %aorient = alloca i32, align 4
  %height = alloca i32, align 4
  %length = alloca i32, align 4
  %site = alloca i32, align 4
  %net = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %tptr0 = alloca %struct.tilebox*, align 8
  %tptr = alloca %struct.tilebox*, align 8
  %tmptr0 = alloca %struct.termbox*, align 8
  %tmptr = alloca %struct.termbox*, align 8
  %siteptr0 = alloca %struct.locbox*, align 8
  %siteptr = alloca %struct.locbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.516, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %2 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.518

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %idxprom
  %5 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %5, %struct.cellbox** %ptr, align 8
  %6 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 5
  %7 = load i32, i32* %orient1, align 4
  store i32 %7, i32* %aorient, align 4
  %8 = load i32, i32* %aorient, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end.515

if.then:                                          ; preds = %for.body
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  store %struct.tilebox* %10, %struct.tilebox** %tptr0, align 8
  %11 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 12
  %12 = load i32, i32* %top, align 4
  %13 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 11
  %14 = load i32, i32* %bottom, align 4
  %sub = sub nsw i32 %12, %14
  store i32 %sub, i32* %height, align 4
  %15 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 10
  %16 = load i32, i32* %right, align 4
  %17 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 9
  %18 = load i32, i32* %left, align 4
  %sub4 = sub nsw i32 %16, %18
  store i32 %sub4, i32* %length, align 4
  %19 = load i32, i32* %aorient, align 4
  switch i32 %19, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then
  store i32 1, i32* %orient, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  store i32 2, i32* %orient, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  store i32 3, i32* %orient, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  store i32 4, i32* %orient, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  store i32 5, i32* %orient, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store i32 7, i32* %orient, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  store i32 6, i32* %orient, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb
  %call = call noalias i8* @malloc(i64 104) #3
  %20 = bitcast i8* %call to %struct.tilebox*
  %21 = load i32, i32* %aorient, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 21
  %arrayidx13 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config12, i32 0, i64 %idxprom11
  store %struct.tilebox* %20, %struct.tilebox** %arrayidx13, align 8
  store %struct.tilebox* %20, %struct.tilebox** %tptr, align 8
  %23 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile, align 8
  %24 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr, align 8
  %25 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left14 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %25, i32 0, i32 9
  %26 = load i32, i32* %left14, align 4
  %27 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 9
  store i32 %26, i32* %left15, align 4
  %28 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right16 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %28, i32 0, i32 10
  %29 = load i32, i32* %right16, align 4
  %30 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 10
  store i32 %29, i32* %right17, align 4
  %31 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %31, i32 0, i32 11
  %32 = load i32, i32* %bottom18, align 4
  %33 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom19 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %33, i32 0, i32 11
  store i32 %32, i32* %bottom19, align 4
  %34 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 12
  %35 = load i32, i32* %top20, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 12
  store i32 %35, i32* %top21, align 4
  %37 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oleft = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i32 0, i32 13
  %38 = load i32, i32* %oleft, align 4
  %39 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft22 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %39, i32 0, i32 13
  store i32 %38, i32* %oleft22, align 4
  %40 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oright = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i32 0, i32 14
  %41 = load i32, i32* %oright, align 4
  %42 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 14
  store i32 %41, i32* %oright23, align 4
  %43 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %obottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %43, i32 0, i32 15
  %44 = load i32, i32* %obottom, align 4
  %45 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom24 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %45, i32 0, i32 15
  store i32 %44, i32* %obottom24, align 4
  %46 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %otop = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 16
  %47 = load i32, i32* %otop, align 4
  %48 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop25 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %48, i32 0, i32 16
  store i32 %47, i32* %otop25, align 4
  %49 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 1
  %50 = load double, double* %lweight, align 8
  %51 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i32 0, i32 1
  store double %50, double* %lweight26, align 8
  %52 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 2
  %53 = load double, double* %rweight, align 8
  %54 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %54, i32 0, i32 2
  store double %53, double* %rweight27, align 8
  %55 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 3
  %56 = load double, double* %bweight, align 8
  %57 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %57, i32 0, i32 3
  store double %56, double* %bweight28, align 8
  %58 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %58, i32 0, i32 4
  %59 = load double, double* %tweight, align 8
  %60 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight29 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %60, i32 0, i32 4
  store double %59, double* %tweight29, align 8
  %61 = load i32, i32* %orient, align 4
  switch i32 %61, label %sw.epilog.93 [
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.48
    i32 4, label %sw.bb.57
    i32 5, label %sw.bb.66
    i32 6, label %sw.bb.75
    i32 7, label %sw.bb.84
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  %62 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 1
  %63 = load double, double* %lweight31, align 8
  %64 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight32 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %64, i32 0, i32 1
  store double %63, double* %lweight32, align 8
  %65 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 2
  %66 = load double, double* %rweight33, align 8
  %67 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %67, i32 0, i32 2
  store double %66, double* %rweight34, align 8
  %68 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 4
  %69 = load double, double* %tweight35, align 8
  %70 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %70, i32 0, i32 3
  store double %69, double* %bweight36, align 8
  %71 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 3
  %72 = load double, double* %bweight37, align 8
  %73 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %73, i32 0, i32 4
  store double %72, double* %tweight38, align 8
  br label %sw.epilog.93

sw.bb.39:                                         ; preds = %sw.epilog
  %74 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 2
  %75 = load double, double* %rweight40, align 8
  %76 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 1
  store double %75, double* %lweight41, align 8
  %77 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight42 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i32 0, i32 1
  %78 = load double, double* %lweight42, align 8
  %79 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 2
  store double %78, double* %rweight43, align 8
  %80 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %80, i32 0, i32 3
  %81 = load double, double* %bweight44, align 8
  %82 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %82, i32 0, i32 3
  store double %81, double* %bweight45, align 8
  %83 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %83, i32 0, i32 4
  %84 = load double, double* %tweight46, align 8
  %85 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i32 0, i32 4
  store double %84, double* %tweight47, align 8
  br label %sw.epilog.93

sw.bb.48:                                         ; preds = %sw.epilog
  %86 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight49 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %86, i32 0, i32 2
  %87 = load double, double* %rweight49, align 8
  %88 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight50 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %88, i32 0, i32 1
  store double %87, double* %lweight50, align 8
  %89 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %89, i32 0, i32 1
  %90 = load double, double* %lweight51, align 8
  %91 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight52 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i32 0, i32 2
  store double %90, double* %rweight52, align 8
  %92 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %92, i32 0, i32 4
  %93 = load double, double* %tweight53, align 8
  %94 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight54 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 3
  store double %93, double* %bweight54, align 8
  %95 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i32 0, i32 3
  %96 = load double, double* %bweight55, align 8
  %97 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight56 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i32 0, i32 4
  store double %96, double* %tweight56, align 8
  br label %sw.epilog.93

sw.bb.57:                                         ; preds = %sw.epilog
  %98 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %98, i32 0, i32 4
  %99 = load double, double* %tweight58, align 8
  %100 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 1
  store double %99, double* %lweight59, align 8
  %101 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 3
  %102 = load double, double* %bweight60, align 8
  %103 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight61 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %103, i32 0, i32 2
  store double %102, double* %rweight61, align 8
  %104 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %104, i32 0, i32 2
  %105 = load double, double* %rweight62, align 8
  %106 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 3
  store double %105, double* %bweight63, align 8
  %107 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %107, i32 0, i32 1
  %108 = load double, double* %lweight64, align 8
  %109 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight65 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %109, i32 0, i32 4
  store double %108, double* %tweight65, align 8
  br label %sw.epilog.93

sw.bb.66:                                         ; preds = %sw.epilog
  %110 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 3
  %111 = load double, double* %bweight67, align 8
  %112 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight68 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %112, i32 0, i32 1
  store double %111, double* %lweight68, align 8
  %113 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 4
  %114 = load double, double* %tweight69, align 8
  %115 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %115, i32 0, i32 2
  store double %114, double* %rweight70, align 8
  %116 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i32 0, i32 1
  %117 = load double, double* %lweight71, align 8
  %118 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 3
  store double %117, double* %bweight72, align 8
  %119 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 2
  %120 = load double, double* %rweight73, align 8
  %121 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %121, i32 0, i32 4
  store double %120, double* %tweight74, align 8
  br label %sw.epilog.93

sw.bb.75:                                         ; preds = %sw.epilog
  %122 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 4
  %123 = load double, double* %tweight76, align 8
  %124 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight77 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 1
  store double %123, double* %lweight77, align 8
  %125 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 3
  %126 = load double, double* %bweight78, align 8
  %127 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight79 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i32 0, i32 2
  store double %126, double* %rweight79, align 8
  %128 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %128, i32 0, i32 1
  %129 = load double, double* %lweight80, align 8
  %130 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight81 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 3
  store double %129, double* %bweight81, align 8
  %131 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %131, i32 0, i32 2
  %132 = load double, double* %rweight82, align 8
  %133 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight83 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %133, i32 0, i32 4
  store double %132, double* %tweight83, align 8
  br label %sw.epilog.93

sw.bb.84:                                         ; preds = %sw.epilog
  %134 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 3
  %135 = load double, double* %bweight85, align 8
  %136 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight86 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 1
  store double %135, double* %lweight86, align 8
  %137 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight87 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %137, i32 0, i32 4
  %138 = load double, double* %tweight87, align 8
  %139 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %139, i32 0, i32 2
  store double %138, double* %rweight88, align 8
  %140 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight89 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 2
  %141 = load double, double* %rweight89, align 8
  %142 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %142, i32 0, i32 3
  store double %141, double* %bweight90, align 8
  %143 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %143, i32 0, i32 1
  %144 = load double, double* %lweight91, align 8
  %145 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight92 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %145, i32 0, i32 4
  store double %144, double* %tweight92, align 8
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %sw.epilog, %sw.bb.84, %sw.bb.75, %sw.bb.66, %sw.bb.57, %sw.bb.48, %sw.bb.39, %sw.bb.30
  %146 = load i32, i32* %orient, align 4
  call void @move(i32 %146)
  %147 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %147, i32 0, i32 9
  %148 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %148, i32 0, i32 11
  %149 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %149, i32 0, i32 10
  %150 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top97 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %150, i32 0, i32 12
  call void @rect(i32* %left94, i32* %bottom95, i32* %right96, i32* %top97)
  %151 = load i32, i32* %height, align 4
  %rem = srem i32 %151, 2
  %cmp98 = icmp ne i32 %rem, 0
  br i1 %cmp98, label %land.lhs.true, label %lor.lhs.false.101

land.lhs.true:                                    ; preds = %sw.epilog.93
  %152 = load i32, i32* %orient, align 4
  %cmp99 = icmp eq i32 %152, 4
  br i1 %cmp99, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %153 = load i32, i32* %orient, align 4
  %cmp100 = icmp eq i32 %153, 6
  br i1 %cmp100, label %if.then.108, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false, %sw.epilog.93
  %154 = load i32, i32* %length, align 4
  %rem102 = srem i32 %154, 2
  %cmp103 = icmp ne i32 %rem102, 0
  br i1 %cmp103, label %land.lhs.true.104, label %if.end

land.lhs.true.104:                                ; preds = %lor.lhs.false.101
  %155 = load i32, i32* %orient, align 4
  %cmp105 = icmp eq i32 %155, 2
  br i1 %cmp105, label %if.then.108, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %land.lhs.true.104
  %156 = load i32, i32* %orient, align 4
  %cmp107 = icmp eq i32 %156, 3
  br i1 %cmp107, label %if.then.108, label %if.end

if.then.108:                                      ; preds = %lor.lhs.false.106, %land.lhs.true.104, %lor.lhs.false, %land.lhs.true
  %157 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %157, i32 0, i32 9
  %158 = load i32, i32* %left109, align 4
  %inc = add nsw i32 %158, 1
  store i32 %inc, i32* %left109, align 4
  %159 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right110 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %159, i32 0, i32 10
  %160 = load i32, i32* %right110, align 4
  %inc111 = add nsw i32 %160, 1
  store i32 %inc111, i32* %right110, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.108, %lor.lhs.false.106, %lor.lhs.false.101
  %161 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %161, i32 0, i32 9
  %162 = load i32, i32* %left112, align 4
  %163 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oleft113 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i32 0, i32 13
  store i32 %162, i32* %oleft113, align 4
  %164 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %164, i32 0, i32 10
  %165 = load i32, i32* %right114, align 4
  %166 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oright115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i32 0, i32 14
  store i32 %165, i32* %oright115, align 4
  %167 = load i32, i32* %height, align 4
  %rem116 = srem i32 %167, 2
  %cmp117 = icmp ne i32 %rem116, 0
  br i1 %cmp117, label %land.lhs.true.118, label %lor.lhs.false.122

land.lhs.true.118:                                ; preds = %if.end
  %168 = load i32, i32* %orient, align 4
  %cmp119 = icmp eq i32 %168, 1
  br i1 %cmp119, label %if.then.129, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.118
  %169 = load i32, i32* %orient, align 4
  %cmp121 = icmp eq i32 %169, 3
  br i1 %cmp121, label %if.then.129, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.120, %if.end
  %170 = load i32, i32* %length, align 4
  %rem123 = srem i32 %170, 2
  %cmp124 = icmp ne i32 %rem123, 0
  br i1 %cmp124, label %land.lhs.true.125, label %if.end.134

land.lhs.true.125:                                ; preds = %lor.lhs.false.122
  %171 = load i32, i32* %orient, align 4
  %cmp126 = icmp eq i32 %171, 4
  br i1 %cmp126, label %if.then.129, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %land.lhs.true.125
  %172 = load i32, i32* %orient, align 4
  %cmp128 = icmp eq i32 %172, 7
  br i1 %cmp128, label %if.then.129, label %if.end.134

if.then.129:                                      ; preds = %lor.lhs.false.127, %land.lhs.true.125, %lor.lhs.false.120, %land.lhs.true.118
  %173 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom130 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i32 0, i32 11
  %174 = load i32, i32* %bottom130, align 4
  %inc131 = add nsw i32 %174, 1
  store i32 %inc131, i32* %bottom130, align 4
  %175 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 12
  %176 = load i32, i32* %top132, align 4
  %inc133 = add nsw i32 %176, 1
  store i32 %inc133, i32* %top132, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.129, %lor.lhs.false.127, %lor.lhs.false.122
  %177 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %177, i32 0, i32 11
  %178 = load i32, i32* %bottom135, align 4
  %179 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %obottom136 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %179, i32 0, i32 15
  store i32 %178, i32* %obottom136, align 4
  %180 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top137 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i32 0, i32 12
  %181 = load i32, i32* %top137, align 4
  %182 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %otop138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %182, i32 0, i32 16
  store i32 %181, i32* %otop138, align 4
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc, %if.end.134
  %183 = load i32, i32* %tilenum, align 4
  %184 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %184, i32 0, i32 6
  %185 = load i32, i32* %numtiles, align 4
  %cmp140 = icmp sle i32 %183, %185
  br i1 %cmp140, label %for.body.141, label %for.end

for.body.141:                                     ; preds = %for.cond.139
  %186 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile142 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i32 0, i32 0
  %187 = load %struct.tilebox*, %struct.tilebox** %nexttile142, align 8
  store %struct.tilebox* %187, %struct.tilebox** %tptr0, align 8
  %call143 = call noalias i8* @malloc(i64 104) #3
  %188 = bitcast i8* %call143 to %struct.tilebox*
  %189 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile144 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %189, i32 0, i32 0
  store %struct.tilebox* %188, %struct.tilebox** %nexttile144, align 8
  store %struct.tilebox* %188, %struct.tilebox** %tptr, align 8
  %190 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %190, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile145, align 8
  %191 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %191, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr146, align 8
  %192 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %192, i32 0, i32 9
  %193 = load i32, i32* %left147, align 4
  %194 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left148 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 9
  store i32 %193, i32* %left148, align 4
  %195 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %195, i32 0, i32 10
  %196 = load i32, i32* %right149, align 4
  %197 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 10
  store i32 %196, i32* %right150, align 4
  %198 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %198, i32 0, i32 11
  %199 = load i32, i32* %bottom151, align 4
  %200 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom152 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %200, i32 0, i32 11
  store i32 %199, i32* %bottom152, align 4
  %201 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top153 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %201, i32 0, i32 12
  %202 = load i32, i32* %top153, align 4
  %203 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top154 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 12
  store i32 %202, i32* %top154, align 4
  %204 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oleft155 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %204, i32 0, i32 13
  %205 = load i32, i32* %oleft155, align 4
  %206 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i32 0, i32 13
  store i32 %205, i32* %oleft156, align 4
  %207 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oright157 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %207, i32 0, i32 14
  %208 = load i32, i32* %oright157, align 4
  %209 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %209, i32 0, i32 14
  store i32 %208, i32* %oright158, align 4
  %210 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %obottom159 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %210, i32 0, i32 15
  %211 = load i32, i32* %obottom159, align 4
  %212 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom160 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i32 0, i32 15
  store i32 %211, i32* %obottom160, align 4
  %213 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %otop161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %213, i32 0, i32 16
  %214 = load i32, i32* %otop161, align 4
  %215 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %215, i32 0, i32 16
  store i32 %214, i32* %otop162, align 4
  %216 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %216, i32 0, i32 1
  %217 = load double, double* %lweight163, align 8
  %218 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %218, i32 0, i32 1
  store double %217, double* %lweight164, align 8
  %219 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %219, i32 0, i32 2
  %220 = load double, double* %rweight165, align 8
  %221 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %221, i32 0, i32 2
  store double %220, double* %rweight166, align 8
  %222 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %222, i32 0, i32 3
  %223 = load double, double* %bweight167, align 8
  %224 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %224, i32 0, i32 3
  store double %223, double* %bweight168, align 8
  %225 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight169 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %225, i32 0, i32 4
  %226 = load double, double* %tweight169, align 8
  %227 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %227, i32 0, i32 4
  store double %226, double* %tweight170, align 8
  %228 = load i32, i32* %orient, align 4
  switch i32 %228, label %sw.epilog.234 [
    i32 1, label %sw.bb.171
    i32 2, label %sw.bb.180
    i32 3, label %sw.bb.189
    i32 4, label %sw.bb.198
    i32 5, label %sw.bb.207
    i32 6, label %sw.bb.216
    i32 7, label %sw.bb.225
  ]

sw.bb.171:                                        ; preds = %for.body.141
  %229 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 1
  %230 = load double, double* %lweight172, align 8
  %231 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight173 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %231, i32 0, i32 1
  store double %230, double* %lweight173, align 8
  %232 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight174 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %232, i32 0, i32 2
  %233 = load double, double* %rweight174, align 8
  %234 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 2
  store double %233, double* %rweight175, align 8
  %235 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %235, i32 0, i32 4
  %236 = load double, double* %tweight176, align 8
  %237 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight177 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %237, i32 0, i32 3
  store double %236, double* %bweight177, align 8
  %238 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 3
  %239 = load double, double* %bweight178, align 8
  %240 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %240, i32 0, i32 4
  store double %239, double* %tweight179, align 8
  br label %sw.epilog.234

sw.bb.180:                                        ; preds = %for.body.141
  %241 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight181 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 2
  %242 = load double, double* %rweight181, align 8
  %243 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %243, i32 0, i32 1
  store double %242, double* %lweight182, align 8
  %244 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight183 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %244, i32 0, i32 1
  %245 = load double, double* %lweight183, align 8
  %246 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight184 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %246, i32 0, i32 2
  store double %245, double* %rweight184, align 8
  %247 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight185 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i32 0, i32 3
  %248 = load double, double* %bweight185, align 8
  %249 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %249, i32 0, i32 3
  store double %248, double* %bweight186, align 8
  %250 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight187 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %250, i32 0, i32 4
  %251 = load double, double* %tweight187, align 8
  %252 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight188 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %252, i32 0, i32 4
  store double %251, double* %tweight188, align 8
  br label %sw.epilog.234

sw.bb.189:                                        ; preds = %for.body.141
  %253 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %253, i32 0, i32 2
  %254 = load double, double* %rweight190, align 8
  %255 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight191 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %255, i32 0, i32 1
  store double %254, double* %lweight191, align 8
  %256 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight192 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %256, i32 0, i32 1
  %257 = load double, double* %lweight192, align 8
  %258 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight193 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %258, i32 0, i32 2
  store double %257, double* %rweight193, align 8
  %259 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight194 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %259, i32 0, i32 4
  %260 = load double, double* %tweight194, align 8
  %261 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %261, i32 0, i32 3
  store double %260, double* %bweight195, align 8
  %262 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight196 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %262, i32 0, i32 3
  %263 = load double, double* %bweight196, align 8
  %264 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight197 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %264, i32 0, i32 4
  store double %263, double* %tweight197, align 8
  br label %sw.epilog.234

sw.bb.198:                                        ; preds = %for.body.141
  %265 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %265, i32 0, i32 4
  %266 = load double, double* %tweight199, align 8
  %267 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight200 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %267, i32 0, i32 1
  store double %266, double* %lweight200, align 8
  %268 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight201 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %268, i32 0, i32 3
  %269 = load double, double* %bweight201, align 8
  %270 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight202 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %270, i32 0, i32 2
  store double %269, double* %rweight202, align 8
  %271 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %271, i32 0, i32 2
  %272 = load double, double* %rweight203, align 8
  %273 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight204 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %273, i32 0, i32 3
  store double %272, double* %bweight204, align 8
  %274 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight205 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %274, i32 0, i32 1
  %275 = load double, double* %lweight205, align 8
  %276 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %276, i32 0, i32 4
  store double %275, double* %tweight206, align 8
  br label %sw.epilog.234

sw.bb.207:                                        ; preds = %for.body.141
  %277 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight208 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %277, i32 0, i32 3
  %278 = load double, double* %bweight208, align 8
  %279 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %279, i32 0, i32 1
  store double %278, double* %lweight209, align 8
  %280 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight210 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %280, i32 0, i32 4
  %281 = load double, double* %tweight210, align 8
  %282 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight211 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %282, i32 0, i32 2
  store double %281, double* %rweight211, align 8
  %283 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight212 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %283, i32 0, i32 1
  %284 = load double, double* %lweight212, align 8
  %285 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight213 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %285, i32 0, i32 3
  store double %284, double* %bweight213, align 8
  %286 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight214 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %286, i32 0, i32 2
  %287 = load double, double* %rweight214, align 8
  %288 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight215 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %288, i32 0, i32 4
  store double %287, double* %tweight215, align 8
  br label %sw.epilog.234

sw.bb.216:                                        ; preds = %for.body.141
  %289 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight217 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %289, i32 0, i32 4
  %290 = load double, double* %tweight217, align 8
  %291 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight218 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %291, i32 0, i32 1
  store double %290, double* %lweight218, align 8
  %292 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight219 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 3
  %293 = load double, double* %bweight219, align 8
  %294 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight220 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %294, i32 0, i32 2
  store double %293, double* %rweight220, align 8
  %295 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight221 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i32 0, i32 1
  %296 = load double, double* %lweight221, align 8
  %297 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %297, i32 0, i32 3
  store double %296, double* %bweight222, align 8
  %298 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight223 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %298, i32 0, i32 2
  %299 = load double, double* %rweight223, align 8
  %300 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight224 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %300, i32 0, i32 4
  store double %299, double* %tweight224, align 8
  br label %sw.epilog.234

sw.bb.225:                                        ; preds = %for.body.141
  %301 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight226 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %301, i32 0, i32 3
  %302 = load double, double* %bweight226, align 8
  %303 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight227 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %303, i32 0, i32 1
  store double %302, double* %lweight227, align 8
  %304 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight228 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i32 0, i32 4
  %305 = load double, double* %tweight228, align 8
  %306 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight229 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %306, i32 0, i32 2
  store double %305, double* %rweight229, align 8
  %307 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %307, i32 0, i32 2
  %308 = load double, double* %rweight230, align 8
  %309 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight231 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %309, i32 0, i32 3
  store double %308, double* %bweight231, align 8
  %310 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight232 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %310, i32 0, i32 1
  %311 = load double, double* %lweight232, align 8
  %312 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight233 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %312, i32 0, i32 4
  store double %311, double* %tweight233, align 8
  br label %sw.epilog.234

sw.epilog.234:                                    ; preds = %for.body.141, %sw.bb.225, %sw.bb.216, %sw.bb.207, %sw.bb.198, %sw.bb.189, %sw.bb.180, %sw.bb.171
  %313 = load i32, i32* %orient, align 4
  call void @move(i32 %313)
  %314 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %314, i32 0, i32 9
  %315 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %315, i32 0, i32 11
  %316 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right237 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %316, i32 0, i32 10
  %317 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top238 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %317, i32 0, i32 12
  call void @rect(i32* %left235, i32* %bottom236, i32* %right237, i32* %top238)
  %318 = load i32, i32* %height, align 4
  %rem239 = srem i32 %318, 2
  %cmp240 = icmp ne i32 %rem239, 0
  br i1 %cmp240, label %land.lhs.true.241, label %lor.lhs.false.245

land.lhs.true.241:                                ; preds = %sw.epilog.234
  %319 = load i32, i32* %orient, align 4
  %cmp242 = icmp eq i32 %319, 4
  br i1 %cmp242, label %if.then.252, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %land.lhs.true.241
  %320 = load i32, i32* %orient, align 4
  %cmp244 = icmp eq i32 %320, 6
  br i1 %cmp244, label %if.then.252, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false.243, %sw.epilog.234
  %321 = load i32, i32* %length, align 4
  %rem246 = srem i32 %321, 2
  %cmp247 = icmp ne i32 %rem246, 0
  br i1 %cmp247, label %land.lhs.true.248, label %if.end.257

land.lhs.true.248:                                ; preds = %lor.lhs.false.245
  %322 = load i32, i32* %orient, align 4
  %cmp249 = icmp eq i32 %322, 2
  br i1 %cmp249, label %if.then.252, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %land.lhs.true.248
  %323 = load i32, i32* %orient, align 4
  %cmp251 = icmp eq i32 %323, 3
  br i1 %cmp251, label %if.then.252, label %if.end.257

if.then.252:                                      ; preds = %lor.lhs.false.250, %land.lhs.true.248, %lor.lhs.false.243, %land.lhs.true.241
  %324 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left253 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %324, i32 0, i32 9
  %325 = load i32, i32* %left253, align 4
  %inc254 = add nsw i32 %325, 1
  store i32 %inc254, i32* %left253, align 4
  %326 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right255 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %326, i32 0, i32 10
  %327 = load i32, i32* %right255, align 4
  %inc256 = add nsw i32 %327, 1
  store i32 %inc256, i32* %right255, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.252, %lor.lhs.false.250, %lor.lhs.false.245
  %328 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left258 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %328, i32 0, i32 9
  %329 = load i32, i32* %left258, align 4
  %330 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oleft259 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %330, i32 0, i32 13
  store i32 %329, i32* %oleft259, align 4
  %331 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right260 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %331, i32 0, i32 10
  %332 = load i32, i32* %right260, align 4
  %333 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %oright261 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %333, i32 0, i32 14
  store i32 %332, i32* %oright261, align 4
  %334 = load i32, i32* %height, align 4
  %rem262 = srem i32 %334, 2
  %cmp263 = icmp ne i32 %rem262, 0
  br i1 %cmp263, label %land.lhs.true.264, label %lor.lhs.false.268

land.lhs.true.264:                                ; preds = %if.end.257
  %335 = load i32, i32* %orient, align 4
  %cmp265 = icmp eq i32 %335, 1
  br i1 %cmp265, label %if.then.275, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %land.lhs.true.264
  %336 = load i32, i32* %orient, align 4
  %cmp267 = icmp eq i32 %336, 3
  br i1 %cmp267, label %if.then.275, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %lor.lhs.false.266, %if.end.257
  %337 = load i32, i32* %length, align 4
  %rem269 = srem i32 %337, 2
  %cmp270 = icmp ne i32 %rem269, 0
  br i1 %cmp270, label %land.lhs.true.271, label %if.end.280

land.lhs.true.271:                                ; preds = %lor.lhs.false.268
  %338 = load i32, i32* %orient, align 4
  %cmp272 = icmp eq i32 %338, 4
  br i1 %cmp272, label %if.then.275, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %land.lhs.true.271
  %339 = load i32, i32* %orient, align 4
  %cmp274 = icmp eq i32 %339, 7
  br i1 %cmp274, label %if.then.275, label %if.end.280

if.then.275:                                      ; preds = %lor.lhs.false.273, %land.lhs.true.271, %lor.lhs.false.266, %land.lhs.true.264
  %340 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom276 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %340, i32 0, i32 11
  %341 = load i32, i32* %bottom276, align 4
  %inc277 = add nsw i32 %341, 1
  store i32 %inc277, i32* %bottom276, align 4
  %342 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top278 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %342, i32 0, i32 12
  %343 = load i32, i32* %top278, align 4
  %inc279 = add nsw i32 %343, 1
  store i32 %inc279, i32* %top278, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.275, %lor.lhs.false.273, %lor.lhs.false.268
  %344 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom281 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %344, i32 0, i32 11
  %345 = load i32, i32* %bottom281, align 4
  %346 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %obottom282 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i32 0, i32 15
  store i32 %345, i32* %obottom282, align 4
  %347 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top283 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %347, i32 0, i32 12
  %348 = load i32, i32* %top283, align 4
  %349 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %otop284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %349, i32 0, i32 16
  store i32 %348, i32* %otop284, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.280
  %350 = load i32, i32* %tilenum, align 4
  %inc285 = add nsw i32 %350, 1
  store i32 %inc285, i32* %tilenum, align 4
  br label %for.cond.139

for.end:                                          ; preds = %for.cond.139
  %351 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %351, i32 0, i32 8
  %352 = load i32, i32* %numterms, align 4
  %cmp286 = icmp ne i32 %352, 0
  br i1 %cmp286, label %if.then.287, label %if.end.402

if.then.287:                                      ; preds = %for.end
  %353 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config288 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %353, i32 0, i32 21
  %arrayidx289 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config288, i32 0, i64 0
  %354 = load %struct.tilebox*, %struct.tilebox** %arrayidx289, align 8
  %termptr290 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %354, i32 0, i32 17
  %355 = load %struct.termbox*, %struct.termbox** %termptr290, align 8
  store %struct.termbox* %355, %struct.termbox** %tmptr0, align 8
  %call291 = call noalias i8* @malloc(i64 32) #3
  %356 = bitcast i8* %call291 to %struct.termbox*
  %357 = load i32, i32* %aorient, align 4
  %idxprom292 = sext i32 %357 to i64
  %358 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config293 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %358, i32 0, i32 21
  %arrayidx294 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config293, i32 0, i64 %idxprom292
  %359 = load %struct.tilebox*, %struct.tilebox** %arrayidx294, align 8
  %termptr295 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %359, i32 0, i32 17
  store %struct.termbox* %356, %struct.termbox** %termptr295, align 8
  store %struct.termbox* %356, %struct.termbox** %tmptr, align 8
  %360 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %360, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm, align 8
  %361 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %361, i32 0, i32 5
  %362 = load i32, i32* %terminal, align 4
  %363 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal296 = getelementptr inbounds %struct.termbox, %struct.termbox* %363, i32 0, i32 5
  store i32 %362, i32* %terminal296, align 4
  %364 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %364, i32 0, i32 1
  %365 = load i32, i32* %xpos, align 4
  %366 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos297 = getelementptr inbounds %struct.termbox, %struct.termbox* %366, i32 0, i32 1
  store i32 %365, i32* %xpos297, align 4
  %367 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %367, i32 0, i32 2
  %368 = load i32, i32* %ypos, align 4
  %369 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos298 = getelementptr inbounds %struct.termbox, %struct.termbox* %369, i32 0, i32 2
  store i32 %368, i32* %ypos298, align 4
  %370 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos = getelementptr inbounds %struct.termbox, %struct.termbox* %370, i32 0, i32 3
  %371 = load i32, i32* %oxpos, align 4
  %372 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos299 = getelementptr inbounds %struct.termbox, %struct.termbox* %372, i32 0, i32 3
  store i32 %371, i32* %oxpos299, align 4
  %373 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos = getelementptr inbounds %struct.termbox, %struct.termbox* %373, i32 0, i32 4
  %374 = load i32, i32* %oypos, align 4
  %375 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos300 = getelementptr inbounds %struct.termbox, %struct.termbox* %375, i32 0, i32 4
  store i32 %374, i32* %oypos300, align 4
  %376 = load i32, i32* %orient, align 4
  call void @move(i32 %376)
  %377 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos301 = getelementptr inbounds %struct.termbox, %struct.termbox* %377, i32 0, i32 1
  %378 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos302 = getelementptr inbounds %struct.termbox, %struct.termbox* %378, i32 0, i32 2
  call void @point(i32* %xpos301, i32* %ypos302)
  %379 = load i32, i32* %height, align 4
  %rem303 = srem i32 %379, 2
  %cmp304 = icmp ne i32 %rem303, 0
  br i1 %cmp304, label %land.lhs.true.305, label %lor.lhs.false.309

land.lhs.true.305:                                ; preds = %if.then.287
  %380 = load i32, i32* %orient, align 4
  %cmp306 = icmp eq i32 %380, 4
  br i1 %cmp306, label %if.then.316, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %land.lhs.true.305
  %381 = load i32, i32* %orient, align 4
  %cmp308 = icmp eq i32 %381, 6
  br i1 %cmp308, label %if.then.316, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %lor.lhs.false.307, %if.then.287
  %382 = load i32, i32* %length, align 4
  %rem310 = srem i32 %382, 2
  %cmp311 = icmp ne i32 %rem310, 0
  br i1 %cmp311, label %land.lhs.true.312, label %if.end.319

land.lhs.true.312:                                ; preds = %lor.lhs.false.309
  %383 = load i32, i32* %orient, align 4
  %cmp313 = icmp eq i32 %383, 2
  br i1 %cmp313, label %if.then.316, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %land.lhs.true.312
  %384 = load i32, i32* %orient, align 4
  %cmp315 = icmp eq i32 %384, 3
  br i1 %cmp315, label %if.then.316, label %if.end.319

if.then.316:                                      ; preds = %lor.lhs.false.314, %land.lhs.true.312, %lor.lhs.false.307, %land.lhs.true.305
  %385 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos317 = getelementptr inbounds %struct.termbox, %struct.termbox* %385, i32 0, i32 1
  %386 = load i32, i32* %xpos317, align 4
  %inc318 = add nsw i32 %386, 1
  store i32 %inc318, i32* %xpos317, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.316, %lor.lhs.false.314, %lor.lhs.false.309
  %387 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos320 = getelementptr inbounds %struct.termbox, %struct.termbox* %387, i32 0, i32 1
  %388 = load i32, i32* %xpos320, align 4
  %389 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos321 = getelementptr inbounds %struct.termbox, %struct.termbox* %389, i32 0, i32 3
  store i32 %388, i32* %oxpos321, align 4
  %390 = load i32, i32* %height, align 4
  %rem322 = srem i32 %390, 2
  %cmp323 = icmp ne i32 %rem322, 0
  br i1 %cmp323, label %land.lhs.true.324, label %lor.lhs.false.328

land.lhs.true.324:                                ; preds = %if.end.319
  %391 = load i32, i32* %orient, align 4
  %cmp325 = icmp eq i32 %391, 1
  br i1 %cmp325, label %if.then.335, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %land.lhs.true.324
  %392 = load i32, i32* %orient, align 4
  %cmp327 = icmp eq i32 %392, 3
  br i1 %cmp327, label %if.then.335, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %lor.lhs.false.326, %if.end.319
  %393 = load i32, i32* %length, align 4
  %rem329 = srem i32 %393, 2
  %cmp330 = icmp ne i32 %rem329, 0
  br i1 %cmp330, label %land.lhs.true.331, label %if.end.338

land.lhs.true.331:                                ; preds = %lor.lhs.false.328
  %394 = load i32, i32* %orient, align 4
  %cmp332 = icmp eq i32 %394, 4
  br i1 %cmp332, label %if.then.335, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %land.lhs.true.331
  %395 = load i32, i32* %orient, align 4
  %cmp334 = icmp eq i32 %395, 7
  br i1 %cmp334, label %if.then.335, label %if.end.338

if.then.335:                                      ; preds = %lor.lhs.false.333, %land.lhs.true.331, %lor.lhs.false.326, %land.lhs.true.324
  %396 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos336 = getelementptr inbounds %struct.termbox, %struct.termbox* %396, i32 0, i32 2
  %397 = load i32, i32* %ypos336, align 4
  %inc337 = add nsw i32 %397, 1
  store i32 %inc337, i32* %ypos336, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.335, %lor.lhs.false.333, %lor.lhs.false.328
  %398 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos339 = getelementptr inbounds %struct.termbox, %struct.termbox* %398, i32 0, i32 2
  %399 = load i32, i32* %ypos339, align 4
  %400 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos340 = getelementptr inbounds %struct.termbox, %struct.termbox* %400, i32 0, i32 4
  store i32 %399, i32* %oypos340, align 4
  store i32 2, i32* %termnum, align 4
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.399, %if.end.338
  %401 = load i32, i32* %termnum, align 4
  %402 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms342 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %402, i32 0, i32 8
  %403 = load i32, i32* %numterms342, align 4
  %cmp343 = icmp sle i32 %401, %403
  br i1 %cmp343, label %for.body.344, label %for.end.401

for.body.344:                                     ; preds = %for.cond.341
  %404 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm345 = getelementptr inbounds %struct.termbox, %struct.termbox* %404, i32 0, i32 0
  %405 = load %struct.termbox*, %struct.termbox** %nextterm345, align 8
  store %struct.termbox* %405, %struct.termbox** %tmptr0, align 8
  %call346 = call noalias i8* @malloc(i64 32) #3
  %406 = bitcast i8* %call346 to %struct.termbox*
  %407 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm347 = getelementptr inbounds %struct.termbox, %struct.termbox* %407, i32 0, i32 0
  store %struct.termbox* %406, %struct.termbox** %nextterm347, align 8
  store %struct.termbox* %406, %struct.termbox** %tmptr, align 8
  %408 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm348 = getelementptr inbounds %struct.termbox, %struct.termbox* %408, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm348, align 8
  %409 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal349 = getelementptr inbounds %struct.termbox, %struct.termbox* %409, i32 0, i32 5
  %410 = load i32, i32* %terminal349, align 4
  %411 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal350 = getelementptr inbounds %struct.termbox, %struct.termbox* %411, i32 0, i32 5
  store i32 %410, i32* %terminal350, align 4
  %412 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos351 = getelementptr inbounds %struct.termbox, %struct.termbox* %412, i32 0, i32 1
  %413 = load i32, i32* %xpos351, align 4
  %414 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos352 = getelementptr inbounds %struct.termbox, %struct.termbox* %414, i32 0, i32 1
  store i32 %413, i32* %xpos352, align 4
  %415 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos353 = getelementptr inbounds %struct.termbox, %struct.termbox* %415, i32 0, i32 2
  %416 = load i32, i32* %ypos353, align 4
  %417 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos354 = getelementptr inbounds %struct.termbox, %struct.termbox* %417, i32 0, i32 2
  store i32 %416, i32* %ypos354, align 4
  %418 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos355 = getelementptr inbounds %struct.termbox, %struct.termbox* %418, i32 0, i32 3
  %419 = load i32, i32* %oxpos355, align 4
  %420 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos356 = getelementptr inbounds %struct.termbox, %struct.termbox* %420, i32 0, i32 3
  store i32 %419, i32* %oxpos356, align 4
  %421 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos357 = getelementptr inbounds %struct.termbox, %struct.termbox* %421, i32 0, i32 4
  %422 = load i32, i32* %oypos357, align 4
  %423 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos358 = getelementptr inbounds %struct.termbox, %struct.termbox* %423, i32 0, i32 4
  store i32 %422, i32* %oypos358, align 4
  %424 = load i32, i32* %orient, align 4
  call void @move(i32 %424)
  %425 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos359 = getelementptr inbounds %struct.termbox, %struct.termbox* %425, i32 0, i32 1
  %426 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos360 = getelementptr inbounds %struct.termbox, %struct.termbox* %426, i32 0, i32 2
  call void @point(i32* %xpos359, i32* %ypos360)
  %427 = load i32, i32* %height, align 4
  %rem361 = srem i32 %427, 2
  %cmp362 = icmp ne i32 %rem361, 0
  br i1 %cmp362, label %land.lhs.true.363, label %lor.lhs.false.367

land.lhs.true.363:                                ; preds = %for.body.344
  %428 = load i32, i32* %orient, align 4
  %cmp364 = icmp eq i32 %428, 4
  br i1 %cmp364, label %if.then.374, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %land.lhs.true.363
  %429 = load i32, i32* %orient, align 4
  %cmp366 = icmp eq i32 %429, 6
  br i1 %cmp366, label %if.then.374, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %lor.lhs.false.365, %for.body.344
  %430 = load i32, i32* %length, align 4
  %rem368 = srem i32 %430, 2
  %cmp369 = icmp ne i32 %rem368, 0
  br i1 %cmp369, label %land.lhs.true.370, label %if.end.377

land.lhs.true.370:                                ; preds = %lor.lhs.false.367
  %431 = load i32, i32* %orient, align 4
  %cmp371 = icmp eq i32 %431, 2
  br i1 %cmp371, label %if.then.374, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %land.lhs.true.370
  %432 = load i32, i32* %orient, align 4
  %cmp373 = icmp eq i32 %432, 3
  br i1 %cmp373, label %if.then.374, label %if.end.377

if.then.374:                                      ; preds = %lor.lhs.false.372, %land.lhs.true.370, %lor.lhs.false.365, %land.lhs.true.363
  %433 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos375 = getelementptr inbounds %struct.termbox, %struct.termbox* %433, i32 0, i32 1
  %434 = load i32, i32* %xpos375, align 4
  %inc376 = add nsw i32 %434, 1
  store i32 %inc376, i32* %xpos375, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.374, %lor.lhs.false.372, %lor.lhs.false.367
  %435 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos378 = getelementptr inbounds %struct.termbox, %struct.termbox* %435, i32 0, i32 1
  %436 = load i32, i32* %xpos378, align 4
  %437 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos379 = getelementptr inbounds %struct.termbox, %struct.termbox* %437, i32 0, i32 3
  store i32 %436, i32* %oxpos379, align 4
  %438 = load i32, i32* %height, align 4
  %rem380 = srem i32 %438, 2
  %cmp381 = icmp ne i32 %rem380, 0
  br i1 %cmp381, label %land.lhs.true.382, label %lor.lhs.false.386

land.lhs.true.382:                                ; preds = %if.end.377
  %439 = load i32, i32* %orient, align 4
  %cmp383 = icmp eq i32 %439, 1
  br i1 %cmp383, label %if.then.393, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %land.lhs.true.382
  %440 = load i32, i32* %orient, align 4
  %cmp385 = icmp eq i32 %440, 3
  br i1 %cmp385, label %if.then.393, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %lor.lhs.false.384, %if.end.377
  %441 = load i32, i32* %length, align 4
  %rem387 = srem i32 %441, 2
  %cmp388 = icmp ne i32 %rem387, 0
  br i1 %cmp388, label %land.lhs.true.389, label %if.end.396

land.lhs.true.389:                                ; preds = %lor.lhs.false.386
  %442 = load i32, i32* %orient, align 4
  %cmp390 = icmp eq i32 %442, 4
  br i1 %cmp390, label %if.then.393, label %lor.lhs.false.391

lor.lhs.false.391:                                ; preds = %land.lhs.true.389
  %443 = load i32, i32* %orient, align 4
  %cmp392 = icmp eq i32 %443, 7
  br i1 %cmp392, label %if.then.393, label %if.end.396

if.then.393:                                      ; preds = %lor.lhs.false.391, %land.lhs.true.389, %lor.lhs.false.384, %land.lhs.true.382
  %444 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos394 = getelementptr inbounds %struct.termbox, %struct.termbox* %444, i32 0, i32 2
  %445 = load i32, i32* %ypos394, align 4
  %inc395 = add nsw i32 %445, 1
  store i32 %inc395, i32* %ypos394, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.393, %lor.lhs.false.391, %lor.lhs.false.386
  %446 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos397 = getelementptr inbounds %struct.termbox, %struct.termbox* %446, i32 0, i32 2
  %447 = load i32, i32* %ypos397, align 4
  %448 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos398 = getelementptr inbounds %struct.termbox, %struct.termbox* %448, i32 0, i32 4
  store i32 %447, i32* %oypos398, align 4
  br label %for.inc.399

for.inc.399:                                      ; preds = %if.end.396
  %449 = load i32, i32* %termnum, align 4
  %inc400 = add nsw i32 %449, 1
  store i32 %inc400, i32* %termnum, align 4
  br label %for.cond.341

for.end.401:                                      ; preds = %for.cond.341
  br label %if.end.402

if.end.402:                                       ; preds = %for.end.401, %for.end
  %450 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %450, i32 0, i32 17
  %451 = load i32, i32* %numsites, align 4
  %cmp403 = icmp ne i32 %451, 0
  br i1 %cmp403, label %if.then.404, label %if.end.514

if.then.404:                                      ; preds = %if.end.402
  %452 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config405 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %452, i32 0, i32 21
  %arrayidx406 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config405, i32 0, i64 0
  %453 = load %struct.tilebox*, %struct.tilebox** %arrayidx406, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %453, i32 0, i32 18
  %454 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %454, %struct.locbox** %siteptr0, align 8
  %455 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites407 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %455, i32 0, i32 17
  %456 = load i32, i32* %numsites407, align 4
  %add408 = add nsw i32 %456, 1
  %conv = sext i32 %add408 to i64
  %mul = mul i64 %conv, 16
  %call409 = call noalias i8* @malloc(i64 %mul) #3
  %457 = bitcast i8* %call409 to %struct.locbox*
  %458 = load i32, i32* %aorient, align 4
  %idxprom410 = sext i32 %458 to i64
  %459 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config411 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %459, i32 0, i32 21
  %arrayidx412 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config411, i32 0, i64 %idxprom410
  %460 = load %struct.tilebox*, %struct.tilebox** %arrayidx412, align 8
  %siteLocArray413 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %460, i32 0, i32 18
  store %struct.locbox* %457, %struct.locbox** %siteLocArray413, align 8
  store %struct.locbox* %457, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.414

for.cond.414:                                     ; preds = %for.inc.511, %if.then.404
  %461 = load i32, i32* %site, align 4
  %462 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites415 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %462, i32 0, i32 17
  %463 = load i32, i32* %numsites415, align 4
  %cmp416 = icmp sle i32 %461, %463
  br i1 %cmp416, label %for.body.418, label %for.end.513

for.body.418:                                     ; preds = %for.cond.414
  %464 = load i32, i32* %site, align 4
  %idxprom419 = sext i32 %464 to i64
  %465 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx420 = getelementptr inbounds %struct.locbox, %struct.locbox* %465, i64 %idxprom419
  %xpos421 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx420, i32 0, i32 0
  %466 = load i32, i32* %xpos421, align 4
  %467 = load i32, i32* %site, align 4
  %idxprom422 = sext i32 %467 to i64
  %468 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx423 = getelementptr inbounds %struct.locbox, %struct.locbox* %468, i64 %idxprom422
  %xpos424 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx423, i32 0, i32 0
  store i32 %466, i32* %xpos424, align 4
  %469 = load i32, i32* %site, align 4
  %idxprom425 = sext i32 %469 to i64
  %470 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx426 = getelementptr inbounds %struct.locbox, %struct.locbox* %470, i64 %idxprom425
  %ypos427 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx426, i32 0, i32 1
  %471 = load i32, i32* %ypos427, align 4
  %472 = load i32, i32* %site, align 4
  %idxprom428 = sext i32 %472 to i64
  %473 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx429 = getelementptr inbounds %struct.locbox, %struct.locbox* %473, i64 %idxprom428
  %ypos430 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx429, i32 0, i32 1
  store i32 %471, i32* %ypos430, align 4
  %474 = load i32, i32* %site, align 4
  %idxprom431 = sext i32 %474 to i64
  %475 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx432 = getelementptr inbounds %struct.locbox, %struct.locbox* %475, i64 %idxprom431
  %oxpos433 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx432, i32 0, i32 2
  %476 = load i32, i32* %oxpos433, align 4
  %477 = load i32, i32* %site, align 4
  %idxprom434 = sext i32 %477 to i64
  %478 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx435 = getelementptr inbounds %struct.locbox, %struct.locbox* %478, i64 %idxprom434
  %oxpos436 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx435, i32 0, i32 2
  store i32 %476, i32* %oxpos436, align 4
  %479 = load i32, i32* %site, align 4
  %idxprom437 = sext i32 %479 to i64
  %480 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx438 = getelementptr inbounds %struct.locbox, %struct.locbox* %480, i64 %idxprom437
  %oypos439 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx438, i32 0, i32 3
  %481 = load i32, i32* %oypos439, align 4
  %482 = load i32, i32* %site, align 4
  %idxprom440 = sext i32 %482 to i64
  %483 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx441 = getelementptr inbounds %struct.locbox, %struct.locbox* %483, i64 %idxprom440
  %oypos442 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx441, i32 0, i32 3
  store i32 %481, i32* %oypos442, align 4
  %484 = load i32, i32* %orient, align 4
  call void @move(i32 %484)
  %485 = load i32, i32* %site, align 4
  %idxprom443 = sext i32 %485 to i64
  %486 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx444 = getelementptr inbounds %struct.locbox, %struct.locbox* %486, i64 %idxprom443
  %xpos445 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx444, i32 0, i32 0
  %487 = load i32, i32* %site, align 4
  %idxprom446 = sext i32 %487 to i64
  %488 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx447 = getelementptr inbounds %struct.locbox, %struct.locbox* %488, i64 %idxprom446
  %ypos448 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx447, i32 0, i32 1
  call void @point(i32* %xpos445, i32* %ypos448)
  %489 = load i32, i32* %height, align 4
  %rem449 = srem i32 %489, 2
  %cmp450 = icmp ne i32 %rem449, 0
  br i1 %cmp450, label %land.lhs.true.452, label %lor.lhs.false.458

land.lhs.true.452:                                ; preds = %for.body.418
  %490 = load i32, i32* %orient, align 4
  %cmp453 = icmp eq i32 %490, 4
  br i1 %cmp453, label %if.then.468, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %land.lhs.true.452
  %491 = load i32, i32* %orient, align 4
  %cmp456 = icmp eq i32 %491, 6
  br i1 %cmp456, label %if.then.468, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %lor.lhs.false.455, %for.body.418
  %492 = load i32, i32* %length, align 4
  %rem459 = srem i32 %492, 2
  %cmp460 = icmp ne i32 %rem459, 0
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.473

land.lhs.true.462:                                ; preds = %lor.lhs.false.458
  %493 = load i32, i32* %orient, align 4
  %cmp463 = icmp eq i32 %493, 2
  br i1 %cmp463, label %if.then.468, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %land.lhs.true.462
  %494 = load i32, i32* %orient, align 4
  %cmp466 = icmp eq i32 %494, 3
  br i1 %cmp466, label %if.then.468, label %if.end.473

if.then.468:                                      ; preds = %lor.lhs.false.465, %land.lhs.true.462, %lor.lhs.false.455, %land.lhs.true.452
  %495 = load i32, i32* %site, align 4
  %idxprom469 = sext i32 %495 to i64
  %496 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx470 = getelementptr inbounds %struct.locbox, %struct.locbox* %496, i64 %idxprom469
  %xpos471 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx470, i32 0, i32 0
  %497 = load i32, i32* %xpos471, align 4
  %inc472 = add nsw i32 %497, 1
  store i32 %inc472, i32* %xpos471, align 4
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.468, %lor.lhs.false.465, %lor.lhs.false.458
  %498 = load i32, i32* %site, align 4
  %idxprom474 = sext i32 %498 to i64
  %499 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx475 = getelementptr inbounds %struct.locbox, %struct.locbox* %499, i64 %idxprom474
  %xpos476 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx475, i32 0, i32 0
  %500 = load i32, i32* %xpos476, align 4
  %501 = load i32, i32* %site, align 4
  %idxprom477 = sext i32 %501 to i64
  %502 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx478 = getelementptr inbounds %struct.locbox, %struct.locbox* %502, i64 %idxprom477
  %oxpos479 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx478, i32 0, i32 2
  store i32 %500, i32* %oxpos479, align 4
  %503 = load i32, i32* %height, align 4
  %rem480 = srem i32 %503, 2
  %cmp481 = icmp ne i32 %rem480, 0
  br i1 %cmp481, label %land.lhs.true.483, label %lor.lhs.false.489

land.lhs.true.483:                                ; preds = %if.end.473
  %504 = load i32, i32* %orient, align 4
  %cmp484 = icmp eq i32 %504, 1
  br i1 %cmp484, label %if.then.499, label %lor.lhs.false.486

lor.lhs.false.486:                                ; preds = %land.lhs.true.483
  %505 = load i32, i32* %orient, align 4
  %cmp487 = icmp eq i32 %505, 3
  br i1 %cmp487, label %if.then.499, label %lor.lhs.false.489

lor.lhs.false.489:                                ; preds = %lor.lhs.false.486, %if.end.473
  %506 = load i32, i32* %length, align 4
  %rem490 = srem i32 %506, 2
  %cmp491 = icmp ne i32 %rem490, 0
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.504

land.lhs.true.493:                                ; preds = %lor.lhs.false.489
  %507 = load i32, i32* %orient, align 4
  %cmp494 = icmp eq i32 %507, 4
  br i1 %cmp494, label %if.then.499, label %lor.lhs.false.496

lor.lhs.false.496:                                ; preds = %land.lhs.true.493
  %508 = load i32, i32* %orient, align 4
  %cmp497 = icmp eq i32 %508, 7
  br i1 %cmp497, label %if.then.499, label %if.end.504

if.then.499:                                      ; preds = %lor.lhs.false.496, %land.lhs.true.493, %lor.lhs.false.486, %land.lhs.true.483
  %509 = load i32, i32* %site, align 4
  %idxprom500 = sext i32 %509 to i64
  %510 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx501 = getelementptr inbounds %struct.locbox, %struct.locbox* %510, i64 %idxprom500
  %ypos502 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx501, i32 0, i32 1
  %511 = load i32, i32* %ypos502, align 4
  %inc503 = add nsw i32 %511, 1
  store i32 %inc503, i32* %ypos502, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.499, %lor.lhs.false.496, %lor.lhs.false.489
  %512 = load i32, i32* %site, align 4
  %idxprom505 = sext i32 %512 to i64
  %513 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx506 = getelementptr inbounds %struct.locbox, %struct.locbox* %513, i64 %idxprom505
  %ypos507 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx506, i32 0, i32 1
  %514 = load i32, i32* %ypos507, align 4
  %515 = load i32, i32* %site, align 4
  %idxprom508 = sext i32 %515 to i64
  %516 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx509 = getelementptr inbounds %struct.locbox, %struct.locbox* %516, i64 %idxprom508
  %oypos510 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx509, i32 0, i32 3
  store i32 %514, i32* %oypos510, align 4
  br label %for.inc.511

for.inc.511:                                      ; preds = %if.end.504
  %517 = load i32, i32* %site, align 4
  %inc512 = add nsw i32 %517, 1
  store i32 %inc512, i32* %site, align 4
  br label %for.cond.414

for.end.513:                                      ; preds = %for.cond.414
  br label %if.end.514

if.end.514:                                       ; preds = %for.end.513, %if.end.402
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.514, %for.body
  br label %for.inc.516

for.inc.516:                                      ; preds = %if.end.515
  %518 = load i32, i32* %cell, align 4
  %inc517 = add nsw i32 %518, 1
  store i32 %inc517, i32* %cell, align 4
  br label %for.cond

for.end.518:                                      ; preds = %for.cond
  store i32 1, i32* %cell, align 4
  br label %for.cond.519

for.cond.519:                                     ; preds = %for.inc.863, %for.end.518
  %519 = load i32, i32* %cell, align 4
  %520 = load i32, i32* @numcells, align 4
  %521 = load i32, i32* @numpads, align 4
  %add520 = add nsw i32 %520, %521
  %cmp521 = icmp sle i32 %519, %add520
  br i1 %cmp521, label %for.body.523, label %for.end.865

for.body.523:                                     ; preds = %for.cond.519
  %522 = load i32, i32* %cell, align 4
  %idxprom524 = sext i32 %522 to i64
  %523 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx525 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %523, i64 %idxprom524
  %524 = load %struct.cellbox*, %struct.cellbox** %arrayidx525, align 8
  store %struct.cellbox* %524, %struct.cellbox** %ptr, align 8
  %525 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config526 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %525, i32 0, i32 21
  %arrayidx527 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config526, i32 0, i64 0
  %526 = load %struct.tilebox*, %struct.tilebox** %arrayidx527, align 8
  %top528 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %526, i32 0, i32 12
  %527 = load i32, i32* %top528, align 4
  %528 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config529 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %528, i32 0, i32 21
  %arrayidx530 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config529, i32 0, i64 0
  %529 = load %struct.tilebox*, %struct.tilebox** %arrayidx530, align 8
  %bottom531 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %529, i32 0, i32 11
  %530 = load i32, i32* %bottom531, align 4
  %sub532 = sub nsw i32 %527, %530
  store i32 %sub532, i32* %height, align 4
  %531 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config533 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %531, i32 0, i32 21
  %arrayidx534 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config533, i32 0, i64 0
  %532 = load %struct.tilebox*, %struct.tilebox** %arrayidx534, align 8
  %right535 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %532, i32 0, i32 10
  %533 = load i32, i32* %right535, align 4
  %534 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config536 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %534, i32 0, i32 21
  %arrayidx537 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config536, i32 0, i64 0
  %535 = load %struct.tilebox*, %struct.tilebox** %arrayidx537, align 8
  %left538 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %535, i32 0, i32 9
  %536 = load i32, i32* %left538, align 4
  %sub539 = sub nsw i32 %533, %536
  store i32 %sub539, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.860, %for.body.523
  %537 = load i32, i32* %orient, align 4
  %cmp541 = icmp sle i32 %537, 7
  br i1 %cmp541, label %for.body.543, label %for.end.862

for.body.543:                                     ; preds = %for.cond.540
  %538 = load i32, i32* %orient, align 4
  %539 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient544 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %539, i32 0, i32 5
  %540 = load i32, i32* %orient544, align 4
  %cmp545 = icmp eq i32 %538, %540
  br i1 %cmp545, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %for.body.543
  br label %for.inc.860

if.end.548:                                       ; preds = %for.body.543
  %541 = load i32, i32* %orient, align 4
  %idxprom549 = sext i32 %541 to i64
  %542 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList = getelementptr inbounds %struct.cellbox, %struct.cellbox* %542, i32 0, i32 4
  %arrayidx550 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList, i32 0, i64 %idxprom549
  %543 = load i32, i32* %arrayidx550, align 4
  %cmp551 = icmp eq i32 %543, 0
  br i1 %cmp551, label %if.then.553, label %if.end.554

if.then.553:                                      ; preds = %if.end.548
  br label %for.inc.860

if.end.554:                                       ; preds = %if.end.548
  %544 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config555 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %544, i32 0, i32 21
  %arrayidx556 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config555, i32 0, i64 0
  %545 = load %struct.tilebox*, %struct.tilebox** %arrayidx556, align 8
  store %struct.tilebox* %545, %struct.tilebox** %tptr0, align 8
  %call557 = call noalias i8* @malloc(i64 104) #3
  %546 = bitcast i8* %call557 to %struct.tilebox*
  %547 = load i32, i32* %orient, align 4
  %idxprom558 = sext i32 %547 to i64
  %548 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config559 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %548, i32 0, i32 21
  %arrayidx560 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config559, i32 0, i64 %idxprom558
  store %struct.tilebox* %546, %struct.tilebox** %arrayidx560, align 8
  store %struct.tilebox* %546, %struct.tilebox** %tptr, align 8
  %549 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile561 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %549, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile561, align 8
  %550 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left562 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %550, i32 0, i32 9
  %551 = load i32, i32* %left562, align 4
  %552 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left563 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %552, i32 0, i32 9
  store i32 %551, i32* %left563, align 4
  %553 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right564 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %553, i32 0, i32 10
  %554 = load i32, i32* %right564, align 4
  %555 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right565 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %555, i32 0, i32 10
  store i32 %554, i32* %right565, align 4
  %556 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom566 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %556, i32 0, i32 11
  %557 = load i32, i32* %bottom566, align 4
  %558 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom567 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %558, i32 0, i32 11
  store i32 %557, i32* %bottom567, align 4
  %559 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top568 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %559, i32 0, i32 12
  %560 = load i32, i32* %top568, align 4
  %561 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top569 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %561, i32 0, i32 12
  store i32 %560, i32* %top569, align 4
  %562 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr570 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %562, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr570, align 8
  %563 = load i32, i32* %orient, align 4
  switch i32 %563, label %sw.epilog.634 [
    i32 1, label %sw.bb.571
    i32 2, label %sw.bb.580
    i32 3, label %sw.bb.589
    i32 4, label %sw.bb.598
    i32 5, label %sw.bb.607
    i32 6, label %sw.bb.616
    i32 7, label %sw.bb.625
  ]

sw.bb.571:                                        ; preds = %if.end.554
  %564 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight572 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %564, i32 0, i32 1
  %565 = load double, double* %lweight572, align 8
  %566 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight573 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %566, i32 0, i32 1
  store double %565, double* %lweight573, align 8
  %567 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight574 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %567, i32 0, i32 2
  %568 = load double, double* %rweight574, align 8
  %569 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight575 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %569, i32 0, i32 2
  store double %568, double* %rweight575, align 8
  %570 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight576 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %570, i32 0, i32 4
  %571 = load double, double* %tweight576, align 8
  %572 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight577 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %572, i32 0, i32 3
  store double %571, double* %bweight577, align 8
  %573 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight578 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %573, i32 0, i32 3
  %574 = load double, double* %bweight578, align 8
  %575 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight579 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %575, i32 0, i32 4
  store double %574, double* %tweight579, align 8
  br label %sw.epilog.634

sw.bb.580:                                        ; preds = %if.end.554
  %576 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight581 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %576, i32 0, i32 2
  %577 = load double, double* %rweight581, align 8
  %578 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight582 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %578, i32 0, i32 1
  store double %577, double* %lweight582, align 8
  %579 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight583 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %579, i32 0, i32 1
  %580 = load double, double* %lweight583, align 8
  %581 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight584 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %581, i32 0, i32 2
  store double %580, double* %rweight584, align 8
  %582 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight585 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %582, i32 0, i32 3
  %583 = load double, double* %bweight585, align 8
  %584 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight586 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %584, i32 0, i32 3
  store double %583, double* %bweight586, align 8
  %585 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight587 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %585, i32 0, i32 4
  %586 = load double, double* %tweight587, align 8
  %587 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight588 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %587, i32 0, i32 4
  store double %586, double* %tweight588, align 8
  br label %sw.epilog.634

sw.bb.589:                                        ; preds = %if.end.554
  %588 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight590 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %588, i32 0, i32 2
  %589 = load double, double* %rweight590, align 8
  %590 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight591 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %590, i32 0, i32 1
  store double %589, double* %lweight591, align 8
  %591 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight592 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %591, i32 0, i32 1
  %592 = load double, double* %lweight592, align 8
  %593 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight593 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %593, i32 0, i32 2
  store double %592, double* %rweight593, align 8
  %594 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight594 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %594, i32 0, i32 4
  %595 = load double, double* %tweight594, align 8
  %596 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight595 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %596, i32 0, i32 3
  store double %595, double* %bweight595, align 8
  %597 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight596 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %597, i32 0, i32 3
  %598 = load double, double* %bweight596, align 8
  %599 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight597 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %599, i32 0, i32 4
  store double %598, double* %tweight597, align 8
  br label %sw.epilog.634

sw.bb.598:                                        ; preds = %if.end.554
  %600 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight599 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %600, i32 0, i32 4
  %601 = load double, double* %tweight599, align 8
  %602 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight600 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %602, i32 0, i32 1
  store double %601, double* %lweight600, align 8
  %603 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight601 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %603, i32 0, i32 3
  %604 = load double, double* %bweight601, align 8
  %605 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight602 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %605, i32 0, i32 2
  store double %604, double* %rweight602, align 8
  %606 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight603 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %606, i32 0, i32 2
  %607 = load double, double* %rweight603, align 8
  %608 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight604 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %608, i32 0, i32 3
  store double %607, double* %bweight604, align 8
  %609 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight605 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %609, i32 0, i32 1
  %610 = load double, double* %lweight605, align 8
  %611 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight606 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %611, i32 0, i32 4
  store double %610, double* %tweight606, align 8
  br label %sw.epilog.634

sw.bb.607:                                        ; preds = %if.end.554
  %612 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight608 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %612, i32 0, i32 3
  %613 = load double, double* %bweight608, align 8
  %614 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight609 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %614, i32 0, i32 1
  store double %613, double* %lweight609, align 8
  %615 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight610 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %615, i32 0, i32 4
  %616 = load double, double* %tweight610, align 8
  %617 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight611 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %617, i32 0, i32 2
  store double %616, double* %rweight611, align 8
  %618 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight612 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %618, i32 0, i32 1
  %619 = load double, double* %lweight612, align 8
  %620 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight613 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %620, i32 0, i32 3
  store double %619, double* %bweight613, align 8
  %621 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight614 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %621, i32 0, i32 2
  %622 = load double, double* %rweight614, align 8
  %623 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight615 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %623, i32 0, i32 4
  store double %622, double* %tweight615, align 8
  br label %sw.epilog.634

sw.bb.616:                                        ; preds = %if.end.554
  %624 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight617 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %624, i32 0, i32 4
  %625 = load double, double* %tweight617, align 8
  %626 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight618 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %626, i32 0, i32 1
  store double %625, double* %lweight618, align 8
  %627 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight619 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %627, i32 0, i32 3
  %628 = load double, double* %bweight619, align 8
  %629 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight620 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %629, i32 0, i32 2
  store double %628, double* %rweight620, align 8
  %630 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight621 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %630, i32 0, i32 1
  %631 = load double, double* %lweight621, align 8
  %632 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight622 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %632, i32 0, i32 3
  store double %631, double* %bweight622, align 8
  %633 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight623 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %633, i32 0, i32 2
  %634 = load double, double* %rweight623, align 8
  %635 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight624 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %635, i32 0, i32 4
  store double %634, double* %tweight624, align 8
  br label %sw.epilog.634

sw.bb.625:                                        ; preds = %if.end.554
  %636 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight626 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %636, i32 0, i32 3
  %637 = load double, double* %bweight626, align 8
  %638 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight627 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %638, i32 0, i32 1
  store double %637, double* %lweight627, align 8
  %639 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight628 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %639, i32 0, i32 4
  %640 = load double, double* %tweight628, align 8
  %641 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight629 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %641, i32 0, i32 2
  store double %640, double* %rweight629, align 8
  %642 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight630 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %642, i32 0, i32 2
  %643 = load double, double* %rweight630, align 8
  %644 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight631 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %644, i32 0, i32 3
  store double %643, double* %bweight631, align 8
  %645 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight632 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %645, i32 0, i32 1
  %646 = load double, double* %lweight632, align 8
  %647 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight633 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %647, i32 0, i32 4
  store double %646, double* %tweight633, align 8
  br label %sw.epilog.634

sw.epilog.634:                                    ; preds = %if.end.554, %sw.bb.625, %sw.bb.616, %sw.bb.607, %sw.bb.598, %sw.bb.589, %sw.bb.580, %sw.bb.571
  %648 = load i32, i32* %orient, align 4
  call void @move(i32 %648)
  %649 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left635 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %649, i32 0, i32 9
  %650 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom636 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %650, i32 0, i32 11
  %651 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right637 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %651, i32 0, i32 10
  %652 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top638 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %652, i32 0, i32 12
  call void @rect(i32* %left635, i32* %bottom636, i32* %right637, i32* %top638)
  %653 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left639 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %653, i32 0, i32 9
  %654 = load i32, i32* %left639, align 4
  %655 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft640 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %655, i32 0, i32 13
  store i32 %654, i32* %oleft640, align 4
  %656 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right641 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %656, i32 0, i32 10
  %657 = load i32, i32* %right641, align 4
  %658 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright642 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %658, i32 0, i32 14
  store i32 %657, i32* %oright642, align 4
  %659 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom643 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %659, i32 0, i32 11
  %660 = load i32, i32* %bottom643, align 4
  %661 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom644 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %661, i32 0, i32 15
  store i32 %660, i32* %obottom644, align 4
  %662 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top645 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %662, i32 0, i32 12
  %663 = load i32, i32* %top645, align 4
  %664 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop646 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %664, i32 0, i32 16
  store i32 %663, i32* %otop646, align 4
  %665 = load i32, i32* %height, align 4
  %rem647 = srem i32 %665, 2
  %cmp648 = icmp ne i32 %rem647, 0
  br i1 %cmp648, label %land.lhs.true.650, label %lor.lhs.false.656

land.lhs.true.650:                                ; preds = %sw.epilog.634
  %666 = load i32, i32* %orient, align 4
  %cmp651 = icmp eq i32 %666, 4
  br i1 %cmp651, label %if.then.666, label %lor.lhs.false.653

lor.lhs.false.653:                                ; preds = %land.lhs.true.650
  %667 = load i32, i32* %orient, align 4
  %cmp654 = icmp eq i32 %667, 6
  br i1 %cmp654, label %if.then.666, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %lor.lhs.false.653, %sw.epilog.634
  %668 = load i32, i32* %length, align 4
  %rem657 = srem i32 %668, 2
  %cmp658 = icmp ne i32 %rem657, 0
  br i1 %cmp658, label %land.lhs.true.660, label %if.end.675

land.lhs.true.660:                                ; preds = %lor.lhs.false.656
  %669 = load i32, i32* %orient, align 4
  %cmp661 = icmp eq i32 %669, 2
  br i1 %cmp661, label %if.then.666, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %land.lhs.true.660
  %670 = load i32, i32* %orient, align 4
  %cmp664 = icmp eq i32 %670, 3
  br i1 %cmp664, label %if.then.666, label %if.end.675

if.then.666:                                      ; preds = %lor.lhs.false.663, %land.lhs.true.660, %lor.lhs.false.653, %land.lhs.true.650
  %671 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left667 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %671, i32 0, i32 9
  %672 = load i32, i32* %left667, align 4
  %inc668 = add nsw i32 %672, 1
  store i32 %inc668, i32* %left667, align 4
  %673 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right669 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %673, i32 0, i32 10
  %674 = load i32, i32* %right669, align 4
  %inc670 = add nsw i32 %674, 1
  store i32 %inc670, i32* %right669, align 4
  %675 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft671 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %675, i32 0, i32 13
  %676 = load i32, i32* %oleft671, align 4
  %inc672 = add nsw i32 %676, 1
  store i32 %inc672, i32* %oleft671, align 4
  %677 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright673 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %677, i32 0, i32 14
  %678 = load i32, i32* %oright673, align 4
  %inc674 = add nsw i32 %678, 1
  store i32 %inc674, i32* %oright673, align 4
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.666, %lor.lhs.false.663, %lor.lhs.false.656
  %679 = load i32, i32* %height, align 4
  %rem676 = srem i32 %679, 2
  %cmp677 = icmp ne i32 %rem676, 0
  br i1 %cmp677, label %land.lhs.true.679, label %lor.lhs.false.685

land.lhs.true.679:                                ; preds = %if.end.675
  %680 = load i32, i32* %orient, align 4
  %cmp680 = icmp eq i32 %680, 1
  br i1 %cmp680, label %if.then.695, label %lor.lhs.false.682

lor.lhs.false.682:                                ; preds = %land.lhs.true.679
  %681 = load i32, i32* %orient, align 4
  %cmp683 = icmp eq i32 %681, 3
  br i1 %cmp683, label %if.then.695, label %lor.lhs.false.685

lor.lhs.false.685:                                ; preds = %lor.lhs.false.682, %if.end.675
  %682 = load i32, i32* %length, align 4
  %rem686 = srem i32 %682, 2
  %cmp687 = icmp ne i32 %rem686, 0
  br i1 %cmp687, label %land.lhs.true.689, label %if.end.704

land.lhs.true.689:                                ; preds = %lor.lhs.false.685
  %683 = load i32, i32* %orient, align 4
  %cmp690 = icmp eq i32 %683, 4
  br i1 %cmp690, label %if.then.695, label %lor.lhs.false.692

lor.lhs.false.692:                                ; preds = %land.lhs.true.689
  %684 = load i32, i32* %orient, align 4
  %cmp693 = icmp eq i32 %684, 7
  br i1 %cmp693, label %if.then.695, label %if.end.704

if.then.695:                                      ; preds = %lor.lhs.false.692, %land.lhs.true.689, %lor.lhs.false.682, %land.lhs.true.679
  %685 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom696 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %685, i32 0, i32 11
  %686 = load i32, i32* %bottom696, align 4
  %inc697 = add nsw i32 %686, 1
  store i32 %inc697, i32* %bottom696, align 4
  %687 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top698 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %687, i32 0, i32 12
  %688 = load i32, i32* %top698, align 4
  %inc699 = add nsw i32 %688, 1
  store i32 %inc699, i32* %top698, align 4
  %689 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom700 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %689, i32 0, i32 15
  %690 = load i32, i32* %obottom700, align 4
  %inc701 = add nsw i32 %690, 1
  store i32 %inc701, i32* %obottom700, align 4
  %691 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop702 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %691, i32 0, i32 16
  %692 = load i32, i32* %otop702, align 4
  %inc703 = add nsw i32 %692, 1
  store i32 %inc703, i32* %otop702, align 4
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.695, %lor.lhs.false.692, %lor.lhs.false.685
  store i32 1, i32* %tilenum, align 4
  br label %for.cond.705

for.cond.705:                                     ; preds = %for.inc.857, %if.end.704
  %693 = load i32, i32* %tilenum, align 4
  %694 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numtiles706 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %694, i32 0, i32 6
  %695 = load i32, i32* %numtiles706, align 4
  %cmp707 = icmp sle i32 %693, %695
  br i1 %cmp707, label %for.body.709, label %for.end.859

for.body.709:                                     ; preds = %for.cond.705
  %696 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %nexttile710 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %696, i32 0, i32 0
  %697 = load %struct.tilebox*, %struct.tilebox** %nexttile710, align 8
  store %struct.tilebox* %697, %struct.tilebox** %tptr0, align 8
  %call711 = call noalias i8* @malloc(i64 104) #3
  %698 = bitcast i8* %call711 to %struct.tilebox*
  %699 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile712 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %699, i32 0, i32 0
  store %struct.tilebox* %698, %struct.tilebox** %nexttile712, align 8
  store %struct.tilebox* %698, %struct.tilebox** %tptr, align 8
  %700 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %nexttile713 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %700, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %nexttile713, align 8
  %701 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %left714 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %701, i32 0, i32 9
  %702 = load i32, i32* %left714, align 4
  %703 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left715 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %703, i32 0, i32 9
  store i32 %702, i32* %left715, align 4
  %704 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %right716 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %704, i32 0, i32 10
  %705 = load i32, i32* %right716, align 4
  %706 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right717 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %706, i32 0, i32 10
  store i32 %705, i32* %right717, align 4
  %707 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bottom718 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %707, i32 0, i32 11
  %708 = load i32, i32* %bottom718, align 4
  %709 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom719 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %709, i32 0, i32 11
  store i32 %708, i32* %bottom719, align 4
  %710 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %top720 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %710, i32 0, i32 12
  %711 = load i32, i32* %top720, align 4
  %712 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top721 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %712, i32 0, i32 12
  store i32 %711, i32* %top721, align 4
  %713 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %termptr722 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %713, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr722, align 8
  %714 = load i32, i32* %orient, align 4
  switch i32 %714, label %sw.epilog.786 [
    i32 1, label %sw.bb.723
    i32 2, label %sw.bb.732
    i32 3, label %sw.bb.741
    i32 4, label %sw.bb.750
    i32 5, label %sw.bb.759
    i32 6, label %sw.bb.768
    i32 7, label %sw.bb.777
  ]

sw.bb.723:                                        ; preds = %for.body.709
  %715 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight724 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %715, i32 0, i32 1
  %716 = load double, double* %lweight724, align 8
  %717 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight725 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %717, i32 0, i32 1
  store double %716, double* %lweight725, align 8
  %718 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight726 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %718, i32 0, i32 2
  %719 = load double, double* %rweight726, align 8
  %720 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight727 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %720, i32 0, i32 2
  store double %719, double* %rweight727, align 8
  %721 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight728 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %721, i32 0, i32 4
  %722 = load double, double* %tweight728, align 8
  %723 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight729 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %723, i32 0, i32 3
  store double %722, double* %bweight729, align 8
  %724 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight730 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %724, i32 0, i32 3
  %725 = load double, double* %bweight730, align 8
  %726 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight731 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %726, i32 0, i32 4
  store double %725, double* %tweight731, align 8
  br label %sw.epilog.786

sw.bb.732:                                        ; preds = %for.body.709
  %727 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight733 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %727, i32 0, i32 2
  %728 = load double, double* %rweight733, align 8
  %729 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight734 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %729, i32 0, i32 1
  store double %728, double* %lweight734, align 8
  %730 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight735 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %730, i32 0, i32 1
  %731 = load double, double* %lweight735, align 8
  %732 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight736 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %732, i32 0, i32 2
  store double %731, double* %rweight736, align 8
  %733 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight737 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %733, i32 0, i32 3
  %734 = load double, double* %bweight737, align 8
  %735 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight738 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %735, i32 0, i32 3
  store double %734, double* %bweight738, align 8
  %736 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight739 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %736, i32 0, i32 4
  %737 = load double, double* %tweight739, align 8
  %738 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight740 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %738, i32 0, i32 4
  store double %737, double* %tweight740, align 8
  br label %sw.epilog.786

sw.bb.741:                                        ; preds = %for.body.709
  %739 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight742 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %739, i32 0, i32 2
  %740 = load double, double* %rweight742, align 8
  %741 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight743 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %741, i32 0, i32 1
  store double %740, double* %lweight743, align 8
  %742 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight744 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %742, i32 0, i32 1
  %743 = load double, double* %lweight744, align 8
  %744 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight745 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %744, i32 0, i32 2
  store double %743, double* %rweight745, align 8
  %745 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight746 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %745, i32 0, i32 4
  %746 = load double, double* %tweight746, align 8
  %747 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight747 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %747, i32 0, i32 3
  store double %746, double* %bweight747, align 8
  %748 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight748 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %748, i32 0, i32 3
  %749 = load double, double* %bweight748, align 8
  %750 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight749 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %750, i32 0, i32 4
  store double %749, double* %tweight749, align 8
  br label %sw.epilog.786

sw.bb.750:                                        ; preds = %for.body.709
  %751 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight751 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %751, i32 0, i32 4
  %752 = load double, double* %tweight751, align 8
  %753 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight752 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %753, i32 0, i32 1
  store double %752, double* %lweight752, align 8
  %754 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight753 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %754, i32 0, i32 3
  %755 = load double, double* %bweight753, align 8
  %756 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight754 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %756, i32 0, i32 2
  store double %755, double* %rweight754, align 8
  %757 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight755 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %757, i32 0, i32 2
  %758 = load double, double* %rweight755, align 8
  %759 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight756 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %759, i32 0, i32 3
  store double %758, double* %bweight756, align 8
  %760 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight757 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %760, i32 0, i32 1
  %761 = load double, double* %lweight757, align 8
  %762 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight758 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %762, i32 0, i32 4
  store double %761, double* %tweight758, align 8
  br label %sw.epilog.786

sw.bb.759:                                        ; preds = %for.body.709
  %763 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight760 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %763, i32 0, i32 3
  %764 = load double, double* %bweight760, align 8
  %765 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight761 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %765, i32 0, i32 1
  store double %764, double* %lweight761, align 8
  %766 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight762 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %766, i32 0, i32 4
  %767 = load double, double* %tweight762, align 8
  %768 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight763 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %768, i32 0, i32 2
  store double %767, double* %rweight763, align 8
  %769 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight764 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %769, i32 0, i32 1
  %770 = load double, double* %lweight764, align 8
  %771 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight765 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %771, i32 0, i32 3
  store double %770, double* %bweight765, align 8
  %772 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight766 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %772, i32 0, i32 2
  %773 = load double, double* %rweight766, align 8
  %774 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight767 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %774, i32 0, i32 4
  store double %773, double* %tweight767, align 8
  br label %sw.epilog.786

sw.bb.768:                                        ; preds = %for.body.709
  %775 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight769 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %775, i32 0, i32 4
  %776 = load double, double* %tweight769, align 8
  %777 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight770 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %777, i32 0, i32 1
  store double %776, double* %lweight770, align 8
  %778 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight771 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %778, i32 0, i32 3
  %779 = load double, double* %bweight771, align 8
  %780 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight772 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %780, i32 0, i32 2
  store double %779, double* %rweight772, align 8
  %781 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight773 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %781, i32 0, i32 1
  %782 = load double, double* %lweight773, align 8
  %783 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight774 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %783, i32 0, i32 3
  store double %782, double* %bweight774, align 8
  %784 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight775 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %784, i32 0, i32 2
  %785 = load double, double* %rweight775, align 8
  %786 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight776 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %786, i32 0, i32 4
  store double %785, double* %tweight776, align 8
  br label %sw.epilog.786

sw.bb.777:                                        ; preds = %for.body.709
  %787 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %bweight778 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %787, i32 0, i32 3
  %788 = load double, double* %bweight778, align 8
  %789 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %lweight779 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %789, i32 0, i32 1
  store double %788, double* %lweight779, align 8
  %790 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %tweight780 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %790, i32 0, i32 4
  %791 = load double, double* %tweight780, align 8
  %792 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %rweight781 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %792, i32 0, i32 2
  store double %791, double* %rweight781, align 8
  %793 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %rweight782 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %793, i32 0, i32 2
  %794 = load double, double* %rweight782, align 8
  %795 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bweight783 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %795, i32 0, i32 3
  store double %794, double* %bweight783, align 8
  %796 = load %struct.tilebox*, %struct.tilebox** %tptr0, align 8
  %lweight784 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %796, i32 0, i32 1
  %797 = load double, double* %lweight784, align 8
  %798 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %tweight785 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %798, i32 0, i32 4
  store double %797, double* %tweight785, align 8
  br label %sw.epilog.786

sw.epilog.786:                                    ; preds = %for.body.709, %sw.bb.777, %sw.bb.768, %sw.bb.759, %sw.bb.750, %sw.bb.741, %sw.bb.732, %sw.bb.723
  %799 = load i32, i32* %orient, align 4
  call void @move(i32 %799)
  %800 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left787 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %800, i32 0, i32 9
  %801 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom788 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %801, i32 0, i32 11
  %802 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right789 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %802, i32 0, i32 10
  %803 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top790 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %803, i32 0, i32 12
  call void @rect(i32* %left787, i32* %bottom788, i32* %right789, i32* %top790)
  %804 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left791 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %804, i32 0, i32 9
  %805 = load i32, i32* %left791, align 4
  %806 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft792 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %806, i32 0, i32 13
  store i32 %805, i32* %oleft792, align 4
  %807 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right793 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %807, i32 0, i32 10
  %808 = load i32, i32* %right793, align 4
  %809 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright794 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %809, i32 0, i32 14
  store i32 %808, i32* %oright794, align 4
  %810 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom795 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %810, i32 0, i32 11
  %811 = load i32, i32* %bottom795, align 4
  %812 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom796 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %812, i32 0, i32 15
  store i32 %811, i32* %obottom796, align 4
  %813 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top797 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %813, i32 0, i32 12
  %814 = load i32, i32* %top797, align 4
  %815 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop798 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %815, i32 0, i32 16
  store i32 %814, i32* %otop798, align 4
  %816 = load i32, i32* %height, align 4
  %rem799 = srem i32 %816, 2
  %cmp800 = icmp ne i32 %rem799, 0
  br i1 %cmp800, label %land.lhs.true.802, label %lor.lhs.false.808

land.lhs.true.802:                                ; preds = %sw.epilog.786
  %817 = load i32, i32* %orient, align 4
  %cmp803 = icmp eq i32 %817, 4
  br i1 %cmp803, label %if.then.818, label %lor.lhs.false.805

lor.lhs.false.805:                                ; preds = %land.lhs.true.802
  %818 = load i32, i32* %orient, align 4
  %cmp806 = icmp eq i32 %818, 6
  br i1 %cmp806, label %if.then.818, label %lor.lhs.false.808

lor.lhs.false.808:                                ; preds = %lor.lhs.false.805, %sw.epilog.786
  %819 = load i32, i32* %length, align 4
  %rem809 = srem i32 %819, 2
  %cmp810 = icmp ne i32 %rem809, 0
  br i1 %cmp810, label %land.lhs.true.812, label %if.end.827

land.lhs.true.812:                                ; preds = %lor.lhs.false.808
  %820 = load i32, i32* %orient, align 4
  %cmp813 = icmp eq i32 %820, 2
  br i1 %cmp813, label %if.then.818, label %lor.lhs.false.815

lor.lhs.false.815:                                ; preds = %land.lhs.true.812
  %821 = load i32, i32* %orient, align 4
  %cmp816 = icmp eq i32 %821, 3
  br i1 %cmp816, label %if.then.818, label %if.end.827

if.then.818:                                      ; preds = %lor.lhs.false.815, %land.lhs.true.812, %lor.lhs.false.805, %land.lhs.true.802
  %822 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %left819 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %822, i32 0, i32 9
  %823 = load i32, i32* %left819, align 4
  %inc820 = add nsw i32 %823, 1
  store i32 %inc820, i32* %left819, align 4
  %824 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %right821 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %824, i32 0, i32 10
  %825 = load i32, i32* %right821, align 4
  %inc822 = add nsw i32 %825, 1
  store i32 %inc822, i32* %right821, align 4
  %826 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oleft823 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %826, i32 0, i32 13
  %827 = load i32, i32* %oleft823, align 4
  %inc824 = add nsw i32 %827, 1
  store i32 %inc824, i32* %oleft823, align 4
  %828 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %oright825 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %828, i32 0, i32 14
  %829 = load i32, i32* %oright825, align 4
  %inc826 = add nsw i32 %829, 1
  store i32 %inc826, i32* %oright825, align 4
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.818, %lor.lhs.false.815, %lor.lhs.false.808
  %830 = load i32, i32* %height, align 4
  %rem828 = srem i32 %830, 2
  %cmp829 = icmp ne i32 %rem828, 0
  br i1 %cmp829, label %land.lhs.true.831, label %lor.lhs.false.837

land.lhs.true.831:                                ; preds = %if.end.827
  %831 = load i32, i32* %orient, align 4
  %cmp832 = icmp eq i32 %831, 1
  br i1 %cmp832, label %if.then.847, label %lor.lhs.false.834

lor.lhs.false.834:                                ; preds = %land.lhs.true.831
  %832 = load i32, i32* %orient, align 4
  %cmp835 = icmp eq i32 %832, 3
  br i1 %cmp835, label %if.then.847, label %lor.lhs.false.837

lor.lhs.false.837:                                ; preds = %lor.lhs.false.834, %if.end.827
  %833 = load i32, i32* %length, align 4
  %rem838 = srem i32 %833, 2
  %cmp839 = icmp ne i32 %rem838, 0
  br i1 %cmp839, label %land.lhs.true.841, label %if.end.856

land.lhs.true.841:                                ; preds = %lor.lhs.false.837
  %834 = load i32, i32* %orient, align 4
  %cmp842 = icmp eq i32 %834, 4
  br i1 %cmp842, label %if.then.847, label %lor.lhs.false.844

lor.lhs.false.844:                                ; preds = %land.lhs.true.841
  %835 = load i32, i32* %orient, align 4
  %cmp845 = icmp eq i32 %835, 7
  br i1 %cmp845, label %if.then.847, label %if.end.856

if.then.847:                                      ; preds = %lor.lhs.false.844, %land.lhs.true.841, %lor.lhs.false.834, %land.lhs.true.831
  %836 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %bottom848 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %836, i32 0, i32 11
  %837 = load i32, i32* %bottom848, align 4
  %inc849 = add nsw i32 %837, 1
  store i32 %inc849, i32* %bottom848, align 4
  %838 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %top850 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %838, i32 0, i32 12
  %839 = load i32, i32* %top850, align 4
  %inc851 = add nsw i32 %839, 1
  store i32 %inc851, i32* %top850, align 4
  %840 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %obottom852 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %840, i32 0, i32 15
  %841 = load i32, i32* %obottom852, align 4
  %inc853 = add nsw i32 %841, 1
  store i32 %inc853, i32* %obottom852, align 4
  %842 = load %struct.tilebox*, %struct.tilebox** %tptr, align 8
  %otop854 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %842, i32 0, i32 16
  %843 = load i32, i32* %otop854, align 4
  %inc855 = add nsw i32 %843, 1
  store i32 %inc855, i32* %otop854, align 4
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.847, %lor.lhs.false.844, %lor.lhs.false.837
  br label %for.inc.857

for.inc.857:                                      ; preds = %if.end.856
  %844 = load i32, i32* %tilenum, align 4
  %inc858 = add nsw i32 %844, 1
  store i32 %inc858, i32* %tilenum, align 4
  br label %for.cond.705

for.end.859:                                      ; preds = %for.cond.705
  br label %for.inc.860

for.inc.860:                                      ; preds = %for.end.859, %if.then.553, %if.then.547
  %845 = load i32, i32* %orient, align 4
  %inc861 = add nsw i32 %845, 1
  store i32 %inc861, i32* %orient, align 4
  br label %for.cond.540

for.end.862:                                      ; preds = %for.cond.540
  br label %for.inc.863

for.inc.863:                                      ; preds = %for.end.862
  %846 = load i32, i32* %cell, align 4
  %inc864 = add nsw i32 %846, 1
  store i32 %inc864, i32* %cell, align 4
  br label %for.cond.519

for.end.865:                                      ; preds = %for.cond.519
  store i32 1, i32* %cell, align 4
  br label %for.cond.866

for.cond.866:                                     ; preds = %for.inc.1056, %for.end.865
  %847 = load i32, i32* %cell, align 4
  %848 = load i32, i32* @numcells, align 4
  %849 = load i32, i32* @numpads, align 4
  %add867 = add nsw i32 %848, %849
  %cmp868 = icmp sle i32 %847, %add867
  br i1 %cmp868, label %for.body.870, label %for.end.1058

for.body.870:                                     ; preds = %for.cond.866
  %850 = load i32, i32* %cell, align 4
  %idxprom871 = sext i32 %850 to i64
  %851 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx872 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %851, i64 %idxprom871
  %852 = load %struct.cellbox*, %struct.cellbox** %arrayidx872, align 8
  store %struct.cellbox* %852, %struct.cellbox** %ptr, align 8
  %853 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms873 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %853, i32 0, i32 8
  %854 = load i32, i32* %numterms873, align 4
  %cmp874 = icmp eq i32 %854, 0
  br i1 %cmp874, label %if.then.876, label %if.end.877

if.then.876:                                      ; preds = %for.body.870
  br label %for.inc.1056

if.end.877:                                       ; preds = %for.body.870
  %855 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config878 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %855, i32 0, i32 21
  %arrayidx879 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config878, i32 0, i64 0
  %856 = load %struct.tilebox*, %struct.tilebox** %arrayidx879, align 8
  %top880 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %856, i32 0, i32 12
  %857 = load i32, i32* %top880, align 4
  %858 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config881 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %858, i32 0, i32 21
  %arrayidx882 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config881, i32 0, i64 0
  %859 = load %struct.tilebox*, %struct.tilebox** %arrayidx882, align 8
  %bottom883 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %859, i32 0, i32 11
  %860 = load i32, i32* %bottom883, align 4
  %sub884 = sub nsw i32 %857, %860
  store i32 %sub884, i32* %height, align 4
  %861 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config885 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %861, i32 0, i32 21
  %arrayidx886 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config885, i32 0, i64 0
  %862 = load %struct.tilebox*, %struct.tilebox** %arrayidx886, align 8
  %right887 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %862, i32 0, i32 10
  %863 = load i32, i32* %right887, align 4
  %864 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config888 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %864, i32 0, i32 21
  %arrayidx889 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config888, i32 0, i64 0
  %865 = load %struct.tilebox*, %struct.tilebox** %arrayidx889, align 8
  %left890 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %865, i32 0, i32 9
  %866 = load i32, i32* %left890, align 4
  %sub891 = sub nsw i32 %863, %866
  store i32 %sub891, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.892

for.cond.892:                                     ; preds = %for.inc.1053, %if.end.877
  %867 = load i32, i32* %orient, align 4
  %cmp893 = icmp sle i32 %867, 7
  br i1 %cmp893, label %for.body.895, label %for.end.1055

for.body.895:                                     ; preds = %for.cond.892
  %868 = load i32, i32* %orient, align 4
  %869 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient896 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %869, i32 0, i32 5
  %870 = load i32, i32* %orient896, align 4
  %cmp897 = icmp eq i32 %868, %870
  br i1 %cmp897, label %if.then.899, label %if.end.900

if.then.899:                                      ; preds = %for.body.895
  br label %for.inc.1053

if.end.900:                                       ; preds = %for.body.895
  %871 = load i32, i32* %orient, align 4
  %idxprom901 = sext i32 %871 to i64
  %872 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList902 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %872, i32 0, i32 4
  %arrayidx903 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList902, i32 0, i64 %idxprom901
  %873 = load i32, i32* %arrayidx903, align 4
  %cmp904 = icmp eq i32 %873, 0
  br i1 %cmp904, label %if.then.906, label %if.end.907

if.then.906:                                      ; preds = %if.end.900
  br label %for.inc.1053

if.end.907:                                       ; preds = %if.end.900
  %874 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config908 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %874, i32 0, i32 21
  %arrayidx909 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config908, i32 0, i64 0
  %875 = load %struct.tilebox*, %struct.tilebox** %arrayidx909, align 8
  %termptr910 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %875, i32 0, i32 17
  %876 = load %struct.termbox*, %struct.termbox** %termptr910, align 8
  store %struct.termbox* %876, %struct.termbox** %tmptr0, align 8
  %call911 = call noalias i8* @malloc(i64 32) #3
  %877 = bitcast i8* %call911 to %struct.termbox*
  %878 = load i32, i32* %orient, align 4
  %idxprom912 = sext i32 %878 to i64
  %879 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config913 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %879, i32 0, i32 21
  %arrayidx914 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config913, i32 0, i64 %idxprom912
  %880 = load %struct.tilebox*, %struct.tilebox** %arrayidx914, align 8
  %termptr915 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %880, i32 0, i32 17
  store %struct.termbox* %877, %struct.termbox** %termptr915, align 8
  store %struct.termbox* %877, %struct.termbox** %tmptr, align 8
  %881 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm916 = getelementptr inbounds %struct.termbox, %struct.termbox* %881, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm916, align 8
  %882 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal917 = getelementptr inbounds %struct.termbox, %struct.termbox* %882, i32 0, i32 5
  %883 = load i32, i32* %terminal917, align 4
  %884 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal918 = getelementptr inbounds %struct.termbox, %struct.termbox* %884, i32 0, i32 5
  store i32 %883, i32* %terminal918, align 4
  %885 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos919 = getelementptr inbounds %struct.termbox, %struct.termbox* %885, i32 0, i32 1
  %886 = load i32, i32* %xpos919, align 4
  %887 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos920 = getelementptr inbounds %struct.termbox, %struct.termbox* %887, i32 0, i32 1
  store i32 %886, i32* %xpos920, align 4
  %888 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos921 = getelementptr inbounds %struct.termbox, %struct.termbox* %888, i32 0, i32 2
  %889 = load i32, i32* %ypos921, align 4
  %890 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos922 = getelementptr inbounds %struct.termbox, %struct.termbox* %890, i32 0, i32 2
  store i32 %889, i32* %ypos922, align 4
  %891 = load i32, i32* %orient, align 4
  call void @move(i32 %891)
  %892 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos923 = getelementptr inbounds %struct.termbox, %struct.termbox* %892, i32 0, i32 1
  %893 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos924 = getelementptr inbounds %struct.termbox, %struct.termbox* %893, i32 0, i32 2
  call void @point(i32* %xpos923, i32* %ypos924)
  %894 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos925 = getelementptr inbounds %struct.termbox, %struct.termbox* %894, i32 0, i32 1
  %895 = load i32, i32* %xpos925, align 4
  %896 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos926 = getelementptr inbounds %struct.termbox, %struct.termbox* %896, i32 0, i32 3
  store i32 %895, i32* %oxpos926, align 4
  %897 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos927 = getelementptr inbounds %struct.termbox, %struct.termbox* %897, i32 0, i32 2
  %898 = load i32, i32* %ypos927, align 4
  %899 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos928 = getelementptr inbounds %struct.termbox, %struct.termbox* %899, i32 0, i32 4
  store i32 %898, i32* %oypos928, align 4
  %900 = load i32, i32* %height, align 4
  %rem929 = srem i32 %900, 2
  %cmp930 = icmp ne i32 %rem929, 0
  br i1 %cmp930, label %land.lhs.true.932, label %lor.lhs.false.938

land.lhs.true.932:                                ; preds = %if.end.907
  %901 = load i32, i32* %orient, align 4
  %cmp933 = icmp eq i32 %901, 4
  br i1 %cmp933, label %if.then.948, label %lor.lhs.false.935

lor.lhs.false.935:                                ; preds = %land.lhs.true.932
  %902 = load i32, i32* %orient, align 4
  %cmp936 = icmp eq i32 %902, 6
  br i1 %cmp936, label %if.then.948, label %lor.lhs.false.938

lor.lhs.false.938:                                ; preds = %lor.lhs.false.935, %if.end.907
  %903 = load i32, i32* %length, align 4
  %rem939 = srem i32 %903, 2
  %cmp940 = icmp ne i32 %rem939, 0
  br i1 %cmp940, label %land.lhs.true.942, label %if.end.953

land.lhs.true.942:                                ; preds = %lor.lhs.false.938
  %904 = load i32, i32* %orient, align 4
  %cmp943 = icmp eq i32 %904, 2
  br i1 %cmp943, label %if.then.948, label %lor.lhs.false.945

lor.lhs.false.945:                                ; preds = %land.lhs.true.942
  %905 = load i32, i32* %orient, align 4
  %cmp946 = icmp eq i32 %905, 3
  br i1 %cmp946, label %if.then.948, label %if.end.953

if.then.948:                                      ; preds = %lor.lhs.false.945, %land.lhs.true.942, %lor.lhs.false.935, %land.lhs.true.932
  %906 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos949 = getelementptr inbounds %struct.termbox, %struct.termbox* %906, i32 0, i32 1
  %907 = load i32, i32* %xpos949, align 4
  %inc950 = add nsw i32 %907, 1
  store i32 %inc950, i32* %xpos949, align 4
  %908 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos951 = getelementptr inbounds %struct.termbox, %struct.termbox* %908, i32 0, i32 3
  %909 = load i32, i32* %oxpos951, align 4
  %inc952 = add nsw i32 %909, 1
  store i32 %inc952, i32* %oxpos951, align 4
  br label %if.end.953

if.end.953:                                       ; preds = %if.then.948, %lor.lhs.false.945, %lor.lhs.false.938
  %910 = load i32, i32* %height, align 4
  %rem954 = srem i32 %910, 2
  %cmp955 = icmp ne i32 %rem954, 0
  br i1 %cmp955, label %land.lhs.true.957, label %lor.lhs.false.963

land.lhs.true.957:                                ; preds = %if.end.953
  %911 = load i32, i32* %orient, align 4
  %cmp958 = icmp eq i32 %911, 1
  br i1 %cmp958, label %if.then.973, label %lor.lhs.false.960

lor.lhs.false.960:                                ; preds = %land.lhs.true.957
  %912 = load i32, i32* %orient, align 4
  %cmp961 = icmp eq i32 %912, 3
  br i1 %cmp961, label %if.then.973, label %lor.lhs.false.963

lor.lhs.false.963:                                ; preds = %lor.lhs.false.960, %if.end.953
  %913 = load i32, i32* %length, align 4
  %rem964 = srem i32 %913, 2
  %cmp965 = icmp ne i32 %rem964, 0
  br i1 %cmp965, label %land.lhs.true.967, label %if.end.978

land.lhs.true.967:                                ; preds = %lor.lhs.false.963
  %914 = load i32, i32* %orient, align 4
  %cmp968 = icmp eq i32 %914, 4
  br i1 %cmp968, label %if.then.973, label %lor.lhs.false.970

lor.lhs.false.970:                                ; preds = %land.lhs.true.967
  %915 = load i32, i32* %orient, align 4
  %cmp971 = icmp eq i32 %915, 7
  br i1 %cmp971, label %if.then.973, label %if.end.978

if.then.973:                                      ; preds = %lor.lhs.false.970, %land.lhs.true.967, %lor.lhs.false.960, %land.lhs.true.957
  %916 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos974 = getelementptr inbounds %struct.termbox, %struct.termbox* %916, i32 0, i32 2
  %917 = load i32, i32* %ypos974, align 4
  %inc975 = add nsw i32 %917, 1
  store i32 %inc975, i32* %ypos974, align 4
  %918 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos976 = getelementptr inbounds %struct.termbox, %struct.termbox* %918, i32 0, i32 4
  %919 = load i32, i32* %oypos976, align 4
  %inc977 = add nsw i32 %919, 1
  store i32 %inc977, i32* %oypos976, align 4
  br label %if.end.978

if.end.978:                                       ; preds = %if.then.973, %lor.lhs.false.970, %lor.lhs.false.963
  store i32 2, i32* %termnum, align 4
  br label %for.cond.979

for.cond.979:                                     ; preds = %for.inc.1050, %if.end.978
  %920 = load i32, i32* %termnum, align 4
  %921 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms980 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %921, i32 0, i32 8
  %922 = load i32, i32* %numterms980, align 4
  %cmp981 = icmp sle i32 %920, %922
  br i1 %cmp981, label %for.body.983, label %for.end.1052

for.body.983:                                     ; preds = %for.cond.979
  %923 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm984 = getelementptr inbounds %struct.termbox, %struct.termbox* %923, i32 0, i32 0
  %924 = load %struct.termbox*, %struct.termbox** %nextterm984, align 8
  store %struct.termbox* %924, %struct.termbox** %tmptr0, align 8
  %call985 = call noalias i8* @malloc(i64 32) #3
  %925 = bitcast i8* %call985 to %struct.termbox*
  %926 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm986 = getelementptr inbounds %struct.termbox, %struct.termbox* %926, i32 0, i32 0
  store %struct.termbox* %925, %struct.termbox** %nextterm986, align 8
  store %struct.termbox* %925, %struct.termbox** %tmptr, align 8
  %927 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm987 = getelementptr inbounds %struct.termbox, %struct.termbox* %927, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm987, align 8
  %928 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal988 = getelementptr inbounds %struct.termbox, %struct.termbox* %928, i32 0, i32 5
  %929 = load i32, i32* %terminal988, align 4
  %930 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal989 = getelementptr inbounds %struct.termbox, %struct.termbox* %930, i32 0, i32 5
  store i32 %929, i32* %terminal989, align 4
  %931 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos990 = getelementptr inbounds %struct.termbox, %struct.termbox* %931, i32 0, i32 1
  %932 = load i32, i32* %xpos990, align 4
  %933 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos991 = getelementptr inbounds %struct.termbox, %struct.termbox* %933, i32 0, i32 1
  store i32 %932, i32* %xpos991, align 4
  %934 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos992 = getelementptr inbounds %struct.termbox, %struct.termbox* %934, i32 0, i32 2
  %935 = load i32, i32* %ypos992, align 4
  %936 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos993 = getelementptr inbounds %struct.termbox, %struct.termbox* %936, i32 0, i32 2
  store i32 %935, i32* %ypos993, align 4
  %937 = load i32, i32* %orient, align 4
  call void @move(i32 %937)
  %938 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos994 = getelementptr inbounds %struct.termbox, %struct.termbox* %938, i32 0, i32 1
  %939 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos995 = getelementptr inbounds %struct.termbox, %struct.termbox* %939, i32 0, i32 2
  call void @point(i32* %xpos994, i32* %ypos995)
  %940 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos996 = getelementptr inbounds %struct.termbox, %struct.termbox* %940, i32 0, i32 1
  %941 = load i32, i32* %xpos996, align 4
  %942 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos997 = getelementptr inbounds %struct.termbox, %struct.termbox* %942, i32 0, i32 3
  store i32 %941, i32* %oxpos997, align 4
  %943 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos998 = getelementptr inbounds %struct.termbox, %struct.termbox* %943, i32 0, i32 2
  %944 = load i32, i32* %ypos998, align 4
  %945 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos999 = getelementptr inbounds %struct.termbox, %struct.termbox* %945, i32 0, i32 4
  store i32 %944, i32* %oypos999, align 4
  %946 = load i32, i32* %height, align 4
  %rem1000 = srem i32 %946, 2
  %cmp1001 = icmp ne i32 %rem1000, 0
  br i1 %cmp1001, label %land.lhs.true.1003, label %lor.lhs.false.1009

land.lhs.true.1003:                               ; preds = %for.body.983
  %947 = load i32, i32* %orient, align 4
  %cmp1004 = icmp eq i32 %947, 4
  br i1 %cmp1004, label %if.then.1019, label %lor.lhs.false.1006

lor.lhs.false.1006:                               ; preds = %land.lhs.true.1003
  %948 = load i32, i32* %orient, align 4
  %cmp1007 = icmp eq i32 %948, 6
  br i1 %cmp1007, label %if.then.1019, label %lor.lhs.false.1009

lor.lhs.false.1009:                               ; preds = %lor.lhs.false.1006, %for.body.983
  %949 = load i32, i32* %length, align 4
  %rem1010 = srem i32 %949, 2
  %cmp1011 = icmp ne i32 %rem1010, 0
  br i1 %cmp1011, label %land.lhs.true.1013, label %if.end.1024

land.lhs.true.1013:                               ; preds = %lor.lhs.false.1009
  %950 = load i32, i32* %orient, align 4
  %cmp1014 = icmp eq i32 %950, 2
  br i1 %cmp1014, label %if.then.1019, label %lor.lhs.false.1016

lor.lhs.false.1016:                               ; preds = %land.lhs.true.1013
  %951 = load i32, i32* %orient, align 4
  %cmp1017 = icmp eq i32 %951, 3
  br i1 %cmp1017, label %if.then.1019, label %if.end.1024

if.then.1019:                                     ; preds = %lor.lhs.false.1016, %land.lhs.true.1013, %lor.lhs.false.1006, %land.lhs.true.1003
  %952 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos1020 = getelementptr inbounds %struct.termbox, %struct.termbox* %952, i32 0, i32 1
  %953 = load i32, i32* %xpos1020, align 4
  %inc1021 = add nsw i32 %953, 1
  store i32 %inc1021, i32* %xpos1020, align 4
  %954 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos1022 = getelementptr inbounds %struct.termbox, %struct.termbox* %954, i32 0, i32 3
  %955 = load i32, i32* %oxpos1022, align 4
  %inc1023 = add nsw i32 %955, 1
  store i32 %inc1023, i32* %oxpos1022, align 4
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.then.1019, %lor.lhs.false.1016, %lor.lhs.false.1009
  %956 = load i32, i32* %height, align 4
  %rem1025 = srem i32 %956, 2
  %cmp1026 = icmp ne i32 %rem1025, 0
  br i1 %cmp1026, label %land.lhs.true.1028, label %lor.lhs.false.1034

land.lhs.true.1028:                               ; preds = %if.end.1024
  %957 = load i32, i32* %orient, align 4
  %cmp1029 = icmp eq i32 %957, 1
  br i1 %cmp1029, label %if.then.1044, label %lor.lhs.false.1031

lor.lhs.false.1031:                               ; preds = %land.lhs.true.1028
  %958 = load i32, i32* %orient, align 4
  %cmp1032 = icmp eq i32 %958, 3
  br i1 %cmp1032, label %if.then.1044, label %lor.lhs.false.1034

lor.lhs.false.1034:                               ; preds = %lor.lhs.false.1031, %if.end.1024
  %959 = load i32, i32* %length, align 4
  %rem1035 = srem i32 %959, 2
  %cmp1036 = icmp ne i32 %rem1035, 0
  br i1 %cmp1036, label %land.lhs.true.1038, label %if.end.1049

land.lhs.true.1038:                               ; preds = %lor.lhs.false.1034
  %960 = load i32, i32* %orient, align 4
  %cmp1039 = icmp eq i32 %960, 4
  br i1 %cmp1039, label %if.then.1044, label %lor.lhs.false.1041

lor.lhs.false.1041:                               ; preds = %land.lhs.true.1038
  %961 = load i32, i32* %orient, align 4
  %cmp1042 = icmp eq i32 %961, 7
  br i1 %cmp1042, label %if.then.1044, label %if.end.1049

if.then.1044:                                     ; preds = %lor.lhs.false.1041, %land.lhs.true.1038, %lor.lhs.false.1031, %land.lhs.true.1028
  %962 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos1045 = getelementptr inbounds %struct.termbox, %struct.termbox* %962, i32 0, i32 2
  %963 = load i32, i32* %ypos1045, align 4
  %inc1046 = add nsw i32 %963, 1
  store i32 %inc1046, i32* %ypos1045, align 4
  %964 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos1047 = getelementptr inbounds %struct.termbox, %struct.termbox* %964, i32 0, i32 4
  %965 = load i32, i32* %oypos1047, align 4
  %inc1048 = add nsw i32 %965, 1
  store i32 %inc1048, i32* %oypos1047, align 4
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.then.1044, %lor.lhs.false.1041, %lor.lhs.false.1034
  br label %for.inc.1050

for.inc.1050:                                     ; preds = %if.end.1049
  %966 = load i32, i32* %termnum, align 4
  %inc1051 = add nsw i32 %966, 1
  store i32 %inc1051, i32* %termnum, align 4
  br label %for.cond.979

for.end.1052:                                     ; preds = %for.cond.979
  br label %for.inc.1053

for.inc.1053:                                     ; preds = %for.end.1052, %if.then.906, %if.then.899
  %967 = load i32, i32* %orient, align 4
  %inc1054 = add nsw i32 %967, 1
  store i32 %inc1054, i32* %orient, align 4
  br label %for.cond.892

for.end.1055:                                     ; preds = %for.cond.892
  br label %for.inc.1056

for.inc.1056:                                     ; preds = %for.end.1055, %if.then.876
  %968 = load i32, i32* %cell, align 4
  %inc1057 = add nsw i32 %968, 1
  store i32 %inc1057, i32* %cell, align 4
  br label %for.cond.866

for.end.1058:                                     ; preds = %for.cond.866
  store i32 1, i32* %cell, align 4
  br label %for.cond.1059

for.cond.1059:                                    ; preds = %for.inc.1216, %for.end.1058
  %969 = load i32, i32* %cell, align 4
  %970 = load i32, i32* @numcells, align 4
  %971 = load i32, i32* @numpads, align 4
  %add1060 = add nsw i32 %970, %971
  %cmp1061 = icmp sle i32 %969, %add1060
  br i1 %cmp1061, label %for.body.1063, label %for.end.1218

for.body.1063:                                    ; preds = %for.cond.1059
  %972 = load i32, i32* %cell, align 4
  %idxprom1064 = sext i32 %972 to i64
  %973 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx1065 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %973, i64 %idxprom1064
  %974 = load %struct.cellbox*, %struct.cellbox** %arrayidx1065, align 8
  store %struct.cellbox* %974, %struct.cellbox** %ptr, align 8
  %975 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %975, i32 0, i32 10
  %976 = load i32, i32* %softflag, align 4
  %cmp1066 = icmp eq i32 %976, 0
  br i1 %cmp1066, label %if.then.1068, label %if.end.1069

if.then.1068:                                     ; preds = %for.body.1063
  br label %for.inc.1216

if.end.1069:                                      ; preds = %for.body.1063
  %977 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1070 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %977, i32 0, i32 17
  %978 = load i32, i32* %numsites1070, align 4
  %cmp1071 = icmp eq i32 %978, 0
  br i1 %cmp1071, label %if.then.1073, label %if.end.1074

if.then.1073:                                     ; preds = %if.end.1069
  br label %for.inc.1216

if.end.1074:                                      ; preds = %if.end.1069
  %979 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1075 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %979, i32 0, i32 21
  %arrayidx1076 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1075, i32 0, i64 0
  %980 = load %struct.tilebox*, %struct.tilebox** %arrayidx1076, align 8
  %top1077 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %980, i32 0, i32 12
  %981 = load i32, i32* %top1077, align 4
  %982 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1078 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %982, i32 0, i32 21
  %arrayidx1079 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1078, i32 0, i64 0
  %983 = load %struct.tilebox*, %struct.tilebox** %arrayidx1079, align 8
  %bottom1080 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %983, i32 0, i32 11
  %984 = load i32, i32* %bottom1080, align 4
  %sub1081 = sub nsw i32 %981, %984
  store i32 %sub1081, i32* %height, align 4
  %985 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1082 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %985, i32 0, i32 21
  %arrayidx1083 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1082, i32 0, i64 0
  %986 = load %struct.tilebox*, %struct.tilebox** %arrayidx1083, align 8
  %right1084 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %986, i32 0, i32 10
  %987 = load i32, i32* %right1084, align 4
  %988 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1085 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %988, i32 0, i32 21
  %arrayidx1086 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1085, i32 0, i64 0
  %989 = load %struct.tilebox*, %struct.tilebox** %arrayidx1086, align 8
  %left1087 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %989, i32 0, i32 9
  %990 = load i32, i32* %left1087, align 4
  %sub1088 = sub nsw i32 %987, %990
  store i32 %sub1088, i32* %length, align 4
  %991 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1089 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %991, i32 0, i32 21
  %arrayidx1090 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1089, i32 0, i64 0
  %992 = load %struct.tilebox*, %struct.tilebox** %arrayidx1090, align 8
  %siteLocArray1091 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %992, i32 0, i32 18
  %993 = load %struct.locbox*, %struct.locbox** %siteLocArray1091, align 8
  store %struct.locbox* %993, %struct.locbox** %siteptr0, align 8
  store i32 1, i32* %orient, align 4
  br label %for.cond.1092

for.cond.1092:                                    ; preds = %for.inc.1213, %if.end.1074
  %994 = load i32, i32* %orient, align 4
  %cmp1093 = icmp sle i32 %994, 7
  br i1 %cmp1093, label %for.body.1095, label %for.end.1215

for.body.1095:                                    ; preds = %for.cond.1092
  %995 = load i32, i32* %orient, align 4
  %996 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient1096 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %996, i32 0, i32 5
  %997 = load i32, i32* %orient1096, align 4
  %cmp1097 = icmp eq i32 %995, %997
  br i1 %cmp1097, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %for.body.1095
  br label %for.inc.1213

if.end.1100:                                      ; preds = %for.body.1095
  %998 = load i32, i32* %orient, align 4
  %idxprom1101 = sext i32 %998 to i64
  %999 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList1102 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %999, i32 0, i32 4
  %arrayidx1103 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList1102, i32 0, i64 %idxprom1101
  %1000 = load i32, i32* %arrayidx1103, align 4
  %cmp1104 = icmp eq i32 %1000, 0
  br i1 %cmp1104, label %if.then.1106, label %if.end.1107

if.then.1106:                                     ; preds = %if.end.1100
  br label %for.inc.1213

if.end.1107:                                      ; preds = %if.end.1100
  %1001 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1001, i32 0, i32 17
  %1002 = load i32, i32* %numsites1108, align 4
  %add1109 = add nsw i32 %1002, 1
  %conv1110 = sext i32 %add1109 to i64
  %mul1111 = mul i64 %conv1110, 16
  %call1112 = call noalias i8* @malloc(i64 %mul1111) #3
  %1003 = bitcast i8* %call1112 to %struct.locbox*
  %1004 = load i32, i32* %orient, align 4
  %idxprom1113 = sext i32 %1004 to i64
  %1005 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config1114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1005, i32 0, i32 21
  %arrayidx1115 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config1114, i32 0, i64 %idxprom1113
  %1006 = load %struct.tilebox*, %struct.tilebox** %arrayidx1115, align 8
  %siteLocArray1116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %1006, i32 0, i32 18
  store %struct.locbox* %1003, %struct.locbox** %siteLocArray1116, align 8
  store %struct.locbox* %1003, %struct.locbox** %siteptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.1117

for.cond.1117:                                    ; preds = %for.inc.1210, %if.end.1107
  %1007 = load i32, i32* %site, align 4
  %1008 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numsites1118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1008, i32 0, i32 17
  %1009 = load i32, i32* %numsites1118, align 4
  %cmp1119 = icmp sle i32 %1007, %1009
  br i1 %cmp1119, label %for.body.1121, label %for.end.1212

for.body.1121:                                    ; preds = %for.cond.1117
  %1010 = load i32, i32* %site, align 4
  %idxprom1122 = sext i32 %1010 to i64
  %1011 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx1123 = getelementptr inbounds %struct.locbox, %struct.locbox* %1011, i64 %idxprom1122
  %xpos1124 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1123, i32 0, i32 0
  %1012 = load i32, i32* %xpos1124, align 4
  %1013 = load i32, i32* %site, align 4
  %idxprom1125 = sext i32 %1013 to i64
  %1014 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1126 = getelementptr inbounds %struct.locbox, %struct.locbox* %1014, i64 %idxprom1125
  %xpos1127 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1126, i32 0, i32 0
  store i32 %1012, i32* %xpos1127, align 4
  %1015 = load i32, i32* %site, align 4
  %idxprom1128 = sext i32 %1015 to i64
  %1016 = load %struct.locbox*, %struct.locbox** %siteptr0, align 8
  %arrayidx1129 = getelementptr inbounds %struct.locbox, %struct.locbox* %1016, i64 %idxprom1128
  %ypos1130 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1129, i32 0, i32 1
  %1017 = load i32, i32* %ypos1130, align 4
  %1018 = load i32, i32* %site, align 4
  %idxprom1131 = sext i32 %1018 to i64
  %1019 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1132 = getelementptr inbounds %struct.locbox, %struct.locbox* %1019, i64 %idxprom1131
  %ypos1133 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1132, i32 0, i32 1
  store i32 %1017, i32* %ypos1133, align 4
  %1020 = load i32, i32* %orient, align 4
  call void @move(i32 %1020)
  %1021 = load i32, i32* %site, align 4
  %idxprom1134 = sext i32 %1021 to i64
  %1022 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1135 = getelementptr inbounds %struct.locbox, %struct.locbox* %1022, i64 %idxprom1134
  %xpos1136 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1135, i32 0, i32 0
  %1023 = load i32, i32* %site, align 4
  %idxprom1137 = sext i32 %1023 to i64
  %1024 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1138 = getelementptr inbounds %struct.locbox, %struct.locbox* %1024, i64 %idxprom1137
  %ypos1139 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1138, i32 0, i32 1
  call void @point(i32* %xpos1136, i32* %ypos1139)
  %1025 = load i32, i32* %site, align 4
  %idxprom1140 = sext i32 %1025 to i64
  %1026 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1141 = getelementptr inbounds %struct.locbox, %struct.locbox* %1026, i64 %idxprom1140
  %xpos1142 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1141, i32 0, i32 0
  %1027 = load i32, i32* %xpos1142, align 4
  %1028 = load i32, i32* %site, align 4
  %idxprom1143 = sext i32 %1028 to i64
  %1029 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1144 = getelementptr inbounds %struct.locbox, %struct.locbox* %1029, i64 %idxprom1143
  %oxpos1145 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1144, i32 0, i32 2
  store i32 %1027, i32* %oxpos1145, align 4
  %1030 = load i32, i32* %site, align 4
  %idxprom1146 = sext i32 %1030 to i64
  %1031 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1147 = getelementptr inbounds %struct.locbox, %struct.locbox* %1031, i64 %idxprom1146
  %ypos1148 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1147, i32 0, i32 1
  %1032 = load i32, i32* %ypos1148, align 4
  %1033 = load i32, i32* %site, align 4
  %idxprom1149 = sext i32 %1033 to i64
  %1034 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1150 = getelementptr inbounds %struct.locbox, %struct.locbox* %1034, i64 %idxprom1149
  %oypos1151 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1150, i32 0, i32 3
  store i32 %1032, i32* %oypos1151, align 4
  %1035 = load i32, i32* %height, align 4
  %rem1152 = srem i32 %1035, 2
  %cmp1153 = icmp ne i32 %rem1152, 0
  br i1 %cmp1153, label %land.lhs.true.1155, label %lor.lhs.false.1161

land.lhs.true.1155:                               ; preds = %for.body.1121
  %1036 = load i32, i32* %orient, align 4
  %cmp1156 = icmp eq i32 %1036, 4
  br i1 %cmp1156, label %if.then.1171, label %lor.lhs.false.1158

lor.lhs.false.1158:                               ; preds = %land.lhs.true.1155
  %1037 = load i32, i32* %orient, align 4
  %cmp1159 = icmp eq i32 %1037, 6
  br i1 %cmp1159, label %if.then.1171, label %lor.lhs.false.1161

lor.lhs.false.1161:                               ; preds = %lor.lhs.false.1158, %for.body.1121
  %1038 = load i32, i32* %length, align 4
  %rem1162 = srem i32 %1038, 2
  %cmp1163 = icmp ne i32 %rem1162, 0
  br i1 %cmp1163, label %land.lhs.true.1165, label %if.end.1180

land.lhs.true.1165:                               ; preds = %lor.lhs.false.1161
  %1039 = load i32, i32* %orient, align 4
  %cmp1166 = icmp eq i32 %1039, 2
  br i1 %cmp1166, label %if.then.1171, label %lor.lhs.false.1168

lor.lhs.false.1168:                               ; preds = %land.lhs.true.1165
  %1040 = load i32, i32* %orient, align 4
  %cmp1169 = icmp eq i32 %1040, 3
  br i1 %cmp1169, label %if.then.1171, label %if.end.1180

if.then.1171:                                     ; preds = %lor.lhs.false.1168, %land.lhs.true.1165, %lor.lhs.false.1158, %land.lhs.true.1155
  %1041 = load i32, i32* %site, align 4
  %idxprom1172 = sext i32 %1041 to i64
  %1042 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1173 = getelementptr inbounds %struct.locbox, %struct.locbox* %1042, i64 %idxprom1172
  %xpos1174 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1173, i32 0, i32 0
  %1043 = load i32, i32* %xpos1174, align 4
  %inc1175 = add nsw i32 %1043, 1
  store i32 %inc1175, i32* %xpos1174, align 4
  %1044 = load i32, i32* %site, align 4
  %idxprom1176 = sext i32 %1044 to i64
  %1045 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1177 = getelementptr inbounds %struct.locbox, %struct.locbox* %1045, i64 %idxprom1176
  %oxpos1178 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1177, i32 0, i32 2
  %1046 = load i32, i32* %oxpos1178, align 4
  %inc1179 = add nsw i32 %1046, 1
  store i32 %inc1179, i32* %oxpos1178, align 4
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.then.1171, %lor.lhs.false.1168, %lor.lhs.false.1161
  %1047 = load i32, i32* %height, align 4
  %rem1181 = srem i32 %1047, 2
  %cmp1182 = icmp ne i32 %rem1181, 0
  br i1 %cmp1182, label %land.lhs.true.1184, label %lor.lhs.false.1190

land.lhs.true.1184:                               ; preds = %if.end.1180
  %1048 = load i32, i32* %orient, align 4
  %cmp1185 = icmp eq i32 %1048, 1
  br i1 %cmp1185, label %if.then.1200, label %lor.lhs.false.1187

lor.lhs.false.1187:                               ; preds = %land.lhs.true.1184
  %1049 = load i32, i32* %orient, align 4
  %cmp1188 = icmp eq i32 %1049, 3
  br i1 %cmp1188, label %if.then.1200, label %lor.lhs.false.1190

lor.lhs.false.1190:                               ; preds = %lor.lhs.false.1187, %if.end.1180
  %1050 = load i32, i32* %length, align 4
  %rem1191 = srem i32 %1050, 2
  %cmp1192 = icmp ne i32 %rem1191, 0
  br i1 %cmp1192, label %land.lhs.true.1194, label %if.end.1209

land.lhs.true.1194:                               ; preds = %lor.lhs.false.1190
  %1051 = load i32, i32* %orient, align 4
  %cmp1195 = icmp eq i32 %1051, 4
  br i1 %cmp1195, label %if.then.1200, label %lor.lhs.false.1197

lor.lhs.false.1197:                               ; preds = %land.lhs.true.1194
  %1052 = load i32, i32* %orient, align 4
  %cmp1198 = icmp eq i32 %1052, 7
  br i1 %cmp1198, label %if.then.1200, label %if.end.1209

if.then.1200:                                     ; preds = %lor.lhs.false.1197, %land.lhs.true.1194, %lor.lhs.false.1187, %land.lhs.true.1184
  %1053 = load i32, i32* %site, align 4
  %idxprom1201 = sext i32 %1053 to i64
  %1054 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1202 = getelementptr inbounds %struct.locbox, %struct.locbox* %1054, i64 %idxprom1201
  %ypos1203 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1202, i32 0, i32 1
  %1055 = load i32, i32* %ypos1203, align 4
  %inc1204 = add nsw i32 %1055, 1
  store i32 %inc1204, i32* %ypos1203, align 4
  %1056 = load i32, i32* %site, align 4
  %idxprom1205 = sext i32 %1056 to i64
  %1057 = load %struct.locbox*, %struct.locbox** %siteptr, align 8
  %arrayidx1206 = getelementptr inbounds %struct.locbox, %struct.locbox* %1057, i64 %idxprom1205
  %oypos1207 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx1206, i32 0, i32 3
  %1058 = load i32, i32* %oypos1207, align 4
  %inc1208 = add nsw i32 %1058, 1
  store i32 %inc1208, i32* %oypos1207, align 4
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.then.1200, %lor.lhs.false.1197, %lor.lhs.false.1190
  br label %for.inc.1210

for.inc.1210:                                     ; preds = %if.end.1209
  %1059 = load i32, i32* %site, align 4
  %inc1211 = add nsw i32 %1059, 1
  store i32 %inc1211, i32* %site, align 4
  br label %for.cond.1117

for.end.1212:                                     ; preds = %for.cond.1117
  br label %for.inc.1213

for.inc.1213:                                     ; preds = %for.end.1212, %if.then.1106, %if.then.1099
  %1060 = load i32, i32* %orient, align 4
  %inc1214 = add nsw i32 %1060, 1
  store i32 %inc1214, i32* %orient, align 4
  br label %for.cond.1092

for.end.1215:                                     ; preds = %for.cond.1092
  br label %for.inc.1216

for.inc.1216:                                     ; preds = %for.end.1215, %if.then.1073, %if.then.1068
  %1061 = load i32, i32* %cell, align 4
  %inc1217 = add nsw i32 %1061, 1
  store i32 %inc1217, i32* %cell, align 4
  br label %for.cond.1059

for.end.1218:                                     ; preds = %for.cond.1059
  call void @delHtab()
  store i32 1, i32* %net, align 4
  br label %for.cond.1219

for.cond.1219:                                    ; preds = %for.inc.1245, %for.end.1218
  %1062 = load i32, i32* %net, align 4
  %1063 = load i32, i32* @numnets, align 4
  %cmp1220 = icmp sle i32 %1062, %1063
  br i1 %cmp1220, label %for.body.1222, label %for.end.1247

for.body.1222:                                    ; preds = %for.cond.1219
  %1064 = load i32, i32* %net, align 4
  %idxprom1223 = sext i32 %1064 to i64
  %1065 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx1224 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %1065, i64 %idxprom1223
  %1066 = load %struct.dimbox*, %struct.dimbox** %arrayidx1224, align 8
  %netptr1225 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %1066, i32 0, i32 0
  %1067 = load %struct.netbox*, %struct.netbox** %netptr1225, align 8
  store %struct.netbox* %1067, %struct.netbox** %netptr, align 8
  br label %for.cond.1226

for.cond.1226:                                    ; preds = %for.inc.1242, %for.body.1222
  %1068 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp1227 = icmp ne %struct.netbox* %1068, null
  br i1 %cmp1227, label %for.body.1229, label %for.end.1244

for.body.1229:                                    ; preds = %for.cond.1226
  %call1230 = call noalias i8* @malloc(i64 16) #3
  %1069 = bitcast i8* %call1230 to %struct.termnets*
  %1070 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal1231 = getelementptr inbounds %struct.netbox, %struct.netbox* %1070, i32 0, i32 5
  %1071 = load i32, i32* %terminal1231, align 4
  %idxprom1232 = sext i32 %1071 to i64
  %1072 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx1233 = getelementptr inbounds %struct.termnets*, %struct.termnets** %1072, i64 %idxprom1232
  store %struct.termnets* %1069, %struct.termnets** %arrayidx1233, align 8
  %1073 = load i32, i32* %net, align 4
  %1074 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal1234 = getelementptr inbounds %struct.netbox, %struct.netbox* %1074, i32 0, i32 5
  %1075 = load i32, i32* %terminal1234, align 4
  %idxprom1235 = sext i32 %1075 to i64
  %1076 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx1236 = getelementptr inbounds %struct.termnets*, %struct.termnets** %1076, i64 %idxprom1235
  %1077 = load %struct.termnets*, %struct.termnets** %arrayidx1236, align 8
  %net1237 = getelementptr inbounds %struct.termnets, %struct.termnets* %1077, i32 0, i32 0
  store i32 %1073, i32* %net1237, align 4
  %1078 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %1079 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal1238 = getelementptr inbounds %struct.netbox, %struct.netbox* %1079, i32 0, i32 5
  %1080 = load i32, i32* %terminal1238, align 4
  %idxprom1239 = sext i32 %1080 to i64
  %1081 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx1240 = getelementptr inbounds %struct.termnets*, %struct.termnets** %1081, i64 %idxprom1239
  %1082 = load %struct.termnets*, %struct.termnets** %arrayidx1240, align 8
  %termptr1241 = getelementptr inbounds %struct.termnets, %struct.termnets* %1082, i32 0, i32 1
  store %struct.netbox* %1078, %struct.netbox** %termptr1241, align 8
  br label %for.inc.1242

for.inc.1242:                                     ; preds = %for.body.1229
  %1083 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm1243 = getelementptr inbounds %struct.netbox, %struct.netbox* %1083, i32 0, i32 0
  %1084 = load %struct.netbox*, %struct.netbox** %nextterm1243, align 8
  store %struct.netbox* %1084, %struct.netbox** %netptr, align 8
  br label %for.cond.1226

for.end.1244:                                     ; preds = %for.cond.1226
  br label %for.inc.1245

for.inc.1245:                                     ; preds = %for.end.1244
  %1085 = load i32, i32* %net, align 4
  %inc1246 = add nsw i32 %1085, 1
  store i32 %inc1246, i32* %net, align 4
  br label %for.cond.1219

for.end.1247:                                     ; preds = %for.cond.1219
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @move(i32) #2

declare void @rect(i32*, i32*, i32*, i32*) #2

declare void @point(i32*, i32*) #2

declare void @delHtab() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
