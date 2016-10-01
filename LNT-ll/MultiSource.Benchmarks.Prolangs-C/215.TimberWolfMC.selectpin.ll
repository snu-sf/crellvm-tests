; ModuleID = './MultiSource.Benchmarks.Prolangs-C/215.TimberWolfMC.selectpin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@randVar = external global i32, align 4
@flips = external global i32, align 4
@flipp = external global i32, align 4
@attp = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @selectpin(%struct.cellbox* %acellptr) #0 {
entry:
  %acellptr.addr = alloca %struct.cellbox*, align 8
  %SCptr = alloca %struct.contentbox*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %firstNewSite = alloca i32, align 4
  %lastNewSite = alloca i32, align 4
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  %seq = alloca i32, align 4
  %ok = alloca i32, align 4
  %site = alloca i32, align 4
  %ns = alloca i32, align 4
  %side = alloca i32, align 4
  %pin1 = alloca i32, align 4
  %pin2 = alloca i32, align 4
  store %struct.cellbox* %acellptr, %struct.cellbox** %acellptr.addr, align 8
  %0 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 20
  %1 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %1, %struct.uncombox** %UCptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %2, i32 0, i32 18
  %3 = load i32, i32* %numUnComTerms, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %4, 1103515245
  %add = add nsw i32 %mul, 12345
  store i32 %add, i32* @randVar, align 4
  %and = and i32 %add, 2147483647
  %conv1 = sitofp i32 %and to double
  %div = fdiv double %conv1, 0x41DFFFFFFFC00000
  %mul2 = fmul double %conv, %div
  %conv3 = fptosi double %mul2 to i32
  %add4 = add nsw i32 %conv3, 1
  store i32 %add4, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %numUnComTerms5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %6, i32 0, i32 18
  %7 = load i32, i32* %numUnComTerms5, align 4
  %add6 = add nsw i32 %7, 1
  %cmp = icmp eq i32 %5, %add6
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %9, i64 %idxprom
  %sequence = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx, i32 0, i32 7
  %10 = load i32, i32* %sequence, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx11 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %13, i64 %idxprom10
  %numranges = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx11, i32 0, i32 4
  %14 = load i32, i32* %numranges, align 4
  %cmp12 = icmp sgt i32 %14, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.cond.27, %if.then
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx16 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %idxprom15
  %numranges17 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx16, i32 0, i32 4
  %17 = load i32, i32* %numranges17, align 4
  %conv18 = sitofp i32 %17 to double
  %18 = load i32, i32* @randVar, align 4
  %mul19 = mul nsw i32 %18, 1103515245
  %add20 = add nsw i32 %mul19, 12345
  store i32 %add20, i32* @randVar, align 4
  %and21 = and i32 %add20, 2147483647
  %conv22 = sitofp i32 %and21 to double
  %div23 = fdiv double %conv22, 0x41DFFFFFFFC00000
  %mul24 = fmul double %conv18, %div23
  %conv25 = fptosi double %mul24 to i32
  %add26 = add nsw i32 %conv25, 1
  store i32 %add26, i32* %side, align 4
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.14
  %19 = load i32, i32* %side, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx29 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %21, i64 %idxprom28
  %numranges30 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx29, i32 0, i32 4
  %22 = load i32, i32* %numranges30, align 4
  %add31 = add nsw i32 %22, 1
  %cmp32 = icmp eq i32 %19, %add31
  br i1 %cmp32, label %do.body.14, label %do.end.34

do.end.34:                                        ; preds = %do.cond.27
  br label %if.end.83

if.else:                                          ; preds = %while.end
  %23 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %23 to i64
  %24 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx36 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %24, i64 %idxprom35
  %numranges37 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx36, i32 0, i32 4
  %25 = load i32, i32* %numranges37, align 4
  %cmp38 = icmp eq i32 %25, 2
  br i1 %cmp38, label %if.then.40, label %if.else.70

if.then.40:                                       ; preds = %if.else
  br label %do.body.41

do.body.41:                                       ; preds = %do.cond.54, %if.then.40
  %26 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %26 to i64
  %27 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx43 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %27, i64 %idxprom42
  %numranges44 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx43, i32 0, i32 4
  %28 = load i32, i32* %numranges44, align 4
  %conv45 = sitofp i32 %28 to double
  %29 = load i32, i32* @randVar, align 4
  %mul46 = mul nsw i32 %29, 1103515245
  %add47 = add nsw i32 %mul46, 12345
  store i32 %add47, i32* @randVar, align 4
  %and48 = and i32 %add47, 2147483647
  %conv49 = sitofp i32 %and48 to double
  %div50 = fdiv double %conv49, 0x41DFFFFFFFC00000
  %mul51 = fmul double %conv45, %div50
  %conv52 = fptosi double %mul51 to i32
  %add53 = add nsw i32 %conv52, 1
  store i32 %add53, i32* %side, align 4
  br label %do.cond.54

do.cond.54:                                       ; preds = %do.body.41
  %30 = load i32, i32* %side, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %31 to i64
  %32 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx56 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %32, i64 %idxprom55
  %numranges57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx56, i32 0, i32 4
  %33 = load i32, i32* %numranges57, align 4
  %add58 = add nsw i32 %33, 1
  %cmp59 = icmp eq i32 %30, %add58
  br i1 %cmp59, label %do.body.41, label %do.end.61

do.end.61:                                        ; preds = %do.cond.54
  %34 = load i32, i32* %side, align 4
  %cmp62 = icmp eq i32 %34, 1
  br i1 %cmp62, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %do.end.61
  %35 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %35 to i64
  %36 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx66 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %36, i64 %idxprom65
  %range1 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx66, i32 0, i32 5
  %37 = load i32, i32* %range1, align 4
  store i32 %37, i32* %side, align 4
  br label %if.end

if.else.67:                                       ; preds = %do.end.61
  %38 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %38 to i64
  %39 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx69 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %39, i64 %idxprom68
  %range2 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx69, i32 0, i32 6
  %40 = load i32, i32* %range2, align 4
  store i32 %40, i32* %side, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.67, %if.then.64
  br label %if.end.82

if.else.70:                                       ; preds = %if.else
  %41 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %41 to i64
  %42 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx72 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %42, i64 %idxprom71
  %numranges73 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx72, i32 0, i32 4
  %43 = load i32, i32* %numranges73, align 4
  %cmp74 = icmp eq i32 %43, 1
  br i1 %cmp74, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %if.else.70
  %44 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %44 to i64
  %45 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx78 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %45, i64 %idxprom77
  %range179 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx78, i32 0, i32 5
  %46 = load i32, i32* %range179, align 4
  store i32 %46, i32* %side, align 4
  br label %if.end.81

if.else.80:                                       ; preds = %if.else.70
  br label %return

if.end.81:                                        ; preds = %if.then.76
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %do.end.34
  %47 = load i32, i32* %side, align 4
  %idxprom84 = sext i32 %47 to i64
  %48 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %sideArray = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 22
  %49 = load %struct.sidebox*, %struct.sidebox** %sideArray, align 8
  %arrayidx85 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %49, i64 %idxprom84
  %firstSite = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx85, i32 0, i32 0
  %50 = load i32, i32* %firstSite, align 4
  store i32 %50, i32* %first, align 4
  %51 = load i32, i32* %side, align 4
  %idxprom86 = sext i32 %51 to i64
  %52 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %sideArray87 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 22
  %53 = load %struct.sidebox*, %struct.sidebox** %sideArray87, align 8
  %arrayidx88 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %53, i64 %idxprom86
  %lastSite = getelementptr inbounds %struct.sidebox, %struct.sidebox* %arrayidx88, i32 0, i32 1
  %54 = load i32, i32* %lastSite, align 4
  store i32 %54, i32* %last, align 4
  %55 = load i32, i32* %last, align 4
  %56 = load i32, i32* %first, align 4
  %sub = sub nsw i32 %55, %56
  %add89 = add nsw i32 %sub, 1
  store i32 %add89, i32* %ns, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %57 to i64
  %58 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx91 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %58, i64 %idxprom90
  %sequence92 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx91, i32 0, i32 7
  %59 = load i32, i32* %sequence92, align 4
  store i32 %59, i32* %seq, align 4
  store i32 0, i32* %ok, align 4
  %60 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %siteContent = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i32 0, i32 19
  %61 = load %struct.contentbox*, %struct.contentbox** %siteContent, align 8
  store %struct.contentbox* %61, %struct.contentbox** %SCptr, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %do.cond.112, %if.end.83
  store i32 0, i32* %sum, align 4
  %62 = load i32, i32* %ns, align 4
  %conv94 = sitofp i32 %62 to double
  %63 = load i32, i32* @randVar, align 4
  %mul95 = mul nsw i32 %63, 1103515245
  %add96 = add nsw i32 %mul95, 12345
  store i32 %add96, i32* @randVar, align 4
  %and97 = and i32 %add96, 2147483647
  %conv98 = sitofp i32 %and97 to double
  %div99 = fdiv double %conv98, 0x41DFFFFFFFC00000
  %mul100 = fmul double %conv94, %div99
  %conv101 = fptosi double %mul100 to i32
  store i32 %conv101, i32* %site, align 4
  %64 = load i32, i32* %first, align 4
  %65 = load i32, i32* %site, align 4
  %add102 = add nsw i32 %64, %65
  store i32 %add102, i32* %firstNewSite, align 4
  %66 = load i32, i32* %firstNewSite, align 4
  store i32 %66, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body.93
  %67 = load i32, i32* %k, align 4
  %68 = load i32, i32* %last, align 4
  %cmp103 = icmp sle i32 %67, %68
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %69 to i64
  %70 = load %struct.contentbox*, %struct.contentbox** %SCptr, align 8
  %arrayidx106 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %70, i64 %idxprom105
  %capacity = getelementptr inbounds %struct.contentbox, %struct.contentbox* %arrayidx106, i32 0, i32 2
  %71 = load i32, i32* %capacity, align 4
  %72 = load i32, i32* %sum, align 4
  %add107 = add nsw i32 %72, %71
  store i32 %add107, i32* %sum, align 4
  %73 = load i32, i32* %sum, align 4
  %74 = load i32, i32* %seq, align 4
  %cmp108 = icmp sge i32 %73, %74
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.body
  store i32 1, i32* %ok, align 4
  %75 = load i32, i32* %k, align 4
  store i32 %75, i32* %lastNewSite, align 4
  br label %for.end

if.end.111:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %76 = load i32, i32* %k, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.110, %for.cond
  br label %do.cond.112

do.cond.112:                                      ; preds = %for.end
  %77 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %77, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body.93, label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  %78 = load i32, i32* %firstNewSite, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %79 to i64
  %80 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx115 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %80, i64 %idxprom114
  %site116 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx115, i32 0, i32 1
  %81 = load i32, i32* %site116, align 4
  %cmp117 = icmp ne i32 %78, %81
  br i1 %cmp117, label %if.then.119, label %if.end.126

if.then.119:                                      ; preds = %do.end.113
  %82 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %seq, align 4
  %85 = load i32, i32* %firstNewSite, align 4
  %86 = load i32, i32* %lastNewSite, align 4
  %call = call i32 @upin(%struct.cellbox* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %tobool120 = icmp ne i32 %call, 0
  br i1 %tobool120, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.then.119
  %87 = load i32, i32* @flips, align 4
  %inc122 = add nsw i32 %87, 1
  store i32 %inc122, i32* @flips, align 4
  %88 = load i32, i32* @flipp, align 4
  %inc123 = add nsw i32 %88, 1
  store i32 %inc123, i32* @flipp, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.then.119
  %89 = load i32, i32* @attp, align 4
  %inc125 = add nsw i32 %89, 1
  store i32 %inc125, i32* @attp, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.124, %do.end.113
  %90 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %90 to i64
  %91 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx128 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %91, i64 %idxprom127
  %groupflag = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx128, i32 0, i32 8
  %92 = load i32, i32* %groupflag, align 4
  %cmp129 = icmp eq i32 %92, 1
  br i1 %cmp129, label %land.lhs.true, label %if.end.191

land.lhs.true:                                    ; preds = %if.end.126
  %93 = load i32, i32* %seq, align 4
  %cmp131 = icmp sge i32 %93, 2
  br i1 %cmp131, label %if.then.133, label %if.end.191

if.then.133:                                      ; preds = %land.lhs.true
  br label %do.body.134

do.body.134:                                      ; preds = %do.cond.143, %if.then.133
  %94 = load i32, i32* %seq, align 4
  %conv135 = sitofp i32 %94 to double
  %95 = load i32, i32* @randVar, align 4
  %mul136 = mul nsw i32 %95, 1103515245
  %add137 = add nsw i32 %mul136, 12345
  store i32 %add137, i32* @randVar, align 4
  %and138 = and i32 %add137, 2147483647
  %conv139 = sitofp i32 %and138 to double
  %div140 = fdiv double %conv139, 0x41DFFFFFFFC00000
  %mul141 = fmul double %conv135, %div140
  %conv142 = fptosi double %mul141 to i32
  store i32 %conv142, i32* %pin1, align 4
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.134
  %96 = load i32, i32* %pin1, align 4
  %97 = load i32, i32* %seq, align 4
  %cmp144 = icmp eq i32 %96, %97
  br i1 %cmp144, label %do.body.134, label %do.end.146

do.end.146:                                       ; preds = %do.cond.143
  br label %do.body.147

do.body.147:                                      ; preds = %lor.end, %do.end.146
  %98 = load i32, i32* %seq, align 4
  %conv148 = sitofp i32 %98 to double
  %99 = load i32, i32* @randVar, align 4
  %mul149 = mul nsw i32 %99, 1103515245
  %add150 = add nsw i32 %mul149, 12345
  store i32 %add150, i32* @randVar, align 4
  %and151 = and i32 %add150, 2147483647
  %conv152 = sitofp i32 %and151 to double
  %div153 = fdiv double %conv152, 0x41DFFFFFFFC00000
  %mul154 = fmul double %conv148, %div153
  %conv155 = fptosi double %mul154 to i32
  store i32 %conv155, i32* %pin2, align 4
  br label %do.cond.156

do.cond.156:                                      ; preds = %do.body.147
  %100 = load i32, i32* %pin2, align 4
  %101 = load i32, i32* %seq, align 4
  %cmp157 = icmp eq i32 %100, %101
  br i1 %cmp157, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.156
  %102 = load i32, i32* %pin2, align 4
  %103 = load i32, i32* %pin1, align 4
  %cmp159 = icmp eq i32 %102, %103
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond.156
  %104 = phi i1 [ true, %do.cond.156 ], [ %cmp159, %lor.rhs ]
  br i1 %104, label %do.body.147, label %do.end.161

do.end.161:                                       ; preds = %lor.end
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %pin1, align 4
  %add162 = add nsw i32 %105, %106
  %idxprom163 = sext i32 %add162 to i64
  %107 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx164 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %107, i64 %idxprom163
  %site165 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx164, i32 0, i32 1
  %108 = load i32, i32* %site165, align 4
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %pin2, align 4
  %add166 = add nsw i32 %109, %110
  %idxprom167 = sext i32 %add166 to i64
  %111 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx168 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %111, i64 %idxprom167
  %site169 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx168, i32 0, i32 1
  %112 = load i32, i32* %site169, align 4
  %cmp170 = icmp ne i32 %108, %112
  br i1 %cmp170, label %if.then.172, label %if.end.190

if.then.172:                                      ; preds = %do.end.161
  %113 = load %struct.cellbox*, %struct.cellbox** %acellptr.addr, align 8
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %pin1, align 4
  %add173 = add nsw i32 %114, %115
  %116 = load i32, i32* %i, align 4
  %117 = load i32, i32* %pin2, align 4
  %add174 = add nsw i32 %116, %117
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* %pin1, align 4
  %add175 = add nsw i32 %118, %119
  %idxprom176 = sext i32 %add175 to i64
  %120 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx177 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %120, i64 %idxprom176
  %site178 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx177, i32 0, i32 1
  %121 = load i32, i32* %site178, align 4
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %pin2, align 4
  %add179 = add nsw i32 %122, %123
  %idxprom180 = sext i32 %add179 to i64
  %124 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx181 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %124, i64 %idxprom180
  %site182 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx181, i32 0, i32 1
  %125 = load i32, i32* %site182, align 4
  %call183 = call i32 @upinswap(%struct.cellbox* %113, i32 %add173, i32 %add174, i32 %121, i32 %125)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %if.then.172
  %126 = load i32, i32* @flips, align 4
  %inc186 = add nsw i32 %126, 1
  store i32 %inc186, i32* @flips, align 4
  %127 = load i32, i32* @flipp, align 4
  %inc187 = add nsw i32 %127, 1
  store i32 %inc187, i32* @flipp, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %if.then.172
  %128 = load i32, i32* @attp, align 4
  %inc189 = add nsw i32 %128, 1
  store i32 %inc189, i32* @attp, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.188, %do.end.161
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %land.lhs.true, %if.end.126
  br label %return

return:                                           ; preds = %if.end.191, %if.else.80
  ret void
}

declare i32 @upin(%struct.cellbox*, i32, i32, i32, i32) #1

declare i32 @upinswap(%struct.cellbox*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
