; ModuleID = './MultiSource.Benchmarks.Prolangs-C/191.TimberWolfMC.config1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@coreGiven = external global i32, align 4
@blockt = external global i32, align 4
@blockr = external global i32, align 4
@perim = external global i32, align 4
@totChanLen = common global i32 0, align 4
@aveChanWid = external global i32, align 4
@maxWeight = external global i32, align 4
@baseWeight = external global i32, align 4
@slopeX = external global double, align 8
@slopeY = external global double, align 8
@basefactor = external global double, align 8
@blockl = external global i32, align 4
@blockmx = external global i32, align 4
@blockb = external global i32, align 4
@blockmy = external global i32, align 4
@numBinsX = external global i32, align 4
@binWidthX = external global i32, align 4
@binOffsetX = external global i32, align 4
@numBinsY = external global i32, align 4
@binWidthY = external global i32, align 4
@binOffsetY = external global i32, align 4
@totNetLen = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @config1() #0 {
entry:
  %cellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %totalArea = alloca i32, align 4
  %cell = alloca i32, align 4
  store i32 0, i32* %totalArea, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %4, %struct.cellbox** %cellptr, align 8
  %5 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %numtiles = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 6
  %6 = load i32, i32* %numtiles, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 5
  %8 = load i32, i32* %orient, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %arrayidx3 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom2
  %10 = load %struct.tilebox*, %struct.tilebox** %arrayidx3, align 8
  store %struct.tilebox* %10, %struct.tilebox** %tileptr, align 8
  %11 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %11, i32 0, i32 9
  %12 = load i32, i32* %left, align 4
  store i32 %12, i32* %l, align 4
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 10
  %14 = load i32, i32* %right, align 4
  store i32 %14, i32* %r, align 4
  %15 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i32 0, i32 11
  %16 = load i32, i32* %bottom, align 4
  store i32 %16, i32* %b, align 4
  %17 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %17, i32 0, i32 12
  %18 = load i32, i32* %top, align 4
  store i32 %18, i32* %t, align 4
  %19 = load i32, i32* %r, align 4
  %20 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %19, %20
  %21 = load i32, i32* %t, align 4
  %22 = load i32, i32* %b, align 4
  %sub4 = sub nsw i32 %21, %22
  %mul = mul nsw i32 %sub, %sub4
  %23 = load i32, i32* %totalArea, align 4
  %add = add nsw i32 %23, %mul
  store i32 %add, i32* %totalArea, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %orient5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 5
  %25 = load i32, i32* %orient5, align 4
  %idxprom6 = sext i32 %25 to i64
  %26 = load %struct.cellbox*, %struct.cellbox** %cellptr, align 8
  %config7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 21
  %arrayidx8 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config7, i32 0, i64 %idxprom6
  %27 = load %struct.tilebox*, %struct.tilebox** %arrayidx8, align 8
  %nexttile = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 0
  %28 = load %struct.tilebox*, %struct.tilebox** %nexttile, align 8
  store %struct.tilebox* %28, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.else
  %29 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %cmp10 = icmp ne %struct.tilebox* %29, null
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left12 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 9
  %31 = load i32, i32* %left12, align 4
  store i32 %31, i32* %l, align 4
  %32 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right13 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 10
  %33 = load i32, i32* %right13, align 4
  store i32 %33, i32* %r, align 4
  %34 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom14 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %34, i32 0, i32 11
  %35 = load i32, i32* %bottom14, align 4
  store i32 %35, i32* %b, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 12
  %37 = load i32, i32* %top15, align 4
  store i32 %37, i32* %t, align 4
  %38 = load i32, i32* %r, align 4
  %39 = load i32, i32* %l, align 4
  %sub16 = sub nsw i32 %38, %39
  %40 = load i32, i32* %t, align 4
  %41 = load i32, i32* %b, align 4
  %sub17 = sub nsw i32 %40, %41
  %mul18 = mul nsw i32 %sub16, %sub17
  %42 = load i32, i32* %totalArea, align 4
  %add19 = add nsw i32 %42, %mul18
  store i32 %add19, i32* %totalArea, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %43 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %nexttile20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %43, i32 0, i32 0
  %44 = load %struct.tilebox*, %struct.tilebox** %nexttile20, align 8
  store %struct.tilebox* %44, %struct.tilebox** %tileptr, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %45 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %46 = load i32, i32* @coreGiven, align 4
  %cmp23 = icmp eq i32 %46, 0
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %for.end.22
  %47 = load i32, i32* %totalArea, align 4
  %conv = sitofp i32 %47 to double
  %call = call double @sqrt(double %conv) #3
  %conv25 = fptosi double %call to i32
  %add26 = add nsw i32 %conv25, 1
  store i32 %add26, i32* @blockt, align 4
  store i32 %add26, i32* @blockr, align 4
  %48 = load i32, i32* @perim, align 4
  %div = sdiv i32 %48, 2
  %49 = load i32, i32* @blockr, align 4
  %50 = load i32, i32* @blockt, align 4
  %add27 = add nsw i32 %49, %50
  %sub28 = sub nsw i32 %div, %add27
  store i32 %sub28, i32* @totChanLen, align 4
  store i32 0, i32* @aveChanWid, align 4
  br label %if.end.37

if.else.29:                                       ; preds = %for.end.22
  %51 = load i32, i32* %totalArea, align 4
  %conv30 = sitofp i32 %51 to double
  %call31 = call double @sqrt(double %conv30) #3
  %conv32 = fptosi double %call31 to i32
  %add33 = add nsw i32 %conv32, 1
  store i32 %add33, i32* %t, align 4
  store i32 %add33, i32* %r, align 4
  %52 = load i32, i32* @perim, align 4
  %div34 = sdiv i32 %52, 2
  %53 = load i32, i32* %r, align 4
  %54 = load i32, i32* %t, align 4
  %add35 = add nsw i32 %53, %54
  %sub36 = sub nsw i32 %div34, %add35
  store i32 %sub36, i32* @totChanLen, align 4
  store i32 0, i32* @aveChanWid, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.29, %if.then.24
  %55 = load i32, i32* @maxWeight, align 4
  %56 = load i32, i32* @baseWeight, align 4
  %sub38 = sub nsw i32 %55, %56
  %conv39 = sitofp i32 %sub38 to double
  %57 = load i32, i32* @blockr, align 4
  %conv40 = sitofp i32 %57 to double
  %mul41 = fmul double %conv40, 5.000000e-01
  %div42 = fdiv double %conv39, %mul41
  store double %div42, double* @slopeX, align 8
  %58 = load i32, i32* @maxWeight, align 4
  %59 = load i32, i32* @baseWeight, align 4
  %sub43 = sub nsw i32 %58, %59
  %conv44 = sitofp i32 %sub43 to double
  %60 = load i32, i32* @blockt, align 4
  %conv45 = sitofp i32 %60 to double
  %mul46 = fmul double %conv45, 5.000000e-01
  %div47 = fdiv double %conv44, %mul46
  store double %div47, double* @slopeY, align 8
  %61 = load i32, i32* @baseWeight, align 4
  %conv48 = sitofp i32 %61 to double
  store double %conv48, double* @basefactor, align 8
  call void @placepads()
  %62 = load i32, i32* @blockr, align 4
  %63 = load i32, i32* @blockl, align 4
  %add49 = add nsw i32 %62, %63
  %div50 = sdiv i32 %add49, 2
  store i32 %div50, i32* @blockmx, align 4
  %64 = load i32, i32* @blockt, align 4
  %65 = load i32, i32* @blockb, align 4
  %add51 = add nsw i32 %64, %65
  %div52 = sdiv i32 %add51, 2
  store i32 %div52, i32* @blockmy, align 4
  %66 = load i32, i32* @blockr, align 4
  %67 = load i32, i32* @blockl, align 4
  %sub53 = sub nsw i32 %66, %67
  %68 = load i32, i32* @numBinsX, align 4
  %div54 = sdiv i32 %sub53, %68
  store i32 %div54, i32* @binWidthX, align 4
  %69 = load i32, i32* @blockr, align 4
  %70 = load i32, i32* @blockl, align 4
  %sub55 = sub nsw i32 %69, %70
  %71 = load i32, i32* @binWidthX, align 4
  %72 = load i32, i32* @numBinsX, align 4
  %mul56 = mul nsw i32 %71, %72
  %sub57 = sub nsw i32 %sub55, %mul56
  %73 = load i32, i32* @numBinsX, align 4
  %div58 = sdiv i32 %73, 2
  %cmp59 = icmp sge i32 %sub57, %div58
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.37
  %74 = load i32, i32* @binWidthX, align 4
  %inc62 = add nsw i32 %74, 1
  store i32 %inc62, i32* @binWidthX, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.37
  %75 = load i32, i32* @blockl, align 4
  %add64 = add nsw i32 %75, 1
  %76 = load i32, i32* @binWidthX, align 4
  %sub65 = sub nsw i32 %add64, %76
  store i32 %sub65, i32* @binOffsetX, align 4
  %77 = load i32, i32* @blockt, align 4
  %78 = load i32, i32* @blockb, align 4
  %sub66 = sub nsw i32 %77, %78
  %79 = load i32, i32* @numBinsY, align 4
  %div67 = sdiv i32 %sub66, %79
  store i32 %div67, i32* @binWidthY, align 4
  %80 = load i32, i32* @blockt, align 4
  %81 = load i32, i32* @blockb, align 4
  %sub68 = sub nsw i32 %80, %81
  %82 = load i32, i32* @binWidthY, align 4
  %83 = load i32, i32* @numBinsY, align 4
  %mul69 = mul nsw i32 %82, %83
  %sub70 = sub nsw i32 %sub68, %mul69
  %84 = load i32, i32* @numBinsY, align 4
  %div71 = sdiv i32 %84, 2
  %cmp72 = icmp sge i32 %sub70, %div71
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.63
  %85 = load i32, i32* @binWidthY, align 4
  %inc75 = add nsw i32 %85, 1
  store i32 %inc75, i32* @binWidthY, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.63
  %86 = load i32, i32* @blockb, align 4
  %add77 = add nsw i32 %86, 1
  %87 = load i32, i32* @binWidthY, align 4
  %sub78 = sub nsw i32 %add77, %87
  store i32 %sub78, i32* @binOffsetY, align 4
  call void @loadbins(i32 1)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

declare void @placepads() #2

declare void @loadbins(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
