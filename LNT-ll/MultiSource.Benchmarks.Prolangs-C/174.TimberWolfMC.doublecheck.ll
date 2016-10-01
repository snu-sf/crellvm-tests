; ModuleID = './MultiSource.Benchmarks.Prolangs-C/174.TimberWolfMC.doublecheck.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@termarray = external global %struct.termnets**, align 8
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@overlap = external global i32 (...)*, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"DoubleCheck Wire Cost: %d      \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Penalty: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @doublecheck() #0 {
entry:
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %ptr = alloca %struct.cellbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %termptr = alloca %struct.termnets*, align 8
  %cell = alloca i32, align 4
  %net = alloca i32, align 4
  %terminal = alloca i32, align 4
  %pin = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %site = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %cost = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 0, i32* %cost, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %2 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %idxprom
  %5 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %5, %struct.cellbox** %ptr, align 8
  %6 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 5
  %7 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %9 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  %termptr3 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %9, i32 0, i32 17
  %10 = load %struct.termbox*, %struct.termbox** %termptr3, align 8
  store %struct.termbox* %10, %struct.termbox** %term, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.termbox*, %struct.termbox** %term, align 8
  %cmp5 = icmp ne %struct.termbox* %11, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %12 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal7 = getelementptr inbounds %struct.termbox, %struct.termbox* %12, i32 0, i32 5
  %13 = load i32, i32* %terminal7, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.termnets*, %struct.termnets** %14, i64 %idxprom8
  %15 = load %struct.termnets*, %struct.termnets** %arrayidx9, align 8
  store %struct.termnets* %15, %struct.termnets** %termptr, align 8
  %16 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos10 = getelementptr inbounds %struct.termbox, %struct.termbox* %16, i32 0, i32 1
  %17 = load i32, i32* %xpos10, align 4
  %18 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i32 0, i32 2
  %19 = load i32, i32* %xcenter, align 4
  %add11 = add nsw i32 %17, %19
  %20 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr12 = getelementptr inbounds %struct.termnets, %struct.termnets* %20, i32 0, i32 1
  %21 = load %struct.netbox*, %struct.netbox** %termptr12, align 8
  %xpos13 = getelementptr inbounds %struct.netbox, %struct.netbox* %21, i32 0, i32 1
  store i32 %add11, i32* %xpos13, align 4
  %22 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos14 = getelementptr inbounds %struct.termbox, %struct.termbox* %22, i32 0, i32 2
  %23 = load i32, i32* %ypos14, align 4
  %24 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 3
  %25 = load i32, i32* %ycenter, align 4
  %add15 = add nsw i32 %23, %25
  %26 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr16 = getelementptr inbounds %struct.termnets, %struct.termnets* %26, i32 0, i32 1
  %27 = load %struct.netbox*, %struct.netbox** %termptr16, align 8
  %ypos17 = getelementptr inbounds %struct.netbox, %struct.netbox* %27, i32 0, i32 2
  store i32 %add15, i32* %ypos17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %28 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %28, i32 0, i32 0
  %29 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %29, %struct.termbox** %term, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %30 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 10
  %31 = load i32, i32* %softflag, align 4
  %cmp18 = icmp eq i32 %31, 1
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %pin, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.54, %if.then
  %32 = load i32, i32* %pin, align 4
  %33 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %33, i32 0, i32 18
  %34 = load i32, i32* %numUnComTerms, align 4
  %cmp20 = icmp sle i32 %32, %34
  br i1 %cmp20, label %for.body.21, label %for.end.55

for.body.21:                                      ; preds = %for.cond.19
  %35 = load i32, i32* %pin, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 20
  %37 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx23 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %37, i64 %idxprom22
  %site24 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx23, i32 0, i32 1
  %38 = load i32, i32* %site24, align 4
  store i32 %38, i32* %site, align 4
  %39 = load i32, i32* %pin, align 4
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 20
  %41 = load %struct.uncombox*, %struct.uncombox** %unComTerms26, align 8
  %arrayidx27 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %41, i64 %idxprom25
  %terminal28 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx27, i32 0, i32 0
  %42 = load i32, i32* %terminal28, align 4
  store i32 %42, i32* %terminal, align 4
  %43 = load i32, i32* %site, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i32 0, i32 5
  %45 = load i32, i32* %orient30, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config32 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %46, i32 0, i32 21
  %arrayidx33 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config32, i32 0, i64 %idxprom31
  %47 = load %struct.tilebox*, %struct.tilebox** %arrayidx33, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 18
  %48 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.locbox, %struct.locbox* %48, i64 %idxprom29
  %xpos35 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx34, i32 0, i32 0
  %49 = load i32, i32* %xpos35, align 4
  store i32 %49, i32* %xpos, align 4
  %50 = load i32, i32* %site, align 4
  %idxprom36 = sext i32 %50 to i64
  %51 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %51, i32 0, i32 5
  %52 = load i32, i32* %orient37, align 4
  %idxprom38 = sext i32 %52 to i64
  %53 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %53, i32 0, i32 21
  %arrayidx40 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config39, i32 0, i64 %idxprom38
  %54 = load %struct.tilebox*, %struct.tilebox** %arrayidx40, align 8
  %siteLocArray41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %54, i32 0, i32 18
  %55 = load %struct.locbox*, %struct.locbox** %siteLocArray41, align 8
  %arrayidx42 = getelementptr inbounds %struct.locbox, %struct.locbox* %55, i64 %idxprom36
  %ypos43 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx42, i32 0, i32 1
  %56 = load i32, i32* %ypos43, align 4
  store i32 %56, i32* %ypos, align 4
  %57 = load i32, i32* %terminal, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx45 = getelementptr inbounds %struct.termnets*, %struct.termnets** %58, i64 %idxprom44
  %59 = load %struct.termnets*, %struct.termnets** %arrayidx45, align 8
  store %struct.termnets* %59, %struct.termnets** %termptr, align 8
  %60 = load i32, i32* %xpos, align 4
  %61 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 2
  %62 = load i32, i32* %xcenter46, align 4
  %add47 = add nsw i32 %60, %62
  %63 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr48 = getelementptr inbounds %struct.termnets, %struct.termnets* %63, i32 0, i32 1
  %64 = load %struct.netbox*, %struct.netbox** %termptr48, align 8
  %xpos49 = getelementptr inbounds %struct.netbox, %struct.netbox* %64, i32 0, i32 1
  store i32 %add47, i32* %xpos49, align 4
  %65 = load i32, i32* %ypos, align 4
  %66 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %66, i32 0, i32 3
  %67 = load i32, i32* %ycenter50, align 4
  %add51 = add nsw i32 %65, %67
  %68 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr52 = getelementptr inbounds %struct.termnets, %struct.termnets* %68, i32 0, i32 1
  %69 = load %struct.netbox*, %struct.netbox** %termptr52, align 8
  %ypos53 = getelementptr inbounds %struct.netbox, %struct.netbox* %69, i32 0, i32 2
  store i32 %add51, i32* %ypos53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.21
  %70 = load i32, i32* %pin, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %pin, align 4
  br label %for.cond.19

for.end.55:                                       ; preds = %for.cond.19
  br label %if.end

if.end:                                           ; preds = %for.end.55, %for.end
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end
  %71 = load i32, i32* %cell, align 4
  %inc57 = add nsw i32 %71, 1
  store i32 %inc57, i32* %cell, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  store i32 1, i32* %net, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.126, %for.end.58
  %72 = load i32, i32* %net, align 4
  %73 = load i32, i32* @numnets, align 4
  %cmp60 = icmp sle i32 %72, %73
  br i1 %cmp60, label %for.body.61, label %for.end.128

for.body.61:                                      ; preds = %for.cond.59
  %74 = load i32, i32* %net, align 4
  %idxprom62 = sext i32 %74 to i64
  %75 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx63 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %75, i64 %idxprom62
  %76 = load %struct.dimbox*, %struct.dimbox** %arrayidx63, align 8
  store %struct.dimbox* %76, %struct.dimbox** %dimptr, align 8
  %77 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %77, i32 0, i32 1
  %78 = load i32, i32* %skip, align 4
  %cmp64 = icmp eq i32 %78, 1
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.61
  br label %for.inc.126

if.end.66:                                        ; preds = %for.body.61
  %79 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %79, i32 0, i32 0
  %80 = load %struct.netbox*, %struct.netbox** %netptr67, align 8
  store %struct.netbox* %80, %struct.netbox** %netptr, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.79, %if.end.66
  %81 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp69 = icmp eq %struct.netbox* %81, null
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.cond.68
  br label %for.end.81

if.end.71:                                        ; preds = %for.cond.68
  %82 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip72 = getelementptr inbounds %struct.netbox, %struct.netbox* %82, i32 0, i32 9
  %83 = load i32, i32* %skip72, align 4
  %cmp73 = icmp eq i32 %83, 1
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  br label %for.inc.79

if.end.75:                                        ; preds = %if.end.71
  %84 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos76 = getelementptr inbounds %struct.netbox, %struct.netbox* %84, i32 0, i32 1
  %85 = load i32, i32* %xpos76, align 4
  %86 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %86, i32 0, i32 4
  store i32 %85, i32* %xmax, align 4
  %87 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 2
  store i32 %85, i32* %xmin, align 4
  %88 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos77 = getelementptr inbounds %struct.netbox, %struct.netbox* %88, i32 0, i32 2
  %89 = load i32, i32* %ypos77, align 4
  %90 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i32 0, i32 9
  store i32 %89, i32* %ymax, align 4
  %91 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %91, i32 0, i32 6
  store i32 %89, i32* %ymin, align 4
  %92 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm78 = getelementptr inbounds %struct.netbox, %struct.netbox* %92, i32 0, i32 0
  %93 = load %struct.netbox*, %struct.netbox** %nextterm78, align 8
  store %struct.netbox* %93, %struct.netbox** %netptr, align 8
  br label %for.end.81

for.inc.79:                                       ; preds = %if.then.74
  %94 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm80 = getelementptr inbounds %struct.netbox, %struct.netbox* %94, i32 0, i32 0
  %95 = load %struct.netbox*, %struct.netbox** %nextterm80, align 8
  store %struct.netbox* %95, %struct.netbox** %netptr, align 8
  br label %for.cond.68

for.end.81:                                       ; preds = %if.end.75, %if.then.70
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.112, %for.end.81
  %96 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp83 = icmp ne %struct.netbox* %96, null
  br i1 %cmp83, label %for.body.84, label %for.end.114

for.body.84:                                      ; preds = %for.cond.82
  %97 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip85 = getelementptr inbounds %struct.netbox, %struct.netbox* %97, i32 0, i32 9
  %98 = load i32, i32* %skip85, align 4
  %cmp86 = icmp eq i32 %98, 1
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.84
  br label %for.inc.112

if.end.88:                                        ; preds = %for.body.84
  %99 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos89 = getelementptr inbounds %struct.netbox, %struct.netbox* %99, i32 0, i32 1
  %100 = load i32, i32* %xpos89, align 4
  store i32 %100, i32* %x, align 4
  %101 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos90 = getelementptr inbounds %struct.netbox, %struct.netbox* %101, i32 0, i32 2
  %102 = load i32, i32* %ypos90, align 4
  store i32 %102, i32* %y, align 4
  %103 = load i32, i32* %x, align 4
  %104 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %104, i32 0, i32 2
  %105 = load i32, i32* %xmin91, align 4
  %cmp92 = icmp slt i32 %103, %105
  br i1 %cmp92, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.88
  %106 = load i32, i32* %x, align 4
  %107 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin94 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %107, i32 0, i32 2
  store i32 %106, i32* %xmin94, align 4
  br label %if.end.100

if.else:                                          ; preds = %if.end.88
  %108 = load i32, i32* %x, align 4
  %109 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax95 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %109, i32 0, i32 4
  %110 = load i32, i32* %xmax95, align 4
  %cmp96 = icmp sgt i32 %108, %110
  br i1 %cmp96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.else
  %111 = load i32, i32* %x, align 4
  %112 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax98 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %112, i32 0, i32 4
  store i32 %111, i32* %xmax98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.else
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.93
  %113 = load i32, i32* %y, align 4
  %114 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %114, i32 0, i32 6
  %115 = load i32, i32* %ymin101, align 4
  %cmp102 = icmp slt i32 %113, %115
  br i1 %cmp102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.end.100
  %116 = load i32, i32* %y, align 4
  %117 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin104 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %117, i32 0, i32 6
  store i32 %116, i32* %ymin104, align 4
  br label %if.end.111

if.else.105:                                      ; preds = %if.end.100
  %118 = load i32, i32* %y, align 4
  %119 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax106 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %119, i32 0, i32 9
  %120 = load i32, i32* %ymax106, align 4
  %cmp107 = icmp sgt i32 %118, %120
  br i1 %cmp107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.else.105
  %121 = load i32, i32* %y, align 4
  %122 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax109 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %122, i32 0, i32 9
  store i32 %121, i32* %ymax109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.else.105
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.103
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111, %if.then.87
  %123 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm113 = getelementptr inbounds %struct.netbox, %struct.netbox* %123, i32 0, i32 0
  %124 = load %struct.netbox*, %struct.netbox** %nextterm113, align 8
  store %struct.netbox* %124, %struct.netbox** %netptr, align 8
  br label %for.cond.82

for.end.114:                                      ; preds = %for.cond.82
  %125 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %125, i32 0, i32 11
  %126 = load double, double* %Hweight, align 8
  %127 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax115 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %127, i32 0, i32 4
  %128 = load i32, i32* %xmax115, align 4
  %129 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin116 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %129, i32 0, i32 2
  %130 = load i32, i32* %xmin116, align 4
  %sub = sub nsw i32 %128, %130
  %conv = sitofp i32 %sub to double
  %mul = fmul double %126, %conv
  %conv117 = fptosi double %mul to i32
  %131 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %131, i32 0, i32 12
  %132 = load double, double* %Vweight, align 8
  %133 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax118 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %133, i32 0, i32 9
  %134 = load i32, i32* %ymax118, align 4
  %135 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin119 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %135, i32 0, i32 6
  %136 = load i32, i32* %ymin119, align 4
  %sub120 = sub nsw i32 %134, %136
  %conv121 = sitofp i32 %sub120 to double
  %mul122 = fmul double %132, %conv121
  %conv123 = fptosi double %mul122 to i32
  %add124 = add nsw i32 %conv117, %conv123
  %137 = load i32, i32* %cost, align 4
  %add125 = add nsw i32 %137, %add124
  store i32 %add125, i32* %cost, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.114, %if.then.65
  %138 = load i32, i32* %net, align 4
  %inc127 = add nsw i32 %138, 1
  store i32 %inc127, i32* %net, align 4
  br label %for.cond.59

for.end.128:                                      ; preds = %for.cond.59
  store i32 0, i32* %value, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.152, %for.end.128
  %139 = load i32, i32* %cell, align 4
  %140 = load i32, i32* @numcells, align 4
  %141 = load i32, i32* @numpads, align 4
  %add130 = add nsw i32 %140, %141
  %add131 = add nsw i32 %add130, 4
  %cmp132 = icmp sle i32 %139, %add131
  br i1 %cmp132, label %for.body.134, label %for.end.154

for.body.134:                                     ; preds = %for.cond.129
  %142 = load i32, i32* %cell, align 4
  %143 = load i32, i32* @numcells, align 4
  %cmp135 = icmp sgt i32 %142, %143
  br i1 %cmp135, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %for.body.134
  %144 = load i32, i32* %cell, align 4
  %145 = load i32, i32* @numcells, align 4
  %146 = load i32, i32* @numpads, align 4
  %add137 = add nsw i32 %145, %146
  %cmp138 = icmp sle i32 %144, %add137
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %land.lhs.true
  br label %for.inc.152

if.end.141:                                       ; preds = %land.lhs.true, %for.body.134
  %147 = load i32 (...)*, i32 (...)** @overlap, align 8
  %148 = load i32, i32* %cell, align 4
  %149 = load i32, i32* %cell, align 4
  %idxprom142 = sext i32 %149 to i64
  %150 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx143 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %150, i64 %idxprom142
  %151 = load %struct.cellbox*, %struct.cellbox** %arrayidx143, align 8
  %xcenter144 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 2
  %152 = load i32, i32* %xcenter144, align 4
  %153 = load i32, i32* %cell, align 4
  %idxprom145 = sext i32 %153 to i64
  %154 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx146 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %154, i64 %idxprom145
  %155 = load %struct.cellbox*, %struct.cellbox** %arrayidx146, align 8
  %ycenter147 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %155, i32 0, i32 3
  %156 = load i32, i32* %ycenter147, align 4
  %157 = load i32, i32* %cell, align 4
  %idxprom148 = sext i32 %157 to i64
  %158 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx149 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %158, i64 %idxprom148
  %159 = load %struct.cellbox*, %struct.cellbox** %arrayidx149, align 8
  %orient150 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 5
  %160 = load i32, i32* %orient150, align 4
  %callee.knr.cast = bitcast i32 (...)* %147 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %148, i32 %152, i32 %156, i32 %160, i32 0, i32 1, i32 0)
  %161 = load i32, i32* %value, align 4
  %add151 = add nsw i32 %161, %call
  store i32 %add151, i32* %value, align 4
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.141, %if.then.140
  %162 = load i32, i32* %cell, align 4
  %inc153 = add nsw i32 %162, 1
  store i32 %inc153, i32* %cell, align 4
  br label %for.cond.129

for.end.154:                                      ; preds = %for.cond.129
  %163 = load i32, i32* %value, align 4
  %div = sdiv i32 %163, 2
  store i32 %div, i32* %value, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %165 = load i32, i32* %cost, align 4
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %165)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %167 = load i32, i32* %value, align 4
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %167)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
