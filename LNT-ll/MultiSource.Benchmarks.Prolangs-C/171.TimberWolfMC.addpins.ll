; ModuleID = './MultiSource.Benchmarks.Prolangs-C/171.TimberWolfMC.addpins.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@numnets = external global i32, align 4
@Hdefault = external global double, align 8
@Vdefault = external global double, align 8
@pinnames = external global i8**, align 8
@maxterm = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@termarray = external global %struct.termnets**, align 8
@cellarray = external global %struct.cellbox**, align 8
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @addpins() #0 {
entry:
  %i = alloca i32, align 4
  %extraNets = alloca i32, align 4
  %cell = alloca i32, align 4
  %pin = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %0 = load i32, i32* @numcells, align 4
  store i32 %0, i32* %extraNets, align 4
  %1 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %2 = bitcast %struct.dimbox** %1 to i8*
  %3 = load i32, i32* @numnets, align 4
  %4 = load i32, i32* %extraNets, align 4
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @realloc(i8* %2, i64 %mul) #2
  %5 = bitcast i8* %call to %struct.dimbox**
  store %struct.dimbox** %5, %struct.dimbox*** @netarray, align 8
  %6 = load i32, i32* @numnets, align 4
  %add2 = add nsw i32 1, %6
  store i32 %add2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @numnets, align 4
  %9 = load i32, i32* %extraNets, align 4
  %add3 = add nsw i32 %8, %9
  %cmp = icmp sle i32 %7, %add3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call noalias i8* @malloc(i64 72) #2
  %10 = bitcast i8* %call5 to %struct.dimbox*
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %12, i64 %idxprom
  store %struct.dimbox* %10, %struct.dimbox** %arrayidx, align 8
  store %struct.dimbox* %10, %struct.dimbox** %dimptr, align 8
  %13 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr6 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %13, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %netptr6, align 8
  %14 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %14, i32 0, i32 13
  store i8* null, i8** %nname, align 8
  %15 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 1
  store i32 0, i32* %skip, align 4
  %16 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %16, i32 0, i32 7
  store i32 0, i32* %flag, align 4
  %17 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %17, i32 0, i32 2
  store i32 0, i32* %xmin, align 4
  %18 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %18, i32 0, i32 3
  store i32 0, i32* %newxmin, align 4
  %19 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %19, i32 0, i32 4
  store i32 0, i32* %xmax, align 4
  %20 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i32 0, i32 5
  store i32 0, i32* %newxmax, align 4
  %21 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %21, i32 0, i32 6
  store i32 0, i32* %ymin, align 4
  %22 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %22, i32 0, i32 8
  store i32 0, i32* %newymin, align 4
  %23 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %23, i32 0, i32 9
  store i32 0, i32* %ymax, align 4
  %24 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %24, i32 0, i32 10
  store i32 0, i32* %newymax, align 4
  %25 = load double, double* @Hdefault, align 8
  %26 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %26, i32 0, i32 11
  store double %25, double* %Hweight, align 8
  %27 = load double, double* @Vdefault, align 8
  %28 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 12
  store double %27, double* %Vweight, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i8**, i8*** @pinnames, align 8
  %31 = bitcast i8** %30 to i8*
  %32 = load i32, i32* @maxterm, align 4
  %33 = load i32, i32* %extraNets, align 4
  %mul7 = mul nsw i32 2, %33
  %add8 = add nsw i32 %32, %mul7
  %add9 = add nsw i32 %add8, 1
  %conv10 = sext i32 %add9 to i64
  %mul11 = mul i64 %conv10, 8
  %call12 = call i8* @realloc(i8* %31, i64 %mul11) #2
  %34 = bitcast i8* %call12 to i8**
  store i8** %34, i8*** @pinnames, align 8
  %35 = load i32, i32* @maxterm, align 4
  %add13 = add nsw i32 1, %35
  store i32 %add13, i32* %pin, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.26, %for.end
  %36 = load i32, i32* %pin, align 4
  %37 = load i32, i32* @maxterm, align 4
  %38 = load i32, i32* %extraNets, align 4
  %mul15 = mul nsw i32 2, %38
  %add16 = add nsw i32 %37, %mul15
  %cmp17 = icmp sle i32 %36, %add16
  br i1 %cmp17, label %for.body.19, label %for.end.28

for.body.19:                                      ; preds = %for.cond.14
  %call20 = call noalias i8* @malloc(i64 9) #2
  %39 = load i32, i32* %pin, align 4
  %idxprom21 = sext i32 %39 to i64
  %40 = load i8**, i8*** @pinnames, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %40, i64 %idxprom21
  store i8* %call20, i8** %arrayidx22, align 8
  %41 = load i32, i32* %pin, align 4
  %idxprom23 = sext i32 %41 to i64
  %42 = load i8**, i8*** @pinnames, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %42, i64 %idxprom23
  %43 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.19
  %44 = load i32, i32* %pin, align 4
  %inc27 = add nsw i32 %44, 1
  store i32 %inc27, i32* %pin, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  %45 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %46 = bitcast %struct.termnets** %45 to i8*
  %47 = load i32, i32* @maxterm, align 4
  %48 = load i32, i32* %extraNets, align 4
  %mul29 = mul nsw i32 2, %48
  %add30 = add nsw i32 %47, %mul29
  %add31 = add nsw i32 %add30, 1
  %conv32 = sext i32 %add31 to i64
  %mul33 = mul i64 %conv32, 8
  %call34 = call i8* @realloc(i8* %46, i64 %mul33) #2
  %49 = bitcast i8* %call34 to %struct.termnets**
  store %struct.termnets** %49, %struct.termnets*** @termarray, align 8
  %50 = load i32, i32* @maxterm, align 4
  %add35 = add nsw i32 1, %50
  store i32 %add35, i32* %pin, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.45, %for.end.28
  %51 = load i32, i32* %pin, align 4
  %52 = load i32, i32* @maxterm, align 4
  %53 = load i32, i32* %extraNets, align 4
  %mul37 = mul nsw i32 2, %53
  %add38 = add nsw i32 %52, %mul37
  %cmp39 = icmp sle i32 %51, %add38
  br i1 %cmp39, label %for.body.41, label %for.end.47

for.body.41:                                      ; preds = %for.cond.36
  %call42 = call noalias i8* @malloc(i64 16) #2
  %54 = bitcast i8* %call42 to %struct.termnets*
  %55 = load i32, i32* %pin, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx44 = getelementptr inbounds %struct.termnets*, %struct.termnets** %56, i64 %idxprom43
  store %struct.termnets* %54, %struct.termnets** %arrayidx44, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.41
  %57 = load i32, i32* %pin, align 4
  %inc46 = add nsw i32 %57, 1
  store i32 %inc46, i32* %pin, align 4
  br label %for.cond.36

for.end.47:                                       ; preds = %for.cond.36
  store i32 1, i32* %cell, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.106, %for.end.47
  %58 = load i32, i32* %cell, align 4
  %59 = load i32, i32* @numcells, align 4
  %cmp49 = icmp sle i32 %58, %59
  br i1 %cmp49, label %for.body.51, label %for.end.108

for.body.51:                                      ; preds = %for.cond.48
  %60 = load i32, i32* %cell, align 4
  %idxprom52 = sext i32 %60 to i64
  %61 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx53 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %61, i64 %idxprom52
  %62 = load %struct.cellbox*, %struct.cellbox** %arrayidx53, align 8
  store %struct.cellbox* %62, %struct.cellbox** %cellptr, align 8
  %63 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 5
  %64 = load i32, i32* %orient, align 4
  %idxprom54 = sext i32 %64 to i64
  %65 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %65, i32 0, i32 21
  %arrayidx55 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom54
  %66 = load %struct.tilebox*, %struct.tilebox** %arrayidx55, align 8
  store %struct.tilebox* %66, %struct.tilebox** %tileptr, align 8
  %67 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr56 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %67, i32 0, i32 17
  %68 = load %struct.termbox*, %struct.termbox** %termptr56, align 8
  store %struct.termbox* %68, %struct.termbox** %termptr, align 8
  %call57 = call noalias i8* @malloc(i64 32) #2
  %69 = bitcast i8* %call57 to %struct.termbox*
  %70 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %70, i32 0, i32 17
  store %struct.termbox* %69, %struct.termbox** %termptr58, align 8
  store %struct.termbox* %69, %struct.termbox** %term, align 8
  %71 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %72 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %72, i32 0, i32 0
  store %struct.termbox* %71, %struct.termbox** %nextterm, align 8
  %73 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %73, i32 0, i32 1
  store i32 0, i32* %xpos, align 4
  %74 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %74, i32 0, i32 2
  store i32 0, i32* %ypos, align 4
  %75 = load i32, i32* @maxterm, align 4
  %76 = load i32, i32* %cell, align 4
  %mul59 = mul nsw i32 2, %76
  %add60 = add nsw i32 %75, %mul59
  %sub = sub nsw i32 %add60, 1
  %77 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal = getelementptr inbounds %struct.termbox, %struct.termbox* %77, i32 0, i32 5
  store i32 %sub, i32* %terminal, align 4
  %call61 = call noalias i8* @malloc(i64 48) #2
  %78 = bitcast i8* %call61 to %struct.netbox*
  %79 = load i32, i32* @numnets, align 4
  %80 = load i32, i32* %cell, align 4
  %add62 = add nsw i32 %79, %80
  %idxprom63 = sext i32 %add62 to i64
  %81 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx64 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %81, i64 %idxprom63
  %82 = load %struct.dimbox*, %struct.dimbox** %arrayidx64, align 8
  %netptr65 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %82, i32 0, i32 0
  store %struct.netbox* %78, %struct.netbox** %netptr65, align 8
  store %struct.netbox* %78, %struct.netbox** %netptr, align 8
  %83 = load i32, i32* @maxterm, align 4
  %84 = load i32, i32* %cell, align 4
  %mul66 = mul nsw i32 2, %84
  %add67 = add nsw i32 %83, %mul66
  %sub68 = sub nsw i32 %add67, 1
  %85 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal69 = getelementptr inbounds %struct.netbox, %struct.netbox* %85, i32 0, i32 5
  store i32 %sub68, i32* %terminal69, align 4
  %86 = load i32, i32* %cell, align 4
  %87 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell70 = getelementptr inbounds %struct.netbox, %struct.netbox* %87, i32 0, i32 7
  store i32 %86, i32* %cell70, align 4
  %88 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag71 = getelementptr inbounds %struct.netbox, %struct.netbox* %88, i32 0, i32 6
  store i32 0, i32* %flag71, align 4
  %89 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip72 = getelementptr inbounds %struct.netbox, %struct.netbox* %89, i32 0, i32 9
  store i32 0, i32* %skip72, align 4
  %90 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 2
  %91 = load i32, i32* %xcenter, align 4
  %92 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos73 = getelementptr inbounds %struct.netbox, %struct.netbox* %92, i32 0, i32 1
  store i32 %91, i32* %xpos73, align 4
  %93 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 3
  %94 = load i32, i32* %ycenter, align 4
  %95 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos74 = getelementptr inbounds %struct.netbox, %struct.netbox* %95, i32 0, i32 2
  store i32 %94, i32* %ypos74, align 4
  %96 = load i32, i32* @numnets, align 4
  %97 = load i32, i32* %cell, align 4
  %add75 = add nsw i32 %96, %97
  %98 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal76 = getelementptr inbounds %struct.netbox, %struct.netbox* %98, i32 0, i32 5
  %99 = load i32, i32* %terminal76, align 4
  %idxprom77 = sext i32 %99 to i64
  %100 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx78 = getelementptr inbounds %struct.termnets*, %struct.termnets** %100, i64 %idxprom77
  %101 = load %struct.termnets*, %struct.termnets** %arrayidx78, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %101, i32 0, i32 0
  store i32 %add75, i32* %net, align 4
  %102 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %103 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal79 = getelementptr inbounds %struct.netbox, %struct.netbox* %103, i32 0, i32 5
  %104 = load i32, i32* %terminal79, align 4
  %idxprom80 = sext i32 %104 to i64
  %105 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx81 = getelementptr inbounds %struct.termnets*, %struct.termnets** %105, i64 %idxprom80
  %106 = load %struct.termnets*, %struct.termnets** %arrayidx81, align 8
  %termptr82 = getelementptr inbounds %struct.termnets, %struct.termnets* %106, i32 0, i32 1
  store %struct.netbox* %102, %struct.netbox** %termptr82, align 8
  %call83 = call noalias i8* @malloc(i64 48) #2
  %107 = bitcast i8* %call83 to %struct.netbox*
  %108 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm84 = getelementptr inbounds %struct.netbox, %struct.netbox* %108, i32 0, i32 0
  store %struct.netbox* %107, %struct.netbox** %nextterm84, align 8
  store %struct.netbox* %107, %struct.netbox** %netptr, align 8
  %109 = load i32, i32* @maxterm, align 4
  %110 = load i32, i32* %cell, align 4
  %mul85 = mul nsw i32 2, %110
  %add86 = add nsw i32 %109, %mul85
  %111 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal87 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i32 0, i32 5
  store i32 %add86, i32* %terminal87, align 4
  %112 = load i32, i32* %cell, align 4
  %113 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell88 = getelementptr inbounds %struct.netbox, %struct.netbox* %113, i32 0, i32 7
  store i32 %112, i32* %cell88, align 4
  %114 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag89 = getelementptr inbounds %struct.netbox, %struct.netbox* %114, i32 0, i32 6
  store i32 0, i32* %flag89, align 4
  %115 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip90 = getelementptr inbounds %struct.netbox, %struct.netbox* %115, i32 0, i32 9
  store i32 0, i32* %skip90, align 4
  %116 = load i32, i32* @blockl, align 4
  %117 = load i32, i32* @blockr, align 4
  %add91 = add nsw i32 %116, %117
  %div = sdiv i32 %add91, 2
  %118 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos92 = getelementptr inbounds %struct.netbox, %struct.netbox* %118, i32 0, i32 1
  store i32 %div, i32* %xpos92, align 4
  %119 = load i32, i32* @blockb, align 4
  %120 = load i32, i32* @blockt, align 4
  %add93 = add nsw i32 %119, %120
  %div94 = sdiv i32 %add93, 2
  %121 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos95 = getelementptr inbounds %struct.netbox, %struct.netbox* %121, i32 0, i32 2
  store i32 %div94, i32* %ypos95, align 4
  %122 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm96 = getelementptr inbounds %struct.netbox, %struct.netbox* %122, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %nextterm96, align 8
  %123 = load i32, i32* @numnets, align 4
  %124 = load i32, i32* %cell, align 4
  %add97 = add nsw i32 %123, %124
  %125 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal98 = getelementptr inbounds %struct.netbox, %struct.netbox* %125, i32 0, i32 5
  %126 = load i32, i32* %terminal98, align 4
  %idxprom99 = sext i32 %126 to i64
  %127 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx100 = getelementptr inbounds %struct.termnets*, %struct.termnets** %127, i64 %idxprom99
  %128 = load %struct.termnets*, %struct.termnets** %arrayidx100, align 8
  %net101 = getelementptr inbounds %struct.termnets, %struct.termnets* %128, i32 0, i32 0
  store i32 %add97, i32* %net101, align 4
  %129 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %130 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal102 = getelementptr inbounds %struct.netbox, %struct.netbox* %130, i32 0, i32 5
  %131 = load i32, i32* %terminal102, align 4
  %idxprom103 = sext i32 %131 to i64
  %132 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx104 = getelementptr inbounds %struct.termnets*, %struct.termnets** %132, i64 %idxprom103
  %133 = load %struct.termnets*, %struct.termnets** %arrayidx104, align 8
  %termptr105 = getelementptr inbounds %struct.termnets, %struct.termnets* %133, i32 0, i32 1
  store %struct.netbox* %129, %struct.netbox** %termptr105, align 8
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.51
  %134 = load i32, i32* %cell, align 4
  %inc107 = add nsw i32 %134, 1
  store i32 %inc107, i32* %cell, align 4
  br label %for.cond.48

for.end.108:                                      ; preds = %for.cond.48
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @subpins() #0 {
entry:
  %i = alloca i32, align 4
  %extraNets = alloca i32, align 4
  %cell = alloca i32, align 4
  %pin = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %0 = load i32, i32* @numcells, align 4
  store i32 %0, i32* %extraNets, align 4
  %1 = load i32, i32* @numnets, align 4
  %add = add nsw i32 1, %1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @numnets, align 4
  %4 = load i32, i32* %extraNets, align 4
  %add1 = add nsw i32 %3, %4
  %cmp = icmp sle i32 %2, %add1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %6, i64 %idxprom
  %7 = load %struct.dimbox*, %struct.dimbox** %arrayidx, align 8
  store %struct.dimbox* %7, %struct.dimbox** %dimptr, align 8
  %8 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr = getelementptr inbounds %struct.dimbox, %struct.dimbox* %8, i32 0, i32 0
  %9 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %9, i32 0, i32 0
  %10 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  %11 = bitcast %struct.netbox* %10 to i8*
  call void @free(i8* %11) #2
  %12 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr2 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %12, i32 0, i32 0
  %13 = load %struct.netbox*, %struct.netbox** %netptr2, align 8
  %14 = bitcast %struct.netbox* %13 to i8*
  call void @free(i8* %14) #2
  %15 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr3 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %netptr3, align 8
  %16 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %nname = getelementptr inbounds %struct.dimbox, %struct.dimbox* %16, i32 0, i32 13
  store i8* null, i8** %nname, align 8
  %17 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %17, i32 0, i32 1
  store i32 0, i32* %skip, align 4
  %18 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %18, i32 0, i32 7
  store i32 0, i32* %flag, align 4
  %19 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %19, i32 0, i32 2
  store i32 0, i32* %xmin, align 4
  %20 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i32 0, i32 3
  store i32 0, i32* %newxmin, align 4
  %21 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %21, i32 0, i32 4
  store i32 0, i32* %xmax, align 4
  %22 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %22, i32 0, i32 5
  store i32 0, i32* %newxmax, align 4
  %23 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %23, i32 0, i32 6
  store i32 0, i32* %ymin, align 4
  %24 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %24, i32 0, i32 8
  store i32 0, i32* %newymin, align 4
  %25 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %25, i32 0, i32 9
  store i32 0, i32* %ymax, align 4
  %26 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %26, i32 0, i32 10
  store i32 0, i32* %newymax, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* @maxterm, align 4
  %add4 = add nsw i32 1, %28
  store i32 %add4, i32* %pin, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %29 = load i32, i32* %pin, align 4
  %30 = load i32, i32* @maxterm, align 4
  %31 = load i32, i32* %extraNets, align 4
  %mul = mul nsw i32 2, %31
  %add6 = add nsw i32 %30, %mul
  %cmp7 = icmp sle i32 %29, %add6
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.5
  %32 = load i32, i32* %pin, align 4
  %idxprom9 = sext i32 %32 to i64
  %33 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx10 = getelementptr inbounds %struct.termnets*, %struct.termnets** %33, i64 %idxprom9
  store %struct.termnets* null, %struct.termnets** %arrayidx10, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %34 = load i32, i32* %pin, align 4
  %inc12 = add nsw i32 %34, 1
  store i32 %inc12, i32* %pin, align 4
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  store i32 1, i32* %cell, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.24, %for.end.13
  %35 = load i32, i32* %cell, align 4
  %36 = load i32, i32* @numcells, align 4
  %cmp15 = icmp sle i32 %35, %36
  br i1 %cmp15, label %for.body.16, label %for.end.26

for.body.16:                                      ; preds = %for.cond.14
  %37 = load i32, i32* %cell, align 4
  %idxprom17 = sext i32 %37 to i64
  %38 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %38, i64 %idxprom17
  %39 = load %struct.cellbox*, %struct.cellbox** %arrayidx18, align 8
  store %struct.cellbox* %39, %struct.cellbox** %cellptr, align 8
  %40 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 5
  %41 = load i32, i32* %orient, align 4
  %idxprom19 = sext i32 %41 to i64
  %42 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 21
  %arrayidx20 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom19
  %43 = load %struct.tilebox*, %struct.tilebox** %arrayidx20, align 8
  store %struct.tilebox* %43, %struct.tilebox** %tileptr, align 8
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 17
  %45 = load %struct.termbox*, %struct.termbox** %termptr21, align 8
  store %struct.termbox* %45, %struct.termbox** %termptr, align 8
  %46 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %nextterm22 = getelementptr inbounds %struct.termbox, %struct.termbox* %46, i32 0, i32 0
  %47 = load %struct.termbox*, %struct.termbox** %nextterm22, align 8
  store %struct.termbox* %47, %struct.termbox** %term, align 8
  %48 = load %struct.termbox*, %struct.termbox** %term, align 8
  %49 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %termptr23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %49, i32 0, i32 17
  store %struct.termbox* %48, %struct.termbox** %termptr23, align 8
  %50 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %51 = bitcast %struct.termbox* %50 to i8*
  call void @free(i8* %51) #2
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.16
  %52 = load i32, i32* %cell, align 4
  %inc25 = add nsw i32 %52, 1
  store i32 %inc25, i32* %cell, align 4
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
