; ModuleID = './MultiSource.Benchmarks.Prolangs-C/252.TimberWolfMC.upin.bc'
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

@Tsave = external global double, align 8
@overfill = external global i32, align 4
@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8
@funccost = external global i32, align 4
@T = external global double, align 8
@randVar = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @upin(%struct.cellbox* %acellptr, i32 %UCpin, i32 %seq, i32 %firstNewSite, i32 %lastNewSite) #0 {
entry:
  %retval = alloca i32, align 4
  %acellptr.addr = alloca %struct.cellbox*, align 8
  %UCpin.addr = alloca i32, align 4
  %seq.addr = alloca i32, align 4
  %firstNewSite.addr = alloca i32, align 4
  %lastNewSite.addr = alloca i32, align 4
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %atileptr = alloca %struct.tilebox*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %SLptr = alloca %struct.locbox*, align 8
  %SCptr = alloca %struct.contentbox*, align 8
  %tm = alloca i32, align 4
  %site = alloca i32, align 4
  %cost = alloca i32, align 4
  %newOverFill = alloca i32, align 4
  %capacity = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %newsite = alloca i32, align 4
  %excess = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %Tscale = alloca double, align 8
  store %struct.cellbox* %acellptr, %struct.cellbox** %acellptr.addr, align 8
  store i32 %UCpin, i32* %UCpin.addr, align 4
  store i32 %seq, i32* %seq.addr, align 4
  store i32 %firstNewSite, i32* %firstNewSite.addr, align 4
  store i32 %lastNewSite, i32* %lastNewSite.addr, align 4
  %0 = load double, double* @Tsave, align 8
  %div = fdiv double %0, 1.000000e+05
  store double %div, double* %Tscale, align 8
  %1 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1, i32 0, i32 2
  %2 = load i32, i32* %xcenter, align 4
  store i32 %2, i32* %axcenter, align 4
  %3 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 3
  %4 = load i32, i32* %ycenter, align 4
  store i32 %4, i32* %aycenter, align 4
  %5 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %5, i32 0, i32 5
  %6 = load i32, i32* %orient, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom
  %8 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  store %struct.tilebox* %8, %struct.tilebox** %atileptr, align 8
  %9 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 20
  %10 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %10, %struct.uncombox** %UCptr, align 8
  %11 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 19
  %12 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  store %struct.contentbox* %12, %struct.contentbox** %SCptr, align 8
  %13 = load %struct.tilebox*, %struct.tilebox** %atileptr, align 8
  %siteLocArray = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 18
  %14 = load %struct.locbox*, %struct.locbox** %siteLocArray, align 8
  store %struct.locbox* %14, %struct.locbox** %SLptr, align 8
  %15 = load i32, i32* @overfill, align 4
  store i32 %15, i32* %newOverFill, align 4
  %16 = load i32, i32* %firstNewSite.addr, align 4
  store i32 %16, i32* %site, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %site, align 4
  %18 = load i32, i32* %lastNewSite.addr, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %site, align 4
  %idxprom1 = sext i32 %19 to i64
  %20 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx2 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %idxprom1
  %contents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx2, i32 0, i32 0
  %21 = load i32, i32* %contents, align 4
  %22 = load i32, i32* %site, align 4
  %idxprom3 = sext i32 %22 to i64
  %23 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx4 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %23, i64 %idxprom3
  %newContents = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx4, i32 0, i32 1
  store i32 %21, i32* %newContents, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %site, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %site, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %UCpin.addr, align 4
  %idxprom5 = sext i32 %25 to i64
  %26 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx6 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %26, i64 %idxprom5
  %site7 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx6, i32 0, i32 1
  %27 = load i32, i32* %site7, align 4
  store i32 %27, i32* %site, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %for.end
  %28 = load i32, i32* %site, align 4
  %29 = load i32, i32* %UCpin.addr, align 4
  %30 = load i32, i32* %seq.addr, align 4
  %add = add nsw i32 %29, %30
  %sub = sub nsw i32 %add, 1
  %idxprom9 = sext i32 %sub to i64
  %31 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx10 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %31, i64 %idxprom9
  %site11 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx10, i32 0, i32 1
  %32 = load i32, i32* %site11, align 4
  %cmp12 = icmp sle i32 %28, %32
  br i1 %cmp12, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.8
  %33 = load i32, i32* %site, align 4
  %idxprom14 = sext i32 %33 to i64
  %34 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx15 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %34, i64 %idxprom14
  %contents16 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx15, i32 0, i32 0
  %35 = load i32, i32* %contents16, align 4
  %36 = load i32, i32* %site, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx18 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %37, i64 %idxprom17
  %newContents19 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx18, i32 0, i32 1
  store i32 %35, i32* %newContents19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.13
  %38 = load i32, i32* %site, align 4
  %inc21 = add nsw i32 %38, 1
  store i32 %inc21, i32* %site, align 4
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  %39 = load i32, i32* %UCpin.addr, align 4
  store i32 %39, i32* %tm, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.56, %for.end.22
  %40 = load i32, i32* %tm, align 4
  %41 = load i32, i32* %UCpin.addr, align 4
  %42 = load i32, i32* %seq.addr, align 4
  %add24 = add nsw i32 %41, %42
  %cmp25 = icmp slt i32 %40, %add24
  br i1 %cmp25, label %for.body.26, label %for.end.58

for.body.26:                                      ; preds = %for.cond.23
  %43 = load i32, i32* %tm, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx28 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %44, i64 %idxprom27
  %site29 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx28, i32 0, i32 1
  %45 = load i32, i32* %site29, align 4
  store i32 %45, i32* %site, align 4
  %46 = load i32, i32* %site, align 4
  %idxprom30 = sext i32 %46 to i64
  %47 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx31 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %47, i64 %idxprom30
  %newContents32 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx31, i32 0, i32 1
  %48 = load i32, i32* %newContents32, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %newContents32, align 4
  %49 = load i32, i32* %site, align 4
  %idxprom33 = sext i32 %49 to i64
  %50 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx34 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %50, i64 %idxprom33
  %capacity35 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx34, i32 0, i32 2
  %51 = load i32, i32* %capacity35, align 4
  %sub36 = sub nsw i32 %48, %51
  store i32 %sub36, i32* %excess, align 4
  %52 = load i32, i32* %excess, align 4
  %cmp37 = icmp sgt i32 %52, 0
  br i1 %cmp37, label %if.then, label %if.end.55

if.then:                                          ; preds = %for.body.26
  %53 = load i32, i32* %excess, align 4
  %cmp38 = icmp eq i32 %53, 1
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then
  %54 = load double, double* %Tscale, align 8
  %mul = fmul double %54, 1.000000e+01
  %conv = fptosi double %mul to i32
  %55 = load i32, i32* %newOverFill, align 4
  %sub40 = sub nsw i32 %55, %conv
  store i32 %sub40, i32* %newOverFill, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %56 = load double, double* %Tscale, align 8
  %mul41 = fmul double %56, 1.000000e+01
  %57 = load i32, i32* %excess, align 4
  %58 = load i32, i32* %excess, align 4
  %mul42 = mul nsw i32 %57, %58
  %conv43 = sitofp i32 %mul42 to double
  %mul44 = fmul double %mul41, %conv43
  %conv45 = fptosi double %mul44 to i32
  %59 = load double, double* %Tscale, align 8
  %mul46 = fmul double %59, 1.000000e+01
  %60 = load i32, i32* %excess, align 4
  %sub47 = sub nsw i32 %60, 1
  %61 = load i32, i32* %excess, align 4
  %sub48 = sub nsw i32 %61, 1
  %mul49 = mul nsw i32 %sub47, %sub48
  %conv50 = sitofp i32 %mul49 to double
  %mul51 = fmul double %mul46, %conv50
  %conv52 = fptosi double %mul51 to i32
  %sub53 = sub nsw i32 %conv45, %conv52
  %62 = load i32, i32* %newOverFill, align 4
  %sub54 = sub nsw i32 %62, %sub53
  store i32 %sub54, i32* %newOverFill, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %for.body.26
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %63 = load i32, i32* %tm, align 4
  %inc57 = add nsw i32 %63, 1
  store i32 %inc57, i32* %tm, align 4
  br label %for.cond.23

for.end.58:                                       ; preds = %for.cond.23
  %64 = load i32, i32* %firstNewSite.addr, align 4
  %sub59 = sub nsw i32 %64, 1
  store i32 %sub59, i32* %site, align 4
  store i32 0, i32* %capacity, align 4
  store i32 0, i32* %count, align 4
  %65 = load i32, i32* %UCpin.addr, align 4
  store i32 %65, i32* %tm, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.108, %for.end.58
  %66 = load i32, i32* %tm, align 4
  %67 = load i32, i32* %UCpin.addr, align 4
  %68 = load i32, i32* %seq.addr, align 4
  %add61 = add nsw i32 %67, %68
  %cmp62 = icmp slt i32 %66, %add61
  br i1 %cmp62, label %for.body.64, label %for.end.110

for.body.64:                                      ; preds = %for.cond.60
  %69 = load i32, i32* %count, align 4
  %inc65 = add nsw i32 %69, 1
  store i32 %inc65, i32* %count, align 4
  %70 = load i32, i32* %count, align 4
  %71 = load i32, i32* %capacity, align 4
  %cmp66 = icmp sgt i32 %70, %71
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.body.64
  %72 = load i32, i32* %site, align 4
  %inc69 = add nsw i32 %72, 1
  store i32 %inc69, i32* %site, align 4
  store i32 1, i32* %count, align 4
  %73 = load i32, i32* %site, align 4
  %idxprom70 = sext i32 %73 to i64
  %74 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx71 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %74, i64 %idxprom70
  %capacity72 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx71, i32 0, i32 2
  %75 = load i32, i32* %capacity72, align 4
  store i32 %75, i32* %capacity, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %for.body.64
  %76 = load i32, i32* %site, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx75 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %77, i64 %idxprom74
  %newContents76 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx75, i32 0, i32 1
  %78 = load i32, i32* %newContents76, align 4
  %inc77 = add nsw i32 %78, 1
  store i32 %inc77, i32* %newContents76, align 4
  %79 = load i32, i32* %capacity, align 4
  %sub78 = sub nsw i32 %inc77, %79
  store i32 %sub78, i32* %excess, align 4
  %80 = load i32, i32* %excess, align 4
  %cmp79 = icmp sgt i32 %80, 0
  br i1 %cmp79, label %if.then.81, label %if.end.104

if.then.81:                                       ; preds = %if.end.73
  %81 = load i32, i32* %excess, align 4
  %cmp82 = icmp eq i32 %81, 1
  br i1 %cmp82, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %if.then.81
  %82 = load double, double* %Tscale, align 8
  %mul85 = fmul double %82, 1.000000e+01
  %conv86 = fptosi double %mul85 to i32
  %83 = load i32, i32* %newOverFill, align 4
  %add87 = add nsw i32 %83, %conv86
  store i32 %add87, i32* %newOverFill, align 4
  br label %if.end.103

if.else.88:                                       ; preds = %if.then.81
  %84 = load double, double* %Tscale, align 8
  %mul89 = fmul double %84, 1.000000e+01
  %85 = load i32, i32* %excess, align 4
  %86 = load i32, i32* %excess, align 4
  %mul90 = mul nsw i32 %85, %86
  %conv91 = sitofp i32 %mul90 to double
  %mul92 = fmul double %mul89, %conv91
  %conv93 = fptosi double %mul92 to i32
  %87 = load double, double* %Tscale, align 8
  %mul94 = fmul double %87, 1.000000e+01
  %88 = load i32, i32* %excess, align 4
  %sub95 = sub nsw i32 %88, 1
  %89 = load i32, i32* %excess, align 4
  %sub96 = sub nsw i32 %89, 1
  %mul97 = mul nsw i32 %sub95, %sub96
  %conv98 = sitofp i32 %mul97 to double
  %mul99 = fmul double %mul94, %conv98
  %conv100 = fptosi double %mul99 to i32
  %sub101 = sub nsw i32 %conv93, %conv100
  %90 = load i32, i32* %newOverFill, align 4
  %add102 = add nsw i32 %90, %sub101
  store i32 %add102, i32* %newOverFill, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.88, %if.then.84
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.73
  %91 = load i32, i32* %site, align 4
  %92 = load i32, i32* %tm, align 4
  %idxprom105 = sext i32 %92 to i64
  %93 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx106 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %93, i64 %idxprom105
  %newsite107 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx106, i32 0, i32 2
  store i32 %91, i32* %newsite107, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.104
  %94 = load i32, i32* %tm, align 4
  %inc109 = add nsw i32 %94, 1
  store i32 %inc109, i32* %tm, align 4
  br label %for.cond.60

for.end.110:                                      ; preds = %for.cond.60
  %95 = load i32, i32* %UCpin.addr, align 4
  store i32 %95, i32* %tm, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.134, %for.end.110
  %96 = load i32, i32* %tm, align 4
  %97 = load i32, i32* %UCpin.addr, align 4
  %98 = load i32, i32* %seq.addr, align 4
  %add112 = add nsw i32 %97, %98
  %cmp113 = icmp slt i32 %96, %add112
  br i1 %cmp113, label %for.body.115, label %for.end.136

for.body.115:                                     ; preds = %for.cond.111
  %99 = load i32, i32* %tm, align 4
  %idxprom116 = sext i32 %99 to i64
  %100 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx117 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %100, i64 %idxprom116
  %newsite118 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx117, i32 0, i32 2
  %101 = load i32, i32* %newsite118, align 4
  store i32 %101, i32* %newsite, align 4
  %102 = load i32, i32* %newsite, align 4
  %idxprom119 = sext i32 %102 to i64
  %103 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx120 = getelementptr inbounds %struct.locbox, %struct.locbox* %103, i64 %idxprom119
  %xpos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx120, i32 0, i32 0
  %104 = load i32, i32* %xpos, align 4
  %105 = load i32, i32* %axcenter, align 4
  %add121 = add nsw i32 %104, %105
  store i32 %add121, i32* %x, align 4
  %106 = load i32, i32* %newsite, align 4
  %idxprom122 = sext i32 %106 to i64
  %107 = load %struct.locbox*, %struct.locbox** %SLptr, align 8
  %arrayidx123 = getelementptr inbounds %struct.locbox, %struct.locbox* %107, i64 %idxprom122
  %ypos = getelementptr inbounds %struct.locbox, %struct.locbox* %arrayidx123, i32 0, i32 1
  %108 = load i32, i32* %ypos, align 4
  %109 = load i32, i32* %aycenter, align 4
  %add124 = add nsw i32 %108, %109
  store i32 %add124, i32* %y, align 4
  %110 = load i32, i32* %tm, align 4
  %idxprom125 = sext i32 %110 to i64
  %111 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx126 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %111, i64 %idxprom125
  %terminal = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx126, i32 0, i32 0
  %112 = load i32, i32* %terminal, align 4
  %idxprom127 = sext i32 %112 to i64
  %113 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx128 = getelementptr inbounds %struct.termnets*, %struct.termnets** %113, i64 %idxprom127
  %114 = load %struct.termnets*, %struct.termnets** %arrayidx128, align 8
  store %struct.termnets* %114, %struct.termnets** %tmptr, align 8
  %115 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %115, i32 0, i32 0
  %116 = load i32, i32* %net, align 4
  %idxprom129 = sext i32 %116 to i64
  %117 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx130 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %117, i64 %idxprom129
  %118 = load %struct.dimbox*, %struct.dimbox** %arrayidx130, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i32 0, i32 7
  store i32 1, i32* %flag, align 4
  %119 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr = getelementptr inbounds %struct.termnets, %struct.termnets* %119, i32 0, i32 1
  %120 = load %struct.netbox*, %struct.netbox** %termptr, align 8
  %flag131 = getelementptr inbounds %struct.netbox, %struct.netbox* %120, i32 0, i32 6
  store i32 1, i32* %flag131, align 4
  %121 = load i32, i32* %x, align 4
  %122 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr132 = getelementptr inbounds %struct.termnets, %struct.termnets* %122, i32 0, i32 1
  %123 = load %struct.netbox*, %struct.netbox** %termptr132, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %123, i32 0, i32 3
  store i32 %121, i32* %newx, align 4
  %124 = load i32, i32* %y, align 4
  %125 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr133 = getelementptr inbounds %struct.termnets, %struct.termnets* %125, i32 0, i32 1
  %126 = load %struct.netbox*, %struct.netbox** %termptr133, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %126, i32 0, i32 4
  store i32 %124, i32* %newy, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.115
  %127 = load i32, i32* %tm, align 4
  %inc135 = add nsw i32 %127, 1
  store i32 %inc135, i32* %tm, align 4
  br label %for.cond.111

for.end.136:                                      ; preds = %for.cond.111
  %128 = load i32, i32* @funccost, align 4
  store i32 %128, i32* %cost, align 4
  %129 = load i32, i32* %UCpin.addr, align 4
  store i32 %129, i32* %tm, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.262, %for.end.136
  %130 = load i32, i32* %tm, align 4
  %131 = load i32, i32* %UCpin.addr, align 4
  %132 = load i32, i32* %seq.addr, align 4
  %add138 = add nsw i32 %131, %132
  %cmp139 = icmp slt i32 %130, %add138
  br i1 %cmp139, label %for.body.141, label %for.end.264

for.body.141:                                     ; preds = %for.cond.137
  %133 = load i32, i32* %tm, align 4
  %idxprom142 = sext i32 %133 to i64
  %134 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx143 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %134, i64 %idxprom142
  %terminal144 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx143, i32 0, i32 0
  %135 = load i32, i32* %terminal144, align 4
  %idxprom145 = sext i32 %135 to i64
  %136 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx146 = getelementptr inbounds %struct.termnets*, %struct.termnets** %136, i64 %idxprom145
  %137 = load %struct.termnets*, %struct.termnets** %arrayidx146, align 8
  store %struct.termnets* %137, %struct.termnets** %tmptr, align 8
  %138 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net147 = getelementptr inbounds %struct.termnets, %struct.termnets* %138, i32 0, i32 0
  %139 = load i32, i32* %net147, align 4
  %idxprom148 = sext i32 %139 to i64
  %140 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx149 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %140, i64 %idxprom148
  %141 = load %struct.dimbox*, %struct.dimbox** %arrayidx149, align 8
  store %struct.dimbox* %141, %struct.dimbox** %dimptr, align 8
  %142 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag150 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %142, i32 0, i32 7
  %143 = load i32, i32* %flag150, align 4
  %cmp151 = icmp eq i32 %143, 0
  br i1 %cmp151, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.141
  %144 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %144, i32 0, i32 1
  %145 = load i32, i32* %skip, align 4
  %cmp153 = icmp eq i32 %145, 1
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %lor.lhs.false, %for.body.141
  br label %for.inc.262

if.end.156:                                       ; preds = %lor.lhs.false
  %146 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag157 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %146, i32 0, i32 7
  store i32 0, i32* %flag157, align 4
  %147 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr158 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %147, i32 0, i32 0
  %148 = load %struct.netbox*, %struct.netbox** %netptr158, align 8
  store %struct.netbox* %148, %struct.netbox** %netptr, align 8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.184, %if.end.156
  %149 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp160 = icmp eq %struct.netbox* %149, null
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.cond.159
  br label %for.end.186

if.end.163:                                       ; preds = %for.cond.159
  %150 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip164 = getelementptr inbounds %struct.netbox, %struct.netbox* %150, i32 0, i32 9
  %151 = load i32, i32* %skip164, align 4
  %cmp165 = icmp eq i32 %151, 1
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.163
  br label %for.inc.184

if.end.168:                                       ; preds = %if.end.163
  %152 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag169 = getelementptr inbounds %struct.netbox, %struct.netbox* %152, i32 0, i32 6
  %153 = load i32, i32* %flag169, align 4
  %cmp170 = icmp eq i32 %153, 1
  br i1 %cmp170, label %if.then.172, label %if.else.176

if.then.172:                                      ; preds = %if.end.168
  %154 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx173 = getelementptr inbounds %struct.netbox, %struct.netbox* %154, i32 0, i32 3
  %155 = load i32, i32* %newx173, align 4
  %156 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %156, i32 0, i32 5
  store i32 %155, i32* %newxmax, align 4
  %157 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %157, i32 0, i32 3
  store i32 %155, i32* %newxmin, align 4
  %158 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy174 = getelementptr inbounds %struct.netbox, %struct.netbox* %158, i32 0, i32 4
  %159 = load i32, i32* %newy174, align 4
  %160 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %160, i32 0, i32 10
  store i32 %159, i32* %newymax, align 4
  %161 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %161, i32 0, i32 8
  store i32 %159, i32* %newymin, align 4
  %162 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag175 = getelementptr inbounds %struct.netbox, %struct.netbox* %162, i32 0, i32 6
  store i32 0, i32* %flag175, align 4
  br label %if.end.183

if.else.176:                                      ; preds = %if.end.168
  %163 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos177 = getelementptr inbounds %struct.netbox, %struct.netbox* %163, i32 0, i32 1
  %164 = load i32, i32* %xpos177, align 4
  %165 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax178 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %165, i32 0, i32 5
  store i32 %164, i32* %newxmax178, align 4
  %166 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin179 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %166, i32 0, i32 3
  store i32 %164, i32* %newxmin179, align 4
  %167 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos180 = getelementptr inbounds %struct.netbox, %struct.netbox* %167, i32 0, i32 2
  %168 = load i32, i32* %ypos180, align 4
  %169 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax181 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %169, i32 0, i32 10
  store i32 %168, i32* %newymax181, align 4
  %170 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin182 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %170, i32 0, i32 8
  store i32 %168, i32* %newymin182, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.176, %if.then.172
  %171 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %171, i32 0, i32 0
  %172 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %172, %struct.netbox** %netptr, align 8
  br label %for.end.186

for.inc.184:                                      ; preds = %if.then.167
  %173 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm185 = getelementptr inbounds %struct.netbox, %struct.netbox* %173, i32 0, i32 0
  %174 = load %struct.netbox*, %struct.netbox** %nextterm185, align 8
  store %struct.netbox* %174, %struct.netbox** %netptr, align 8
  br label %for.cond.159

for.end.186:                                      ; preds = %if.end.183, %if.then.162
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.233, %for.end.186
  %175 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp188 = icmp ne %struct.netbox* %175, null
  br i1 %cmp188, label %for.body.190, label %for.end.235

for.body.190:                                     ; preds = %for.cond.187
  %176 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip191 = getelementptr inbounds %struct.netbox, %struct.netbox* %176, i32 0, i32 9
  %177 = load i32, i32* %skip191, align 4
  %cmp192 = icmp eq i32 %177, 1
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %for.body.190
  br label %for.inc.233

if.end.195:                                       ; preds = %for.body.190
  %178 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag196 = getelementptr inbounds %struct.netbox, %struct.netbox* %178, i32 0, i32 6
  %179 = load i32, i32* %flag196, align 4
  %cmp197 = icmp eq i32 %179, 1
  br i1 %cmp197, label %if.then.199, label %if.else.203

if.then.199:                                      ; preds = %if.end.195
  %180 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx200 = getelementptr inbounds %struct.netbox, %struct.netbox* %180, i32 0, i32 3
  %181 = load i32, i32* %newx200, align 4
  store i32 %181, i32* %x, align 4
  %182 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy201 = getelementptr inbounds %struct.netbox, %struct.netbox* %182, i32 0, i32 4
  %183 = load i32, i32* %newy201, align 4
  store i32 %183, i32* %y, align 4
  %184 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag202 = getelementptr inbounds %struct.netbox, %struct.netbox* %184, i32 0, i32 6
  store i32 0, i32* %flag202, align 4
  br label %if.end.206

if.else.203:                                      ; preds = %if.end.195
  %185 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos204 = getelementptr inbounds %struct.netbox, %struct.netbox* %185, i32 0, i32 1
  %186 = load i32, i32* %xpos204, align 4
  store i32 %186, i32* %x, align 4
  %187 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos205 = getelementptr inbounds %struct.netbox, %struct.netbox* %187, i32 0, i32 2
  %188 = load i32, i32* %ypos205, align 4
  store i32 %188, i32* %y, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.199
  %189 = load i32, i32* %x, align 4
  %190 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin207 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %190, i32 0, i32 3
  %191 = load i32, i32* %newxmin207, align 4
  %cmp208 = icmp slt i32 %189, %191
  br i1 %cmp208, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %if.end.206
  %192 = load i32, i32* %x, align 4
  %193 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin211 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %193, i32 0, i32 3
  store i32 %192, i32* %newxmin211, align 4
  br label %if.end.219

if.else.212:                                      ; preds = %if.end.206
  %194 = load i32, i32* %x, align 4
  %195 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax213 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i32 0, i32 5
  %196 = load i32, i32* %newxmax213, align 4
  %cmp214 = icmp sgt i32 %194, %196
  br i1 %cmp214, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.else.212
  %197 = load i32, i32* %x, align 4
  %198 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax217 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %198, i32 0, i32 5
  store i32 %197, i32* %newxmax217, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %if.else.212
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.210
  %199 = load i32, i32* %y, align 4
  %200 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin220 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %200, i32 0, i32 8
  %201 = load i32, i32* %newymin220, align 4
  %cmp221 = icmp slt i32 %199, %201
  br i1 %cmp221, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %if.end.219
  %202 = load i32, i32* %y, align 4
  %203 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin224 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %203, i32 0, i32 8
  store i32 %202, i32* %newymin224, align 4
  br label %if.end.232

if.else.225:                                      ; preds = %if.end.219
  %204 = load i32, i32* %y, align 4
  %205 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax226 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %205, i32 0, i32 10
  %206 = load i32, i32* %newymax226, align 4
  %cmp227 = icmp sgt i32 %204, %206
  br i1 %cmp227, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.else.225
  %207 = load i32, i32* %y, align 4
  %208 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax230 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %208, i32 0, i32 10
  store i32 %207, i32* %newymax230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.else.225
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.223
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232, %if.then.194
  %209 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm234 = getelementptr inbounds %struct.netbox, %struct.netbox* %209, i32 0, i32 0
  %210 = load %struct.netbox*, %struct.netbox** %nextterm234, align 8
  store %struct.netbox* %210, %struct.netbox** %netptr, align 8
  br label %for.cond.187

for.end.235:                                      ; preds = %for.cond.187
  %211 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %211, i32 0, i32 11
  %212 = load double, double* %Hweight, align 8
  %213 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax236 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %213, i32 0, i32 5
  %214 = load i32, i32* %newxmax236, align 4
  %215 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin237 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %215, i32 0, i32 3
  %216 = load i32, i32* %newxmin237, align 4
  %sub238 = sub nsw i32 %214, %216
  %conv239 = sitofp i32 %sub238 to double
  %mul240 = fmul double %212, %conv239
  %conv241 = fptosi double %mul240 to i32
  %217 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight242 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %217, i32 0, i32 11
  %218 = load double, double* %Hweight242, align 8
  %219 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %219, i32 0, i32 4
  %220 = load i32, i32* %xmax, align 4
  %221 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %221, i32 0, i32 2
  %222 = load i32, i32* %xmin, align 4
  %sub243 = sub nsw i32 %220, %222
  %conv244 = sitofp i32 %sub243 to double
  %mul245 = fmul double %218, %conv244
  %conv246 = fptosi double %mul245 to i32
  %sub247 = sub nsw i32 %conv241, %conv246
  %223 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %223, i32 0, i32 12
  %224 = load double, double* %Vweight, align 8
  %225 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax248 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %225, i32 0, i32 10
  %226 = load i32, i32* %newymax248, align 4
  %227 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin249 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %227, i32 0, i32 8
  %228 = load i32, i32* %newymin249, align 4
  %sub250 = sub nsw i32 %226, %228
  %conv251 = sitofp i32 %sub250 to double
  %mul252 = fmul double %224, %conv251
  %conv253 = fptosi double %mul252 to i32
  %add254 = add nsw i32 %sub247, %conv253
  %229 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight255 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %229, i32 0, i32 12
  %230 = load double, double* %Vweight255, align 8
  %231 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %231, i32 0, i32 9
  %232 = load i32, i32* %ymax, align 4
  %233 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %233, i32 0, i32 6
  %234 = load i32, i32* %ymin, align 4
  %sub256 = sub nsw i32 %232, %234
  %conv257 = sitofp i32 %sub256 to double
  %mul258 = fmul double %230, %conv257
  %conv259 = fptosi double %mul258 to i32
  %sub260 = sub nsw i32 %add254, %conv259
  %235 = load i32, i32* %cost, align 4
  %add261 = add nsw i32 %235, %sub260
  store i32 %add261, i32* %cost, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.235, %if.then.155
  %236 = load i32, i32* %tm, align 4
  %inc263 = add nsw i32 %236, 1
  store i32 %inc263, i32* %tm, align 4
  br label %for.cond.137

for.end.264:                                      ; preds = %for.cond.137
  %237 = load i32, i32* %cost, align 4
  %238 = load i32, i32* %newOverFill, align 4
  %add265 = add nsw i32 %237, %238
  %239 = load i32, i32* @funccost, align 4
  %240 = load i32, i32* @overfill, align 4
  %add266 = add nsw i32 %239, %240
  %cmp267 = icmp sle i32 %add265, %add266
  br i1 %cmp267, label %if.then.281, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %for.end.264
  %241 = load i32, i32* @funccost, align 4
  %242 = load i32, i32* @overfill, align 4
  %add270 = add nsw i32 %241, %242
  %243 = load i32, i32* %cost, align 4
  %sub271 = sub nsw i32 %add270, %243
  %244 = load i32, i32* %newOverFill, align 4
  %sub272 = sub nsw i32 %sub271, %244
  %conv273 = sitofp i32 %sub272 to double
  %245 = load double, double* @T, align 8
  %div274 = fdiv double %conv273, %245
  %call = call double @exp(double %div274) #2
  %246 = load i32, i32* @randVar, align 4
  %mul275 = mul nsw i32 %246, 1103515245
  %add276 = add nsw i32 %mul275, 12345
  store i32 %add276, i32* @randVar, align 4
  %and = and i32 %add276, 2147483647
  %conv277 = sitofp i32 %and to double
  %div278 = fdiv double %conv277, 0x41DFFFFFFFC00000
  %cmp279 = fcmp ogt double %call, %div278
  br i1 %cmp279, label %if.then.281, label %if.else.362

if.then.281:                                      ; preds = %lor.lhs.false.269, %for.end.264
  %247 = load i32, i32* %UCpin.addr, align 4
  store i32 %247, i32* %tm, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.311, %if.then.281
  %248 = load i32, i32* %tm, align 4
  %249 = load i32, i32* %UCpin.addr, align 4
  %250 = load i32, i32* %seq.addr, align 4
  %add283 = add nsw i32 %249, %250
  %cmp284 = icmp slt i32 %248, %add283
  br i1 %cmp284, label %for.body.286, label %for.end.313

for.body.286:                                     ; preds = %for.cond.282
  %251 = load i32, i32* %tm, align 4
  %idxprom287 = sext i32 %251 to i64
  %252 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx288 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %252, i64 %idxprom287
  %terminal289 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx288, i32 0, i32 0
  %253 = load i32, i32* %terminal289, align 4
  %idxprom290 = sext i32 %253 to i64
  %254 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx291 = getelementptr inbounds %struct.termnets*, %struct.termnets** %254, i64 %idxprom290
  %255 = load %struct.termnets*, %struct.termnets** %arrayidx291, align 8
  store %struct.termnets* %255, %struct.termnets** %tmptr, align 8
  %256 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net292 = getelementptr inbounds %struct.termnets, %struct.termnets* %256, i32 0, i32 0
  %257 = load i32, i32* %net292, align 4
  %idxprom293 = sext i32 %257 to i64
  %258 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx294 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %258, i64 %idxprom293
  %259 = load %struct.dimbox*, %struct.dimbox** %arrayidx294, align 8
  store %struct.dimbox* %259, %struct.dimbox** %dimptr, align 8
  %260 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin295 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %260, i32 0, i32 3
  %261 = load i32, i32* %newxmin295, align 4
  %262 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin296 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %262, i32 0, i32 2
  store i32 %261, i32* %xmin296, align 4
  %263 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax297 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %263, i32 0, i32 5
  %264 = load i32, i32* %newxmax297, align 4
  %265 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax298 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %265, i32 0, i32 4
  store i32 %264, i32* %xmax298, align 4
  %266 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin299 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %266, i32 0, i32 8
  %267 = load i32, i32* %newymin299, align 4
  %268 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin300 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %268, i32 0, i32 6
  store i32 %267, i32* %ymin300, align 4
  %269 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax301 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %269, i32 0, i32 10
  %270 = load i32, i32* %newymax301, align 4
  %271 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax302 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %271, i32 0, i32 9
  store i32 %270, i32* %ymax302, align 4
  %272 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr303 = getelementptr inbounds %struct.termnets, %struct.termnets* %272, i32 0, i32 1
  %273 = load %struct.netbox*, %struct.netbox** %termptr303, align 8
  %newx304 = getelementptr inbounds %struct.netbox, %struct.netbox* %273, i32 0, i32 3
  %274 = load i32, i32* %newx304, align 4
  %275 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr305 = getelementptr inbounds %struct.termnets, %struct.termnets* %275, i32 0, i32 1
  %276 = load %struct.netbox*, %struct.netbox** %termptr305, align 8
  %xpos306 = getelementptr inbounds %struct.netbox, %struct.netbox* %276, i32 0, i32 1
  store i32 %274, i32* %xpos306, align 4
  %277 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr307 = getelementptr inbounds %struct.termnets, %struct.termnets* %277, i32 0, i32 1
  %278 = load %struct.netbox*, %struct.netbox** %termptr307, align 8
  %newy308 = getelementptr inbounds %struct.netbox, %struct.netbox* %278, i32 0, i32 4
  %279 = load i32, i32* %newy308, align 4
  %280 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %termptr309 = getelementptr inbounds %struct.termnets, %struct.termnets* %280, i32 0, i32 1
  %281 = load %struct.netbox*, %struct.netbox** %termptr309, align 8
  %ypos310 = getelementptr inbounds %struct.netbox, %struct.netbox* %281, i32 0, i32 2
  store i32 %279, i32* %ypos310, align 4
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.body.286
  %282 = load i32, i32* %tm, align 4
  %inc312 = add nsw i32 %282, 1
  store i32 %inc312, i32* %tm, align 4
  br label %for.cond.282

for.end.313:                                      ; preds = %for.cond.282
  %283 = load i32, i32* %firstNewSite.addr, align 4
  store i32 %283, i32* %site, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.324, %for.end.313
  %284 = load i32, i32* %site, align 4
  %285 = load i32, i32* %lastNewSite.addr, align 4
  %cmp315 = icmp sle i32 %284, %285
  br i1 %cmp315, label %for.body.317, label %for.end.326

for.body.317:                                     ; preds = %for.cond.314
  %286 = load i32, i32* %site, align 4
  %idxprom318 = sext i32 %286 to i64
  %287 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx319 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %287, i64 %idxprom318
  %newContents320 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx319, i32 0, i32 1
  %288 = load i32, i32* %newContents320, align 4
  %289 = load i32, i32* %site, align 4
  %idxprom321 = sext i32 %289 to i64
  %290 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx322 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %290, i64 %idxprom321
  %contents323 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx322, i32 0, i32 0
  store i32 %288, i32* %contents323, align 4
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.body.317
  %291 = load i32, i32* %site, align 4
  %inc325 = add nsw i32 %291, 1
  store i32 %inc325, i32* %site, align 4
  br label %for.cond.314

for.end.326:                                      ; preds = %for.cond.314
  %292 = load i32, i32* %UCpin.addr, align 4
  %idxprom327 = sext i32 %292 to i64
  %293 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx328 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %293, i64 %idxprom327
  %site329 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx328, i32 0, i32 1
  %294 = load i32, i32* %site329, align 4
  store i32 %294, i32* %site, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.345, %for.end.326
  %295 = load i32, i32* %site, align 4
  %296 = load i32, i32* %UCpin.addr, align 4
  %297 = load i32, i32* %seq.addr, align 4
  %add331 = add nsw i32 %296, %297
  %sub332 = sub nsw i32 %add331, 1
  %idxprom333 = sext i32 %sub332 to i64
  %298 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx334 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %298, i64 %idxprom333
  %site335 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx334, i32 0, i32 1
  %299 = load i32, i32* %site335, align 4
  %cmp336 = icmp sle i32 %295, %299
  br i1 %cmp336, label %for.body.338, label %for.end.347

for.body.338:                                     ; preds = %for.cond.330
  %300 = load i32, i32* %site, align 4
  %idxprom339 = sext i32 %300 to i64
  %301 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx340 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %301, i64 %idxprom339
  %newContents341 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx340, i32 0, i32 1
  %302 = load i32, i32* %newContents341, align 4
  %303 = load i32, i32* %site, align 4
  %idxprom342 = sext i32 %303 to i64
  %304 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx343 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %304, i64 %idxprom342
  %contents344 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx343, i32 0, i32 0
  store i32 %302, i32* %contents344, align 4
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.body.338
  %305 = load i32, i32* %site, align 4
  %inc346 = add nsw i32 %305, 1
  store i32 %inc346, i32* %site, align 4
  br label %for.cond.330

for.end.347:                                      ; preds = %for.cond.330
  %306 = load i32, i32* %UCpin.addr, align 4
  store i32 %306, i32* %tm, align 4
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.359, %for.end.347
  %307 = load i32, i32* %tm, align 4
  %308 = load i32, i32* %UCpin.addr, align 4
  %309 = load i32, i32* %seq.addr, align 4
  %add349 = add nsw i32 %308, %309
  %cmp350 = icmp slt i32 %307, %add349
  br i1 %cmp350, label %for.body.352, label %for.end.361

for.body.352:                                     ; preds = %for.cond.348
  %310 = load i32, i32* %tm, align 4
  %idxprom353 = sext i32 %310 to i64
  %311 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx354 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %311, i64 %idxprom353
  %newsite355 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx354, i32 0, i32 2
  %312 = load i32, i32* %newsite355, align 4
  %313 = load i32, i32* %tm, align 4
  %idxprom356 = sext i32 %313 to i64
  %314 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx357 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %314, i64 %idxprom356
  %site358 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx357, i32 0, i32 1
  store i32 %312, i32* %site358, align 4
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.body.352
  %315 = load i32, i32* %tm, align 4
  %inc360 = add nsw i32 %315, 1
  store i32 %inc360, i32* %tm, align 4
  br label %for.cond.348

for.end.361:                                      ; preds = %for.cond.348
  %316 = load i32, i32* %cost, align 4
  store i32 %316, i32* @funccost, align 4
  %317 = load i32, i32* %newOverFill, align 4
  store i32 %317, i32* @overfill, align 4
  store i32 1, i32* %retval
  br label %return

if.else.362:                                      ; preds = %lor.lhs.false.269
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.362, %for.end.361
  %318 = load i32, i32* %retval
  ret i32 %318
}

; Function Attrs: nounwind
declare double @exp(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
