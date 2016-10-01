; ModuleID = './MultiSource.Benchmarks.Prolangs-C/240.TimberWolfMC.initbb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@bbleft = common global i32 0, align 4
@bbbottom = common global i32 0, align 4
@bbtop = common global i32 0, align 4
@bbright = common global i32 0, align 4
@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@bbbl = common global i32 0, align 4
@bbbr = common global i32 0, align 4
@bbbb = common global i32 0, align 4
@bbbt = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @initbb() #0 {
entry:
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %cell = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 1000000, i32* @bbleft, align 4
  store i32 1000000, i32* @bbbottom, align 4
  store i32 0, i32* @bbtop, align 4
  store i32 0, i32* @bbright, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 2
  %6 = load i32, i32* %xcenter1, align 4
  store i32 %6, i32* %xcenter, align 4
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 3
  %8 = load i32, i32* %ycenter2, align 4
  store i32 %8, i32* %ycenter, align 4
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 5
  %10 = load i32, i32* %orient, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 21
  %arrayidx4 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom3
  %12 = load %struct.tilebox*, %struct.tilebox** %arrayidx4, align 8
  store %struct.tilebox* %12, %struct.tilebox** %tileptr, align 8
  %13 = load i32, i32* %xcenter, align 4
  %14 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i32 0, i32 9
  %15 = load i32, i32* %left, align 4
  %add = add nsw i32 %13, %15
  store i32 %add, i32* %l, align 4
  %16 = load i32, i32* %xcenter, align 4
  %17 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 10
  %18 = load i32, i32* %right, align 4
  %add5 = add nsw i32 %16, %18
  store i32 %add5, i32* %r, align 4
  %19 = load i32, i32* %ycenter, align 4
  %20 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 11
  %21 = load i32, i32* %bottom, align 4
  %add6 = add nsw i32 %19, %21
  store i32 %add6, i32* %b, align 4
  %22 = load i32, i32* %ycenter, align 4
  %23 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %23, i32 0, i32 12
  %24 = load i32, i32* %top, align 4
  %add7 = add nsw i32 %22, %24
  store i32 %add7, i32* %t, align 4
  %25 = load i32, i32* %l, align 4
  %26 = load i32, i32* @bbleft, align 4
  %cmp8 = icmp slt i32 %25, %26
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %l, align 4
  store i32 %27, i32* @bbleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i32, i32* %r, align 4
  %29 = load i32, i32* @bbright, align 4
  %cmp9 = icmp sgt i32 %28, %29
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %30 = load i32, i32* %r, align 4
  store i32 %30, i32* @bbright, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %31 = load i32, i32* %b, align 4
  %32 = load i32, i32* @bbbottom, align 4
  %cmp12 = icmp slt i32 %31, %32
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %33 = load i32, i32* %b, align 4
  store i32 %33, i32* @bbbottom, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %34 = load i32, i32* %t, align 4
  %35 = load i32, i32* @bbtop, align 4
  %cmp15 = icmp sgt i32 %34, %35
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %36 = load i32, i32* %t, align 4
  store i32 %36, i32* @bbtop, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %37 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @deltaBB(i32 %cell, i32 %xb, i32 %yb) #0 {
entry:
  %cell.addr = alloca i32, align 4
  %xb.addr = alloca i32, align 4
  %yb.addr = alloca i32, align 4
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %c = alloca i32, align 4
  %cost = alloca i32, align 4
  store i32 %cell, i32* %cell.addr, align 4
  store i32 %xb, i32* %xb.addr, align 4
  store i32 %yb, i32* %yb.addr, align 4
  store i32 0, i32* %cost, align 4
  %0 = load i32, i32* %cell.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %1, i64 %idxprom
  %2 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %2, %struct.cellbox** %cellptr, align 8
  %3 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter1 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 2
  %4 = load i32, i32* %xcenter1, align 4
  store i32 %4, i32* %xcenter, align 4
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 3
  %6 = load i32, i32* %ycenter2, align 4
  store i32 %6, i32* %ycenter, align 4
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx4 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom3
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx4, align 8
  store %struct.tilebox* %10, %struct.tilebox** %tileptr, align 8
  %11 = load i32, i32* %xcenter, align 4
  %12 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i32 0, i32 9
  %13 = load i32, i32* %left, align 4
  %add = add nsw i32 %11, %13
  store i32 %add, i32* %l, align 4
  %14 = load i32, i32* %xcenter, align 4
  %15 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 10
  %16 = load i32, i32* %right, align 4
  %add5 = add nsw i32 %14, %16
  store i32 %add5, i32* %r, align 4
  %17 = load i32, i32* %ycenter, align 4
  %18 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 11
  %19 = load i32, i32* %bottom, align 4
  %add6 = add nsw i32 %17, %19
  store i32 %add6, i32* %b, align 4
  %20 = load i32, i32* %ycenter, align 4
  %21 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %21, i32 0, i32 12
  %22 = load i32, i32* %top, align 4
  %add7 = add nsw i32 %20, %22
  store i32 %add7, i32* %t, align 4
  %23 = load i32, i32* %l, align 4
  %24 = load i32, i32* @bbleft, align 4
  %cmp = icmp eq i32 %23, %24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1000000, i32* @bbbl, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* @numcells, align 4
  %cmp8 = icmp sle i32 %25, %26
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %cell.addr, align 4
  %28 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %27, %28
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %29 = load i32, i32* %c, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx12 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %30, i64 %idxprom11
  %31 = load %struct.cellbox*, %struct.cellbox** %arrayidx12, align 8
  store %struct.cellbox* %31, %struct.cellbox** %cellptr, align 8
  %32 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 2
  %33 = load i32, i32* %xcenter13, align 4
  store i32 %33, i32* %xcenter, align 4
  %34 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 5
  %35 = load i32, i32* %orient14, align 4
  %idxprom15 = sext i32 %35 to i64
  %36 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config16 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 21
  %arrayidx17 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config16, i32 0, i64 %idxprom15
  %37 = load %struct.tilebox*, %struct.tilebox** %arrayidx17, align 8
  store %struct.tilebox* %37, %struct.tilebox** %tileptr, align 8
  %38 = load i32, i32* %xcenter, align 4
  %39 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %39, i32 0, i32 9
  %40 = load i32, i32* %left18, align 4
  %add19 = add nsw i32 %38, %40
  store i32 %add19, i32* %l, align 4
  %41 = load i32, i32* %l, align 4
  %42 = load i32, i32* @bbbl, align 4
  %cmp20 = icmp slt i32 %41, %42
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  %43 = load i32, i32* %l, align 4
  store i32 %43, i32* @bbbl, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22, %if.then.10
  %44 = load i32, i32* %c, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* @bbbl, align 4
  %46 = load i32, i32* @bbleft, align 4
  %sub = sub nsw i32 %45, %46
  %47 = load i32, i32* %cost, align 4
  %sub23 = sub nsw i32 %47, %sub
  store i32 %sub23, i32* %cost, align 4
  br label %if.end.24

if.else:                                          ; preds = %entry
  %48 = load i32, i32* @bbleft, align 4
  store i32 %48, i32* @bbbl, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %for.end
  %49 = load i32, i32* %r, align 4
  %50 = load i32, i32* @bbright, align 4
  %cmp25 = icmp eq i32 %49, %50
  br i1 %cmp25, label %if.then.26, label %if.else.50

if.then.26:                                       ; preds = %if.end.24
  store i32 0, i32* @bbbr, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.45, %if.then.26
  %51 = load i32, i32* %c, align 4
  %52 = load i32, i32* @numcells, align 4
  %cmp28 = icmp sle i32 %51, %52
  br i1 %cmp28, label %for.body.29, label %for.end.47

for.body.29:                                      ; preds = %for.cond.27
  %53 = load i32, i32* %cell.addr, align 4
  %54 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %53, %54
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.29
  br label %for.inc.45

if.end.32:                                        ; preds = %for.body.29
  %55 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %55 to i64
  %56 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx34 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %56, i64 %idxprom33
  %57 = load %struct.cellbox*, %struct.cellbox** %arrayidx34, align 8
  store %struct.cellbox* %57, %struct.cellbox** %cellptr, align 8
  %58 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %xcenter35 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %58, i32 0, i32 2
  %59 = load i32, i32* %xcenter35, align 4
  store i32 %59, i32* %xcenter, align 4
  %60 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i32 0, i32 5
  %61 = load i32, i32* %orient36, align 4
  %idxprom37 = sext i32 %61 to i64
  %62 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %62, i32 0, i32 21
  %arrayidx39 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config38, i32 0, i64 %idxprom37
  %63 = load %struct.tilebox*, %struct.tilebox** %arrayidx39, align 8
  store %struct.tilebox* %63, %struct.tilebox** %tileptr, align 8
  %64 = load i32, i32* %xcenter, align 4
  %65 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 10
  %66 = load i32, i32* %right40, align 4
  %add41 = add nsw i32 %64, %66
  store i32 %add41, i32* %r, align 4
  %67 = load i32, i32* %r, align 4
  %68 = load i32, i32* @bbbr, align 4
  %cmp42 = icmp sgt i32 %67, %68
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.32
  %69 = load i32, i32* %r, align 4
  store i32 %69, i32* @bbbr, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.32
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44, %if.then.31
  %70 = load i32, i32* %c, align 4
  %inc46 = add nsw i32 %70, 1
  store i32 %inc46, i32* %c, align 4
  br label %for.cond.27

for.end.47:                                       ; preds = %for.cond.27
  %71 = load i32, i32* @bbright, align 4
  %72 = load i32, i32* @bbbr, align 4
  %sub48 = sub nsw i32 %71, %72
  %73 = load i32, i32* %cost, align 4
  %sub49 = sub nsw i32 %73, %sub48
  store i32 %sub49, i32* %cost, align 4
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.24
  %74 = load i32, i32* @bbright, align 4
  store i32 %74, i32* @bbbr, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %for.end.47
  %75 = load i32, i32* %b, align 4
  %76 = load i32, i32* @bbbottom, align 4
  %cmp52 = icmp eq i32 %75, %76
  br i1 %cmp52, label %if.then.53, label %if.else.77

if.then.53:                                       ; preds = %if.end.51
  store i32 1000000, i32* @bbbb, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.72, %if.then.53
  %77 = load i32, i32* %c, align 4
  %78 = load i32, i32* @numcells, align 4
  %cmp55 = icmp sle i32 %77, %78
  br i1 %cmp55, label %for.body.56, label %for.end.74

for.body.56:                                      ; preds = %for.cond.54
  %79 = load i32, i32* %cell.addr, align 4
  %80 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %79, %80
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.56
  br label %for.inc.72

if.end.59:                                        ; preds = %for.body.56
  %81 = load i32, i32* %c, align 4
  %idxprom60 = sext i32 %81 to i64
  %82 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx61 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %82, i64 %idxprom60
  %83 = load %struct.cellbox*, %struct.cellbox** %arrayidx61, align 8
  store %struct.cellbox* %83, %struct.cellbox** %cellptr, align 8
  %84 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter62 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 3
  %85 = load i32, i32* %ycenter62, align 4
  store i32 %85, i32* %ycenter, align 4
  %86 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient63 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %86, i32 0, i32 5
  %87 = load i32, i32* %orient63, align 4
  %idxprom64 = sext i32 %87 to i64
  %88 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %88, i32 0, i32 21
  %arrayidx66 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config65, i32 0, i64 %idxprom64
  %89 = load %struct.tilebox*, %struct.tilebox** %arrayidx66, align 8
  store %struct.tilebox* %89, %struct.tilebox** %tileptr, align 8
  %90 = load i32, i32* %ycenter, align 4
  %91 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i32 0, i32 11
  %92 = load i32, i32* %bottom67, align 4
  %add68 = add nsw i32 %90, %92
  store i32 %add68, i32* %b, align 4
  %93 = load i32, i32* %b, align 4
  %94 = load i32, i32* @bbbb, align 4
  %cmp69 = icmp slt i32 %93, %94
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.59
  %95 = load i32, i32* %b, align 4
  store i32 %95, i32* @bbbb, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.59
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71, %if.then.58
  %96 = load i32, i32* %c, align 4
  %inc73 = add nsw i32 %96, 1
  store i32 %inc73, i32* %c, align 4
  br label %for.cond.54

for.end.74:                                       ; preds = %for.cond.54
  %97 = load i32, i32* @bbbb, align 4
  %98 = load i32, i32* @bbbottom, align 4
  %sub75 = sub nsw i32 %97, %98
  %99 = load i32, i32* %cost, align 4
  %sub76 = sub nsw i32 %99, %sub75
  store i32 %sub76, i32* %cost, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %if.end.51
  %100 = load i32, i32* @bbbottom, align 4
  store i32 %100, i32* @bbbb, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %for.end.74
  %101 = load i32, i32* %t, align 4
  %102 = load i32, i32* @bbtop, align 4
  %cmp79 = icmp eq i32 %101, %102
  br i1 %cmp79, label %if.then.80, label %if.else.104

if.then.80:                                       ; preds = %if.end.78
  store i32 0, i32* @bbbt, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.99, %if.then.80
  %103 = load i32, i32* %c, align 4
  %104 = load i32, i32* @numcells, align 4
  %cmp82 = icmp sle i32 %103, %104
  br i1 %cmp82, label %for.body.83, label %for.end.101

for.body.83:                                      ; preds = %for.cond.81
  %105 = load i32, i32* %cell.addr, align 4
  %106 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %105, %106
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.83
  br label %for.inc.99

if.end.86:                                        ; preds = %for.body.83
  %107 = load i32, i32* %c, align 4
  %idxprom87 = sext i32 %107 to i64
  %108 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx88 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %108, i64 %idxprom87
  %109 = load %struct.cellbox*, %struct.cellbox** %arrayidx88, align 8
  store %struct.cellbox* %109, %struct.cellbox** %cellptr, align 8
  %110 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %ycenter89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %110, i32 0, i32 3
  %111 = load i32, i32* %ycenter89, align 4
  store i32 %111, i32* %ycenter, align 4
  %112 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 5
  %113 = load i32, i32* %orient90, align 4
  %idxprom91 = sext i32 %113 to i64
  %114 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config92 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %114, i32 0, i32 21
  %arrayidx93 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config92, i32 0, i64 %idxprom91
  %115 = load %struct.tilebox*, %struct.tilebox** %arrayidx93, align 8
  store %struct.tilebox* %115, %struct.tilebox** %tileptr, align 8
  %116 = load i32, i32* %ycenter, align 4
  %117 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i32 0, i32 12
  %118 = load i32, i32* %top94, align 4
  %add95 = add nsw i32 %116, %118
  store i32 %add95, i32* %t, align 4
  %119 = load i32, i32* %t, align 4
  %120 = load i32, i32* @bbbt, align 4
  %cmp96 = icmp sgt i32 %119, %120
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.86
  %121 = load i32, i32* %t, align 4
  store i32 %121, i32* @bbbt, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.86
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98, %if.then.85
  %122 = load i32, i32* %c, align 4
  %inc100 = add nsw i32 %122, 1
  store i32 %inc100, i32* %c, align 4
  br label %for.cond.81

for.end.101:                                      ; preds = %for.cond.81
  %123 = load i32, i32* @bbtop, align 4
  %124 = load i32, i32* @bbbt, align 4
  %sub102 = sub nsw i32 %123, %124
  %125 = load i32, i32* %cost, align 4
  %sub103 = sub nsw i32 %125, %sub102
  store i32 %sub103, i32* %cost, align 4
  br label %if.end.105

if.else.104:                                      ; preds = %if.end.78
  %126 = load i32, i32* @bbtop, align 4
  store i32 %126, i32* @bbbt, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %for.end.101
  %127 = load i32, i32* %cell.addr, align 4
  %idxprom106 = sext i32 %127 to i64
  %128 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx107 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %128, i64 %idxprom106
  %129 = load %struct.cellbox*, %struct.cellbox** %arrayidx107, align 8
  store %struct.cellbox* %129, %struct.cellbox** %cellptr, align 8
  %130 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 5
  %131 = load i32, i32* %orient108, align 4
  %idxprom109 = sext i32 %131 to i64
  %132 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %132, i32 0, i32 21
  %arrayidx111 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config110, i32 0, i64 %idxprom109
  %133 = load %struct.tilebox*, %struct.tilebox** %arrayidx111, align 8
  store %struct.tilebox* %133, %struct.tilebox** %tileptr, align 8
  %134 = load i32, i32* %xb.addr, align 4
  %135 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %135, i32 0, i32 9
  %136 = load i32, i32* %left112, align 4
  %add113 = add nsw i32 %134, %136
  store i32 %add113, i32* %l, align 4
  %137 = load i32, i32* %xb.addr, align 4
  %138 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %138, i32 0, i32 10
  %139 = load i32, i32* %right114, align 4
  %add115 = add nsw i32 %137, %139
  store i32 %add115, i32* %r, align 4
  %140 = load i32, i32* %yb.addr, align 4
  %141 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %141, i32 0, i32 11
  %142 = load i32, i32* %bottom116, align 4
  %add117 = add nsw i32 %140, %142
  store i32 %add117, i32* %b, align 4
  %143 = load i32, i32* %yb.addr, align 4
  %144 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %144, i32 0, i32 12
  %145 = load i32, i32* %top118, align 4
  %add119 = add nsw i32 %143, %145
  store i32 %add119, i32* %t, align 4
  %146 = load i32, i32* %l, align 4
  %147 = load i32, i32* @bbbl, align 4
  %cmp120 = icmp slt i32 %146, %147
  br i1 %cmp120, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.105
  %148 = load i32, i32* %l, align 4
  store i32 %148, i32* @bbbl, align 4
  %149 = load i32, i32* @bbbl, align 4
  %150 = load i32, i32* %l, align 4
  %sub122 = sub nsw i32 %149, %150
  %151 = load i32, i32* %cost, align 4
  %add123 = add nsw i32 %151, %sub122
  store i32 %add123, i32* %cost, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.105
  %152 = load i32, i32* %r, align 4
  %153 = load i32, i32* @bbbr, align 4
  %cmp125 = icmp sgt i32 %152, %153
  br i1 %cmp125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.124
  %154 = load i32, i32* %r, align 4
  store i32 %154, i32* @bbbr, align 4
  %155 = load i32, i32* %r, align 4
  %156 = load i32, i32* @bbbr, align 4
  %sub127 = sub nsw i32 %155, %156
  %157 = load i32, i32* %cost, align 4
  %add128 = add nsw i32 %157, %sub127
  store i32 %add128, i32* %cost, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.124
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* @bbbb, align 4
  %cmp130 = icmp slt i32 %158, %159
  br i1 %cmp130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.129
  %160 = load i32, i32* %b, align 4
  store i32 %160, i32* @bbbb, align 4
  %161 = load i32, i32* @bbbb, align 4
  %162 = load i32, i32* %b, align 4
  %sub132 = sub nsw i32 %161, %162
  %163 = load i32, i32* %cost, align 4
  %add133 = add nsw i32 %163, %sub132
  store i32 %add133, i32* %cost, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.129
  %164 = load i32, i32* %t, align 4
  %165 = load i32, i32* @bbbt, align 4
  %cmp135 = icmp sgt i32 %164, %165
  br i1 %cmp135, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.end.134
  %166 = load i32, i32* %t, align 4
  store i32 %166, i32* @bbbt, align 4
  %167 = load i32, i32* %t, align 4
  %168 = load i32, i32* @bbbt, align 4
  %sub137 = sub nsw i32 %167, %168
  %169 = load i32, i32* %cost, align 4
  %add138 = add nsw i32 %169, %sub137
  store i32 %add138, i32* %cost, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %if.end.134
  %170 = load i32, i32* %cost, align 4
  ret i32 %170
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
