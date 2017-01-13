; ModuleID = './MultiSource.Benchmarks.Prolangs-C/257.TimberWolfMC.findcost.bc'
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

@Tsave = external global double, align 8
@numcells = external global i32, align 4
@numpads = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@termarray = external global %struct.termnets**, align 8
@finalShot = external global i32, align 4
@numnets = external global i32, align 4
@netarray = external global %struct.dimbox**, align 8
@penalty = external global i32, align 4
@overlap = external global i32 (...)*, align 8
@overfill = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @findcost() #0 {
entry:
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %cellptr = alloca %struct.cellbox*, align 8
  %ptr = alloca %struct.cellbox*, align 8
  %term = alloca %struct.termbox*, align 8
  %termptr = alloca %struct.termnets*, align 8
  %cell = alloca i32, align 4
  %net = alloca i32, align 4
  %terminal = alloca i32, align 4
  %pin = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cost = alloca i32, align 4
  %site = alloca i32, align 4
  %contents = alloca i32, align 4
  %capacity = alloca i32, align 4
  %temp = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %Tscale = alloca double, align 8
  %0 = load double, double* @Tsave, align 8
  %div = fdiv double %0, 1.000000e+05
  store double %div, double* %Tscale, align 8
  store i32 0, i32* %cost, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %1 = load i32, i32* %cell, align 4
  %2 = load i32, i32* @numcells, align 4
  %3 = load i32, i32* @numpads, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp sle i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %5, i64 %idxprom
  %6 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %6, %struct.cellbox** %ptr, align 8
  %7 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx2, align 8
  %termptr3 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 17
  %11 = load %struct.termbox*, %struct.termbox** %termptr3, align 8
  store %struct.termbox* %11, %struct.termbox** %term, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %12 = load %struct.termbox*, %struct.termbox** %term, align 8
  %cmp5 = icmp ne %struct.termbox* %12, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load %struct.termbox*, %struct.termbox** %term, align 8
  %terminal7 = getelementptr inbounds %struct.termbox, %struct.termbox* %13, i32 0, i32 5
  %14 = load i32, i32* %terminal7, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.termnets*, %struct.termnets** %15, i64 %idxprom8
  %16 = load %struct.termnets*, %struct.termnets** %arrayidx9, align 8
  store %struct.termnets* %16, %struct.termnets** %termptr, align 8
  %17 = load %struct.termbox*, %struct.termbox** %term, align 8
  %xpos10 = getelementptr inbounds %struct.termbox, %struct.termbox* %17, i32 0, i32 1
  %18 = load i32, i32* %xpos10, align 4
  %19 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 2
  %20 = load i32, i32* %xcenter, align 4
  %add11 = add nsw i32 %18, %20
  %21 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr12 = getelementptr inbounds %struct.termnets, %struct.termnets* %21, i32 0, i32 1
  %22 = load %struct.netbox*, %struct.netbox** %termptr12, align 8
  %xpos13 = getelementptr inbounds %struct.netbox, %struct.netbox* %22, i32 0, i32 1
  store i32 %add11, i32* %xpos13, align 4
  %23 = load %struct.termbox*, %struct.termbox** %term, align 8
  %ypos14 = getelementptr inbounds %struct.termbox, %struct.termbox* %23, i32 0, i32 2
  %24 = load i32, i32* %ypos14, align 4
  %25 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 3
  %26 = load i32, i32* %ycenter, align 4
  %add15 = add nsw i32 %24, %26
  %27 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr16 = getelementptr inbounds %struct.termnets, %struct.termnets* %27, i32 0, i32 1
  %28 = load %struct.netbox*, %struct.netbox** %termptr16, align 8
  %ypos17 = getelementptr inbounds %struct.netbox, %struct.netbox* %28, i32 0, i32 2
  store i32 %add15, i32* %ypos17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %29 = load %struct.termbox*, %struct.termbox** %term, align 8
  %nextterm = getelementptr inbounds %struct.termbox, %struct.termbox* %29, i32 0, i32 0
  %30 = load %struct.termbox*, %struct.termbox** %nextterm, align 8
  store %struct.termbox* %30, %struct.termbox** %term, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %31 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 10
  %32 = load i32, i32* %softflag, align 4
  %cmp18 = icmp eq i32 %32, 1
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %pin, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.54, %if.then
  %33 = load i32, i32* %pin, align 4
  %34 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 18
  %35 = load i32, i32* %numUnComTerms, align 4
  %cmp20 = icmp sle i32 %33, %35
  br i1 %cmp20, label %for.body.21, label %for.end.55

for.body.21:                                      ; preds = %for.cond.19
  %36 = load i32, i32* %pin, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 20
  %38 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  %arrayidx23 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %38, i64 %idxprom22
  %site24 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx23, i32 0, i32 1
  %39 = load i32, i32* %site24, align 4
  store i32 %39, i32* %site, align 4
  %40 = load i32, i32* %pin, align 4
  %idxprom25 = sext i32 %40 to i64
  %41 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %unComTerms26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 20
  %42 = load %struct.uncombox*, %struct.uncombox** %unComTerms26, align 8
  %arrayidx27 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %42, i64 %idxprom25
  %terminal28 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx27, i32 0, i32 0
  %43 = load i32, i32* %terminal28, align 4
  store i32 %43, i32* %terminal, align 4
  %44 = load i32, i32* %site, align 4
  %idxprom29 = sext i32 %44 to i64
  %45 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 5
  %46 = load i32, i32* %orient30, align 4
  %idxprom31 = sext i32 %46 to i64
  %47 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config32 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i32 0, i32 21
  %arrayidx33 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config32, i32 0, i64 %idxprom31
  %48 = load %struct.tilebox*, %struct.tilebox** %arrayidx33, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %48, i32 0, i32 18
  %49 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.locbox, %struct.locbox* %49, i64 %idxprom29
  %xpos35 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx34, i32 0, i32 0
  %50 = load i32, i32* %xpos35, align 4
  store i32 %50, i32* %xpos, align 4
  %51 = load i32, i32* %site, align 4
  %idxprom36 = sext i32 %51 to i64
  %52 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %orient37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 5
  %53 = load i32, i32* %orient37, align 4
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %config39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 21
  %arrayidx40 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config39, i32 0, i64 %idxprom38
  %55 = load %struct.tilebox*, %struct.tilebox** %arrayidx40, align 8
  %siteLocArray41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 18
  %56 = load %struct.locbox*, %struct.locbox** %siteLocArray41, align 8
  %arrayidx42 = getelementptr inbounds %struct.locbox, %struct.locbox* %56, i64 %idxprom36
  %ypos43 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx42, i32 0, i32 1
  %57 = load i32, i32* %ypos43, align 4
  store i32 %57, i32* %ypos, align 4
  %58 = load i32, i32* %terminal, align 4
  %idxprom44 = sext i32 %58 to i64
  %59 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx45 = getelementptr inbounds %struct.termnets*, %struct.termnets** %59, i64 %idxprom44
  %60 = load %struct.termnets*, %struct.termnets** %arrayidx45, align 8
  store %struct.termnets* %60, %struct.termnets** %termptr, align 8
  %61 = load i32, i32* %xpos, align 4
  %62 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %xcenter46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %62, i32 0, i32 2
  %63 = load i32, i32* %xcenter46, align 4
  %add47 = add nsw i32 %61, %63
  %64 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr48 = getelementptr inbounds %struct.termnets, %struct.termnets* %64, i32 0, i32 1
  %65 = load %struct.netbox*, %struct.netbox** %termptr48, align 8
  %xpos49 = getelementptr inbounds %struct.netbox, %struct.netbox* %65, i32 0, i32 1
  store i32 %add47, i32* %xpos49, align 4
  %66 = load i32, i32* %ypos, align 4
  %67 = load %struct.cellbox*, %struct.cellbox** %ptr, align 8
  %ycenter50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 3
  %68 = load i32, i32* %ycenter50, align 4
  %add51 = add nsw i32 %66, %68
  %69 = load %struct.termnets*, %struct.termnets** %termptr, align 8
  %termptr52 = getelementptr inbounds %struct.termnets, %struct.termnets* %69, i32 0, i32 1
  %70 = load %struct.netbox*, %struct.netbox** %termptr52, align 8
  %ypos53 = getelementptr inbounds %struct.netbox, %struct.netbox* %70, i32 0, i32 2
  store i32 %add51, i32* %ypos53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.21
  %71 = load i32, i32* %pin, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %pin, align 4
  br label %for.cond.19

for.end.55:                                       ; preds = %for.cond.19
  br label %if.end

if.end:                                           ; preds = %for.end.55, %for.end
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end
  %72 = load i32, i32* %cell, align 4
  %inc57 = add nsw i32 %72, 1
  store i32 %inc57, i32* %cell, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %73 = load i32, i32* @finalShot, align 4
  %cmp59 = icmp sgt i32 %73, 0
  br i1 %cmp59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.end.58
  %74 = load i32, i32* @numnets, align 4
  %75 = load i32, i32* @numcells, align 4
  %add61 = add nsw i32 %74, %75
  store i32 %add61, i32* %temp, align 4
  br label %if.end.62

if.else:                                          ; preds = %for.end.58
  %76 = load i32, i32* @numnets, align 4
  store i32 %76, i32* %temp, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.60
  store i32 1, i32* %net, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.134, %if.end.62
  %77 = load i32, i32* %net, align 4
  %78 = load i32, i32* %temp, align 4
  %cmp64 = icmp sle i32 %77, %78
  br i1 %cmp64, label %for.body.65, label %for.end.136

for.body.65:                                      ; preds = %for.cond.63
  %79 = load i32, i32* %net, align 4
  %idxprom66 = sext i32 %79 to i64
  %80 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx67 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %80, i64 %idxprom66
  %81 = load %struct.dimbox*, %struct.dimbox** %arrayidx67, align 8
  store %struct.dimbox* %81, %struct.dimbox** %dimptr, align 8
  %82 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %cmp68 = icmp eq %struct.dimbox* %82, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.65
  br label %for.inc.134

if.end.70:                                        ; preds = %for.body.65
  %83 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %83, i32 0, i32 1
  %84 = load i32, i32* %skip, align 4
  %cmp71 = icmp eq i32 %84, 1
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  br label %for.inc.134

if.end.73:                                        ; preds = %if.end.70
  %85 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr74 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %85, i32 0, i32 0
  %86 = load %struct.netbox*, %struct.netbox** %netptr74, align 8
  store %struct.netbox* %86, %struct.netbox** %netptr, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.86, %if.end.73
  %87 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp76 = icmp eq %struct.netbox* %87, null
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.cond.75
  br label %for.end.88

if.end.78:                                        ; preds = %for.cond.75
  %88 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip79 = getelementptr inbounds %struct.netbox, %struct.netbox* %88, i32 0, i32 9
  %89 = load i32, i32* %skip79, align 4
  %cmp80 = icmp eq i32 %89, 1
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  br label %for.inc.86

if.end.82:                                        ; preds = %if.end.78
  %90 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos83 = getelementptr inbounds %struct.netbox, %struct.netbox* %90, i32 0, i32 1
  %91 = load i32, i32* %xpos83, align 4
  %92 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %92, i32 0, i32 4
  store i32 %91, i32* %xmax, align 4
  %93 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %93, i32 0, i32 2
  store i32 %91, i32* %xmin, align 4
  %94 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos84 = getelementptr inbounds %struct.netbox, %struct.netbox* %94, i32 0, i32 2
  %95 = load i32, i32* %ypos84, align 4
  %96 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %96, i32 0, i32 9
  store i32 %95, i32* %ymax, align 4
  %97 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %97, i32 0, i32 6
  store i32 %95, i32* %ymin, align 4
  %98 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm85 = getelementptr inbounds %struct.netbox, %struct.netbox* %98, i32 0, i32 0
  %99 = load %struct.netbox*, %struct.netbox** %nextterm85, align 8
  store %struct.netbox* %99, %struct.netbox** %netptr, align 8
  br label %for.end.88

for.inc.86:                                       ; preds = %if.then.81
  %100 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm87 = getelementptr inbounds %struct.netbox, %struct.netbox* %100, i32 0, i32 0
  %101 = load %struct.netbox*, %struct.netbox** %nextterm87, align 8
  store %struct.netbox* %101, %struct.netbox** %netptr, align 8
  br label %for.cond.75

for.end.88:                                       ; preds = %if.end.82, %if.then.77
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.120, %for.end.88
  %102 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp90 = icmp ne %struct.netbox* %102, null
  br i1 %cmp90, label %for.body.91, label %for.end.122

for.body.91:                                      ; preds = %for.cond.89
  %103 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip92 = getelementptr inbounds %struct.netbox, %struct.netbox* %103, i32 0, i32 9
  %104 = load i32, i32* %skip92, align 4
  %cmp93 = icmp eq i32 %104, 1
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.91
  br label %for.inc.120

if.end.95:                                        ; preds = %for.body.91
  %105 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos96 = getelementptr inbounds %struct.netbox, %struct.netbox* %105, i32 0, i32 1
  %106 = load i32, i32* %xpos96, align 4
  store i32 %106, i32* %x, align 4
  %107 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos97 = getelementptr inbounds %struct.netbox, %struct.netbox* %107, i32 0, i32 2
  %108 = load i32, i32* %ypos97, align 4
  store i32 %108, i32* %y, align 4
  %109 = load i32, i32* %x, align 4
  %110 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin98 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %110, i32 0, i32 2
  %111 = load i32, i32* %xmin98, align 4
  %cmp99 = icmp slt i32 %109, %111
  br i1 %cmp99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.end.95
  %112 = load i32, i32* %x, align 4
  %113 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %113, i32 0, i32 2
  store i32 %112, i32* %xmin101, align 4
  br label %if.end.108

if.else.102:                                      ; preds = %if.end.95
  %114 = load i32, i32* %x, align 4
  %115 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax103 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %115, i32 0, i32 4
  %116 = load i32, i32* %xmax103, align 4
  %cmp104 = icmp sgt i32 %114, %116
  br i1 %cmp104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.else.102
  %117 = load i32, i32* %x, align 4
  %118 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax106 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i32 0, i32 4
  store i32 %117, i32* %xmax106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.else.102
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.100
  %119 = load i32, i32* %y, align 4
  %120 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin109 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %120, i32 0, i32 6
  %121 = load i32, i32* %ymin109, align 4
  %cmp110 = icmp slt i32 %119, %121
  br i1 %cmp110, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.end.108
  %122 = load i32, i32* %y, align 4
  %123 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin112 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %123, i32 0, i32 6
  store i32 %122, i32* %ymin112, align 4
  br label %if.end.119

if.else.113:                                      ; preds = %if.end.108
  %124 = load i32, i32* %y, align 4
  %125 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax114 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %125, i32 0, i32 9
  %126 = load i32, i32* %ymax114, align 4
  %cmp115 = icmp sgt i32 %124, %126
  br i1 %cmp115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.else.113
  %127 = load i32, i32* %y, align 4
  %128 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax117 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %128, i32 0, i32 9
  store i32 %127, i32* %ymax117, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.else.113
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.111
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119, %if.then.94
  %129 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm121 = getelementptr inbounds %struct.netbox, %struct.netbox* %129, i32 0, i32 0
  %130 = load %struct.netbox*, %struct.netbox** %nextterm121, align 8
  store %struct.netbox* %130, %struct.netbox** %netptr, align 8
  br label %for.cond.89

for.end.122:                                      ; preds = %for.cond.89
  %131 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %131, i32 0, i32 11
  %132 = load double, double* %Hweight, align 8
  %133 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax123 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %133, i32 0, i32 4
  %134 = load i32, i32* %xmax123, align 4
  %135 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin124 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %135, i32 0, i32 2
  %136 = load i32, i32* %xmin124, align 4
  %sub = sub nsw i32 %134, %136
  %conv = sitofp i32 %sub to double
  %mul = fmul double %132, %conv
  %conv125 = fptosi double %mul to i32
  %137 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %137, i32 0, i32 12
  %138 = load double, double* %Vweight, align 8
  %139 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax126 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %139, i32 0, i32 9
  %140 = load i32, i32* %ymax126, align 4
  %141 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin127 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %141, i32 0, i32 6
  %142 = load i32, i32* %ymin127, align 4
  %sub128 = sub nsw i32 %140, %142
  %conv129 = sitofp i32 %sub128 to double
  %mul130 = fmul double %138, %conv129
  %conv131 = fptosi double %mul130 to i32
  %add132 = add nsw i32 %conv125, %conv131
  %143 = load i32, i32* %cost, align 4
  %add133 = add nsw i32 %143, %add132
  store i32 %add133, i32* %cost, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.122, %if.then.72, %if.then.69
  %144 = load i32, i32* %net, align 4
  %inc135 = add nsw i32 %144, 1
  store i32 %inc135, i32* %net, align 4
  br label %for.cond.63

for.end.136:                                      ; preds = %for.cond.63
  store i32 0, i32* @penalty, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.160, %for.end.136
  %145 = load i32, i32* %cell, align 4
  %146 = load i32, i32* @numcells, align 4
  %147 = load i32, i32* @numpads, align 4
  %add138 = add nsw i32 %146, %147
  %add139 = add nsw i32 %add138, 4
  %cmp140 = icmp sle i32 %145, %add139
  br i1 %cmp140, label %for.body.142, label %for.end.162

for.body.142:                                     ; preds = %for.cond.137
  %148 = load i32, i32* %cell, align 4
  %149 = load i32, i32* @numcells, align 4
  %cmp143 = icmp sgt i32 %148, %149
  br i1 %cmp143, label %land.lhs.true, label %if.end.149

land.lhs.true:                                    ; preds = %for.body.142
  %150 = load i32, i32* %cell, align 4
  %151 = load i32, i32* @numcells, align 4
  %152 = load i32, i32* @numpads, align 4
  %add145 = add nsw i32 %151, %152
  %cmp146 = icmp sle i32 %150, %add145
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %land.lhs.true
  br label %for.inc.160

if.end.149:                                       ; preds = %land.lhs.true, %for.body.142
  %153 = load i32 (...)*, i32 (...)** @overlap, align 8
  %154 = load i32, i32* %cell, align 4
  %155 = load i32, i32* %cell, align 4
  %idxprom150 = sext i32 %155 to i64
  %156 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx151 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %156, i64 %idxprom150
  %157 = load %struct.cellbox*, %struct.cellbox** %arrayidx151, align 8
  %xcenter152 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %157, i32 0, i32 2
  %158 = load i32, i32* %xcenter152, align 4
  %159 = load i32, i32* %cell, align 4
  %idxprom153 = sext i32 %159 to i64
  %160 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx154 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %160, i64 %idxprom153
  %161 = load %struct.cellbox*, %struct.cellbox** %arrayidx154, align 8
  %ycenter155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %161, i32 0, i32 3
  %162 = load i32, i32* %ycenter155, align 4
  %163 = load i32, i32* %cell, align 4
  %idxprom156 = sext i32 %163 to i64
  %164 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx157 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %164, i64 %idxprom156
  %165 = load %struct.cellbox*, %struct.cellbox** %arrayidx157, align 8
  %orient158 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 5
  %166 = load i32, i32* %orient158, align 4
  %callee.knr.cast = bitcast i32 (...)* %153 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %call = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %callee.knr.cast(i32 %154, i32 %158, i32 %162, i32 %166, i32 0, i32 1, i32 0)
  %167 = load i32, i32* @penalty, align 4
  %add159 = add nsw i32 %167, %call
  store i32 %add159, i32* @penalty, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.149, %if.then.148
  %168 = load i32, i32* %cell, align 4
  %inc161 = add nsw i32 %168, 1
  store i32 %inc161, i32* %cell, align 4
  br label %for.cond.137

for.end.162:                                      ; preds = %for.cond.137
  %169 = load i32, i32* @penalty, align 4
  %div163 = sdiv i32 %169, 2
  store i32 %div163, i32* @penalty, align 4
  store i32 0, i32* @overfill, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.202, %for.end.162
  %170 = load i32, i32* %cell, align 4
  %171 = load i32, i32* @numcells, align 4
  %cmp165 = icmp sle i32 %170, %171
  br i1 %cmp165, label %for.body.167, label %for.end.204

for.body.167:                                     ; preds = %for.cond.164
  %172 = load i32, i32* %cell, align 4
  %idxprom168 = sext i32 %172 to i64
  %173 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx169 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %173, i64 %idxprom168
  %174 = load %struct.cellbox*, %struct.cellbox** %arrayidx169, align 8
  %softflag170 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %174, i32 0, i32 10
  %175 = load i32, i32* %softflag170, align 4
  %cmp171 = icmp eq i32 %175, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.body.167
  br label %for.inc.202

if.end.174:                                       ; preds = %for.body.167
  %176 = load i32, i32* %cell, align 4
  %idxprom175 = sext i32 %176 to i64
  %177 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx176 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %177, i64 %idxprom175
  %178 = load %struct.cellbox*, %struct.cellbox** %arrayidx176, align 8
  store %struct.cellbox* %178, %struct.cellbox** %cellptr, align 8
  store i32 1, i32* %site, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.199, %if.end.174
  %179 = load i32, i32* %site, align 4
  %180 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numsites = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 17
  %181 = load i32, i32* %numsites, align 4
  %cmp178 = icmp sle i32 %179, %181
  br i1 %cmp178, label %for.body.180, label %for.end.201

for.body.180:                                     ; preds = %for.cond.177
  %182 = load i32, i32* %site, align 4
  %idxprom181 = sext i32 %182 to i64
  %183 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 19
  %184 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  %arrayidx182 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %184, i64 %idxprom181
  %contents183 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx182, i32 0, i32 0
  %185 = load i32, i32* %contents183, align 4
  store i32 %185, i32* %contents, align 4
  %186 = load i32, i32* %site, align 4
  %idxprom184 = sext i32 %186 to i64
  %187 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %siteContent185 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i32 0, i32 19
  %188 = load %struct.contentbox*, %struct.contentbox** %siteContent185, align 8
  %arrayidx186 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %188, i64 %idxprom184
  %capacity187 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx186, i32 0, i32 2
  %189 = load i32, i32* %capacity187, align 4
  store i32 %189, i32* %capacity, align 4
  %190 = load i32, i32* %contents, align 4
  %191 = load i32, i32* %capacity, align 4
  %cmp188 = icmp sgt i32 %190, %191
  br i1 %cmp188, label %if.then.190, label %if.end.198

if.then.190:                                      ; preds = %for.body.180
  %192 = load i32, i32* %contents, align 4
  %193 = load i32, i32* %capacity, align 4
  %sub191 = sub nsw i32 %192, %193
  store i32 %sub191, i32* %temp, align 4
  %194 = load double, double* %Tscale, align 8
  %mul192 = fmul double %194, 1.000000e+01
  %195 = load i32, i32* %temp, align 4
  %196 = load i32, i32* %temp, align 4
  %mul193 = mul nsw i32 %195, %196
  %conv194 = sitofp i32 %mul193 to double
  %mul195 = fmul double %mul192, %conv194
  %conv196 = fptosi double %mul195 to i32
  %197 = load i32, i32* @overfill, align 4
  %add197 = add nsw i32 %197, %conv196
  store i32 %add197, i32* @overfill, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.190, %for.body.180
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %198 = load i32, i32* %site, align 4
  %inc200 = add nsw i32 %198, 1
  store i32 %inc200, i32* %site, align 4
  br label %for.cond.177

for.end.201:                                      ; preds = %for.cond.177
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.201, %if.then.173
  %199 = load i32, i32* %cell, align 4
  %inc203 = add nsw i32 %199, 1
  store i32 %inc203, i32* %cell, align 4
  br label %for.cond.164

for.end.204:                                      ; preds = %for.cond.164
  %200 = load i32, i32* %cost, align 4
  ret i32 %200
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
