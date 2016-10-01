; ModuleID = './MultiSource.Benchmarks.Prolangs-C/207.TimberWolfMC.ggenorien.bc'
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
@maxterm = external global i32, align 4
@termarray = external global %struct.termnets**, align 8
@ecount = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @ggenorien() #0 {
entry:
  %cell = alloca i32, align 4
  %orient = alloca i32, align 4
  %termnum = alloca i32, align 4
  %aorient = alloca i32, align 4
  %height = alloca i32, align 4
  %length = alloca i32, align 4
  %net = alloca i32, align 4
  %terminal = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %pin = alloca i32, align 4
  %ptr = alloca %struct.cellbox*, align 8
  %tmptr0 = alloca %struct.termbox*, align 8
  %tmptr = alloca %struct.termbox*, align 8
  %cptr = alloca %struct.termbox*, align 8
  %koptr = alloca %struct.termbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %termptr = alloca %struct.termnets*, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.305, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %2 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.307

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %idxprom
  %5 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %5, %struct.cellbox** %ptr, align 8
  %6 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 8
  %7 = load i32, i32* %numterms, align 4
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 10
  %9 = load i32, i32* %softflag, align 4
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.305

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 0
  %11 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 12
  %12 = load i32, i32* %top, align 4
  %13 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config4 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 21
  %arrayidx5 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config4, i32 0, i64 0
  %14 = load %struct.tilebox*, %struct.tilebox** %arrayidx5, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i32 0, i32 11
  %15 = load i32, i32* %bottom, align 4
  %sub = sub nsw i32 %12, %15
  store i32 %sub, i32* %height, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 21
  %arrayidx7 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config6, i32 0, i64 0
  %17 = load %struct.tilebox*, %struct.tilebox** %arrayidx7, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 10
  %18 = load i32, i32* %right, align 4
  %19 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 21
  %arrayidx9 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config8, i32 0, i64 0
  %20 = load %struct.tilebox*, %struct.tilebox** %arrayidx9, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 9
  %21 = load i32, i32* %left, align 4
  %sub10 = sub nsw i32 %18, %21
  store i32 %sub10, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end
  %22 = load i32, i32* %orient, align 4
  %cmp12 = icmp sle i32 %22, 7
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %23 = load i32, i32* %orient, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 21
  %arrayidx16 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config15, i32 0, i64 %idxprom14
  %25 = load %struct.tilebox*, %struct.tilebox** %arrayidx16, align 8
  %cmp17 = icmp eq %struct.tilebox* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.13
  br label %for.inc

if.end.19:                                        ; preds = %for.body.13
  %26 = load i32, i32* %orient, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 21
  %arrayidx22 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config21, i32 0, i64 %idxprom20
  %28 = load %struct.tilebox*, %struct.tilebox** %arrayidx22, align 8
  %termptr23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %28, i32 0, i32 17
  %29 = load %struct.termbox*, %struct.termbox** %termptr23, align 8
  store %struct.termbox* %29, %struct.termbox** %cptr, align 8
  %30 = load i32, i32* %orient, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 21
  %arrayidx26 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config25, i32 0, i64 %idxprom24
  %32 = load %struct.tilebox*, %struct.tilebox** %arrayidx26, align 8
  %termptr27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %termptr27, align 8
  %33 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  %cmp28 = icmp ne %struct.termbox* %33, null
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.19
  %34 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  store %struct.termbox* %34, %struct.termbox** %koptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.29
  %35 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %35, i32 0, i32 0
  %36 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  %cmp30 = icmp ne %struct.termbox* %36, null
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  %nextterm31 = getelementptr inbounds %struct.termbox, %struct.termbox* %37, i32 0, i32 0
  %38 = load %struct.termbox*, %struct.termbox** %nextterm31, align 8
  store %struct.termbox* %38, %struct.termbox** %cptr, align 8
  %39 = load %struct.termbox*, %struct.termbox** %koptr, align 8
  %40 = bitcast %struct.termbox* %39 to i8*
  call void @free(i8* %40) #3
  %41 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  store %struct.termbox* %41, %struct.termbox** %koptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.termbox*, %struct.termbox** %cptr, align 8
  %43 = bitcast %struct.termbox* %42 to i8*
  call void @free(i8* %43) #3
  br label %if.end.32

if.end.32:                                        ; preds = %while.end, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.18
  %44 = load i32, i32* %orient, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %orient, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %45 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 4
  %arrayidx33 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList, i32 0, i64 8
  %46 = load i32, i32* %arrayidx33, align 4
  store i32 %46, i32* %aorient, align 4
  %47 = load i32, i32* %aorient, align 4
  %cmp34 = icmp ne i32 %47, 0
  br i1 %cmp34, label %if.then.35, label %if.end.153

if.then.35:                                       ; preds = %for.end
  %48 = load i32, i32* %aorient, align 4
  switch i32 %48, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.36
    i32 3, label %sw.bb.37
    i32 4, label %sw.bb.38
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.then.35
  store i32 1, i32* %orient, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.then.35
  store i32 2, i32* %orient, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then.35
  store i32 3, i32* %orient, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.35
  store i32 4, i32* %orient, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.then.35
  store i32 5, i32* %orient, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.then.35
  store i32 7, i32* %orient, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.then.35
  store i32 6, i32* %orient, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.35, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb
  %49 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %49, i32 0, i32 21
  %arrayidx43 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config42, i32 0, i64 0
  %50 = load %struct.tilebox*, %struct.tilebox** %arrayidx43, align 8
  %termptr44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 17
  %51 = load %struct.termbox*, %struct.termbox** %termptr44, align 8
  store %struct.termbox* %51, %struct.termbox** %tmptr0, align 8
  %call = call noalias i8* @malloc(i64 32) #3
  %52 = bitcast i8* %call to %struct.termbox*
  %53 = load i32, i32* %aorient, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 21
  %arrayidx47 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config46, i32 0, i64 %idxprom45
  %55 = load %struct.tilebox*, %struct.tilebox** %arrayidx47, align 8
  %termptr48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 17
  store %struct.termbox* %52, %struct.termbox** %termptr48, align 8
  store %struct.termbox* %52, %struct.termbox** %tmptr, align 8
  %56 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm49 = getelementptr inbounds %struct.termbox, %struct.termbox* %56, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm49, align 8
  %57 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos50 = getelementptr inbounds %struct.termbox, %struct.termbox* %57, i32 0, i32 1
  %58 = load i32, i32* %xpos50, align 4
  %59 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos51 = getelementptr inbounds %struct.termbox, %struct.termbox* %59, i32 0, i32 1
  store i32 %58, i32* %xpos51, align 4
  %60 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos52 = getelementptr inbounds %struct.termbox, %struct.termbox* %60, i32 0, i32 2
  %61 = load i32, i32* %ypos52, align 4
  %62 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos53 = getelementptr inbounds %struct.termbox, %struct.termbox* %62, i32 0, i32 2
  store i32 %61, i32* %ypos53, align 4
  %63 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos = getelementptr inbounds %struct.termbox, %struct.termbox* %63, i32 0, i32 3
  %64 = load i32, i32* %oxpos, align 4
  %65 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos54 = getelementptr inbounds %struct.termbox, %struct.termbox* %65, i32 0, i32 3
  store i32 %64, i32* %oxpos54, align 4
  %66 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos = getelementptr inbounds %struct.termbox, %struct.termbox* %66, i32 0, i32 4
  %67 = load i32, i32* %oypos, align 4
  %68 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos55 = getelementptr inbounds %struct.termbox, %struct.termbox* %68, i32 0, i32 4
  store i32 %67, i32* %oypos55, align 4
  %69 = load i32, i32* %orient, align 4
  call void @move(i32 %69)
  %70 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos56 = getelementptr inbounds %struct.termbox, %struct.termbox* %70, i32 0, i32 1
  %71 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos57 = getelementptr inbounds %struct.termbox, %struct.termbox* %71, i32 0, i32 2
  call void @point(i32* %xpos56, i32* %ypos57)
  %72 = load i32, i32* %height, align 4
  %rem = srem i32 %72, 2
  %cmp58 = icmp ne i32 %rem, 0
  br i1 %cmp58, label %land.lhs.true, label %lor.lhs.false.62

land.lhs.true:                                    ; preds = %sw.epilog
  %73 = load i32, i32* %orient, align 4
  %cmp59 = icmp eq i32 %73, 4
  br i1 %cmp59, label %if.then.69, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true
  %74 = load i32, i32* %orient, align 4
  %cmp61 = icmp eq i32 %74, 6
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.60, %sw.epilog
  %75 = load i32, i32* %length, align 4
  %rem63 = srem i32 %75, 2
  %cmp64 = icmp ne i32 %rem63, 0
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.72

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %76 = load i32, i32* %orient, align 4
  %cmp66 = icmp eq i32 %76, 2
  br i1 %cmp66, label %if.then.69, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.65
  %77 = load i32, i32* %orient, align 4
  %cmp68 = icmp eq i32 %77, 3
  br i1 %cmp68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %lor.lhs.false.67, %land.lhs.true.65, %lor.lhs.false.60, %land.lhs.true
  %78 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos70 = getelementptr inbounds %struct.termbox, %struct.termbox* %78, i32 0, i32 1
  %79 = load i32, i32* %xpos70, align 4
  %inc71 = add nsw i32 %79, 1
  store i32 %inc71, i32* %xpos70, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %lor.lhs.false.67, %lor.lhs.false.62
  %80 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos73 = getelementptr inbounds %struct.termbox, %struct.termbox* %80, i32 0, i32 1
  %81 = load i32, i32* %xpos73, align 4
  %82 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos74 = getelementptr inbounds %struct.termbox, %struct.termbox* %82, i32 0, i32 3
  store i32 %81, i32* %oxpos74, align 4
  %83 = load i32, i32* %height, align 4
  %rem75 = srem i32 %83, 2
  %cmp76 = icmp ne i32 %rem75, 0
  br i1 %cmp76, label %land.lhs.true.77, label %lor.lhs.false.81

land.lhs.true.77:                                 ; preds = %if.end.72
  %84 = load i32, i32* %orient, align 4
  %cmp78 = icmp eq i32 %84, 1
  br i1 %cmp78, label %if.then.88, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %land.lhs.true.77
  %85 = load i32, i32* %orient, align 4
  %cmp80 = icmp eq i32 %85, 3
  br i1 %cmp80, label %if.then.88, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.79, %if.end.72
  %86 = load i32, i32* %length, align 4
  %rem82 = srem i32 %86, 2
  %cmp83 = icmp ne i32 %rem82, 0
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.91

land.lhs.true.84:                                 ; preds = %lor.lhs.false.81
  %87 = load i32, i32* %orient, align 4
  %cmp85 = icmp eq i32 %87, 4
  br i1 %cmp85, label %if.then.88, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.84
  %88 = load i32, i32* %orient, align 4
  %cmp87 = icmp eq i32 %88, 7
  br i1 %cmp87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %lor.lhs.false.86, %land.lhs.true.84, %lor.lhs.false.79, %land.lhs.true.77
  %89 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos89 = getelementptr inbounds %struct.termbox, %struct.termbox* %89, i32 0, i32 2
  %90 = load i32, i32* %ypos89, align 4
  %inc90 = add nsw i32 %90, 1
  store i32 %inc90, i32* %ypos89, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %lor.lhs.false.86, %lor.lhs.false.81
  %91 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos92 = getelementptr inbounds %struct.termbox, %struct.termbox* %91, i32 0, i32 2
  %92 = load i32, i32* %ypos92, align 4
  %93 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos93 = getelementptr inbounds %struct.termbox, %struct.termbox* %93, i32 0, i32 4
  store i32 %92, i32* %oypos93, align 4
  store i32 2, i32* %termnum, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.150, %if.end.91
  %94 = load i32, i32* %termnum, align 4
  %95 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms95 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %95, i32 0, i32 8
  %96 = load i32, i32* %numterms95, align 4
  %cmp96 = icmp sle i32 %94, %96
  br i1 %cmp96, label %for.body.97, label %for.end.152

for.body.97:                                      ; preds = %for.cond.94
  %97 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm98 = getelementptr inbounds %struct.termbox, %struct.termbox* %97, i32 0, i32 0
  %98 = load %struct.termbox*, %struct.termbox** %nextterm98, align 8
  store %struct.termbox* %98, %struct.termbox** %tmptr0, align 8
  %call99 = call noalias i8* @malloc(i64 32) #3
  %99 = bitcast i8* %call99 to %struct.termbox*
  %100 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm100 = getelementptr inbounds %struct.termbox, %struct.termbox* %100, i32 0, i32 0
  store %struct.termbox* %99, %struct.termbox** %nextterm100, align 8
  store %struct.termbox* %99, %struct.termbox** %tmptr, align 8
  %101 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm101 = getelementptr inbounds %struct.termbox, %struct.termbox* %101, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm101, align 8
  %102 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos102 = getelementptr inbounds %struct.termbox, %struct.termbox* %102, i32 0, i32 1
  %103 = load i32, i32* %xpos102, align 4
  %104 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos103 = getelementptr inbounds %struct.termbox, %struct.termbox* %104, i32 0, i32 1
  store i32 %103, i32* %xpos103, align 4
  %105 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos104 = getelementptr inbounds %struct.termbox, %struct.termbox* %105, i32 0, i32 2
  %106 = load i32, i32* %ypos104, align 4
  %107 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos105 = getelementptr inbounds %struct.termbox, %struct.termbox* %107, i32 0, i32 2
  store i32 %106, i32* %ypos105, align 4
  %108 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos106 = getelementptr inbounds %struct.termbox, %struct.termbox* %108, i32 0, i32 3
  %109 = load i32, i32* %oxpos106, align 4
  %110 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos107 = getelementptr inbounds %struct.termbox, %struct.termbox* %110, i32 0, i32 3
  store i32 %109, i32* %oxpos107, align 4
  %111 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos108 = getelementptr inbounds %struct.termbox, %struct.termbox* %111, i32 0, i32 4
  %112 = load i32, i32* %oypos108, align 4
  %113 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos109 = getelementptr inbounds %struct.termbox, %struct.termbox* %113, i32 0, i32 4
  store i32 %112, i32* %oypos109, align 4
  %114 = load i32, i32* %orient, align 4
  call void @move(i32 %114)
  %115 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos110 = getelementptr inbounds %struct.termbox, %struct.termbox* %115, i32 0, i32 1
  %116 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos111 = getelementptr inbounds %struct.termbox, %struct.termbox* %116, i32 0, i32 2
  call void @point(i32* %xpos110, i32* %ypos111)
  %117 = load i32, i32* %height, align 4
  %rem112 = srem i32 %117, 2
  %cmp113 = icmp ne i32 %rem112, 0
  br i1 %cmp113, label %land.lhs.true.114, label %lor.lhs.false.118

land.lhs.true.114:                                ; preds = %for.body.97
  %118 = load i32, i32* %orient, align 4
  %cmp115 = icmp eq i32 %118, 4
  br i1 %cmp115, label %if.then.125, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.114
  %119 = load i32, i32* %orient, align 4
  %cmp117 = icmp eq i32 %119, 6
  br i1 %cmp117, label %if.then.125, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.116, %for.body.97
  %120 = load i32, i32* %length, align 4
  %rem119 = srem i32 %120, 2
  %cmp120 = icmp ne i32 %rem119, 0
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.128

land.lhs.true.121:                                ; preds = %lor.lhs.false.118
  %121 = load i32, i32* %orient, align 4
  %cmp122 = icmp eq i32 %121, 2
  br i1 %cmp122, label %if.then.125, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.121
  %122 = load i32, i32* %orient, align 4
  %cmp124 = icmp eq i32 %122, 3
  br i1 %cmp124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %lor.lhs.false.123, %land.lhs.true.121, %lor.lhs.false.116, %land.lhs.true.114
  %123 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos126 = getelementptr inbounds %struct.termbox, %struct.termbox* %123, i32 0, i32 1
  %124 = load i32, i32* %xpos126, align 4
  %inc127 = add nsw i32 %124, 1
  store i32 %inc127, i32* %xpos126, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %lor.lhs.false.123, %lor.lhs.false.118
  %125 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos129 = getelementptr inbounds %struct.termbox, %struct.termbox* %125, i32 0, i32 1
  %126 = load i32, i32* %xpos129, align 4
  %127 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oxpos130 = getelementptr inbounds %struct.termbox, %struct.termbox* %127, i32 0, i32 3
  store i32 %126, i32* %oxpos130, align 4
  %128 = load i32, i32* %height, align 4
  %rem131 = srem i32 %128, 2
  %cmp132 = icmp ne i32 %rem131, 0
  br i1 %cmp132, label %land.lhs.true.133, label %lor.lhs.false.137

land.lhs.true.133:                                ; preds = %if.end.128
  %129 = load i32, i32* %orient, align 4
  %cmp134 = icmp eq i32 %129, 1
  br i1 %cmp134, label %if.then.144, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.133
  %130 = load i32, i32* %orient, align 4
  %cmp136 = icmp eq i32 %130, 3
  br i1 %cmp136, label %if.then.144, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.135, %if.end.128
  %131 = load i32, i32* %length, align 4
  %rem138 = srem i32 %131, 2
  %cmp139 = icmp ne i32 %rem138, 0
  br i1 %cmp139, label %land.lhs.true.140, label %if.end.147

land.lhs.true.140:                                ; preds = %lor.lhs.false.137
  %132 = load i32, i32* %orient, align 4
  %cmp141 = icmp eq i32 %132, 4
  br i1 %cmp141, label %if.then.144, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %land.lhs.true.140
  %133 = load i32, i32* %orient, align 4
  %cmp143 = icmp eq i32 %133, 7
  br i1 %cmp143, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %lor.lhs.false.142, %land.lhs.true.140, %lor.lhs.false.135, %land.lhs.true.133
  %134 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos145 = getelementptr inbounds %struct.termbox, %struct.termbox* %134, i32 0, i32 2
  %135 = load i32, i32* %ypos145, align 4
  %inc146 = add nsw i32 %135, 1
  store i32 %inc146, i32* %ypos145, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %lor.lhs.false.142, %lor.lhs.false.137
  %136 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos148 = getelementptr inbounds %struct.termbox, %struct.termbox* %136, i32 0, i32 2
  %137 = load i32, i32* %ypos148, align 4
  %138 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %oypos149 = getelementptr inbounds %struct.termbox, %struct.termbox* %138, i32 0, i32 4
  store i32 %137, i32* %oypos149, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.147
  %139 = load i32, i32* %termnum, align 4
  %inc151 = add nsw i32 %139, 1
  store i32 %inc151, i32* %termnum, align 4
  br label %for.cond.94

for.end.152:                                      ; preds = %for.cond.94
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %for.end
  %140 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config154 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %140, i32 0, i32 21
  %arrayidx155 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config154, i32 0, i64 0
  %141 = load %struct.tilebox*, %struct.tilebox** %arrayidx155, align 8
  %top156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %141, i32 0, i32 12
  %142 = load i32, i32* %top156, align 4
  %143 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config157 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %143, i32 0, i32 21
  %arrayidx158 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config157, i32 0, i64 0
  %144 = load %struct.tilebox*, %struct.tilebox** %arrayidx158, align 8
  %bottom159 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %144, i32 0, i32 11
  %145 = load i32, i32* %bottom159, align 4
  %sub160 = sub nsw i32 %142, %145
  store i32 %sub160, i32* %height, align 4
  %146 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config161 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %146, i32 0, i32 21
  %arrayidx162 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config161, i32 0, i64 0
  %147 = load %struct.tilebox*, %struct.tilebox** %arrayidx162, align 8
  %right163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %147, i32 0, i32 10
  %148 = load i32, i32* %right163, align 4
  %149 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config164 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %149, i32 0, i32 21
  %arrayidx165 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config164, i32 0, i64 0
  %150 = load %struct.tilebox*, %struct.tilebox** %arrayidx165, align 8
  %left166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %150, i32 0, i32 9
  %151 = load i32, i32* %left166, align 4
  %sub167 = sub nsw i32 %148, %151
  store i32 %sub167, i32* %length, align 4
  store i32 1, i32* %orient, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.302, %if.end.153
  %152 = load i32, i32* %orient, align 4
  %cmp169 = icmp sle i32 %152, 7
  br i1 %cmp169, label %for.body.170, label %for.end.304

for.body.170:                                     ; preds = %for.cond.168
  %153 = load i32, i32* %orient, align 4
  %154 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList171 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %154, i32 0, i32 4
  %arrayidx172 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList171, i32 0, i64 8
  %155 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp eq i32 %153, %155
  br i1 %cmp173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.body.170
  br label %for.inc.302

if.end.175:                                       ; preds = %for.body.170
  %156 = load i32, i32* %orient, align 4
  %idxprom176 = sext i32 %156 to i64
  %157 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orientList177 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %157, i32 0, i32 4
  %arrayidx178 = getelementptr inbounds [9 x i32], [9 x i32]* %orientList177, i32 0, i64 %idxprom176
  %158 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp eq i32 %158, 0
  br i1 %cmp179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.175
  br label %for.inc.302

if.end.181:                                       ; preds = %if.end.175
  %159 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config182 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 21
  %arrayidx183 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config182, i32 0, i64 0
  %160 = load %struct.tilebox*, %struct.tilebox** %arrayidx183, align 8
  %termptr184 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %160, i32 0, i32 17
  %161 = load %struct.termbox*, %struct.termbox** %termptr184, align 8
  store %struct.termbox* %161, %struct.termbox** %tmptr0, align 8
  %call185 = call noalias i8* @malloc(i64 32) #3
  %162 = bitcast i8* %call185 to %struct.termbox*
  %163 = load i32, i32* %orient, align 4
  %idxprom186 = sext i32 %163 to i64
  %164 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %164, i32 0, i32 21
  %arrayidx188 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config187, i32 0, i64 %idxprom186
  %165 = load %struct.tilebox*, %struct.tilebox** %arrayidx188, align 8
  %termptr189 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %165, i32 0, i32 17
  store %struct.termbox* %162, %struct.termbox** %termptr189, align 8
  store %struct.termbox* %162, %struct.termbox** %tmptr, align 8
  %166 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm190 = getelementptr inbounds %struct.termbox, %struct.termbox* %166, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm190, align 8
  %167 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal191 = getelementptr inbounds %struct.termbox, %struct.termbox* %167, i32 0, i32 5
  %168 = load i32, i32* %terminal191, align 4
  %169 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal192 = getelementptr inbounds %struct.termbox, %struct.termbox* %169, i32 0, i32 5
  store i32 %168, i32* %terminal192, align 4
  %170 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos193 = getelementptr inbounds %struct.termbox, %struct.termbox* %170, i32 0, i32 1
  %171 = load i32, i32* %xpos193, align 4
  %172 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos194 = getelementptr inbounds %struct.termbox, %struct.termbox* %172, i32 0, i32 1
  store i32 %171, i32* %xpos194, align 4
  %173 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos195 = getelementptr inbounds %struct.termbox, %struct.termbox* %173, i32 0, i32 2
  %174 = load i32, i32* %ypos195, align 4
  %175 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos196 = getelementptr inbounds %struct.termbox, %struct.termbox* %175, i32 0, i32 2
  store i32 %174, i32* %ypos196, align 4
  %176 = load i32, i32* %orient, align 4
  call void @move(i32 %176)
  %177 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos197 = getelementptr inbounds %struct.termbox, %struct.termbox* %177, i32 0, i32 1
  %178 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos198 = getelementptr inbounds %struct.termbox, %struct.termbox* %178, i32 0, i32 2
  call void @point(i32* %xpos197, i32* %ypos198)
  %179 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos199 = getelementptr inbounds %struct.termbox, %struct.termbox* %179, i32 0, i32 1
  %180 = load i32, i32* %xpos199, align 4
  %181 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos200 = getelementptr inbounds %struct.termbox, %struct.termbox* %181, i32 0, i32 3
  store i32 %180, i32* %oxpos200, align 4
  %182 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos201 = getelementptr inbounds %struct.termbox, %struct.termbox* %182, i32 0, i32 2
  %183 = load i32, i32* %ypos201, align 4
  %184 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos202 = getelementptr inbounds %struct.termbox, %struct.termbox* %184, i32 0, i32 4
  store i32 %183, i32* %oypos202, align 4
  %185 = load i32, i32* %height, align 4
  %rem203 = srem i32 %185, 2
  %cmp204 = icmp ne i32 %rem203, 0
  br i1 %cmp204, label %land.lhs.true.205, label %lor.lhs.false.209

land.lhs.true.205:                                ; preds = %if.end.181
  %186 = load i32, i32* %orient, align 4
  %cmp206 = icmp eq i32 %186, 4
  br i1 %cmp206, label %if.then.216, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %land.lhs.true.205
  %187 = load i32, i32* %orient, align 4
  %cmp208 = icmp eq i32 %187, 6
  br i1 %cmp208, label %if.then.216, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %lor.lhs.false.207, %if.end.181
  %188 = load i32, i32* %length, align 4
  %rem210 = srem i32 %188, 2
  %cmp211 = icmp ne i32 %rem210, 0
  br i1 %cmp211, label %land.lhs.true.212, label %if.end.221

land.lhs.true.212:                                ; preds = %lor.lhs.false.209
  %189 = load i32, i32* %orient, align 4
  %cmp213 = icmp eq i32 %189, 2
  br i1 %cmp213, label %if.then.216, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %land.lhs.true.212
  %190 = load i32, i32* %orient, align 4
  %cmp215 = icmp eq i32 %190, 3
  br i1 %cmp215, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %lor.lhs.false.214, %land.lhs.true.212, %lor.lhs.false.207, %land.lhs.true.205
  %191 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos217 = getelementptr inbounds %struct.termbox, %struct.termbox* %191, i32 0, i32 1
  %192 = load i32, i32* %xpos217, align 4
  %inc218 = add nsw i32 %192, 1
  store i32 %inc218, i32* %xpos217, align 4
  %193 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos219 = getelementptr inbounds %struct.termbox, %struct.termbox* %193, i32 0, i32 3
  %194 = load i32, i32* %oxpos219, align 4
  %inc220 = add nsw i32 %194, 1
  store i32 %inc220, i32* %oxpos219, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.216, %lor.lhs.false.214, %lor.lhs.false.209
  %195 = load i32, i32* %height, align 4
  %rem222 = srem i32 %195, 2
  %cmp223 = icmp ne i32 %rem222, 0
  br i1 %cmp223, label %land.lhs.true.224, label %lor.lhs.false.228

land.lhs.true.224:                                ; preds = %if.end.221
  %196 = load i32, i32* %orient, align 4
  %cmp225 = icmp eq i32 %196, 1
  br i1 %cmp225, label %if.then.235, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %land.lhs.true.224
  %197 = load i32, i32* %orient, align 4
  %cmp227 = icmp eq i32 %197, 3
  br i1 %cmp227, label %if.then.235, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %lor.lhs.false.226, %if.end.221
  %198 = load i32, i32* %length, align 4
  %rem229 = srem i32 %198, 2
  %cmp230 = icmp ne i32 %rem229, 0
  br i1 %cmp230, label %land.lhs.true.231, label %if.end.240

land.lhs.true.231:                                ; preds = %lor.lhs.false.228
  %199 = load i32, i32* %orient, align 4
  %cmp232 = icmp eq i32 %199, 4
  br i1 %cmp232, label %if.then.235, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %land.lhs.true.231
  %200 = load i32, i32* %orient, align 4
  %cmp234 = icmp eq i32 %200, 7
  br i1 %cmp234, label %if.then.235, label %if.end.240

if.then.235:                                      ; preds = %lor.lhs.false.233, %land.lhs.true.231, %lor.lhs.false.226, %land.lhs.true.224
  %201 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos236 = getelementptr inbounds %struct.termbox, %struct.termbox* %201, i32 0, i32 2
  %202 = load i32, i32* %ypos236, align 4
  %inc237 = add nsw i32 %202, 1
  store i32 %inc237, i32* %ypos236, align 4
  %203 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos238 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i32 0, i32 4
  %204 = load i32, i32* %oypos238, align 4
  %inc239 = add nsw i32 %204, 1
  store i32 %inc239, i32* %oypos238, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.235, %lor.lhs.false.233, %lor.lhs.false.228
  store i32 2, i32* %termnum, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.299, %if.end.240
  %205 = load i32, i32* %termnum, align 4
  %206 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numterms242 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %206, i32 0, i32 8
  %207 = load i32, i32* %numterms242, align 4
  %cmp243 = icmp sle i32 %205, %207
  br i1 %cmp243, label %for.body.244, label %for.end.301

for.body.244:                                     ; preds = %for.cond.241
  %208 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %nextterm245 = getelementptr inbounds %struct.termbox, %struct.termbox* %208, i32 0, i32 0
  %209 = load %struct.termbox*, %struct.termbox** %nextterm245, align 8
  store %struct.termbox* %209, %struct.termbox** %tmptr0, align 8
  %call246 = call noalias i8* @malloc(i64 32) #3
  %210 = bitcast i8* %call246 to %struct.termbox*
  %211 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm247 = getelementptr inbounds %struct.termbox, %struct.termbox* %211, i32 0, i32 0
  store %struct.termbox* %210, %struct.termbox** %nextterm247, align 8
  store %struct.termbox* %210, %struct.termbox** %tmptr, align 8
  %212 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %nextterm248 = getelementptr inbounds %struct.termbox, %struct.termbox* %212, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %nextterm248, align 8
  %213 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %terminal249 = getelementptr inbounds %struct.termbox, %struct.termbox* %213, i32 0, i32 5
  %214 = load i32, i32* %terminal249, align 4
  %215 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %terminal250 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i32 0, i32 5
  store i32 %214, i32* %terminal250, align 4
  %216 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %xpos251 = getelementptr inbounds %struct.termbox, %struct.termbox* %216, i32 0, i32 1
  %217 = load i32, i32* %xpos251, align 4
  %218 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos252 = getelementptr inbounds %struct.termbox, %struct.termbox* %218, i32 0, i32 1
  store i32 %217, i32* %xpos252, align 4
  %219 = load %struct.termbox*, %struct.termbox** %tmptr0, align 8
  %ypos253 = getelementptr inbounds %struct.termbox, %struct.termbox* %219, i32 0, i32 2
  %220 = load i32, i32* %ypos253, align 4
  %221 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos254 = getelementptr inbounds %struct.termbox, %struct.termbox* %221, i32 0, i32 2
  store i32 %220, i32* %ypos254, align 4
  %222 = load i32, i32* %orient, align 4
  call void @move(i32 %222)
  %223 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos255 = getelementptr inbounds %struct.termbox, %struct.termbox* %223, i32 0, i32 1
  %224 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos256 = getelementptr inbounds %struct.termbox, %struct.termbox* %224, i32 0, i32 2
  call void @point(i32* %xpos255, i32* %ypos256)
  %225 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos257 = getelementptr inbounds %struct.termbox, %struct.termbox* %225, i32 0, i32 1
  %226 = load i32, i32* %xpos257, align 4
  %227 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos258 = getelementptr inbounds %struct.termbox, %struct.termbox* %227, i32 0, i32 3
  store i32 %226, i32* %oxpos258, align 4
  %228 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos259 = getelementptr inbounds %struct.termbox, %struct.termbox* %228, i32 0, i32 2
  %229 = load i32, i32* %ypos259, align 4
  %230 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos260 = getelementptr inbounds %struct.termbox, %struct.termbox* %230, i32 0, i32 4
  store i32 %229, i32* %oypos260, align 4
  %231 = load i32, i32* %height, align 4
  %rem261 = srem i32 %231, 2
  %cmp262 = icmp ne i32 %rem261, 0
  br i1 %cmp262, label %land.lhs.true.263, label %lor.lhs.false.267

land.lhs.true.263:                                ; preds = %for.body.244
  %232 = load i32, i32* %orient, align 4
  %cmp264 = icmp eq i32 %232, 4
  br i1 %cmp264, label %if.then.274, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %land.lhs.true.263
  %233 = load i32, i32* %orient, align 4
  %cmp266 = icmp eq i32 %233, 6
  br i1 %cmp266, label %if.then.274, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %lor.lhs.false.265, %for.body.244
  %234 = load i32, i32* %length, align 4
  %rem268 = srem i32 %234, 2
  %cmp269 = icmp ne i32 %rem268, 0
  br i1 %cmp269, label %land.lhs.true.270, label %if.end.279

land.lhs.true.270:                                ; preds = %lor.lhs.false.267
  %235 = load i32, i32* %orient, align 4
  %cmp271 = icmp eq i32 %235, 2
  br i1 %cmp271, label %if.then.274, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %land.lhs.true.270
  %236 = load i32, i32* %orient, align 4
  %cmp273 = icmp eq i32 %236, 3
  br i1 %cmp273, label %if.then.274, label %if.end.279

if.then.274:                                      ; preds = %lor.lhs.false.272, %land.lhs.true.270, %lor.lhs.false.265, %land.lhs.true.263
  %237 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %xpos275 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i32 0, i32 1
  %238 = load i32, i32* %xpos275, align 4
  %inc276 = add nsw i32 %238, 1
  store i32 %inc276, i32* %xpos275, align 4
  %239 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oxpos277 = getelementptr inbounds %struct.termbox, %struct.termbox* %239, i32 0, i32 3
  %240 = load i32, i32* %oxpos277, align 4
  %inc278 = add nsw i32 %240, 1
  store i32 %inc278, i32* %oxpos277, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.274, %lor.lhs.false.272, %lor.lhs.false.267
  %241 = load i32, i32* %height, align 4
  %rem280 = srem i32 %241, 2
  %cmp281 = icmp ne i32 %rem280, 0
  br i1 %cmp281, label %land.lhs.true.282, label %lor.lhs.false.286

land.lhs.true.282:                                ; preds = %if.end.279
  %242 = load i32, i32* %orient, align 4
  %cmp283 = icmp eq i32 %242, 1
  br i1 %cmp283, label %if.then.293, label %lor.lhs.false.284

lor.lhs.false.284:                                ; preds = %land.lhs.true.282
  %243 = load i32, i32* %orient, align 4
  %cmp285 = icmp eq i32 %243, 3
  br i1 %cmp285, label %if.then.293, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %lor.lhs.false.284, %if.end.279
  %244 = load i32, i32* %length, align 4
  %rem287 = srem i32 %244, 2
  %cmp288 = icmp ne i32 %rem287, 0
  br i1 %cmp288, label %land.lhs.true.289, label %if.end.298

land.lhs.true.289:                                ; preds = %lor.lhs.false.286
  %245 = load i32, i32* %orient, align 4
  %cmp290 = icmp eq i32 %245, 4
  br i1 %cmp290, label %if.then.293, label %lor.lhs.false.291

lor.lhs.false.291:                                ; preds = %land.lhs.true.289
  %246 = load i32, i32* %orient, align 4
  %cmp292 = icmp eq i32 %246, 7
  br i1 %cmp292, label %if.then.293, label %if.end.298

if.then.293:                                      ; preds = %lor.lhs.false.291, %land.lhs.true.289, %lor.lhs.false.284, %land.lhs.true.282
  %247 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %ypos294 = getelementptr inbounds %struct.termbox, %struct.termbox* %247, i32 0, i32 2
  %248 = load i32, i32* %ypos294, align 4
  %inc295 = add nsw i32 %248, 1
  store i32 %inc295, i32* %ypos294, align 4
  %249 = load %struct.termbox*, %struct.termbox** %tmptr, align 8
  %oypos296 = getelementptr inbounds %struct.termbox, %struct.termbox* %249, i32 0, i32 4
  %250 = load i32, i32* %oypos296, align 4
  %inc297 = add nsw i32 %250, 1
  store i32 %inc297, i32* %oypos296, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.293, %lor.lhs.false.291, %lor.lhs.false.286
  br label %for.inc.299

for.inc.299:                                      ; preds = %if.end.298
  %251 = load i32, i32* %termnum, align 4
  %inc300 = add nsw i32 %251, 1
  store i32 %inc300, i32* %termnum, align 4
  br label %for.cond.241

for.end.301:                                      ; preds = %for.cond.241
  br label %for.inc.302

for.inc.302:                                      ; preds = %for.end.301, %if.then.180, %if.then.174
  %252 = load i32, i32* %orient, align 4
  %inc303 = add nsw i32 %252, 1
  store i32 %inc303, i32* %orient, align 4
  br label %for.cond.168

for.end.304:                                      ; preds = %for.cond.168
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.end.304, %if.then
  %253 = load i32, i32* %cell, align 4
  %inc306 = add nsw i32 %253, 1
  store i32 %inc306, i32* %cell, align 4
  br label %for.cond

for.end.307:                                      ; preds = %for.cond
  call void @delHtab()
  store i32 1, i32* %net, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.336, %for.end.307
  %254 = load i32, i32* %net, align 4
  %255 = load i32, i32* @numnets, align 4
  %cmp309 = icmp sle i32 %254, %255
  br i1 %cmp309, label %for.body.310, label %for.end.338

for.body.310:                                     ; preds = %for.cond.308
  %256 = load i32, i32* %net, align 4
  %idxprom311 = sext i32 %256 to i64
  %257 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx312 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %257, i64 %idxprom311
  %258 = load %struct.dimbox*, %struct.dimbox** %arrayidx312, align 8
  %netptr313 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %258, i32 0, i32 0
  %259 = load %struct.netbox*, %struct.netbox** %netptr313, align 8
  store %struct.netbox* %259, %struct.netbox** %netptr, align 8
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.333, %for.body.310
  %260 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp315 = icmp ne %struct.netbox* %260, null
  br i1 %cmp315, label %for.body.316, label %for.end.335

for.body.316:                                     ; preds = %for.cond.314
  %261 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal317 = getelementptr inbounds %struct.netbox, %struct.netbox* %261, i32 0, i32 5
  %262 = load i32, i32* %terminal317, align 4
  %263 = load i32, i32* @maxterm, align 4
  %cmp318 = icmp sgt i32 %262, %263
  br i1 %cmp318, label %if.then.319, label %if.end.332

if.then.319:                                      ; preds = %for.body.316
  %call320 = call noalias i8* @malloc(i64 16) #3
  %264 = bitcast i8* %call320 to %struct.termnets*
  %265 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal321 = getelementptr inbounds %struct.netbox, %struct.netbox* %265, i32 0, i32 5
  %266 = load i32, i32* %terminal321, align 4
  %idxprom322 = sext i32 %266 to i64
  %267 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx323 = getelementptr inbounds %struct.termnets*, %struct.termnets** %267, i64 %idxprom322
  store %struct.termnets* %264, %struct.termnets** %arrayidx323, align 8
  %268 = load i32, i32* %net, align 4
  %269 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal324 = getelementptr inbounds %struct.netbox, %struct.netbox* %269, i32 0, i32 5
  %270 = load i32, i32* %terminal324, align 4
  %idxprom325 = sext i32 %270 to i64
  %271 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx326 = getelementptr inbounds %struct.termnets*, %struct.termnets** %271, i64 %idxprom325
  %272 = load %struct.termnets*, %struct.termnets** %arrayidx326, align 8
  %net327 = getelementptr inbounds %struct.termnets, %struct.termnets* %272, i32 0, i32 0
  store i32 %268, i32* %net327, align 4
  %273 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %274 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %terminal328 = getelementptr inbounds %struct.netbox, %struct.netbox* %274, i32 0, i32 5
  %275 = load i32, i32* %terminal328, align 4
  %idxprom329 = sext i32 %275 to i64
  %276 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx330 = getelementptr inbounds %struct.termnets*, %struct.termnets** %276, i64 %idxprom329
  %277 = load %struct.termnets*, %struct.termnets** %arrayidx330, align 8
  %termptr331 = getelementptr inbounds %struct.termnets, %struct.termnets* %277, i32 0, i32 1
  store %struct.netbox* %273, %struct.netbox** %termptr331, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.319, %for.body.316
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %278 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm334 = getelementptr inbounds %struct.netbox, %struct.netbox* %278, i32 0, i32 0
  %279 = load %struct.netbox*, %struct.netbox** %nextterm334, align 8
  store %struct.netbox* %279, %struct.netbox** %netptr, align 8
  br label %for.cond.314

for.end.335:                                      ; preds = %for.cond.314
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.end.335
  %280 = load i32, i32* %net, align 4
  %inc337 = add nsw i32 %280, 1
  store i32 %inc337, i32* %net, align 4
  br label %for.cond.308

for.end.338:                                      ; preds = %for.cond.308
  store i32 1, i32* %cell, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.396, %for.end.338
  %281 = load i32, i32* %cell, align 4
  %282 = load i32, i32* @numcells, align 4
  %283 = load i32, i32* @numpads, align 4
  %add340 = add nsw i32 %282, %283
  %cmp341 = icmp sle i32 %281, %add340
  br i1 %cmp341, label %for.body.342, label %for.end.398

for.body.342:                                     ; preds = %for.cond.339
  %284 = load i32, i32* %cell, align 4
  %idxprom343 = sext i32 %284 to i64
  %285 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx344 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %285, i64 %idxprom343
  %286 = load %struct.cellbox*, %struct.cellbox** %arrayidx344, align 8
  store %struct.cellbox* %286, %struct.cellbox** %ptr, align 8
  %287 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag345 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %287, i32 0, i32 10
  %288 = load i32, i32* %softflag345, align 4
  %cmp346 = icmp eq i32 %288, 0
  br i1 %cmp346, label %if.then.347, label %if.else

if.then.347:                                      ; preds = %for.body.342
  %289 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient348 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %289, i32 0, i32 5
  %290 = load i32, i32* %orient348, align 4
  %idxprom349 = sext i32 %290 to i64
  %291 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config350 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %291, i32 0, i32 21
  %arrayidx351 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config350, i32 0, i64 %idxprom349
  %292 = load %struct.tilebox*, %struct.tilebox** %arrayidx351, align 8
  %termptr352 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 17
  %293 = load %struct.termbox*, %struct.termbox** %termptr352, align 8
  store %struct.termbox* %293, %struct.termbox** %term, align 8
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.367, %if.then.347
  %294 = load %struct.termbox*, %struct.termbox** %term, align 8
  %cmp354 = icmp ne %struct.termbox* %294, null
  br i1 %cmp354, label %for.body.355, label %for.end.369

for.body.355:                                     ; preds = %for.cond.353
  %295 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal356 = getelementptr inbounds %struct.termbox, %struct.termbox* %295, i32 0, i32 5
  %296 = load i32, i32* %terminal356, align 4
  %idxprom357 = sext i32 %296 to i64
  %297 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx358 = getelementptr inbounds %struct.termnets*, %struct.termnets** %297, i64 %idxprom357
  %298 = load %struct.termnets*, %struct.termnets** %arrayidx358, align 8
  store %struct.termnets* %298, %struct.termnets** %termptr, align 8
  %299 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos359 = getelementptr inbounds %struct.termbox, %struct.termbox* %299, i32 0, i32 1
  %300 = load i32, i32* %xpos359, align 4
  %301 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %301, i32 0, i32 2
  %302 = load i32, i32* %xcenter, align 4
  %add360 = add nsw i32 %300, %302
  %303 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr361 = getelementptr inbounds %struct.termnets, %struct.termnets* %303, i32 0, i32 1
  %304 = load %struct.netbox*, %struct.netbox** %termptr361, align 8
  %xpos362 = getelementptr inbounds %struct.netbox, %struct.netbox* %304, i32 0, i32 1
  store i32 %add360, i32* %xpos362, align 4
  %305 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos363 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i32 0, i32 2
  %306 = load i32, i32* %ypos363, align 4
  %307 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %307, i32 0, i32 3
  %308 = load i32, i32* %ycenter, align 4
  %add364 = add nsw i32 %306, %308
  %309 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr365 = getelementptr inbounds %struct.termnets, %struct.termnets* %309, i32 0, i32 1
  %310 = load %struct.netbox*, %struct.netbox** %termptr365, align 8
  %ypos366 = getelementptr inbounds %struct.netbox, %struct.netbox* %310, i32 0, i32 2
  store i32 %add364, i32* %ypos366, align 4
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.body.355
  %311 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm368 = getelementptr inbounds %struct.termbox, %struct.termbox* %311, i32 0, i32 0
  %312 = load %struct.termbox*, %struct.termbox** %nextterm368, align 8
  store %struct.termbox* %312, %struct.termbox** %term, align 8
  br label %for.cond.353

for.end.369:                                      ; preds = %for.cond.353
  br label %if.end.395

if.else:                                          ; preds = %for.body.342
  store i32 1, i32* %pin, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.392, %if.else
  %313 = load i32, i32* %pin, align 4
  %314 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %314, i32 0, i32 18
  %315 = load i32, i32* %numUnComTerms, align 4
  %cmp371 = icmp sle i32 %313, %315
  br i1 %cmp371, label %for.body.372, label %for.end.394

for.body.372:                                     ; preds = %for.cond.370
  %316 = load i32, i32* %pin, align 4
  %idxprom373 = sext i32 %316 to i64
  %317 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 20
  %318 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx374 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %318, i64 %idxprom373
  %terminal375 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx374, i32 0, i32 0
  %319 = load i32, i32* %terminal375, align 4
  store i32 %319, i32* %terminal, align 4
  %320 = load i32, i32* %pin, align 4
  %idxprom376 = sext i32 %320 to i64
  %321 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms377 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %321, i32 0, i32 20
  %322 = load %struct.uncombox*, %struct.uncombox** %unComTerms377, align 8
  %arrayidx378 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %322, i64 %idxprom376
  %finalx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx378, i32 0, i32 9
  %323 = load i32, i32* %finalx, align 4
  store i32 %323, i32* %xpos, align 4
  %324 = load i32, i32* %pin, align 4
  %idxprom379 = sext i32 %324 to i64
  %325 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms380 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %325, i32 0, i32 20
  %326 = load %struct.uncombox*, %struct.uncombox** %unComTerms380, align 8
  %arrayidx381 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %326, i64 %idxprom379
  %finaly = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx381, i32 0, i32 10
  %327 = load i32, i32* %finaly, align 4
  store i32 %327, i32* %ypos, align 4
  %328 = load i32, i32* %terminal, align 4
  %idxprom382 = sext i32 %328 to i64
  %329 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx383 = getelementptr inbounds %struct.termnets*, %struct.termnets** %329, i64 %idxprom382
  %330 = load %struct.termnets*, %struct.termnets** %arrayidx383, align 8
  store %struct.termnets* %330, %struct.termnets** %termptr, align 8
  %331 = load i32, i32* %xpos, align 4
  %332 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter384 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %332, i32 0, i32 2
  %333 = load i32, i32* %xcenter384, align 4
  %add385 = add nsw i32 %331, %333
  %334 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr386 = getelementptr inbounds %struct.termnets, %struct.termnets* %334, i32 0, i32 1
  %335 = load %struct.netbox*, %struct.netbox** %termptr386, align 8
  %xpos387 = getelementptr inbounds %struct.netbox, %struct.netbox* %335, i32 0, i32 1
  store i32 %add385, i32* %xpos387, align 4
  %336 = load i32, i32* %ypos, align 4
  %337 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter388 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %337, i32 0, i32 3
  %338 = load i32, i32* %ycenter388, align 4
  %add389 = add nsw i32 %336, %338
  %339 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr390 = getelementptr inbounds %struct.termnets, %struct.termnets* %339, i32 0, i32 1
  %340 = load %struct.netbox*, %struct.netbox** %termptr390, align 8
  %ypos391 = getelementptr inbounds %struct.netbox, %struct.netbox* %340, i32 0, i32 2
  store i32 %add389, i32* %ypos391, align 4
  br label %for.inc.392

for.inc.392:                                      ; preds = %for.body.372
  %341 = load i32, i32* %pin, align 4
  %inc393 = add nsw i32 %341, 1
  store i32 %inc393, i32* %pin, align 4
  br label %for.cond.370

for.end.394:                                      ; preds = %for.cond.370
  br label %if.end.395

if.end.395:                                       ; preds = %for.end.394, %for.end.369
  br label %for.inc.396

for.inc.396:                                      ; preds = %if.end.395
  %342 = load i32, i32* %cell, align 4
  %inc397 = add nsw i32 %342, 1
  store i32 %inc397, i32* %cell, align 4
  br label %for.cond.339

for.end.398:                                      ; preds = %for.cond.339
  %343 = load i32, i32* @ecount, align 4
  %344 = load i32, i32* @maxterm, align 4
  %add399 = add nsw i32 %344, %343
  store i32 %add399, i32* @maxterm, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @move(i32) #2

declare void @point(i32*, i32*) #2

declare void @delHtab() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
