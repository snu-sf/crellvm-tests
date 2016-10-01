; ModuleID = './MultiSource.Benchmarks.Prolangs-C/222.TimberWolfMC.usoftpin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define void @usoftpin(%struct.cellbox* %cellptr, i32 %flag, i32 %targetx, i32 %targety, i32 %orient) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %flag.addr = alloca i32, align 4
  %targetx.addr = alloca i32, align 4
  %targety.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %dimptr = alloca %struct.dimbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %tm = alloca i32, align 4
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i32 %targetx, i32* %targetx.addr, align 4
  store i32 %targety, i32* %targety.addr, align 4
  store i32 %orient, i32* %orient.addr, align 4
  %0 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 20
  %1 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %1, %struct.uncombox** %UCptr, align 8
  %2 = load i32, i32* %orient.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom
  %4 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %4, i32 0, i32 18
  %5 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %5, %struct.locbox** %SLptr, align 8
  %6 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %tm, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %tm, align 4
  %8 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 18
  %9 = load i32, i32* %numUnComTerms, align 4
  %cmp1 = icmp sle i32 %7, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %tm, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx3 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %11, i64 %idxprom2
  %terminal = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx3, i32 0, i32 0
  %12 = load i32, i32* %terminal, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx5 = getelementptr inbounds %struct.termnets*, %struct.termnets** %13, i64 %idxprom4
  %14 = load %struct.termnets*, %struct.termnets** %arrayidx5, align 8
  store %struct.termnets* %14, %struct.termnets** %tmptr, align 8
  %15 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %15, i32 0, i32 0
  %16 = load i32, i32* %net, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx7 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %17, i64 %idxprom6
  %18 = load %struct.dimbox*, %struct.dimbox** %arrayidx7, align 8
  %flag8 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %18, i32 0, i32 7
  store i32 1, i32* %flag8, align 4
  %19 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr = getelementptr inbounds %struct.termnets, %struct.termnets* %19, i32 0, i32 1
  %20 = load %struct.netbox*, %struct.netbox** %termptr, align 8
  %flag9 = getelementptr inbounds %struct.netbox, %struct.netbox* %20, i32 0, i32 6
  store i32 1, i32* %flag9, align 4
  %21 = load i32, i32* %targetx.addr, align 4
  %22 = load i32, i32* %tm, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx11 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %23, i64 %idxprom10
  %site = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx11, i32 0, i32 1
  %24 = load i32, i32* %site, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx13 = getelementptr inbounds %struct.locbox, %struct.locbox* %25, i64 %idxprom12
  %xpos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx13, i32 0, i32 0
  %26 = load i32, i32* %xpos, align 4
  %add = add nsw i32 %21, %26
  %27 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr14 = getelementptr inbounds %struct.termnets, %struct.termnets* %27, i32 0, i32 1
  %28 = load %struct.netbox*, %struct.netbox** %termptr14, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %28, i32 0, i32 3
  store i32 %add, i32* %newx, align 4
  %29 = load i32, i32* %targety.addr, align 4
  %30 = load i32, i32* %tm, align 4
  %idxprom15 = sext i32 %30 to i64
  %31 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx16 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %31, i64 %idxprom15
  %site17 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx16, i32 0, i32 1
  %32 = load i32, i32* %site17, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx19 = getelementptr inbounds %struct.locbox, %struct.locbox* %33, i64 %idxprom18
  %ypos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx19, i32 0, i32 1
  %34 = load i32, i32* %ypos, align 4
  %add20 = add nsw i32 %29, %34
  %35 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr21 = getelementptr inbounds %struct.termnets, %struct.termnets* %35, i32 0, i32 1
  %36 = load %struct.netbox*, %struct.netbox** %termptr21, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %36, i32 0, i32 4
  store i32 %add20, i32* %newy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %tm, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %tm, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %tm, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.42, %if.else
  %38 = load i32, i32* %tm, align 4
  %39 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %numUnComTerms23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i32 0, i32 18
  %40 = load i32, i32* %numUnComTerms23, align 4
  %cmp24 = icmp sle i32 %38, %40
  br i1 %cmp24, label %for.body.25, label %for.end.44

for.body.25:                                      ; preds = %for.cond.22
  %41 = load i32, i32* %tm, align 4
  %idxprom26 = sext i32 %41 to i64
  %42 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx27 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %42, i64 %idxprom26
  %terminal28 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx27, i32 0, i32 0
  %43 = load i32, i32* %terminal28, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx30 = getelementptr inbounds %struct.termnets*, %struct.termnets** %44, i64 %idxprom29
  %45 = load %struct.termnets*, %struct.termnets** %arrayidx30, align 8
  store %struct.termnets* %45, %struct.termnets** %tmptr, align 8
  %46 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net31 = getelementptr inbounds %struct.termnets, %struct.termnets* %46, i32 0, i32 0
  %47 = load i32, i32* %net31, align 4
  %idxprom32 = sext i32 %47 to i64
  %48 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx33 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %48, i64 %idxprom32
  %49 = load %struct.dimbox*, %struct.dimbox** %arrayidx33, align 8
  store %struct.dimbox* %49, %struct.dimbox** %dimptr, align 8
  %50 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %50, i32 0, i32 3
  %51 = load i32, i32* %newxmin, align 4
  %52 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %52, i32 0, i32 2
  store i32 %51, i32* %xmin, align 4
  %53 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 5
  %54 = load i32, i32* %newxmax, align 4
  %55 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i32 0, i32 4
  store i32 %54, i32* %xmax, align 4
  %56 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %56, i32 0, i32 8
  %57 = load i32, i32* %newymin, align 4
  %58 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %58, i32 0, i32 6
  store i32 %57, i32* %ymin, align 4
  %59 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %59, i32 0, i32 10
  %60 = load i32, i32* %newymax, align 4
  %61 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %61, i32 0, i32 9
  store i32 %60, i32* %ymax, align 4
  %62 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr34 = getelementptr inbounds %struct.termnets, %struct.termnets* %62, i32 0, i32 1
  %63 = load %struct.netbox*, %struct.netbox** %termptr34, align 8
  %newx35 = getelementptr inbounds %struct.netbox, %struct.netbox* %63, i32 0, i32 3
  %64 = load i32, i32* %newx35, align 4
  %65 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr36 = getelementptr inbounds %struct.termnets, %struct.termnets* %65, i32 0, i32 1
  %66 = load %struct.netbox*, %struct.netbox** %termptr36, align 8
  %xpos37 = getelementptr inbounds %struct.netbox, %struct.netbox* %66, i32 0, i32 1
  store i32 %64, i32* %xpos37, align 4
  %67 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr38 = getelementptr inbounds %struct.termnets, %struct.termnets* %67, i32 0, i32 1
  %68 = load %struct.netbox*, %struct.netbox** %termptr38, align 8
  %newy39 = getelementptr inbounds %struct.netbox, %struct.netbox* %68, i32 0, i32 4
  %69 = load i32, i32* %newy39, align 4
  %70 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr40 = getelementptr inbounds %struct.termnets, %struct.termnets* %70, i32 0, i32 1
  %71 = load %struct.netbox*, %struct.netbox** %termptr40, align 8
  %ypos41 = getelementptr inbounds %struct.netbox, %struct.netbox* %71, i32 0, i32 2
  store i32 %69, i32* %ypos41, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.25
  %72 = load i32, i32* %tm, align 4
  %inc43 = add nsw i32 %72, 1
  store i32 %inc43, i32* %tm, align 4
  br label %for.cond.22

for.end.44:                                       ; preds = %for.cond.22
  br label %if.end

if.end:                                           ; preds = %for.end.44, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
