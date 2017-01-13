; ModuleID = './MultiSource.Benchmarks.Prolangs-C/249.TimberWolfMC.upinswap.bc'
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
@funccost = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @upinswap(%struct.cellbox* %acellptr, i32 %pin1, i32 %pin2, i32 %site1, i32 %site2) #0 {
entry:
  %retval = alloca i32, align 4
  %acellptr.addr = alloca %struct.cellbox*, align 8
  %pin1.addr = alloca i32, align 4
  %pin2.addr = alloca i32, align 4
  %site1.addr = alloca i32, align 4
  %site2.addr = alloca i32, align 4
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %atileptr = alloca %struct.tilebox*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %cost = alloca i32, align 4
  %temp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  store %struct.cellbox* %acellptr, %struct.cellbox** %acellptr.addr, align 8
  store i32 %pin1, i32* %pin1.addr, align 4
  store i32 %pin2, i32* %pin2.addr, align 4
  store i32 %site1, i32* %site1.addr, align 4
  store i32 %site2, i32* %site2.addr, align 4
  %0 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 2
  %1 = load i32, i32* %xcenter, align 4
  store i32 %1, i32* %axcenter, align 4
  %2 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %2, i32 0, i32 3
  %3 = load i32, i32* %ycenter, align 4
  store i32 %3, i32* %aycenter, align 4
  %4 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %4, i32 0, i32 5
  %5 = load i32, i32* %orient, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom
  %7 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  store %struct.tilebox* %7, %struct.tilebox** %atileptr, align 8
  %8 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 20
  %9 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %9, %struct.uncombox** %UCptr, align 8
  %10 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 18
  %11 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %11, %struct.locbox** %SLptr, align 8
  %12 = load i32, i32* %site2.addr, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx2 = getelementptr inbounds %struct.locbox, %struct.locbox* %13, i64 %idxprom1
  %xpos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx2, i32 0, i32 0
  %14 = load i32, i32* %xpos, align 4
  %15 = load i32, i32* %axcenter, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %x, align 4
  %16 = load i32, i32* %site2.addr, align 4
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx4 = getelementptr inbounds %struct.locbox, %struct.locbox* %17, i64 %idxprom3
  %ypos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx4, i32 0, i32 1
  %18 = load i32, i32* %ypos, align 4
  %19 = load i32, i32* %aycenter, align 4
  %add5 = add nsw i32 %18, %19
  store i32 %add5, i32* %y, align 4
  %20 = load i32, i32* %pin1.addr, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx7 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %21, i64 %idxprom6
  %terminal = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx7, i32 0, i32 0
  %22 = load i32, i32* %terminal, align 4
  %idxprom8 = sext i32 %22 to i64
  %23 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx9 = getelementptr inbounds %struct.termnets*, %struct.termnets** %23, i64 %idxprom8
  %24 = load %struct.termnets*, %struct.termnets** %arrayidx9, align 8
  store %struct.termnets* %24, %struct.termnets** %tmptr, align 8
  %25 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i32 0, i32 0
  %26 = load i32, i32* %net, align 4
  %idxprom10 = sext i32 %26 to i64
  %27 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx11 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %27, i64 %idxprom10
  %28 = load %struct.dimbox*, %struct.dimbox** %arrayidx11, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 7
  store i32 1, i32* %flag, align 4
  %29 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr = getelementptr inbounds %struct.termnets, %struct.termnets* %29, i32 0, i32 1
  %30 = load %struct.netbox*, %struct.netbox** %termptr, align 8
  %flag12 = getelementptr inbounds %struct.netbox, %struct.netbox* %30, i32 0, i32 6
  store i32 1, i32* %flag12, align 4
  %31 = load i32, i32* %x, align 4
  %32 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr13 = getelementptr inbounds %struct.termnets, %struct.termnets* %32, i32 0, i32 1
  %33 = load %struct.netbox*, %struct.netbox** %termptr13, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %33, i32 0, i32 3
  store i32 %31, i32* %newx, align 4
  %34 = load i32, i32* %y, align 4
  %35 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr14 = getelementptr inbounds %struct.termnets, %struct.termnets* %35, i32 0, i32 1
  %36 = load %struct.netbox*, %struct.netbox** %termptr14, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %36, i32 0, i32 4
  store i32 %34, i32* %newy, align 4
  %37 = load i32, i32* %site1.addr, align 4
  %idxprom15 = sext i32 %37 to i64
  %38 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx16 = getelementptr inbounds %struct.locbox, %struct.locbox* %38, i64 %idxprom15
  %xpos17 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx16, i32 0, i32 0
  %39 = load i32, i32* %xpos17, align 4
  %40 = load i32, i32* %axcenter, align 4
  %add18 = add nsw i32 %39, %40
  store i32 %add18, i32* %x, align 4
  %41 = load i32, i32* %site1.addr, align 4
  %idxprom19 = sext i32 %41 to i64
  %42 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx20 = getelementptr inbounds %struct.locbox, %struct.locbox* %42, i64 %idxprom19
  %ypos21 = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx20, i32 0, i32 1
  %43 = load i32, i32* %ypos21, align 4
  %44 = load i32, i32* %aycenter, align 4
  %add22 = add nsw i32 %43, %44
  store i32 %add22, i32* %y, align 4
  %45 = load i32, i32* %pin2.addr, align 4
  %idxprom23 = sext i32 %45 to i64
  %46 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx24 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %46, i64 %idxprom23
  %terminal25 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx24, i32 0, i32 0
  %47 = load i32, i32* %terminal25, align 4
  %idxprom26 = sext i32 %47 to i64
  %48 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx27 = getelementptr inbounds %struct.termnets*, %struct.termnets** %48, i64 %idxprom26
  %49 = load %struct.termnets*, %struct.termnets** %arrayidx27, align 8
  store %struct.termnets* %49, %struct.termnets** %tmptr, align 8
  %50 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net28 = getelementptr inbounds %struct.termnets, %struct.termnets* %50, i32 0, i32 0
  %51 = load i32, i32* %net28, align 4
  %idxprom29 = sext i32 %51 to i64
  %52 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx30 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %52, i64 %idxprom29
  %53 = load %struct.dimbox*, %struct.dimbox** %arrayidx30, align 8
  %flag31 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 7
  store i32 1, i32* %flag31, align 4
  %54 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr32 = getelementptr inbounds %struct.termnets, %struct.termnets* %54, i32 0, i32 1
  %55 = load %struct.netbox*, %struct.netbox** %termptr32, align 8
  %flag33 = getelementptr inbounds %struct.netbox, %struct.netbox* %55, i32 0, i32 6
  store i32 1, i32* %flag33, align 4
  %56 = load i32, i32* %x, align 4
  %57 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr34 = getelementptr inbounds %struct.termnets, %struct.termnets* %57, i32 0, i32 1
  %58 = load %struct.netbox*, %struct.netbox** %termptr34, align 8
  %newx35 = getelementptr inbounds %struct.netbox, %struct.netbox* %58, i32 0, i32 3
  store i32 %56, i32* %newx35, align 4
  %59 = load i32, i32* %y, align 4
  %60 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr36 = getelementptr inbounds %struct.termnets, %struct.termnets* %60, i32 0, i32 1
  %61 = load %struct.netbox*, %struct.netbox** %termptr36, align 8
  %newy37 = getelementptr inbounds %struct.netbox, %struct.netbox* %61, i32 0, i32 4
  store i32 %59, i32* %newy37, align 4
  %62 = load i32, i32* @funccost, align 4
  store i32 %62, i32* %cost, align 4
  %63 = load i32, i32* %pin1.addr, align 4
  %idxprom38 = sext i32 %63 to i64
  %64 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx39 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %64, i64 %idxprom38
  %terminal40 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx39, i32 0, i32 0
  %65 = load i32, i32* %terminal40, align 4
  %idxprom41 = sext i32 %65 to i64
  %66 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx42 = getelementptr inbounds %struct.termnets*, %struct.termnets** %66, i64 %idxprom41
  %67 = load %struct.termnets*, %struct.termnets** %arrayidx42, align 8
  store %struct.termnets* %67, %struct.termnets** %tmptr, align 8
  %68 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net43 = getelementptr inbounds %struct.termnets, %struct.termnets* %68, i32 0, i32 0
  %69 = load i32, i32* %net43, align 4
  %idxprom44 = sext i32 %69 to i64
  %70 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx45 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %70, i64 %idxprom44
  %71 = load %struct.dimbox*, %struct.dimbox** %arrayidx45, align 8
  store %struct.dimbox* %71, %struct.dimbox** %dimptr, align 8
  %72 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag46 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %72, i32 0, i32 7
  %73 = load i32, i32* %flag46, align 4
  %cmp = icmp ne i32 %73, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.134

land.lhs.true:                                    ; preds = %entry
  %74 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %74, i32 0, i32 1
  %75 = load i32, i32* %skip, align 4
  %cmp47 = icmp ne i32 %75, 1
  br i1 %cmp47, label %if.then, label %if.end.134

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag48 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i32 0, i32 7
  store i32 0, i32* %flag48, align 4
  %77 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr49 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %77, i32 0, i32 0
  %78 = load %struct.netbox*, %struct.netbox** %netptr49, align 8
  store %struct.netbox* %78, %struct.netbox** %netptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %79 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp50 = icmp eq %struct.netbox* %79, null
  br i1 %cmp50, label %if.then.51, label %if.end

if.then.51:                                       ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %80 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip52 = getelementptr inbounds %struct.netbox, %struct.netbox* %80, i32 0, i32 9
  %81 = load i32, i32* %skip52, align 4
  %cmp53 = icmp eq i32 %81, 1
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end
  br label %for.inc

if.end.55:                                        ; preds = %if.end
  %82 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag56 = getelementptr inbounds %struct.netbox, %struct.netbox* %82, i32 0, i32 6
  %83 = load i32, i32* %flag56, align 4
  %cmp57 = icmp eq i32 %83, 1
  br i1 %cmp57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.55
  %84 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx59 = getelementptr inbounds %struct.netbox, %struct.netbox* %84, i32 0, i32 3
  %85 = load i32, i32* %newx59, align 4
  %86 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %86, i32 0, i32 5
  store i32 %85, i32* %newxmax, align 4
  %87 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 3
  store i32 %85, i32* %newxmin, align 4
  %88 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy60 = getelementptr inbounds %struct.netbox, %struct.netbox* %88, i32 0, i32 4
  %89 = load i32, i32* %newy60, align 4
  %90 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i32 0, i32 10
  store i32 %89, i32* %newymax, align 4
  %91 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %91, i32 0, i32 8
  store i32 %89, i32* %newymin, align 4
  %92 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag61 = getelementptr inbounds %struct.netbox, %struct.netbox* %92, i32 0, i32 6
  store i32 0, i32* %flag61, align 4
  br label %if.end.68

if.else:                                          ; preds = %if.end.55
  %93 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos62 = getelementptr inbounds %struct.netbox, %struct.netbox* %93, i32 0, i32 1
  %94 = load i32, i32* %xpos62, align 4
  %95 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax63 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %95, i32 0, i32 5
  store i32 %94, i32* %newxmax63, align 4
  %96 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin64 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %96, i32 0, i32 3
  store i32 %94, i32* %newxmin64, align 4
  %97 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos65 = getelementptr inbounds %struct.netbox, %struct.netbox* %97, i32 0, i32 2
  %98 = load i32, i32* %ypos65, align 4
  %99 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax66 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %99, i32 0, i32 10
  store i32 %98, i32* %newymax66, align 4
  %100 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %100, i32 0, i32 8
  store i32 %98, i32* %newymin67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.58
  %101 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %101, i32 0, i32 0
  %102 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %102, %struct.netbox** %netptr, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then.54
  %103 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm69 = getelementptr inbounds %struct.netbox, %struct.netbox* %103, i32 0, i32 0
  %104 = load %struct.netbox*, %struct.netbox** %nextterm69, align 8
  store %struct.netbox* %104, %struct.netbox** %netptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.68, %if.then.51
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.108, %for.end
  %105 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp71 = icmp ne %struct.netbox* %105, null
  br i1 %cmp71, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond.70
  %106 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip72 = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i32 0, i32 9
  %107 = load i32, i32* %skip72, align 4
  %cmp73 = icmp eq i32 %107, 1
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body
  br label %for.inc.108

if.end.75:                                        ; preds = %for.body
  %108 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag76 = getelementptr inbounds %struct.netbox, %struct.netbox* %108, i32 0, i32 6
  %109 = load i32, i32* %flag76, align 4
  %cmp77 = icmp eq i32 %109, 1
  br i1 %cmp77, label %if.then.78, label %if.else.82

if.then.78:                                       ; preds = %if.end.75
  %110 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx79 = getelementptr inbounds %struct.netbox, %struct.netbox* %110, i32 0, i32 3
  %111 = load i32, i32* %newx79, align 4
  store i32 %111, i32* %x, align 4
  %112 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy80 = getelementptr inbounds %struct.netbox, %struct.netbox* %112, i32 0, i32 4
  %113 = load i32, i32* %newy80, align 4
  store i32 %113, i32* %y, align 4
  %114 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag81 = getelementptr inbounds %struct.netbox, %struct.netbox* %114, i32 0, i32 6
  store i32 0, i32* %flag81, align 4
  br label %if.end.85

if.else.82:                                       ; preds = %if.end.75
  %115 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos83 = getelementptr inbounds %struct.netbox, %struct.netbox* %115, i32 0, i32 1
  %116 = load i32, i32* %xpos83, align 4
  store i32 %116, i32* %x, align 4
  %117 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos84 = getelementptr inbounds %struct.netbox, %struct.netbox* %117, i32 0, i32 2
  %118 = load i32, i32* %ypos84, align 4
  store i32 %118, i32* %y, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.78
  %119 = load i32, i32* %x, align 4
  %120 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin86 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %120, i32 0, i32 3
  %121 = load i32, i32* %newxmin86, align 4
  %cmp87 = icmp slt i32 %119, %121
  br i1 %cmp87, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.end.85
  %122 = load i32, i32* %x, align 4
  %123 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin89 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %123, i32 0, i32 3
  store i32 %122, i32* %newxmin89, align 4
  br label %if.end.96

if.else.90:                                       ; preds = %if.end.85
  %124 = load i32, i32* %x, align 4
  %125 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %125, i32 0, i32 5
  %126 = load i32, i32* %newxmax91, align 4
  %cmp92 = icmp sgt i32 %124, %126
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.else.90
  %127 = load i32, i32* %x, align 4
  %128 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax94 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %128, i32 0, i32 5
  store i32 %127, i32* %newxmax94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.else.90
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.88
  %129 = load i32, i32* %y, align 4
  %130 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin97 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %130, i32 0, i32 8
  %131 = load i32, i32* %newymin97, align 4
  %cmp98 = icmp slt i32 %129, %131
  br i1 %cmp98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.end.96
  %132 = load i32, i32* %y, align 4
  %133 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin100 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %133, i32 0, i32 8
  store i32 %132, i32* %newymin100, align 4
  br label %if.end.107

if.else.101:                                      ; preds = %if.end.96
  %134 = load i32, i32* %y, align 4
  %135 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax102 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %135, i32 0, i32 10
  %136 = load i32, i32* %newymax102, align 4
  %cmp103 = icmp sgt i32 %134, %136
  br i1 %cmp103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.else.101
  %137 = load i32, i32* %y, align 4
  %138 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax105 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %138, i32 0, i32 10
  store i32 %137, i32* %newymax105, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.else.101
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.99
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107, %if.then.74
  %139 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm109 = getelementptr inbounds %struct.netbox, %struct.netbox* %139, i32 0, i32 0
  %140 = load %struct.netbox*, %struct.netbox** %nextterm109, align 8
  store %struct.netbox* %140, %struct.netbox** %netptr, align 8
  br label %for.cond.70

for.end.110:                                      ; preds = %for.cond.70
  %141 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %141, i32 0, i32 11
  %142 = load double, double* %Hweight, align 8
  %143 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax111 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %143, i32 0, i32 5
  %144 = load i32, i32* %newxmax111, align 4
  %145 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin112 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %145, i32 0, i32 3
  %146 = load i32, i32* %newxmin112, align 4
  %sub = sub nsw i32 %144, %146
  %conv = sitofp i32 %sub to double
  %mul = fmul double %142, %conv
  %conv113 = fptosi double %mul to i32
  %147 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight114 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %147, i32 0, i32 11
  %148 = load double, double* %Hweight114, align 8
  %149 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %149, i32 0, i32 4
  %150 = load i32, i32* %xmax, align 4
  %151 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %151, i32 0, i32 2
  %152 = load i32, i32* %xmin, align 4
  %sub115 = sub nsw i32 %150, %152
  %conv116 = sitofp i32 %sub115 to double
  %mul117 = fmul double %148, %conv116
  %conv118 = fptosi double %mul117 to i32
  %sub119 = sub nsw i32 %conv113, %conv118
  %153 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %153, i32 0, i32 12
  %154 = load double, double* %Vweight, align 8
  %155 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax120 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %155, i32 0, i32 10
  %156 = load i32, i32* %newymax120, align 4
  %157 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin121 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %157, i32 0, i32 8
  %158 = load i32, i32* %newymin121, align 4
  %sub122 = sub nsw i32 %156, %158
  %conv123 = sitofp i32 %sub122 to double
  %mul124 = fmul double %154, %conv123
  %conv125 = fptosi double %mul124 to i32
  %add126 = add nsw i32 %sub119, %conv125
  %159 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight127 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %159, i32 0, i32 12
  %160 = load double, double* %Vweight127, align 8
  %161 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %161, i32 0, i32 9
  %162 = load i32, i32* %ymax, align 4
  %163 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %163, i32 0, i32 6
  %164 = load i32, i32* %ymin, align 4
  %sub128 = sub nsw i32 %162, %164
  %conv129 = sitofp i32 %sub128 to double
  %mul130 = fmul double %160, %conv129
  %conv131 = fptosi double %mul130 to i32
  %sub132 = sub nsw i32 %add126, %conv131
  %165 = load i32, i32* %cost, align 4
  %add133 = add nsw i32 %165, %sub132
  store i32 %add133, i32* %cost, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.110, %land.lhs.true, %entry
  %166 = load i32, i32* %pin2.addr, align 4
  %idxprom135 = sext i32 %166 to i64
  %167 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx136 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %167, i64 %idxprom135
  %terminal137 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx136, i32 0, i32 0
  %168 = load i32, i32* %terminal137, align 4
  %idxprom138 = sext i32 %168 to i64
  %169 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx139 = getelementptr inbounds %struct.termnets*, %struct.termnets** %169, i64 %idxprom138
  %170 = load %struct.termnets*, %struct.termnets** %arrayidx139, align 8
  store %struct.termnets* %170, %struct.termnets** %tmptr, align 8
  %171 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net140 = getelementptr inbounds %struct.termnets, %struct.termnets* %171, i32 0, i32 0
  %172 = load i32, i32* %net140, align 4
  %idxprom141 = sext i32 %172 to i64
  %173 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx142 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %173, i64 %idxprom141
  %174 = load %struct.dimbox*, %struct.dimbox** %arrayidx142, align 8
  store %struct.dimbox* %174, %struct.dimbox** %dimptr, align 8
  %175 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag143 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %175, i32 0, i32 7
  %176 = load i32, i32* %flag143, align 4
  %cmp144 = icmp ne i32 %176, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.267

land.lhs.true.146:                                ; preds = %if.end.134
  %177 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip147 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %177, i32 0, i32 1
  %178 = load i32, i32* %skip147, align 4
  %cmp148 = icmp ne i32 %178, 1
  br i1 %cmp148, label %if.then.150, label %if.end.267

if.then.150:                                      ; preds = %land.lhs.true.146
  %179 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag151 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %179, i32 0, i32 7
  store i32 0, i32* %flag151, align 4
  %180 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr152 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %180, i32 0, i32 0
  %181 = load %struct.netbox*, %struct.netbox** %netptr152, align 8
  store %struct.netbox* %181, %struct.netbox** %netptr, align 8
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.183, %if.then.150
  %182 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp154 = icmp eq %struct.netbox* %182, null
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %for.cond.153
  br label %for.end.185

if.end.157:                                       ; preds = %for.cond.153
  %183 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip158 = getelementptr inbounds %struct.netbox, %struct.netbox* %183, i32 0, i32 9
  %184 = load i32, i32* %skip158, align 4
  %cmp159 = icmp eq i32 %184, 1
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.157
  br label %for.inc.183

if.end.162:                                       ; preds = %if.end.157
  %185 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag163 = getelementptr inbounds %struct.netbox, %struct.netbox* %185, i32 0, i32 6
  %186 = load i32, i32* %flag163, align 4
  %cmp164 = icmp eq i32 %186, 1
  br i1 %cmp164, label %if.then.166, label %if.else.174

if.then.166:                                      ; preds = %if.end.162
  %187 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx167 = getelementptr inbounds %struct.netbox, %struct.netbox* %187, i32 0, i32 3
  %188 = load i32, i32* %newx167, align 4
  %189 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax168 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %189, i32 0, i32 5
  store i32 %188, i32* %newxmax168, align 4
  %190 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin169 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %190, i32 0, i32 3
  store i32 %188, i32* %newxmin169, align 4
  %191 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy170 = getelementptr inbounds %struct.netbox, %struct.netbox* %191, i32 0, i32 4
  %192 = load i32, i32* %newy170, align 4
  %193 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %193, i32 0, i32 10
  store i32 %192, i32* %newymax171, align 4
  %194 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin172 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %194, i32 0, i32 8
  store i32 %192, i32* %newymin172, align 4
  %195 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag173 = getelementptr inbounds %struct.netbox, %struct.netbox* %195, i32 0, i32 6
  store i32 0, i32* %flag173, align 4
  br label %if.end.181

if.else.174:                                      ; preds = %if.end.162
  %196 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos175 = getelementptr inbounds %struct.netbox, %struct.netbox* %196, i32 0, i32 1
  %197 = load i32, i32* %xpos175, align 4
  %198 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax176 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %198, i32 0, i32 5
  store i32 %197, i32* %newxmax176, align 4
  %199 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin177 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %199, i32 0, i32 3
  store i32 %197, i32* %newxmin177, align 4
  %200 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos178 = getelementptr inbounds %struct.netbox, %struct.netbox* %200, i32 0, i32 2
  %201 = load i32, i32* %ypos178, align 4
  %202 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax179 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %202, i32 0, i32 10
  store i32 %201, i32* %newymax179, align 4
  %203 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %203, i32 0, i32 8
  store i32 %201, i32* %newymin180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.174, %if.then.166
  %204 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm182 = getelementptr inbounds %struct.netbox, %struct.netbox* %204, i32 0, i32 0
  %205 = load %struct.netbox*, %struct.netbox** %nextterm182, align 8
  store %struct.netbox* %205, %struct.netbox** %netptr, align 8
  br label %for.end.185

for.inc.183:                                      ; preds = %if.then.161
  %206 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm184 = getelementptr inbounds %struct.netbox, %struct.netbox* %206, i32 0, i32 0
  %207 = load %struct.netbox*, %struct.netbox** %nextterm184, align 8
  store %struct.netbox* %207, %struct.netbox** %netptr, align 8
  br label %for.cond.153

for.end.185:                                      ; preds = %if.end.181, %if.then.156
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.232, %for.end.185
  %208 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp187 = icmp ne %struct.netbox* %208, null
  br i1 %cmp187, label %for.body.189, label %for.end.234

for.body.189:                                     ; preds = %for.cond.186
  %209 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip190 = getelementptr inbounds %struct.netbox, %struct.netbox* %209, i32 0, i32 9
  %210 = load i32, i32* %skip190, align 4
  %cmp191 = icmp eq i32 %210, 1
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %for.body.189
  br label %for.inc.232

if.end.194:                                       ; preds = %for.body.189
  %211 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag195 = getelementptr inbounds %struct.netbox, %struct.netbox* %211, i32 0, i32 6
  %212 = load i32, i32* %flag195, align 4
  %cmp196 = icmp eq i32 %212, 1
  br i1 %cmp196, label %if.then.198, label %if.else.202

if.then.198:                                      ; preds = %if.end.194
  %213 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx199 = getelementptr inbounds %struct.netbox, %struct.netbox* %213, i32 0, i32 3
  %214 = load i32, i32* %newx199, align 4
  store i32 %214, i32* %x, align 4
  %215 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy200 = getelementptr inbounds %struct.netbox, %struct.netbox* %215, i32 0, i32 4
  %216 = load i32, i32* %newy200, align 4
  store i32 %216, i32* %y, align 4
  %217 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag201 = getelementptr inbounds %struct.netbox, %struct.netbox* %217, i32 0, i32 6
  store i32 0, i32* %flag201, align 4
  br label %if.end.205

if.else.202:                                      ; preds = %if.end.194
  %218 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos203 = getelementptr inbounds %struct.netbox, %struct.netbox* %218, i32 0, i32 1
  %219 = load i32, i32* %xpos203, align 4
  store i32 %219, i32* %x, align 4
  %220 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos204 = getelementptr inbounds %struct.netbox, %struct.netbox* %220, i32 0, i32 2
  %221 = load i32, i32* %ypos204, align 4
  store i32 %221, i32* %y, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %if.then.198
  %222 = load i32, i32* %x, align 4
  %223 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin206 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %223, i32 0, i32 3
  %224 = load i32, i32* %newxmin206, align 4
  %cmp207 = icmp slt i32 %222, %224
  br i1 %cmp207, label %if.then.209, label %if.else.211

if.then.209:                                      ; preds = %if.end.205
  %225 = load i32, i32* %x, align 4
  %226 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin210 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %226, i32 0, i32 3
  store i32 %225, i32* %newxmin210, align 4
  br label %if.end.218

if.else.211:                                      ; preds = %if.end.205
  %227 = load i32, i32* %x, align 4
  %228 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax212 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %228, i32 0, i32 5
  %229 = load i32, i32* %newxmax212, align 4
  %cmp213 = icmp sgt i32 %227, %229
  br i1 %cmp213, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %if.else.211
  %230 = load i32, i32* %x, align 4
  %231 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax216 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %231, i32 0, i32 5
  store i32 %230, i32* %newxmax216, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %if.else.211
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.209
  %232 = load i32, i32* %y, align 4
  %233 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin219 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %233, i32 0, i32 8
  %234 = load i32, i32* %newymin219, align 4
  %cmp220 = icmp slt i32 %232, %234
  br i1 %cmp220, label %if.then.222, label %if.else.224

if.then.222:                                      ; preds = %if.end.218
  %235 = load i32, i32* %y, align 4
  %236 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin223 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %236, i32 0, i32 8
  store i32 %235, i32* %newymin223, align 4
  br label %if.end.231

if.else.224:                                      ; preds = %if.end.218
  %237 = load i32, i32* %y, align 4
  %238 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax225 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %238, i32 0, i32 10
  %239 = load i32, i32* %newymax225, align 4
  %cmp226 = icmp sgt i32 %237, %239
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.else.224
  %240 = load i32, i32* %y, align 4
  %241 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax229 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %241, i32 0, i32 10
  store i32 %240, i32* %newymax229, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.else.224
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.222
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.231, %if.then.193
  %242 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm233 = getelementptr inbounds %struct.netbox, %struct.netbox* %242, i32 0, i32 0
  %243 = load %struct.netbox*, %struct.netbox** %nextterm233, align 8
  store %struct.netbox* %243, %struct.netbox** %netptr, align 8
  br label %for.cond.186

for.end.234:                                      ; preds = %for.cond.186
  %244 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight235 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %244, i32 0, i32 11
  %245 = load double, double* %Hweight235, align 8
  %246 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax236 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %246, i32 0, i32 5
  %247 = load i32, i32* %newxmax236, align 4
  %248 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin237 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %248, i32 0, i32 3
  %249 = load i32, i32* %newxmin237, align 4
  %sub238 = sub nsw i32 %247, %249
  %conv239 = sitofp i32 %sub238 to double
  %mul240 = fmul double %245, %conv239
  %conv241 = fptosi double %mul240 to i32
  %250 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight242 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %250, i32 0, i32 11
  %251 = load double, double* %Hweight242, align 8
  %252 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax243 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %252, i32 0, i32 4
  %253 = load i32, i32* %xmax243, align 4
  %254 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin244 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %254, i32 0, i32 2
  %255 = load i32, i32* %xmin244, align 4
  %sub245 = sub nsw i32 %253, %255
  %conv246 = sitofp i32 %sub245 to double
  %mul247 = fmul double %251, %conv246
  %conv248 = fptosi double %mul247 to i32
  %sub249 = sub nsw i32 %conv241, %conv248
  %256 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight250 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %256, i32 0, i32 12
  %257 = load double, double* %Vweight250, align 8
  %258 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax251 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %258, i32 0, i32 10
  %259 = load i32, i32* %newymax251, align 4
  %260 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin252 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %260, i32 0, i32 8
  %261 = load i32, i32* %newymin252, align 4
  %sub253 = sub nsw i32 %259, %261
  %conv254 = sitofp i32 %sub253 to double
  %mul255 = fmul double %257, %conv254
  %conv256 = fptosi double %mul255 to i32
  %add257 = add nsw i32 %sub249, %conv256
  %262 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight258 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %262, i32 0, i32 12
  %263 = load double, double* %Vweight258, align 8
  %264 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax259 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %264, i32 0, i32 9
  %265 = load i32, i32* %ymax259, align 4
  %266 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin260 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %266, i32 0, i32 6
  %267 = load i32, i32* %ymin260, align 4
  %sub261 = sub nsw i32 %265, %267
  %conv262 = sitofp i32 %sub261 to double
  %mul263 = fmul double %263, %conv262
  %conv264 = fptosi double %mul263 to i32
  %sub265 = sub nsw i32 %add257, %conv264
  %268 = load i32, i32* %cost, align 4
  %add266 = add nsw i32 %268, %sub265
  store i32 %add266, i32* %cost, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %for.end.234, %land.lhs.true.146, %if.end.134
  %269 = load i32, i32* %cost, align 4
  %270 = load i32, i32* @funccost, align 4
  %cmp268 = icmp sle i32 %269, %270
  br i1 %cmp268, label %if.then.278, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.267
  %271 = load i32, i32* @funccost, align 4
  %272 = load i32, i32* %cost, align 4
  %sub270 = sub nsw i32 %271, %272
  %conv271 = sitofp i32 %sub270 to double
  %273 = load double, double* @T, align 8
  %div = fdiv double %conv271, %273
  %call = call double @exp(double %div) #2
  %274 = load i32, i32* @randVar, align 4
  %mul272 = mul nsw i32 %274, 1103515245
  %add273 = add nsw i32 %mul272, 12345
  store i32 %add273, i32* @randVar, align 4
  %and = and i32 %add273, 2147483647
  %conv274 = sitofp i32 %and to double
  %div275 = fdiv double %conv274, 0x41DFFFFFFFC00000
  %cmp276 = fcmp ogt double %call, %div275
  br i1 %cmp276, label %if.then.278, label %if.else.361

if.then.278:                                      ; preds = %lor.lhs.false, %if.end.267
  %275 = load i32, i32* %pin1.addr, align 4
  %idxprom279 = sext i32 %275 to i64
  %276 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx280 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %276, i64 %idxprom279
  %terminal281 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx280, i32 0, i32 0
  %277 = load i32, i32* %terminal281, align 4
  %idxprom282 = sext i32 %277 to i64
  %278 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx283 = getelementptr inbounds %struct.termnets*, %struct.termnets** %278, i64 %idxprom282
  %279 = load %struct.termnets*, %struct.termnets** %arrayidx283, align 8
  store %struct.termnets* %279, %struct.termnets** %tmptr, align 8
  %280 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net284 = getelementptr inbounds %struct.termnets, %struct.termnets* %280, i32 0, i32 0
  %281 = load i32, i32* %net284, align 4
  %idxprom285 = sext i32 %281 to i64
  %282 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx286 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %282, i64 %idxprom285
  %283 = load %struct.dimbox*, %struct.dimbox** %arrayidx286, align 8
  store %struct.dimbox* %283, %struct.dimbox** %dimptr, align 8
  %284 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin287 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %284, i32 0, i32 3
  %285 = load i32, i32* %newxmin287, align 4
  %286 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin288 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %286, i32 0, i32 2
  store i32 %285, i32* %xmin288, align 4
  %287 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax289 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %287, i32 0, i32 5
  %288 = load i32, i32* %newxmax289, align 4
  %289 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax290 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %289, i32 0, i32 4
  store i32 %288, i32* %xmax290, align 4
  %290 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin291 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %290, i32 0, i32 8
  %291 = load i32, i32* %newymin291, align 4
  %292 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin292 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %292, i32 0, i32 6
  store i32 %291, i32* %ymin292, align 4
  %293 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax293 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %293, i32 0, i32 10
  %294 = load i32, i32* %newymax293, align 4
  %295 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax294 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %295, i32 0, i32 9
  store i32 %294, i32* %ymax294, align 4
  %296 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr295 = getelementptr inbounds %struct.termnets, %struct.termnets* %296, i32 0, i32 1
  %297 = load %struct.netbox*, %struct.netbox** %termptr295, align 8
  %newx296 = getelementptr inbounds %struct.netbox, %struct.netbox* %297, i32 0, i32 3
  %298 = load i32, i32* %newx296, align 4
  %299 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr297 = getelementptr inbounds %struct.termnets, %struct.termnets* %299, i32 0, i32 1
  %300 = load %struct.netbox*, %struct.netbox** %termptr297, align 8
  %xpos298 = getelementptr inbounds %struct.netbox, %struct.netbox* %300, i32 0, i32 1
  store i32 %298, i32* %xpos298, align 4
  %301 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr299 = getelementptr inbounds %struct.termnets, %struct.termnets* %301, i32 0, i32 1
  %302 = load %struct.netbox*, %struct.netbox** %termptr299, align 8
  %newy300 = getelementptr inbounds %struct.netbox, %struct.netbox* %302, i32 0, i32 4
  %303 = load i32, i32* %newy300, align 4
  %304 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr301 = getelementptr inbounds %struct.termnets, %struct.termnets* %304, i32 0, i32 1
  %305 = load %struct.netbox*, %struct.netbox** %termptr301, align 8
  %ypos302 = getelementptr inbounds %struct.netbox, %struct.netbox* %305, i32 0, i32 2
  store i32 %303, i32* %ypos302, align 4
  %306 = load i32, i32* %pin2.addr, align 4
  %idxprom303 = sext i32 %306 to i64
  %307 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx304 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %307, i64 %idxprom303
  %terminal305 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx304, i32 0, i32 0
  %308 = load i32, i32* %terminal305, align 4
  %idxprom306 = sext i32 %308 to i64
  %309 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx307 = getelementptr inbounds %struct.termnets*, %struct.termnets** %309, i64 %idxprom306
  %310 = load %struct.termnets*, %struct.termnets** %arrayidx307, align 8
  store %struct.termnets* %310, %struct.termnets** %tmptr, align 8
  %311 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net308 = getelementptr inbounds %struct.termnets, %struct.termnets* %311, i32 0, i32 0
  %312 = load i32, i32* %net308, align 4
  %idxprom309 = sext i32 %312 to i64
  %313 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx310 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %313, i64 %idxprom309
  %314 = load %struct.dimbox*, %struct.dimbox** %arrayidx310, align 8
  store %struct.dimbox* %314, %struct.dimbox** %dimptr, align 8
  %315 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin311 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %315, i32 0, i32 3
  %316 = load i32, i32* %newxmin311, align 4
  %317 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin312 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %317, i32 0, i32 2
  store i32 %316, i32* %xmin312, align 4
  %318 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax313 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %318, i32 0, i32 5
  %319 = load i32, i32* %newxmax313, align 4
  %320 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax314 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %320, i32 0, i32 4
  store i32 %319, i32* %xmax314, align 4
  %321 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin315 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %321, i32 0, i32 8
  %322 = load i32, i32* %newymin315, align 4
  %323 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin316 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %323, i32 0, i32 6
  store i32 %322, i32* %ymin316, align 4
  %324 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax317 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %324, i32 0, i32 10
  %325 = load i32, i32* %newymax317, align 4
  %326 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax318 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %326, i32 0, i32 9
  store i32 %325, i32* %ymax318, align 4
  %327 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr319 = getelementptr inbounds %struct.termnets, %struct.termnets* %327, i32 0, i32 1
  %328 = load %struct.netbox*, %struct.netbox** %termptr319, align 8
  %newx320 = getelementptr inbounds %struct.netbox, %struct.netbox* %328, i32 0, i32 3
  %329 = load i32, i32* %newx320, align 4
  %330 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr321 = getelementptr inbounds %struct.termnets, %struct.termnets* %330, i32 0, i32 1
  %331 = load %struct.netbox*, %struct.netbox** %termptr321, align 8
  %xpos322 = getelementptr inbounds %struct.netbox, %struct.netbox* %331, i32 0, i32 1
  store i32 %329, i32* %xpos322, align 4
  %332 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr323 = getelementptr inbounds %struct.termnets, %struct.termnets* %332, i32 0, i32 1
  %333 = load %struct.netbox*, %struct.netbox** %termptr323, align 8
  %newy324 = getelementptr inbounds %struct.netbox, %struct.netbox* %333, i32 0, i32 4
  %334 = load i32, i32* %newy324, align 4
  %335 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr325 = getelementptr inbounds %struct.termnets, %struct.termnets* %335, i32 0, i32 1
  %336 = load %struct.netbox*, %struct.netbox** %termptr325, align 8
  %ypos326 = getelementptr inbounds %struct.netbox, %struct.netbox* %336, i32 0, i32 2
  store i32 %334, i32* %ypos326, align 4
  %337 = load i32, i32* %pin1.addr, align 4
  %idxprom327 = sext i32 %337 to i64
  %338 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx328 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %338, i64 %idxprom327
  %terminal329 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx328, i32 0, i32 0
  %339 = load i32, i32* %terminal329, align 4
  store i32 %339, i32* %temp, align 4
  %340 = load i32, i32* %pin2.addr, align 4
  %idxprom330 = sext i32 %340 to i64
  %341 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx331 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %341, i64 %idxprom330
  %terminal332 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx331, i32 0, i32 0
  %342 = load i32, i32* %terminal332, align 4
  %343 = load i32, i32* %pin1.addr, align 4
  %idxprom333 = sext i32 %343 to i64
  %344 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx334 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %344, i64 %idxprom333
  %terminal335 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx334, i32 0, i32 0
  store i32 %342, i32* %terminal335, align 4
  %345 = load i32, i32* %temp, align 4
  %346 = load i32, i32* %pin2.addr, align 4
  %idxprom336 = sext i32 %346 to i64
  %347 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx337 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %347, i64 %idxprom336
  %terminal338 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx337, i32 0, i32 0
  store i32 %345, i32* %terminal338, align 4
  %348 = load i32, i32* %pin1.addr, align 4
  %idxprom339 = sext i32 %348 to i64
  %349 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx340 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %349, i64 %idxprom339
  %site = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx340, i32 0, i32 1
  %350 = load i32, i32* %site, align 4
  store i32 %350, i32* %temp, align 4
  %351 = load i32, i32* %pin2.addr, align 4
  %idxprom341 = sext i32 %351 to i64
  %352 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx342 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %352, i64 %idxprom341
  %site343 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx342, i32 0, i32 1
  %353 = load i32, i32* %site343, align 4
  %354 = load i32, i32* %pin1.addr, align 4
  %idxprom344 = sext i32 %354 to i64
  %355 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx345 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %355, i64 %idxprom344
  %site346 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx345, i32 0, i32 1
  store i32 %353, i32* %site346, align 4
  %356 = load i32, i32* %temp, align 4
  %357 = load i32, i32* %pin2.addr, align 4
  %idxprom347 = sext i32 %357 to i64
  %358 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx348 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %358, i64 %idxprom347
  %site349 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx348, i32 0, i32 1
  store i32 %356, i32* %site349, align 4
  %359 = load i32, i32* %pin1.addr, align 4
  %idxprom350 = sext i32 %359 to i64
  %360 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx351 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %360, i64 %idxprom350
  %sequence = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx351, i32 0, i32 7
  %361 = load i32, i32* %sequence, align 4
  store i32 %361, i32* %temp, align 4
  %362 = load i32, i32* %pin2.addr, align 4
  %idxprom352 = sext i32 %362 to i64
  %363 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx353 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %363, i64 %idxprom352
  %sequence354 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx353, i32 0, i32 7
  %364 = load i32, i32* %sequence354, align 4
  %365 = load i32, i32* %pin1.addr, align 4
  %idxprom355 = sext i32 %365 to i64
  %366 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx356 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %366, i64 %idxprom355
  %sequence357 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx356, i32 0, i32 7
  store i32 %364, i32* %sequence357, align 4
  %367 = load i32, i32* %temp, align 4
  %368 = load i32, i32* %pin2.addr, align 4
  %idxprom358 = sext i32 %368 to i64
  %369 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx359 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %369, i64 %idxprom358
  %sequence360 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx359, i32 0, i32 7
  store i32 %367, i32* %sequence360, align 4
  %370 = load i32, i32* %cost, align 4
  store i32 %370, i32* @funccost, align 4
  store i32 1, i32* %retval
  br label %return

if.else.361:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.361, %if.then.278
  %371 = load i32, i32* %retval
  ret i32 %371
}

; Function Attrs: nounwind
declare double @exp(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
