; ModuleID = './MultiSource.Benchmarks.Prolangs-C/167.TimberWolfMC.reduceg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@eNum = external global i32, align 4
@eArray = external global %struct.ebox*, align 8
@numRects = external global i32, align 4
@rectArray = external global %struct.rect*, align 8
@numXnodes = external global i32, align 4
@xNodeArray = external global %struct.wcbox**, align 8
@numYnodes = external global i32, align 4
@yNodeArray = external global %struct.wcbox**, align 8
@edgeTransition = external global i32, align 4
@edgeList = external global %struct.edgebox*, align 8

; Function Attrs: nounwind uwtable
define void @reduceg() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %minc = alloca i32, align 4
  %WCcount = alloca i32, align 4
  %guideline = alloca i32, align 4
  %twoTimes = alloca i32, align 4
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %hit = alloca i32, align 4
  %flag = alloca i32, align 4
  %k = alloca i32, align 4
  %length = alloca i32, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %c2i1 = alloca i32, align 4
  %vertical = alloca i32, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %end = alloca i32, align 4
  %start = alloca i32, align 4
  %edge = alloca i32, align 4
  %node = alloca %struct.tnode*, align 8
  %Qroot = alloca %struct.tnode*, align 8
  %ptr = alloca %struct.wcbox*, align 8
  %WCarray = alloca %struct.wcbox**, align 8
  store %struct.tnode* null, %struct.tnode** %Qroot, align 8
  %call = call noalias i8* @malloc(i64 808) #3
  %0 = bitcast i8* %call to %struct.wcbox**
  store %struct.wcbox** %0, %struct.wcbox*** %WCarray, align 8
  store i32 0, i32* %WCcount, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @eNum, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx = getelementptr inbounds %struct.ebox, %struct.ebox* %4, i64 %idxprom
  %notActive = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx, i32 0, i32 11
  store i32 0, i32* %notActive, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.12, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @numRects, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end.14

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.rect, %struct.rect* %9, i64 %idxprom4
  %ur = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx5, i32 0, i32 8
  store i32 0, i32* %ur, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx7 = getelementptr inbounds %struct.rect, %struct.rect* %11, i64 %idxprom6
  %lr = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx7, i32 0, i32 10
  store i32 0, i32* %lr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx9 = getelementptr inbounds %struct.rect, %struct.rect* %13, i64 %idxprom8
  %ul = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx9, i32 0, i32 9
  store i32 0, i32* %ul, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.rect, %struct.rect* %15, i64 %idxprom10
  %ll = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx11, i32 0, i32 11
  store i32 0, i32* %ll, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.3
  %16 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.1

for.end.14:                                       ; preds = %for.cond.1
  store i32 1, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.82, %for.end.14
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* @numXnodes, align 4
  %cmp16 = icmp sle i32 %17, %18
  br i1 %cmp16, label %for.body.17, label %for.end.84

for.body.17:                                      ; preds = %for.cond.15
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %20, i64 %idxprom18
  %21 = load %struct.wcbox*, %struct.wcbox** %arrayidx19, align 8
  store %struct.wcbox* %21, %struct.wcbox** %ptr, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.80, %for.body.17
  %22 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp21 = icmp ne %struct.wcbox* %22, null
  br i1 %cmp21, label %for.body.22, label %for.end.81

for.body.22:                                      ; preds = %for.cond.20
  %23 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth = getelementptr inbounds %struct.wcbox, %struct.wcbox* %23, i32 0, i32 0
  %24 = load i32, i32* %fixedWidth, align 4
  %cmp23 = icmp eq i32 %24, 1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  br label %for.inc.80

if.end:                                           ; preds = %for.body.22
  %25 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels = getelementptr inbounds %struct.wcbox, %struct.wcbox* %25, i32 0, i32 2
  %26 = load i32*, i32** %channels, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx24, align 4
  store i32 %27, i32* %count, align 4
  %28 = load i32, i32* %WCcount, align 4
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, i32* %WCcount, align 4
  %29 = load i32, i32* %WCcount, align 4
  %rem = srem i32 %29, 100
  %cmp26 = icmp eq i32 %rem, 0
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end
  %30 = load %struct.wcbox**, %struct.wcbox*** %WCarray, align 8
  %31 = bitcast %struct.wcbox** %30 to i8*
  %32 = load i32, i32* %WCcount, align 4
  %add = add nsw i32 %32, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call28 = call i8* @realloc(i8* %31, i64 %mul) #3
  %33 = bitcast i8* %call28 to %struct.wcbox**
  store %struct.wcbox** %33, %struct.wcbox*** %WCarray, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end
  store i32 0, i32* %length, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %if.end.29
  %34 = load i32, i32* %c, align 4
  %35 = load i32, i32* %count, align 4
  %cmp31 = icmp sle i32 %34, %35
  br i1 %cmp31, label %for.body.33, label %for.end.43

for.body.33:                                      ; preds = %for.cond.30
  %36 = load i32, i32* %c, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels35 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %37, i32 0, i32 2
  %38 = load i32*, i32** %channels35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 %idxprom34
  %39 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.ebox, %struct.ebox* %40, i64 %idxprom37
  %length39 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx38, i32 0, i32 5
  %41 = load i32, i32* %length39, align 4
  %42 = load i32, i32* %length, align 4
  %add40 = add nsw i32 %42, %41
  store i32 %add40, i32* %length, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.33
  %43 = load i32, i32* %c, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %c, align 4
  br label %for.cond.30

for.end.43:                                       ; preds = %for.cond.30
  %44 = load i32, i32* %count, align 4
  %45 = load i32, i32* %length, align 4
  %div = sdiv i32 %45, %44
  store i32 %div, i32* %length, align 4
  %46 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %47 = load i32, i32* %WCcount, align 4
  %idxprom44 = sext i32 %47 to i64
  %48 = load %struct.wcbox**, %struct.wcbox*** %WCarray, align 8
  %arrayidx45 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %48, i64 %idxprom44
  store %struct.wcbox* %46, %struct.wcbox** %arrayidx45, align 8
  %49 = load i32, i32* %length, align 4
  %sub = sub nsw i32 0, %49
  %50 = load i32, i32* %WCcount, align 4
  call void @tinsert(%struct.tnode** %Qroot, i32 %sub, i32 %50)
  %51 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels46 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %51, i32 0, i32 2
  %52 = load i32*, i32** %channels46, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx47, align 4
  %idxprom48 = sext i32 %53 to i64
  %54 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx49 = getelementptr inbounds %struct.ebox, %struct.ebox* %54, i64 %idxprom48
  %index150 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx49, i32 0, i32 0
  %55 = load i32, i32* %index150, align 4
  store i32 %55, i32* %index1, align 4
  %56 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels51 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %56, i32 0, i32 2
  %57 = load i32*, i32** %channels51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %57, i64 1
  %58 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %58 to i64
  %59 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx54 = getelementptr inbounds %struct.ebox, %struct.ebox* %59, i64 %idxprom53
  %index255 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx54, i32 0, i32 1
  %60 = load i32, i32* %index255, align 4
  store i32 %60, i32* %index2, align 4
  %61 = load i32, i32* %index2, align 4
  %idxprom56 = sext i32 %61 to i64
  %62 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx57 = getelementptr inbounds %struct.rect, %struct.rect* %62, i64 %idxprom56
  %ll58 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx57, i32 0, i32 11
  store i32 1, i32* %ll58, align 4
  %63 = load i32, i32* %index1, align 4
  %idxprom59 = sext i32 %63 to i64
  %64 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx60 = getelementptr inbounds %struct.rect, %struct.rect* %64, i64 %idxprom59
  %ul61 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx60, i32 0, i32 9
  store i32 1, i32* %ul61, align 4
  %65 = load i32, i32* %count, align 4
  %idxprom62 = sext i32 %65 to i64
  %66 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels63 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %66, i32 0, i32 2
  %67 = load i32*, i32** %channels63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %67, i64 %idxprom62
  %68 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %68 to i64
  %69 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx66 = getelementptr inbounds %struct.ebox, %struct.ebox* %69, i64 %idxprom65
  %index167 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx66, i32 0, i32 0
  %70 = load i32, i32* %index167, align 4
  store i32 %70, i32* %index1, align 4
  %71 = load i32, i32* %count, align 4
  %idxprom68 = sext i32 %71 to i64
  %72 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels69 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %72, i32 0, i32 2
  %73 = load i32*, i32** %channels69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %73, i64 %idxprom68
  %74 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %74 to i64
  %75 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx72 = getelementptr inbounds %struct.ebox, %struct.ebox* %75, i64 %idxprom71
  %index273 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx72, i32 0, i32 1
  %76 = load i32, i32* %index273, align 4
  store i32 %76, i32* %index2, align 4
  %77 = load i32, i32* %index2, align 4
  %idxprom74 = sext i32 %77 to i64
  %78 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx75 = getelementptr inbounds %struct.rect, %struct.rect* %78, i64 %idxprom74
  %lr76 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx75, i32 0, i32 10
  store i32 1, i32* %lr76, align 4
  %79 = load i32, i32* %index1, align 4
  %idxprom77 = sext i32 %79 to i64
  %80 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx78 = getelementptr inbounds %struct.rect, %struct.rect* %80, i64 %idxprom77
  %ur79 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx78, i32 0, i32 8
  store i32 1, i32* %ur79, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.43, %if.then
  %81 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next = getelementptr inbounds %struct.wcbox, %struct.wcbox* %81, i32 0, i32 4
  %82 = load %struct.wcbox*, %struct.wcbox** %next, align 8
  store %struct.wcbox* %82, %struct.wcbox** %ptr, align 8
  br label %for.cond.20

for.end.81:                                       ; preds = %for.cond.20
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %83 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %83, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.15

for.end.84:                                       ; preds = %for.cond.15
  store i32 1, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.167, %for.end.84
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* @numYnodes, align 4
  %cmp86 = icmp sle i32 %84, %85
  br i1 %cmp86, label %for.body.88, label %for.end.169

for.body.88:                                      ; preds = %for.cond.85
  %86 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %86 to i64
  %87 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx90 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %87, i64 %idxprom89
  %88 = load %struct.wcbox*, %struct.wcbox** %arrayidx90, align 8
  store %struct.wcbox* %88, %struct.wcbox** %ptr, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.164, %for.body.88
  %89 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp92 = icmp ne %struct.wcbox* %89, null
  br i1 %cmp92, label %for.body.94, label %for.end.166

for.body.94:                                      ; preds = %for.cond.91
  %90 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth95 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %90, i32 0, i32 0
  %91 = load i32, i32* %fixedWidth95, align 4
  %cmp96 = icmp eq i32 %91, 1
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body.94
  br label %for.inc.164

if.end.99:                                        ; preds = %for.body.94
  %92 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels100 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %92, i32 0, i32 2
  %93 = load i32*, i32** %channels100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx101, align 4
  store i32 %94, i32* %count, align 4
  %95 = load i32, i32* %WCcount, align 4
  %inc102 = add nsw i32 %95, 1
  store i32 %inc102, i32* %WCcount, align 4
  %96 = load i32, i32* %WCcount, align 4
  %rem103 = srem i32 %96, 100
  %cmp104 = icmp eq i32 %rem103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.111

if.then.106:                                      ; preds = %if.end.99
  %97 = load %struct.wcbox**, %struct.wcbox*** %WCarray, align 8
  %98 = bitcast %struct.wcbox** %97 to i8*
  %99 = load i32, i32* %WCcount, align 4
  %add107 = add nsw i32 %99, 100
  %conv108 = sext i32 %add107 to i64
  %mul109 = mul i64 %conv108, 8
  %call110 = call i8* @realloc(i8* %98, i64 %mul109) #3
  %100 = bitcast i8* %call110 to %struct.wcbox**
  store %struct.wcbox** %100, %struct.wcbox*** %WCarray, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.106, %if.end.99
  store i32 0, i32* %length, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.123, %if.end.111
  %101 = load i32, i32* %c, align 4
  %102 = load i32, i32* %count, align 4
  %cmp113 = icmp sle i32 %101, %102
  br i1 %cmp113, label %for.body.115, label %for.end.125

for.body.115:                                     ; preds = %for.cond.112
  %103 = load i32, i32* %c, align 4
  %idxprom116 = sext i32 %103 to i64
  %104 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels117 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %104, i32 0, i32 2
  %105 = load i32*, i32** %channels117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %105, i64 %idxprom116
  %106 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %106 to i64
  %107 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx120 = getelementptr inbounds %struct.ebox, %struct.ebox* %107, i64 %idxprom119
  %length121 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx120, i32 0, i32 5
  %108 = load i32, i32* %length121, align 4
  %109 = load i32, i32* %length, align 4
  %add122 = add nsw i32 %109, %108
  store i32 %add122, i32* %length, align 4
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.115
  %110 = load i32, i32* %c, align 4
  %inc124 = add nsw i32 %110, 1
  store i32 %inc124, i32* %c, align 4
  br label %for.cond.112

for.end.125:                                      ; preds = %for.cond.112
  %111 = load i32, i32* %count, align 4
  %112 = load i32, i32* %length, align 4
  %div126 = sdiv i32 %112, %111
  store i32 %div126, i32* %length, align 4
  %113 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %114 = load i32, i32* %WCcount, align 4
  %idxprom127 = sext i32 %114 to i64
  %115 = load %struct.wcbox**, %struct.wcbox*** %WCarray, align 8
  %arrayidx128 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %115, i64 %idxprom127
  store %struct.wcbox* %113, %struct.wcbox** %arrayidx128, align 8
  %116 = load i32, i32* %length, align 4
  %sub129 = sub nsw i32 0, %116
  %117 = load i32, i32* %WCcount, align 4
  call void @tinsert(%struct.tnode** %Qroot, i32 %sub129, i32 %117)
  %118 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels130 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %118, i32 0, i32 2
  %119 = load i32*, i32** %channels130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %119, i64 1
  %120 = load i32, i32* %arrayidx131, align 4
  %idxprom132 = sext i32 %120 to i64
  %121 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx133 = getelementptr inbounds %struct.ebox, %struct.ebox* %121, i64 %idxprom132
  %index1134 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx133, i32 0, i32 0
  %122 = load i32, i32* %index1134, align 4
  store i32 %122, i32* %index1, align 4
  %123 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels135 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %123, i32 0, i32 2
  %124 = load i32*, i32** %channels135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %124, i64 1
  %125 = load i32, i32* %arrayidx136, align 4
  %idxprom137 = sext i32 %125 to i64
  %126 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx138 = getelementptr inbounds %struct.ebox, %struct.ebox* %126, i64 %idxprom137
  %index2139 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx138, i32 0, i32 1
  %127 = load i32, i32* %index2139, align 4
  store i32 %127, i32* %index2, align 4
  %128 = load i32, i32* %index2, align 4
  %idxprom140 = sext i32 %128 to i64
  %129 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx141 = getelementptr inbounds %struct.rect, %struct.rect* %129, i64 %idxprom140
  %ll142 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx141, i32 0, i32 11
  store i32 1, i32* %ll142, align 4
  %130 = load i32, i32* %index1, align 4
  %idxprom143 = sext i32 %130 to i64
  %131 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx144 = getelementptr inbounds %struct.rect, %struct.rect* %131, i64 %idxprom143
  %lr145 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx144, i32 0, i32 10
  store i32 1, i32* %lr145, align 4
  %132 = load i32, i32* %count, align 4
  %idxprom146 = sext i32 %132 to i64
  %133 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels147 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %133, i32 0, i32 2
  %134 = load i32*, i32** %channels147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %134, i64 %idxprom146
  %135 = load i32, i32* %arrayidx148, align 4
  %idxprom149 = sext i32 %135 to i64
  %136 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx150 = getelementptr inbounds %struct.ebox, %struct.ebox* %136, i64 %idxprom149
  %index1151 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx150, i32 0, i32 0
  %137 = load i32, i32* %index1151, align 4
  store i32 %137, i32* %index1, align 4
  %138 = load i32, i32* %count, align 4
  %idxprom152 = sext i32 %138 to i64
  %139 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels153 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %139, i32 0, i32 2
  %140 = load i32*, i32** %channels153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %140, i64 %idxprom152
  %141 = load i32, i32* %arrayidx154, align 4
  %idxprom155 = sext i32 %141 to i64
  %142 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx156 = getelementptr inbounds %struct.ebox, %struct.ebox* %142, i64 %idxprom155
  %index2157 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx156, i32 0, i32 1
  %143 = load i32, i32* %index2157, align 4
  store i32 %143, i32* %index2, align 4
  %144 = load i32, i32* %index2, align 4
  %idxprom158 = sext i32 %144 to i64
  %145 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx159 = getelementptr inbounds %struct.rect, %struct.rect* %145, i64 %idxprom158
  %ul160 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx159, i32 0, i32 9
  store i32 1, i32* %ul160, align 4
  %146 = load i32, i32* %index1, align 4
  %idxprom161 = sext i32 %146 to i64
  %147 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx162 = getelementptr inbounds %struct.rect, %struct.rect* %147, i64 %idxprom161
  %ur163 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx162, i32 0, i32 8
  store i32 1, i32* %ur163, align 4
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.125, %if.then.98
  %148 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next165 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %148, i32 0, i32 4
  %149 = load %struct.wcbox*, %struct.wcbox** %next165, align 8
  store %struct.wcbox* %149, %struct.wcbox** %ptr, align 8
  br label %for.cond.91

for.end.166:                                      ; preds = %for.cond.91
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.end.166
  %150 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %150, 1
  store i32 %inc168, i32* %i, align 4
  br label %for.cond.85

for.end.169:                                      ; preds = %for.cond.85
  br label %for.cond.170

for.cond.170:                                     ; preds = %do.end, %if.then.181, %for.end.169
  call void @tpop(%struct.tnode** %Qroot, %struct.tnode** %node, i32* %length, i32* %WCcount)
  %151 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp171 = icmp eq %struct.tnode* %151, null
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.cond.170
  br label %for.end.550

if.end.174:                                       ; preds = %for.cond.170
  %152 = load i32, i32* %WCcount, align 4
  %idxprom175 = sext i32 %152 to i64
  %153 = load %struct.wcbox**, %struct.wcbox*** %WCarray, align 8
  %arrayidx176 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %153, i64 %idxprom175
  %154 = load %struct.wcbox*, %struct.wcbox** %arrayidx176, align 8
  store %struct.wcbox* %154, %struct.wcbox** %ptr, align 8
  %155 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels177 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %155, i32 0, i32 2
  %156 = load i32*, i32** %channels177, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %156, i64 0
  %157 = load i32, i32* %arrayidx178, align 4
  store i32 %157, i32* %count, align 4
  %158 = load i32, i32* %count, align 4
  %cmp179 = icmp eq i32 %158, 1
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.174
  br label %for.cond.170

if.end.182:                                       ; preds = %if.end.174
  %159 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels183 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %159, i32 0, i32 2
  %160 = load i32*, i32** %channels183, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %160, i64 1
  %161 = load i32, i32* %arrayidx184, align 4
  %162 = load i32, i32* @edgeTransition, align 4
  %cmp185 = icmp sle i32 %161, %162
  %cond = select i1 %cmp185, i32 1, i32 0
  store i32 %cond, i32* %vertical, align 4
  store i32 1, i32* %c1, align 4
  store i32 1, i32* %c2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.182
  %163 = load i32, i32* %c2, align 4
  %idxprom187 = sext i32 %163 to i64
  %164 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels188 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %164, i32 0, i32 2
  %165 = load i32*, i32** %channels188, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %165, i64 %idxprom187
  %166 = load i32, i32* %arrayidx189, align 4
  %idxprom190 = sext i32 %166 to i64
  %167 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx191 = getelementptr inbounds %struct.ebox, %struct.ebox* %167, i64 %idxprom190
  %index1192 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx191, i32 0, i32 0
  %168 = load i32, i32* %index1192, align 4
  store i32 %168, i32* %c2i1, align 4
  %169 = load i32, i32* %c2i1, align 4
  %idxprom193 = sext i32 %169 to i64
  %170 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx194 = getelementptr inbounds %struct.rect, %struct.rect* %170, i64 %idxprom193
  %ur195 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx194, i32 0, i32 8
  %171 = load i32, i32* %ur195, align 4
  %cmp196 = icmp eq i32 %171, 0
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %do.body
  %172 = load i32, i32* %c2, align 4
  %inc199 = add nsw i32 %172, 1
  store i32 %inc199, i32* %c2, align 4
  br label %do.cond

if.end.200:                                       ; preds = %do.body
  %173 = load i32, i32* %c2, align 4
  %idxprom201 = sext i32 %173 to i64
  %174 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels202 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %174, i32 0, i32 2
  %175 = load i32*, i32** %channels202, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %175, i64 %idxprom201
  %176 = load i32, i32* %arrayidx203, align 4
  %idxprom204 = sext i32 %176 to i64
  %177 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx205 = getelementptr inbounds %struct.ebox, %struct.ebox* %177, i64 %idxprom204
  %rtside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx205, i32 0, i32 4
  %178 = load i32, i32* %rtside, align 4
  %179 = load i32, i32* %c1, align 4
  %idxprom206 = sext i32 %179 to i64
  %180 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels207 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %180, i32 0, i32 2
  %181 = load i32*, i32** %channels207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %181, i64 %idxprom206
  %182 = load i32, i32* %arrayidx208, align 4
  %idxprom209 = sext i32 %182 to i64
  %183 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx210 = getelementptr inbounds %struct.ebox, %struct.ebox* %183, i64 %idxprom209
  %lbside = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx210, i32 0, i32 3
  %184 = load i32, i32* %lbside, align 4
  %add211 = add nsw i32 %178, %184
  %div212 = sdiv i32 %add211, 2
  store i32 %div212, i32* %guideline, align 4
  store i32 10000000, i32* %min, align 4
  %185 = load i32, i32* %vertical, align 4
  %tobool = icmp ne i32 %185, 0
  br i1 %tobool, label %if.then.213, label %if.else

if.then.213:                                      ; preds = %if.end.200
  store i32 10000000, i32* %ymin, align 4
  store i32 0, i32* %ymax, align 4
  %186 = load i32, i32* %c1, align 4
  store i32 %186, i32* %c, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.310, %if.then.213
  %187 = load i32, i32* %c, align 4
  %188 = load i32, i32* %c2, align 4
  %cmp215 = icmp sle i32 %187, %188
  br i1 %cmp215, label %for.body.217, label %for.end.312

for.body.217:                                     ; preds = %for.cond.214
  %189 = load i32, i32* %c, align 4
  %idxprom218 = sext i32 %189 to i64
  %190 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels219 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %190, i32 0, i32 2
  %191 = load i32*, i32** %channels219, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %191, i64 %idxprom218
  %192 = load i32, i32* %arrayidx220, align 4
  %idxprom221 = sext i32 %192 to i64
  %193 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx222 = getelementptr inbounds %struct.ebox, %struct.ebox* %193, i64 %idxprom221
  %index1223 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx222, i32 0, i32 0
  %194 = load i32, i32* %index1223, align 4
  store i32 %194, i32* %i1, align 4
  %195 = load i32, i32* %c, align 4
  %idxprom224 = sext i32 %195 to i64
  %196 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels225 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %196, i32 0, i32 2
  %197 = load i32*, i32** %channels225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %197, i64 %idxprom224
  %198 = load i32, i32* %arrayidx226, align 4
  %idxprom227 = sext i32 %198 to i64
  %199 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx228 = getelementptr inbounds %struct.ebox, %struct.ebox* %199, i64 %idxprom227
  %index2229 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx228, i32 0, i32 1
  %200 = load i32, i32* %index2229, align 4
  store i32 %200, i32* %i2, align 4
  %201 = load i32, i32* %i1, align 4
  %idxprom230 = sext i32 %201 to i64
  %202 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx231 = getelementptr inbounds %struct.rect, %struct.rect* %202, i64 %idxprom230
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx231, i32 0, i32 0
  %203 = load i32, i32* %xc, align 4
  %204 = load i32, i32* %guideline, align 4
  %sub232 = sub nsw i32 %203, %204
  %cmp233 = icmp sge i32 %sub232, 0
  br i1 %cmp233, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.217
  %205 = load i32, i32* %i1, align 4
  %idxprom235 = sext i32 %205 to i64
  %206 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx236 = getelementptr inbounds %struct.rect, %struct.rect* %206, i64 %idxprom235
  %xc237 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx236, i32 0, i32 0
  %207 = load i32, i32* %xc237, align 4
  %208 = load i32, i32* %guideline, align 4
  %sub238 = sub nsw i32 %207, %208
  br label %cond.end

cond.false:                                       ; preds = %for.body.217
  %209 = load i32, i32* %i1, align 4
  %idxprom239 = sext i32 %209 to i64
  %210 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx240 = getelementptr inbounds %struct.rect, %struct.rect* %210, i64 %idxprom239
  %xc241 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx240, i32 0, i32 0
  %211 = load i32, i32* %xc241, align 4
  %212 = load i32, i32* %guideline, align 4
  %sub242 = sub nsw i32 %211, %212
  %sub243 = sub nsw i32 0, %sub242
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond244 = phi i32 [ %sub238, %cond.true ], [ %sub243, %cond.false ]
  %213 = load i32, i32* %min, align 4
  %cmp245 = icmp slt i32 %cond244, %213
  br i1 %cmp245, label %if.then.247, label %if.end.267

if.then.247:                                      ; preds = %cond.end
  %214 = load i32, i32* %i1, align 4
  %idxprom248 = sext i32 %214 to i64
  %215 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx249 = getelementptr inbounds %struct.rect, %struct.rect* %215, i64 %idxprom248
  %xc250 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx249, i32 0, i32 0
  %216 = load i32, i32* %xc250, align 4
  %217 = load i32, i32* %guideline, align 4
  %sub251 = sub nsw i32 %216, %217
  %cmp252 = icmp sge i32 %sub251, 0
  br i1 %cmp252, label %cond.true.254, label %cond.false.259

cond.true.254:                                    ; preds = %if.then.247
  %218 = load i32, i32* %i1, align 4
  %idxprom255 = sext i32 %218 to i64
  %219 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx256 = getelementptr inbounds %struct.rect, %struct.rect* %219, i64 %idxprom255
  %xc257 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx256, i32 0, i32 0
  %220 = load i32, i32* %xc257, align 4
  %221 = load i32, i32* %guideline, align 4
  %sub258 = sub nsw i32 %220, %221
  br label %cond.end.265

cond.false.259:                                   ; preds = %if.then.247
  %222 = load i32, i32* %i1, align 4
  %idxprom260 = sext i32 %222 to i64
  %223 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx261 = getelementptr inbounds %struct.rect, %struct.rect* %223, i64 %idxprom260
  %xc262 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx261, i32 0, i32 0
  %224 = load i32, i32* %xc262, align 4
  %225 = load i32, i32* %guideline, align 4
  %sub263 = sub nsw i32 %224, %225
  %sub264 = sub nsw i32 0, %sub263
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.259, %cond.true.254
  %cond266 = phi i32 [ %sub258, %cond.true.254 ], [ %sub264, %cond.false.259 ]
  store i32 %cond266, i32* %min, align 4
  %226 = load i32, i32* %c, align 4
  store i32 %226, i32* %minc, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.265, %cond.end
  %227 = load i32, i32* %i2, align 4
  %idxprom268 = sext i32 %227 to i64
  %228 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx269 = getelementptr inbounds %struct.rect, %struct.rect* %228, i64 %idxprom268
  %xc270 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx269, i32 0, i32 0
  %229 = load i32, i32* %xc270, align 4
  %230 = load i32, i32* %guideline, align 4
  %sub271 = sub nsw i32 %229, %230
  %cmp272 = icmp sge i32 %sub271, 0
  br i1 %cmp272, label %cond.true.274, label %cond.false.279

cond.true.274:                                    ; preds = %if.end.267
  %231 = load i32, i32* %i2, align 4
  %idxprom275 = sext i32 %231 to i64
  %232 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx276 = getelementptr inbounds %struct.rect, %struct.rect* %232, i64 %idxprom275
  %xc277 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx276, i32 0, i32 0
  %233 = load i32, i32* %xc277, align 4
  %234 = load i32, i32* %guideline, align 4
  %sub278 = sub nsw i32 %233, %234
  br label %cond.end.285

cond.false.279:                                   ; preds = %if.end.267
  %235 = load i32, i32* %i2, align 4
  %idxprom280 = sext i32 %235 to i64
  %236 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx281 = getelementptr inbounds %struct.rect, %struct.rect* %236, i64 %idxprom280
  %xc282 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx281, i32 0, i32 0
  %237 = load i32, i32* %xc282, align 4
  %238 = load i32, i32* %guideline, align 4
  %sub283 = sub nsw i32 %237, %238
  %sub284 = sub nsw i32 0, %sub283
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.279, %cond.true.274
  %cond286 = phi i32 [ %sub278, %cond.true.274 ], [ %sub284, %cond.false.279 ]
  %239 = load i32, i32* %min, align 4
  %cmp287 = icmp slt i32 %cond286, %239
  br i1 %cmp287, label %if.then.289, label %if.end.309

if.then.289:                                      ; preds = %cond.end.285
  %240 = load i32, i32* %i2, align 4
  %idxprom290 = sext i32 %240 to i64
  %241 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx291 = getelementptr inbounds %struct.rect, %struct.rect* %241, i64 %idxprom290
  %xc292 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx291, i32 0, i32 0
  %242 = load i32, i32* %xc292, align 4
  %243 = load i32, i32* %guideline, align 4
  %sub293 = sub nsw i32 %242, %243
  %cmp294 = icmp sge i32 %sub293, 0
  br i1 %cmp294, label %cond.true.296, label %cond.false.301

cond.true.296:                                    ; preds = %if.then.289
  %244 = load i32, i32* %i2, align 4
  %idxprom297 = sext i32 %244 to i64
  %245 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx298 = getelementptr inbounds %struct.rect, %struct.rect* %245, i64 %idxprom297
  %xc299 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx298, i32 0, i32 0
  %246 = load i32, i32* %xc299, align 4
  %247 = load i32, i32* %guideline, align 4
  %sub300 = sub nsw i32 %246, %247
  br label %cond.end.307

cond.false.301:                                   ; preds = %if.then.289
  %248 = load i32, i32* %i2, align 4
  %idxprom302 = sext i32 %248 to i64
  %249 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx303 = getelementptr inbounds %struct.rect, %struct.rect* %249, i64 %idxprom302
  %xc304 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx303, i32 0, i32 0
  %250 = load i32, i32* %xc304, align 4
  %251 = load i32, i32* %guideline, align 4
  %sub305 = sub nsw i32 %250, %251
  %sub306 = sub nsw i32 0, %sub305
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.301, %cond.true.296
  %cond308 = phi i32 [ %sub300, %cond.true.296 ], [ %sub306, %cond.false.301 ]
  store i32 %cond308, i32* %min, align 4
  %252 = load i32, i32* %c, align 4
  store i32 %252, i32* %minc, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %cond.end.307, %cond.end.285
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %253 = load i32, i32* %c, align 4
  %inc311 = add nsw i32 %253, 1
  store i32 %inc311, i32* %c, align 4
  br label %for.cond.214

for.end.312:                                      ; preds = %for.cond.214
  br label %if.end.415

if.else:                                          ; preds = %if.end.200
  store i32 10000000, i32* %xmin, align 4
  store i32 0, i32* %xmax, align 4
  %254 = load i32, i32* %c1, align 4
  store i32 %254, i32* %c, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.412, %if.else
  %255 = load i32, i32* %c, align 4
  %256 = load i32, i32* %c2, align 4
  %cmp314 = icmp sle i32 %255, %256
  br i1 %cmp314, label %for.body.316, label %for.end.414

for.body.316:                                     ; preds = %for.cond.313
  %257 = load i32, i32* %c, align 4
  %idxprom317 = sext i32 %257 to i64
  %258 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels318 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %258, i32 0, i32 2
  %259 = load i32*, i32** %channels318, align 8
  %arrayidx319 = getelementptr inbounds i32, i32* %259, i64 %idxprom317
  %260 = load i32, i32* %arrayidx319, align 4
  %idxprom320 = sext i32 %260 to i64
  %261 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx321 = getelementptr inbounds %struct.ebox, %struct.ebox* %261, i64 %idxprom320
  %index1322 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx321, i32 0, i32 0
  %262 = load i32, i32* %index1322, align 4
  store i32 %262, i32* %i1, align 4
  %263 = load i32, i32* %c, align 4
  %idxprom323 = sext i32 %263 to i64
  %264 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels324 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %264, i32 0, i32 2
  %265 = load i32*, i32** %channels324, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %265, i64 %idxprom323
  %266 = load i32, i32* %arrayidx325, align 4
  %idxprom326 = sext i32 %266 to i64
  %267 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx327 = getelementptr inbounds %struct.ebox, %struct.ebox* %267, i64 %idxprom326
  %index2328 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx327, i32 0, i32 1
  %268 = load i32, i32* %index2328, align 4
  store i32 %268, i32* %i2, align 4
  %269 = load i32, i32* %i1, align 4
  %idxprom329 = sext i32 %269 to i64
  %270 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx330 = getelementptr inbounds %struct.rect, %struct.rect* %270, i64 %idxprom329
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx330, i32 0, i32 1
  %271 = load i32, i32* %yc, align 4
  %272 = load i32, i32* %guideline, align 4
  %sub331 = sub nsw i32 %271, %272
  %cmp332 = icmp sge i32 %sub331, 0
  br i1 %cmp332, label %cond.true.334, label %cond.false.339

cond.true.334:                                    ; preds = %for.body.316
  %273 = load i32, i32* %i1, align 4
  %idxprom335 = sext i32 %273 to i64
  %274 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx336 = getelementptr inbounds %struct.rect, %struct.rect* %274, i64 %idxprom335
  %yc337 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx336, i32 0, i32 1
  %275 = load i32, i32* %yc337, align 4
  %276 = load i32, i32* %guideline, align 4
  %sub338 = sub nsw i32 %275, %276
  br label %cond.end.345

cond.false.339:                                   ; preds = %for.body.316
  %277 = load i32, i32* %i1, align 4
  %idxprom340 = sext i32 %277 to i64
  %278 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx341 = getelementptr inbounds %struct.rect, %struct.rect* %278, i64 %idxprom340
  %yc342 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx341, i32 0, i32 1
  %279 = load i32, i32* %yc342, align 4
  %280 = load i32, i32* %guideline, align 4
  %sub343 = sub nsw i32 %279, %280
  %sub344 = sub nsw i32 0, %sub343
  br label %cond.end.345

cond.end.345:                                     ; preds = %cond.false.339, %cond.true.334
  %cond346 = phi i32 [ %sub338, %cond.true.334 ], [ %sub344, %cond.false.339 ]
  %281 = load i32, i32* %min, align 4
  %cmp347 = icmp slt i32 %cond346, %281
  br i1 %cmp347, label %if.then.349, label %if.end.369

if.then.349:                                      ; preds = %cond.end.345
  %282 = load i32, i32* %i1, align 4
  %idxprom350 = sext i32 %282 to i64
  %283 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx351 = getelementptr inbounds %struct.rect, %struct.rect* %283, i64 %idxprom350
  %yc352 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx351, i32 0, i32 1
  %284 = load i32, i32* %yc352, align 4
  %285 = load i32, i32* %guideline, align 4
  %sub353 = sub nsw i32 %284, %285
  %cmp354 = icmp sge i32 %sub353, 0
  br i1 %cmp354, label %cond.true.356, label %cond.false.361

cond.true.356:                                    ; preds = %if.then.349
  %286 = load i32, i32* %i1, align 4
  %idxprom357 = sext i32 %286 to i64
  %287 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx358 = getelementptr inbounds %struct.rect, %struct.rect* %287, i64 %idxprom357
  %yc359 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx358, i32 0, i32 1
  %288 = load i32, i32* %yc359, align 4
  %289 = load i32, i32* %guideline, align 4
  %sub360 = sub nsw i32 %288, %289
  br label %cond.end.367

cond.false.361:                                   ; preds = %if.then.349
  %290 = load i32, i32* %i1, align 4
  %idxprom362 = sext i32 %290 to i64
  %291 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx363 = getelementptr inbounds %struct.rect, %struct.rect* %291, i64 %idxprom362
  %yc364 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx363, i32 0, i32 1
  %292 = load i32, i32* %yc364, align 4
  %293 = load i32, i32* %guideline, align 4
  %sub365 = sub nsw i32 %292, %293
  %sub366 = sub nsw i32 0, %sub365
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.361, %cond.true.356
  %cond368 = phi i32 [ %sub360, %cond.true.356 ], [ %sub366, %cond.false.361 ]
  store i32 %cond368, i32* %min, align 4
  %294 = load i32, i32* %c, align 4
  store i32 %294, i32* %minc, align 4
  br label %if.end.369

if.end.369:                                       ; preds = %cond.end.367, %cond.end.345
  %295 = load i32, i32* %i2, align 4
  %idxprom370 = sext i32 %295 to i64
  %296 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx371 = getelementptr inbounds %struct.rect, %struct.rect* %296, i64 %idxprom370
  %yc372 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx371, i32 0, i32 1
  %297 = load i32, i32* %yc372, align 4
  %298 = load i32, i32* %guideline, align 4
  %sub373 = sub nsw i32 %297, %298
  %cmp374 = icmp sge i32 %sub373, 0
  br i1 %cmp374, label %cond.true.376, label %cond.false.381

cond.true.376:                                    ; preds = %if.end.369
  %299 = load i32, i32* %i2, align 4
  %idxprom377 = sext i32 %299 to i64
  %300 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx378 = getelementptr inbounds %struct.rect, %struct.rect* %300, i64 %idxprom377
  %yc379 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx378, i32 0, i32 1
  %301 = load i32, i32* %yc379, align 4
  %302 = load i32, i32* %guideline, align 4
  %sub380 = sub nsw i32 %301, %302
  br label %cond.end.387

cond.false.381:                                   ; preds = %if.end.369
  %303 = load i32, i32* %i2, align 4
  %idxprom382 = sext i32 %303 to i64
  %304 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx383 = getelementptr inbounds %struct.rect, %struct.rect* %304, i64 %idxprom382
  %yc384 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx383, i32 0, i32 1
  %305 = load i32, i32* %yc384, align 4
  %306 = load i32, i32* %guideline, align 4
  %sub385 = sub nsw i32 %305, %306
  %sub386 = sub nsw i32 0, %sub385
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.381, %cond.true.376
  %cond388 = phi i32 [ %sub380, %cond.true.376 ], [ %sub386, %cond.false.381 ]
  %307 = load i32, i32* %min, align 4
  %cmp389 = icmp slt i32 %cond388, %307
  br i1 %cmp389, label %if.then.391, label %if.end.411

if.then.391:                                      ; preds = %cond.end.387
  %308 = load i32, i32* %i2, align 4
  %idxprom392 = sext i32 %308 to i64
  %309 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx393 = getelementptr inbounds %struct.rect, %struct.rect* %309, i64 %idxprom392
  %yc394 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx393, i32 0, i32 1
  %310 = load i32, i32* %yc394, align 4
  %311 = load i32, i32* %guideline, align 4
  %sub395 = sub nsw i32 %310, %311
  %cmp396 = icmp sge i32 %sub395, 0
  br i1 %cmp396, label %cond.true.398, label %cond.false.403

cond.true.398:                                    ; preds = %if.then.391
  %312 = load i32, i32* %i2, align 4
  %idxprom399 = sext i32 %312 to i64
  %313 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx400 = getelementptr inbounds %struct.rect, %struct.rect* %313, i64 %idxprom399
  %yc401 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx400, i32 0, i32 1
  %314 = load i32, i32* %yc401, align 4
  %315 = load i32, i32* %guideline, align 4
  %sub402 = sub nsw i32 %314, %315
  br label %cond.end.409

cond.false.403:                                   ; preds = %if.then.391
  %316 = load i32, i32* %i2, align 4
  %idxprom404 = sext i32 %316 to i64
  %317 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx405 = getelementptr inbounds %struct.rect, %struct.rect* %317, i64 %idxprom404
  %yc406 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx405, i32 0, i32 1
  %318 = load i32, i32* %yc406, align 4
  %319 = load i32, i32* %guideline, align 4
  %sub407 = sub nsw i32 %318, %319
  %sub408 = sub nsw i32 0, %sub407
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.403, %cond.true.398
  %cond410 = phi i32 [ %sub402, %cond.true.398 ], [ %sub408, %cond.false.403 ]
  store i32 %cond410, i32* %min, align 4
  %320 = load i32, i32* %c, align 4
  store i32 %320, i32* %minc, align 4
  br label %if.end.411

if.end.411:                                       ; preds = %cond.end.409, %cond.end.387
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411
  %321 = load i32, i32* %c, align 4
  %inc413 = add nsw i32 %321, 1
  store i32 %inc413, i32* %c, align 4
  br label %for.cond.313

for.end.414:                                      ; preds = %for.cond.313
  br label %if.end.415

if.end.415:                                       ; preds = %for.end.414, %for.end.312
  %322 = load i32, i32* %c1, align 4
  store i32 %322, i32* %c, align 4
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.544, %if.end.415
  %323 = load i32, i32* %c, align 4
  %324 = load i32, i32* %c2, align 4
  %cmp417 = icmp sle i32 %323, %324
  br i1 %cmp417, label %for.body.419, label %for.end.546

for.body.419:                                     ; preds = %for.cond.416
  %325 = load i32, i32* %c, align 4
  %idxprom420 = sext i32 %325 to i64
  %326 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels421 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %326, i32 0, i32 2
  %327 = load i32*, i32** %channels421, align 8
  %arrayidx422 = getelementptr inbounds i32, i32* %327, i64 %idxprom420
  %328 = load i32, i32* %arrayidx422, align 4
  %idxprom423 = sext i32 %328 to i64
  %329 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx424 = getelementptr inbounds %struct.ebox, %struct.ebox* %329, i64 %idxprom423
  %index1425 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx424, i32 0, i32 0
  %330 = load i32, i32* %index1425, align 4
  store i32 %330, i32* %i1, align 4
  %331 = load i32, i32* %c, align 4
  %idxprom426 = sext i32 %331 to i64
  %332 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels427 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %332, i32 0, i32 2
  %333 = load i32*, i32** %channels427, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %333, i64 %idxprom426
  %334 = load i32, i32* %arrayidx428, align 4
  %idxprom429 = sext i32 %334 to i64
  %335 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx430 = getelementptr inbounds %struct.ebox, %struct.ebox* %335, i64 %idxprom429
  %index2431 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx430, i32 0, i32 1
  %336 = load i32, i32* %index2431, align 4
  store i32 %336, i32* %i2, align 4
  %337 = load i32, i32* %c, align 4
  %338 = load i32, i32* %minc, align 4
  %cmp432 = icmp ne i32 %337, %338
  br i1 %cmp432, label %if.then.434, label %if.else.441

if.then.434:                                      ; preds = %for.body.419
  %339 = load i32, i32* %c, align 4
  %idxprom435 = sext i32 %339 to i64
  %340 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels436 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %340, i32 0, i32 2
  %341 = load i32*, i32** %channels436, align 8
  %arrayidx437 = getelementptr inbounds i32, i32* %341, i64 %idxprom435
  %342 = load i32, i32* %arrayidx437, align 4
  %idxprom438 = sext i32 %342 to i64
  %343 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx439 = getelementptr inbounds %struct.ebox, %struct.ebox* %343, i64 %idxprom438
  %notActive440 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx439, i32 0, i32 11
  store i32 1, i32* %notActive440, align 4
  br label %if.end.466

if.else.441:                                      ; preds = %for.body.419
  %344 = load i32, i32* %c2, align 4
  %idxprom442 = sext i32 %344 to i64
  %345 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels443 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %345, i32 0, i32 2
  %346 = load i32*, i32** %channels443, align 8
  %arrayidx444 = getelementptr inbounds i32, i32* %346, i64 %idxprom442
  %347 = load i32, i32* %arrayidx444, align 4
  %idxprom445 = sext i32 %347 to i64
  %348 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx446 = getelementptr inbounds %struct.ebox, %struct.ebox* %348, i64 %idxprom445
  %rtside447 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx446, i32 0, i32 4
  %349 = load i32, i32* %rtside447, align 4
  %350 = load i32, i32* %c, align 4
  %idxprom448 = sext i32 %350 to i64
  %351 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels449 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %351, i32 0, i32 2
  %352 = load i32*, i32** %channels449, align 8
  %arrayidx450 = getelementptr inbounds i32, i32* %352, i64 %idxprom448
  %353 = load i32, i32* %arrayidx450, align 4
  %idxprom451 = sext i32 %353 to i64
  %354 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx452 = getelementptr inbounds %struct.ebox, %struct.ebox* %354, i64 %idxprom451
  %rtside453 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx452, i32 0, i32 4
  store i32 %349, i32* %rtside453, align 4
  %355 = load i32, i32* %c1, align 4
  %idxprom454 = sext i32 %355 to i64
  %356 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels455 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %356, i32 0, i32 2
  %357 = load i32*, i32** %channels455, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %357, i64 %idxprom454
  %358 = load i32, i32* %arrayidx456, align 4
  %idxprom457 = sext i32 %358 to i64
  %359 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx458 = getelementptr inbounds %struct.ebox, %struct.ebox* %359, i64 %idxprom457
  %lbside459 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx458, i32 0, i32 3
  %360 = load i32, i32* %lbside459, align 4
  %361 = load i32, i32* %c, align 4
  %idxprom460 = sext i32 %361 to i64
  %362 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels461 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %362, i32 0, i32 2
  %363 = load i32*, i32** %channels461, align 8
  %arrayidx462 = getelementptr inbounds i32, i32* %363, i64 %idxprom460
  %364 = load i32, i32* %arrayidx462, align 4
  %idxprom463 = sext i32 %364 to i64
  %365 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx464 = getelementptr inbounds %struct.ebox, %struct.ebox* %365, i64 %idxprom463
  %lbside465 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx464, i32 0, i32 3
  store i32 %360, i32* %lbside465, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.441, %if.then.434
  %366 = load i32, i32* %c, align 4
  %367 = load i32, i32* %c1, align 4
  %cmp467 = icmp eq i32 %366, %367
  br i1 %cmp467, label %if.then.469, label %if.end.487

if.then.469:                                      ; preds = %if.end.466
  %368 = load i32, i32* %vertical, align 4
  %cmp470 = icmp eq i32 %368, 1
  br i1 %cmp470, label %if.then.472, label %if.else.479

if.then.472:                                      ; preds = %if.then.469
  %369 = load i32, i32* %i1, align 4
  %idxprom473 = sext i32 %369 to i64
  %370 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx474 = getelementptr inbounds %struct.rect, %struct.rect* %370, i64 %idxprom473
  %ur475 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx474, i32 0, i32 8
  store i32 1, i32* %ur475, align 4
  %371 = load i32, i32* %i2, align 4
  %idxprom476 = sext i32 %371 to i64
  %372 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx477 = getelementptr inbounds %struct.rect, %struct.rect* %372, i64 %idxprom476
  %lr478 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx477, i32 0, i32 10
  store i32 1, i32* %lr478, align 4
  br label %if.end.486

if.else.479:                                      ; preds = %if.then.469
  %373 = load i32, i32* %i1, align 4
  %idxprom480 = sext i32 %373 to i64
  %374 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx481 = getelementptr inbounds %struct.rect, %struct.rect* %374, i64 %idxprom480
  %ur482 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx481, i32 0, i32 8
  store i32 1, i32* %ur482, align 4
  %375 = load i32, i32* %i2, align 4
  %idxprom483 = sext i32 %375 to i64
  %376 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx484 = getelementptr inbounds %struct.rect, %struct.rect* %376, i64 %idxprom483
  %ul485 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx484, i32 0, i32 9
  store i32 1, i32* %ul485, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.479, %if.then.472
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.end.466
  %377 = load i32, i32* %c, align 4
  %378 = load i32, i32* %c2, align 4
  %cmp488 = icmp eq i32 %377, %378
  br i1 %cmp488, label %if.then.490, label %if.end.508

if.then.490:                                      ; preds = %if.end.487
  %379 = load i32, i32* %vertical, align 4
  %cmp491 = icmp eq i32 %379, 1
  br i1 %cmp491, label %if.then.493, label %if.else.500

if.then.493:                                      ; preds = %if.then.490
  %380 = load i32, i32* %i1, align 4
  %idxprom494 = sext i32 %380 to i64
  %381 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx495 = getelementptr inbounds %struct.rect, %struct.rect* %381, i64 %idxprom494
  %ul496 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx495, i32 0, i32 9
  store i32 1, i32* %ul496, align 4
  %382 = load i32, i32* %i2, align 4
  %idxprom497 = sext i32 %382 to i64
  %383 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx498 = getelementptr inbounds %struct.rect, %struct.rect* %383, i64 %idxprom497
  %ll499 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx498, i32 0, i32 11
  store i32 1, i32* %ll499, align 4
  br label %if.end.507

if.else.500:                                      ; preds = %if.then.490
  %384 = load i32, i32* %i1, align 4
  %idxprom501 = sext i32 %384 to i64
  %385 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx502 = getelementptr inbounds %struct.rect, %struct.rect* %385, i64 %idxprom501
  %lr503 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx502, i32 0, i32 10
  store i32 1, i32* %lr503, align 4
  %386 = load i32, i32* %i2, align 4
  %idxprom504 = sext i32 %386 to i64
  %387 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx505 = getelementptr inbounds %struct.rect, %struct.rect* %387, i64 %idxprom504
  %ll506 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx505, i32 0, i32 11
  store i32 1, i32* %ll506, align 4
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.500, %if.then.493
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.end.487
  %388 = load i32, i32* %c, align 4
  %389 = load i32, i32* %c1, align 4
  %cmp509 = icmp sgt i32 %388, %389
  br i1 %cmp509, label %land.lhs.true, label %if.end.543

land.lhs.true:                                    ; preds = %if.end.508
  %390 = load i32, i32* %c, align 4
  %391 = load i32, i32* %c2, align 4
  %cmp511 = icmp slt i32 %390, %391
  br i1 %cmp511, label %if.then.513, label %if.end.543

if.then.513:                                      ; preds = %land.lhs.true
  %392 = load i32, i32* %vertical, align 4
  %cmp514 = icmp eq i32 %392, 1
  br i1 %cmp514, label %if.then.516, label %if.else.529

if.then.516:                                      ; preds = %if.then.513
  %393 = load i32, i32* %i1, align 4
  %idxprom517 = sext i32 %393 to i64
  %394 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx518 = getelementptr inbounds %struct.rect, %struct.rect* %394, i64 %idxprom517
  %ul519 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx518, i32 0, i32 9
  store i32 1, i32* %ul519, align 4
  %395 = load i32, i32* %i1, align 4
  %idxprom520 = sext i32 %395 to i64
  %396 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx521 = getelementptr inbounds %struct.rect, %struct.rect* %396, i64 %idxprom520
  %ur522 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx521, i32 0, i32 8
  store i32 1, i32* %ur522, align 4
  %397 = load i32, i32* %i2, align 4
  %idxprom523 = sext i32 %397 to i64
  %398 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx524 = getelementptr inbounds %struct.rect, %struct.rect* %398, i64 %idxprom523
  %ll525 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx524, i32 0, i32 11
  store i32 1, i32* %ll525, align 4
  %399 = load i32, i32* %i2, align 4
  %idxprom526 = sext i32 %399 to i64
  %400 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx527 = getelementptr inbounds %struct.rect, %struct.rect* %400, i64 %idxprom526
  %lr528 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx527, i32 0, i32 10
  store i32 1, i32* %lr528, align 4
  br label %if.end.542

if.else.529:                                      ; preds = %if.then.513
  %401 = load i32, i32* %i1, align 4
  %idxprom530 = sext i32 %401 to i64
  %402 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx531 = getelementptr inbounds %struct.rect, %struct.rect* %402, i64 %idxprom530
  %ur532 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx531, i32 0, i32 8
  store i32 1, i32* %ur532, align 4
  %403 = load i32, i32* %i1, align 4
  %idxprom533 = sext i32 %403 to i64
  %404 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx534 = getelementptr inbounds %struct.rect, %struct.rect* %404, i64 %idxprom533
  %lr535 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx534, i32 0, i32 10
  store i32 1, i32* %lr535, align 4
  %405 = load i32, i32* %i2, align 4
  %idxprom536 = sext i32 %405 to i64
  %406 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx537 = getelementptr inbounds %struct.rect, %struct.rect* %406, i64 %idxprom536
  %ul538 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx537, i32 0, i32 9
  store i32 1, i32* %ul538, align 4
  %407 = load i32, i32* %i2, align 4
  %idxprom539 = sext i32 %407 to i64
  %408 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx540 = getelementptr inbounds %struct.rect, %struct.rect* %408, i64 %idxprom539
  %ll541 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx540, i32 0, i32 11
  store i32 1, i32* %ll541, align 4
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.529, %if.then.516
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %land.lhs.true, %if.end.508
  br label %for.inc.544

for.inc.544:                                      ; preds = %if.end.543
  %409 = load i32, i32* %c, align 4
  %inc545 = add nsw i32 %409, 1
  store i32 %inc545, i32* %c, align 4
  br label %for.cond.416

for.end.546:                                      ; preds = %for.cond.416
  %410 = load i32, i32* %c2, align 4
  %inc547 = add nsw i32 %410, 1
  store i32 %inc547, i32* %c2, align 4
  store i32 %inc547, i32* %c1, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.546, %if.then.198
  %411 = load i32, i32* %c2, align 4
  %412 = load i32, i32* %count, align 4
  %cmp548 = icmp sle i32 %411, %412
  br i1 %cmp548, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond.170

for.end.550:                                      ; preds = %if.then.173
  store i32 1, i32* %i, align 4
  br label %for.cond.551

for.cond.551:                                     ; preds = %for.inc.557, %for.end.550
  %413 = load i32, i32* %i, align 4
  %414 = load i32, i32* @numRects, align 4
  %cmp552 = icmp sle i32 %413, %414
  br i1 %cmp552, label %for.body.554, label %for.end.559

for.body.554:                                     ; preds = %for.cond.551
  %415 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %415 to i64
  %416 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx556 = getelementptr inbounds %struct.rect, %struct.rect* %416, i64 %idxprom555
  %nedges = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx556, i32 0, i32 12
  store i32 0, i32* %nedges, align 4
  br label %for.inc.557

for.inc.557:                                      ; preds = %for.body.554
  %417 = load i32, i32* %i, align 4
  %inc558 = add nsw i32 %417, 1
  store i32 %inc558, i32* %i, align 4
  br label %for.cond.551

for.end.559:                                      ; preds = %for.cond.551
  store i32 1, i32* %i, align 4
  br label %for.cond.560

for.cond.560:                                     ; preds = %for.inc.617, %for.end.559
  %418 = load i32, i32* %i, align 4
  %419 = load i32, i32* @numXnodes, align 4
  %cmp561 = icmp sle i32 %418, %419
  br i1 %cmp561, label %for.body.563, label %for.end.619

for.body.563:                                     ; preds = %for.cond.560
  %420 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %420 to i64
  %421 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx565 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %421, i64 %idxprom564
  %422 = load %struct.wcbox*, %struct.wcbox** %arrayidx565, align 8
  store %struct.wcbox* %422, %struct.wcbox** %ptr, align 8
  br label %for.cond.566

for.cond.566:                                     ; preds = %for.inc.614, %for.body.563
  %423 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp567 = icmp ne %struct.wcbox* %423, null
  br i1 %cmp567, label %for.body.569, label %for.end.616

for.body.569:                                     ; preds = %for.cond.566
  %424 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth570 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %424, i32 0, i32 0
  %425 = load i32, i32* %fixedWidth570, align 4
  %cmp571 = icmp eq i32 %425, 1
  br i1 %cmp571, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %for.body.569
  br label %for.inc.614

if.end.574:                                       ; preds = %for.body.569
  %426 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels575 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %426, i32 0, i32 2
  %427 = load i32*, i32** %channels575, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %427, i64 0
  %428 = load i32, i32* %arrayidx576, align 4
  store i32 %428, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.577

for.cond.577:                                     ; preds = %for.inc.611, %if.end.574
  %429 = load i32, i32* %c, align 4
  %430 = load i32, i32* %count, align 4
  %cmp578 = icmp sle i32 %429, %430
  br i1 %cmp578, label %for.body.580, label %for.end.613

for.body.580:                                     ; preds = %for.cond.577
  %431 = load i32, i32* %c, align 4
  %idxprom581 = sext i32 %431 to i64
  %432 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels582 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %432, i32 0, i32 2
  %433 = load i32*, i32** %channels582, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %433, i64 %idxprom581
  %434 = load i32, i32* %arrayidx583, align 4
  %idxprom584 = sext i32 %434 to i64
  %435 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx585 = getelementptr inbounds %struct.ebox, %struct.ebox* %435, i64 %idxprom584
  %notActive586 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx585, i32 0, i32 11
  %436 = load i32, i32* %notActive586, align 4
  %cmp587 = icmp eq i32 %436, 1
  br i1 %cmp587, label %if.then.589, label %if.end.590

if.then.589:                                      ; preds = %for.body.580
  br label %for.inc.611

if.end.590:                                       ; preds = %for.body.580
  %437 = load i32, i32* %c, align 4
  %idxprom591 = sext i32 %437 to i64
  %438 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels592 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %438, i32 0, i32 2
  %439 = load i32*, i32** %channels592, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %439, i64 %idxprom591
  %440 = load i32, i32* %arrayidx593, align 4
  %idxprom594 = sext i32 %440 to i64
  %441 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx595 = getelementptr inbounds %struct.ebox, %struct.ebox* %441, i64 %idxprom594
  %index1596 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx595, i32 0, i32 0
  %442 = load i32, i32* %index1596, align 4
  store i32 %442, i32* %index1, align 4
  %443 = load i32, i32* %c, align 4
  %idxprom597 = sext i32 %443 to i64
  %444 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels598 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %444, i32 0, i32 2
  %445 = load i32*, i32** %channels598, align 8
  %arrayidx599 = getelementptr inbounds i32, i32* %445, i64 %idxprom597
  %446 = load i32, i32* %arrayidx599, align 4
  %idxprom600 = sext i32 %446 to i64
  %447 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx601 = getelementptr inbounds %struct.ebox, %struct.ebox* %447, i64 %idxprom600
  %index2602 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx601, i32 0, i32 1
  %448 = load i32, i32* %index2602, align 4
  store i32 %448, i32* %index2, align 4
  %449 = load i32, i32* %index2, align 4
  %idxprom603 = sext i32 %449 to i64
  %450 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx604 = getelementptr inbounds %struct.rect, %struct.rect* %450, i64 %idxprom603
  %nedges605 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx604, i32 0, i32 12
  %451 = load i32, i32* %nedges605, align 4
  %inc606 = add nsw i32 %451, 1
  store i32 %inc606, i32* %nedges605, align 4
  %452 = load i32, i32* %index1, align 4
  %idxprom607 = sext i32 %452 to i64
  %453 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx608 = getelementptr inbounds %struct.rect, %struct.rect* %453, i64 %idxprom607
  %nedges609 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx608, i32 0, i32 12
  %454 = load i32, i32* %nedges609, align 4
  %inc610 = add nsw i32 %454, 1
  store i32 %inc610, i32* %nedges609, align 4
  br label %for.inc.611

for.inc.611:                                      ; preds = %if.end.590, %if.then.589
  %455 = load i32, i32* %c, align 4
  %inc612 = add nsw i32 %455, 1
  store i32 %inc612, i32* %c, align 4
  br label %for.cond.577

for.end.613:                                      ; preds = %for.cond.577
  br label %for.inc.614

for.inc.614:                                      ; preds = %for.end.613, %if.then.573
  %456 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next615 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %456, i32 0, i32 4
  %457 = load %struct.wcbox*, %struct.wcbox** %next615, align 8
  store %struct.wcbox* %457, %struct.wcbox** %ptr, align 8
  br label %for.cond.566

for.end.616:                                      ; preds = %for.cond.566
  br label %for.inc.617

for.inc.617:                                      ; preds = %for.end.616
  %458 = load i32, i32* %i, align 4
  %inc618 = add nsw i32 %458, 1
  store i32 %inc618, i32* %i, align 4
  br label %for.cond.560

for.end.619:                                      ; preds = %for.cond.560
  store i32 1, i32* %i, align 4
  br label %for.cond.620

for.cond.620:                                     ; preds = %for.inc.677, %for.end.619
  %459 = load i32, i32* %i, align 4
  %460 = load i32, i32* @numYnodes, align 4
  %cmp621 = icmp sle i32 %459, %460
  br i1 %cmp621, label %for.body.623, label %for.end.679

for.body.623:                                     ; preds = %for.cond.620
  %461 = load i32, i32* %i, align 4
  %idxprom624 = sext i32 %461 to i64
  %462 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx625 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %462, i64 %idxprom624
  %463 = load %struct.wcbox*, %struct.wcbox** %arrayidx625, align 8
  store %struct.wcbox* %463, %struct.wcbox** %ptr, align 8
  br label %for.cond.626

for.cond.626:                                     ; preds = %for.inc.674, %for.body.623
  %464 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp627 = icmp ne %struct.wcbox* %464, null
  br i1 %cmp627, label %for.body.629, label %for.end.676

for.body.629:                                     ; preds = %for.cond.626
  %465 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth630 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %465, i32 0, i32 0
  %466 = load i32, i32* %fixedWidth630, align 4
  %cmp631 = icmp eq i32 %466, 1
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %for.body.629
  br label %for.inc.674

if.end.634:                                       ; preds = %for.body.629
  %467 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels635 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %467, i32 0, i32 2
  %468 = load i32*, i32** %channels635, align 8
  %arrayidx636 = getelementptr inbounds i32, i32* %468, i64 0
  %469 = load i32, i32* %arrayidx636, align 4
  store i32 %469, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.671, %if.end.634
  %470 = load i32, i32* %c, align 4
  %471 = load i32, i32* %count, align 4
  %cmp638 = icmp sle i32 %470, %471
  br i1 %cmp638, label %for.body.640, label %for.end.673

for.body.640:                                     ; preds = %for.cond.637
  %472 = load i32, i32* %c, align 4
  %idxprom641 = sext i32 %472 to i64
  %473 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels642 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %473, i32 0, i32 2
  %474 = load i32*, i32** %channels642, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %474, i64 %idxprom641
  %475 = load i32, i32* %arrayidx643, align 4
  %idxprom644 = sext i32 %475 to i64
  %476 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx645 = getelementptr inbounds %struct.ebox, %struct.ebox* %476, i64 %idxprom644
  %notActive646 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx645, i32 0, i32 11
  %477 = load i32, i32* %notActive646, align 4
  %cmp647 = icmp eq i32 %477, 1
  br i1 %cmp647, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %for.body.640
  br label %for.inc.671

if.end.650:                                       ; preds = %for.body.640
  %478 = load i32, i32* %c, align 4
  %idxprom651 = sext i32 %478 to i64
  %479 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels652 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %479, i32 0, i32 2
  %480 = load i32*, i32** %channels652, align 8
  %arrayidx653 = getelementptr inbounds i32, i32* %480, i64 %idxprom651
  %481 = load i32, i32* %arrayidx653, align 4
  %idxprom654 = sext i32 %481 to i64
  %482 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx655 = getelementptr inbounds %struct.ebox, %struct.ebox* %482, i64 %idxprom654
  %index1656 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx655, i32 0, i32 0
  %483 = load i32, i32* %index1656, align 4
  store i32 %483, i32* %index1, align 4
  %484 = load i32, i32* %c, align 4
  %idxprom657 = sext i32 %484 to i64
  %485 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels658 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %485, i32 0, i32 2
  %486 = load i32*, i32** %channels658, align 8
  %arrayidx659 = getelementptr inbounds i32, i32* %486, i64 %idxprom657
  %487 = load i32, i32* %arrayidx659, align 4
  %idxprom660 = sext i32 %487 to i64
  %488 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx661 = getelementptr inbounds %struct.ebox, %struct.ebox* %488, i64 %idxprom660
  %index2662 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx661, i32 0, i32 1
  %489 = load i32, i32* %index2662, align 4
  store i32 %489, i32* %index2, align 4
  %490 = load i32, i32* %index2, align 4
  %idxprom663 = sext i32 %490 to i64
  %491 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx664 = getelementptr inbounds %struct.rect, %struct.rect* %491, i64 %idxprom663
  %nedges665 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx664, i32 0, i32 12
  %492 = load i32, i32* %nedges665, align 4
  %inc666 = add nsw i32 %492, 1
  store i32 %inc666, i32* %nedges665, align 4
  %493 = load i32, i32* %index1, align 4
  %idxprom667 = sext i32 %493 to i64
  %494 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx668 = getelementptr inbounds %struct.rect, %struct.rect* %494, i64 %idxprom667
  %nedges669 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx668, i32 0, i32 12
  %495 = load i32, i32* %nedges669, align 4
  %inc670 = add nsw i32 %495, 1
  store i32 %inc670, i32* %nedges669, align 4
  br label %for.inc.671

for.inc.671:                                      ; preds = %if.end.650, %if.then.649
  %496 = load i32, i32* %c, align 4
  %inc672 = add nsw i32 %496, 1
  store i32 %inc672, i32* %c, align 4
  br label %for.cond.637

for.end.673:                                      ; preds = %for.cond.637
  br label %for.inc.674

for.inc.674:                                      ; preds = %for.end.673, %if.then.633
  %497 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next675 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %497, i32 0, i32 4
  %498 = load %struct.wcbox*, %struct.wcbox** %next675, align 8
  store %struct.wcbox* %498, %struct.wcbox** %ptr, align 8
  br label %for.cond.626

for.end.676:                                      ; preds = %for.cond.626
  br label %for.inc.677

for.inc.677:                                      ; preds = %for.end.676
  %499 = load i32, i32* %i, align 4
  %inc678 = add nsw i32 %499, 1
  store i32 %inc678, i32* %i, align 4
  br label %for.cond.620

for.end.679:                                      ; preds = %for.cond.620
  store i32 1, i32* %hit, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.1004, %for.end.679
  %500 = load i32, i32* %hit, align 4
  %tobool680 = icmp ne i32 %500, 0
  br i1 %tobool680, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %hit, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.839, %while.body
  %501 = load i32, i32* %i, align 4
  %502 = load i32, i32* @numXnodes, align 4
  %cmp682 = icmp sle i32 %501, %502
  br i1 %cmp682, label %for.body.684, label %for.end.841

for.body.684:                                     ; preds = %for.cond.681
  %503 = load i32, i32* %i, align 4
  %idxprom685 = sext i32 %503 to i64
  %504 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx686 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %504, i64 %idxprom685
  %505 = load %struct.wcbox*, %struct.wcbox** %arrayidx686, align 8
  store %struct.wcbox* %505, %struct.wcbox** %ptr, align 8
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.836, %for.body.684
  %506 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp688 = icmp ne %struct.wcbox* %506, null
  br i1 %cmp688, label %for.body.690, label %for.end.838

for.body.690:                                     ; preds = %for.cond.687
  %507 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth691 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %507, i32 0, i32 0
  %508 = load i32, i32* %fixedWidth691, align 4
  %cmp692 = icmp eq i32 %508, 1
  br i1 %cmp692, label %if.then.694, label %if.end.695

if.then.694:                                      ; preds = %for.body.690
  br label %for.inc.836

if.end.695:                                       ; preds = %for.body.690
  %509 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels696 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %509, i32 0, i32 2
  %510 = load i32*, i32** %channels696, align 8
  %arrayidx697 = getelementptr inbounds i32, i32* %510, i64 0
  %511 = load i32, i32* %arrayidx697, align 4
  store i32 %511, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.698

for.cond.698:                                     ; preds = %for.inc.833, %if.end.695
  %512 = load i32, i32* %c, align 4
  %513 = load i32, i32* %count, align 4
  %cmp699 = icmp sle i32 %512, %513
  br i1 %cmp699, label %for.body.701, label %for.end.835

for.body.701:                                     ; preds = %for.cond.698
  %514 = load i32, i32* %c, align 4
  %idxprom702 = sext i32 %514 to i64
  %515 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels703 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %515, i32 0, i32 2
  %516 = load i32*, i32** %channels703, align 8
  %arrayidx704 = getelementptr inbounds i32, i32* %516, i64 %idxprom702
  %517 = load i32, i32* %arrayidx704, align 4
  %idxprom705 = sext i32 %517 to i64
  %518 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx706 = getelementptr inbounds %struct.ebox, %struct.ebox* %518, i64 %idxprom705
  %notActive707 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx706, i32 0, i32 11
  %519 = load i32, i32* %notActive707, align 4
  %cmp708 = icmp eq i32 %519, 1
  br i1 %cmp708, label %if.then.710, label %if.end.711

if.then.710:                                      ; preds = %for.body.701
  br label %for.inc.833

if.end.711:                                       ; preds = %for.body.701
  %520 = load i32, i32* %c, align 4
  %idxprom712 = sext i32 %520 to i64
  %521 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels713 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %521, i32 0, i32 2
  %522 = load i32*, i32** %channels713, align 8
  %arrayidx714 = getelementptr inbounds i32, i32* %522, i64 %idxprom712
  %523 = load i32, i32* %arrayidx714, align 4
  %idxprom715 = sext i32 %523 to i64
  %524 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx716 = getelementptr inbounds %struct.ebox, %struct.ebox* %524, i64 %idxprom715
  %index1717 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx716, i32 0, i32 0
  %525 = load i32, i32* %index1717, align 4
  store i32 %525, i32* %index1, align 4
  %526 = load i32, i32* %c, align 4
  %idxprom718 = sext i32 %526 to i64
  %527 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels719 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %527, i32 0, i32 2
  %528 = load i32*, i32** %channels719, align 8
  %arrayidx720 = getelementptr inbounds i32, i32* %528, i64 %idxprom718
  %529 = load i32, i32* %arrayidx720, align 4
  %idxprom721 = sext i32 %529 to i64
  %530 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx722 = getelementptr inbounds %struct.ebox, %struct.ebox* %530, i64 %idxprom721
  %index2723 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx722, i32 0, i32 1
  %531 = load i32, i32* %index2723, align 4
  store i32 %531, i32* %index2, align 4
  %532 = load i32, i32* %index2, align 4
  %idxprom724 = sext i32 %532 to i64
  %533 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx725 = getelementptr inbounds %struct.rect, %struct.rect* %533, i64 %idxprom724
  %nedges726 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx725, i32 0, i32 12
  %534 = load i32, i32* %nedges726, align 4
  %cmp727 = icmp eq i32 %534, 1
  br i1 %cmp727, label %if.then.734, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.711
  %535 = load i32, i32* %index1, align 4
  %idxprom729 = sext i32 %535 to i64
  %536 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx730 = getelementptr inbounds %struct.rect, %struct.rect* %536, i64 %idxprom729
  %nedges731 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx730, i32 0, i32 12
  %537 = load i32, i32* %nedges731, align 4
  %cmp732 = icmp eq i32 %537, 1
  br i1 %cmp732, label %if.then.734, label %if.end.832

if.then.734:                                      ; preds = %lor.lhs.false, %if.end.711
  %538 = load i32, i32* %c, align 4
  %idxprom735 = sext i32 %538 to i64
  %539 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels736 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %539, i32 0, i32 2
  %540 = load i32*, i32** %channels736, align 8
  %arrayidx737 = getelementptr inbounds i32, i32* %540, i64 %idxprom735
  %541 = load i32, i32* %arrayidx737, align 4
  %idxprom738 = sext i32 %541 to i64
  %542 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx739 = getelementptr inbounds %struct.ebox, %struct.ebox* %542, i64 %idxprom738
  %notActive740 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx739, i32 0, i32 11
  store i32 1, i32* %notActive740, align 4
  %543 = load i32, i32* %index2, align 4
  %idxprom741 = sext i32 %543 to i64
  %544 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx742 = getelementptr inbounds %struct.rect, %struct.rect* %544, i64 %idxprom741
  %nedges743 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx742, i32 0, i32 12
  %545 = load i32, i32* %nedges743, align 4
  %dec = add nsw i32 %545, -1
  store i32 %dec, i32* %nedges743, align 4
  %546 = load i32, i32* %index1, align 4
  %idxprom744 = sext i32 %546 to i64
  %547 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx745 = getelementptr inbounds %struct.rect, %struct.rect* %547, i64 %idxprom744
  %nedges746 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx745, i32 0, i32 12
  %548 = load i32, i32* %nedges746, align 4
  %dec747 = add nsw i32 %548, -1
  store i32 %dec747, i32* %nedges746, align 4
  store i32 1, i32* %hit, align 4
  store i32 0, i32* %flag, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.748

for.cond.748:                                     ; preds = %for.inc.829, %if.then.734
  %549 = load i32, i32* %c, align 4
  %550 = load i32, i32* %k, align 4
  %add749 = add nsw i32 %549, %550
  %551 = load i32, i32* %count, align 4
  %cmp750 = icmp sle i32 %add749, %551
  br i1 %cmp750, label %if.then.752, label %if.end.785

if.then.752:                                      ; preds = %for.cond.748
  %552 = load i32, i32* %c, align 4
  %553 = load i32, i32* %k, align 4
  %add753 = add nsw i32 %552, %553
  %idxprom754 = sext i32 %add753 to i64
  %554 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels755 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %554, i32 0, i32 2
  %555 = load i32*, i32** %channels755, align 8
  %arrayidx756 = getelementptr inbounds i32, i32* %555, i64 %idxprom754
  %556 = load i32, i32* %arrayidx756, align 4
  %idxprom757 = sext i32 %556 to i64
  %557 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx758 = getelementptr inbounds %struct.ebox, %struct.ebox* %557, i64 %idxprom757
  %notActive759 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx758, i32 0, i32 11
  %558 = load i32, i32* %notActive759, align 4
  %cmp760 = icmp eq i32 %558, 0
  br i1 %cmp760, label %if.then.762, label %if.end.784

if.then.762:                                      ; preds = %if.then.752
  store i32 1, i32* %flag, align 4
  %559 = load i32, i32* %c, align 4
  %idxprom763 = sext i32 %559 to i64
  %560 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels764 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %560, i32 0, i32 2
  %561 = load i32*, i32** %channels764, align 8
  %arrayidx765 = getelementptr inbounds i32, i32* %561, i64 %idxprom763
  %562 = load i32, i32* %arrayidx765, align 4
  %idxprom766 = sext i32 %562 to i64
  %563 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx767 = getelementptr inbounds %struct.ebox, %struct.ebox* %563, i64 %idxprom766
  %rtside768 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx767, i32 0, i32 4
  %564 = load i32, i32* %rtside768, align 4
  %565 = load i32, i32* %c, align 4
  %idxprom769 = sext i32 %565 to i64
  %566 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels770 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %566, i32 0, i32 2
  %567 = load i32*, i32** %channels770, align 8
  %arrayidx771 = getelementptr inbounds i32, i32* %567, i64 %idxprom769
  %568 = load i32, i32* %arrayidx771, align 4
  %idxprom772 = sext i32 %568 to i64
  %569 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx773 = getelementptr inbounds %struct.ebox, %struct.ebox* %569, i64 %idxprom772
  %lbside774 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx773, i32 0, i32 3
  %570 = load i32, i32* %lbside774, align 4
  %sub775 = sub nsw i32 %564, %570
  %571 = load i32, i32* %c, align 4
  %572 = load i32, i32* %k, align 4
  %add776 = add nsw i32 %571, %572
  %idxprom777 = sext i32 %add776 to i64
  %573 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels778 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %573, i32 0, i32 2
  %574 = load i32*, i32** %channels778, align 8
  %arrayidx779 = getelementptr inbounds i32, i32* %574, i64 %idxprom777
  %575 = load i32, i32* %arrayidx779, align 4
  %idxprom780 = sext i32 %575 to i64
  %576 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx781 = getelementptr inbounds %struct.ebox, %struct.ebox* %576, i64 %idxprom780
  %lbside782 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx781, i32 0, i32 3
  %577 = load i32, i32* %lbside782, align 4
  %sub783 = sub nsw i32 %577, %sub775
  store i32 %sub783, i32* %lbside782, align 4
  br label %if.end.784

if.end.784:                                       ; preds = %if.then.762, %if.then.752
  br label %if.end.785

if.end.785:                                       ; preds = %if.end.784, %for.cond.748
  %578 = load i32, i32* %flag, align 4
  %tobool786 = icmp ne i32 %578, 0
  br i1 %tobool786, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %if.end.785
  br label %for.end.831

if.end.788:                                       ; preds = %if.end.785
  %579 = load i32, i32* %c, align 4
  %580 = load i32, i32* %k, align 4
  %sub789 = sub nsw i32 %579, %580
  %cmp790 = icmp sge i32 %sub789, 1
  br i1 %cmp790, label %if.then.792, label %if.end.825

if.then.792:                                      ; preds = %if.end.788
  %581 = load i32, i32* %c, align 4
  %582 = load i32, i32* %k, align 4
  %sub793 = sub nsw i32 %581, %582
  %idxprom794 = sext i32 %sub793 to i64
  %583 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels795 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %583, i32 0, i32 2
  %584 = load i32*, i32** %channels795, align 8
  %arrayidx796 = getelementptr inbounds i32, i32* %584, i64 %idxprom794
  %585 = load i32, i32* %arrayidx796, align 4
  %idxprom797 = sext i32 %585 to i64
  %586 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx798 = getelementptr inbounds %struct.ebox, %struct.ebox* %586, i64 %idxprom797
  %notActive799 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx798, i32 0, i32 11
  %587 = load i32, i32* %notActive799, align 4
  %cmp800 = icmp eq i32 %587, 0
  br i1 %cmp800, label %if.then.802, label %if.end.824

if.then.802:                                      ; preds = %if.then.792
  store i32 1, i32* %flag, align 4
  %588 = load i32, i32* %c, align 4
  %idxprom803 = sext i32 %588 to i64
  %589 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels804 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %589, i32 0, i32 2
  %590 = load i32*, i32** %channels804, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %590, i64 %idxprom803
  %591 = load i32, i32* %arrayidx805, align 4
  %idxprom806 = sext i32 %591 to i64
  %592 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx807 = getelementptr inbounds %struct.ebox, %struct.ebox* %592, i64 %idxprom806
  %rtside808 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx807, i32 0, i32 4
  %593 = load i32, i32* %rtside808, align 4
  %594 = load i32, i32* %c, align 4
  %idxprom809 = sext i32 %594 to i64
  %595 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels810 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %595, i32 0, i32 2
  %596 = load i32*, i32** %channels810, align 8
  %arrayidx811 = getelementptr inbounds i32, i32* %596, i64 %idxprom809
  %597 = load i32, i32* %arrayidx811, align 4
  %idxprom812 = sext i32 %597 to i64
  %598 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx813 = getelementptr inbounds %struct.ebox, %struct.ebox* %598, i64 %idxprom812
  %lbside814 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx813, i32 0, i32 3
  %599 = load i32, i32* %lbside814, align 4
  %sub815 = sub nsw i32 %593, %599
  %600 = load i32, i32* %c, align 4
  %601 = load i32, i32* %k, align 4
  %sub816 = sub nsw i32 %600, %601
  %idxprom817 = sext i32 %sub816 to i64
  %602 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels818 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %602, i32 0, i32 2
  %603 = load i32*, i32** %channels818, align 8
  %arrayidx819 = getelementptr inbounds i32, i32* %603, i64 %idxprom817
  %604 = load i32, i32* %arrayidx819, align 4
  %idxprom820 = sext i32 %604 to i64
  %605 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx821 = getelementptr inbounds %struct.ebox, %struct.ebox* %605, i64 %idxprom820
  %rtside822 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx821, i32 0, i32 4
  %606 = load i32, i32* %rtside822, align 4
  %add823 = add nsw i32 %606, %sub815
  store i32 %add823, i32* %rtside822, align 4
  br label %if.end.824

if.end.824:                                       ; preds = %if.then.802, %if.then.792
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.end.788
  %607 = load i32, i32* %flag, align 4
  %tobool826 = icmp ne i32 %607, 0
  br i1 %tobool826, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %if.end.825
  br label %for.end.831

if.end.828:                                       ; preds = %if.end.825
  br label %for.inc.829

for.inc.829:                                      ; preds = %if.end.828
  %608 = load i32, i32* %k, align 4
  %inc830 = add nsw i32 %608, 1
  store i32 %inc830, i32* %k, align 4
  br label %for.cond.748

for.end.831:                                      ; preds = %if.then.827, %if.then.787
  br label %if.end.832

if.end.832:                                       ; preds = %for.end.831, %lor.lhs.false
  br label %for.inc.833

for.inc.833:                                      ; preds = %if.end.832, %if.then.710
  %609 = load i32, i32* %c, align 4
  %inc834 = add nsw i32 %609, 1
  store i32 %inc834, i32* %c, align 4
  br label %for.cond.698

for.end.835:                                      ; preds = %for.cond.698
  br label %for.inc.836

for.inc.836:                                      ; preds = %for.end.835, %if.then.694
  %610 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next837 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %610, i32 0, i32 4
  %611 = load %struct.wcbox*, %struct.wcbox** %next837, align 8
  store %struct.wcbox* %611, %struct.wcbox** %ptr, align 8
  br label %for.cond.687

for.end.838:                                      ; preds = %for.cond.687
  br label %for.inc.839

for.inc.839:                                      ; preds = %for.end.838
  %612 = load i32, i32* %i, align 4
  %inc840 = add nsw i32 %612, 1
  store i32 %inc840, i32* %i, align 4
  br label %for.cond.681

for.end.841:                                      ; preds = %for.cond.681
  store i32 1, i32* %i, align 4
  br label %for.cond.842

for.cond.842:                                     ; preds = %for.inc.1002, %for.end.841
  %613 = load i32, i32* %i, align 4
  %614 = load i32, i32* @numYnodes, align 4
  %cmp843 = icmp sle i32 %613, %614
  br i1 %cmp843, label %for.body.845, label %for.end.1004

for.body.845:                                     ; preds = %for.cond.842
  %615 = load i32, i32* %i, align 4
  %idxprom846 = sext i32 %615 to i64
  %616 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx847 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %616, i64 %idxprom846
  %617 = load %struct.wcbox*, %struct.wcbox** %arrayidx847, align 8
  store %struct.wcbox* %617, %struct.wcbox** %ptr, align 8
  br label %for.cond.848

for.cond.848:                                     ; preds = %for.inc.999, %for.body.845
  %618 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp849 = icmp ne %struct.wcbox* %618, null
  br i1 %cmp849, label %for.body.851, label %for.end.1001

for.body.851:                                     ; preds = %for.cond.848
  %619 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth852 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %619, i32 0, i32 0
  %620 = load i32, i32* %fixedWidth852, align 4
  %cmp853 = icmp eq i32 %620, 1
  br i1 %cmp853, label %if.then.855, label %if.end.856

if.then.855:                                      ; preds = %for.body.851
  br label %for.inc.999

if.end.856:                                       ; preds = %for.body.851
  %621 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels857 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %621, i32 0, i32 2
  %622 = load i32*, i32** %channels857, align 8
  %arrayidx858 = getelementptr inbounds i32, i32* %622, i64 0
  %623 = load i32, i32* %arrayidx858, align 4
  store i32 %623, i32* %count, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.859

for.cond.859:                                     ; preds = %for.inc.996, %if.end.856
  %624 = load i32, i32* %c, align 4
  %625 = load i32, i32* %count, align 4
  %cmp860 = icmp sle i32 %624, %625
  br i1 %cmp860, label %for.body.862, label %for.end.998

for.body.862:                                     ; preds = %for.cond.859
  %626 = load i32, i32* %c, align 4
  %idxprom863 = sext i32 %626 to i64
  %627 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels864 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %627, i32 0, i32 2
  %628 = load i32*, i32** %channels864, align 8
  %arrayidx865 = getelementptr inbounds i32, i32* %628, i64 %idxprom863
  %629 = load i32, i32* %arrayidx865, align 4
  %idxprom866 = sext i32 %629 to i64
  %630 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx867 = getelementptr inbounds %struct.ebox, %struct.ebox* %630, i64 %idxprom866
  %notActive868 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx867, i32 0, i32 11
  %631 = load i32, i32* %notActive868, align 4
  %cmp869 = icmp eq i32 %631, 1
  br i1 %cmp869, label %if.then.871, label %if.end.872

if.then.871:                                      ; preds = %for.body.862
  br label %for.inc.996

if.end.872:                                       ; preds = %for.body.862
  %632 = load i32, i32* %c, align 4
  %idxprom873 = sext i32 %632 to i64
  %633 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels874 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %633, i32 0, i32 2
  %634 = load i32*, i32** %channels874, align 8
  %arrayidx875 = getelementptr inbounds i32, i32* %634, i64 %idxprom873
  %635 = load i32, i32* %arrayidx875, align 4
  %idxprom876 = sext i32 %635 to i64
  %636 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx877 = getelementptr inbounds %struct.ebox, %struct.ebox* %636, i64 %idxprom876
  %index1878 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx877, i32 0, i32 0
  %637 = load i32, i32* %index1878, align 4
  store i32 %637, i32* %index1, align 4
  %638 = load i32, i32* %c, align 4
  %idxprom879 = sext i32 %638 to i64
  %639 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels880 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %639, i32 0, i32 2
  %640 = load i32*, i32** %channels880, align 8
  %arrayidx881 = getelementptr inbounds i32, i32* %640, i64 %idxprom879
  %641 = load i32, i32* %arrayidx881, align 4
  %idxprom882 = sext i32 %641 to i64
  %642 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx883 = getelementptr inbounds %struct.ebox, %struct.ebox* %642, i64 %idxprom882
  %index2884 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx883, i32 0, i32 1
  %643 = load i32, i32* %index2884, align 4
  store i32 %643, i32* %index2, align 4
  %644 = load i32, i32* %index2, align 4
  %idxprom885 = sext i32 %644 to i64
  %645 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx886 = getelementptr inbounds %struct.rect, %struct.rect* %645, i64 %idxprom885
  %nedges887 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx886, i32 0, i32 12
  %646 = load i32, i32* %nedges887, align 4
  %cmp888 = icmp eq i32 %646, 1
  br i1 %cmp888, label %if.then.896, label %lor.lhs.false.890

lor.lhs.false.890:                                ; preds = %if.end.872
  %647 = load i32, i32* %index1, align 4
  %idxprom891 = sext i32 %647 to i64
  %648 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx892 = getelementptr inbounds %struct.rect, %struct.rect* %648, i64 %idxprom891
  %nedges893 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx892, i32 0, i32 12
  %649 = load i32, i32* %nedges893, align 4
  %cmp894 = icmp eq i32 %649, 1
  br i1 %cmp894, label %if.then.896, label %if.end.995

if.then.896:                                      ; preds = %lor.lhs.false.890, %if.end.872
  %650 = load i32, i32* %c, align 4
  %idxprom897 = sext i32 %650 to i64
  %651 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels898 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %651, i32 0, i32 2
  %652 = load i32*, i32** %channels898, align 8
  %arrayidx899 = getelementptr inbounds i32, i32* %652, i64 %idxprom897
  %653 = load i32, i32* %arrayidx899, align 4
  %idxprom900 = sext i32 %653 to i64
  %654 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx901 = getelementptr inbounds %struct.ebox, %struct.ebox* %654, i64 %idxprom900
  %notActive902 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx901, i32 0, i32 11
  store i32 1, i32* %notActive902, align 4
  %655 = load i32, i32* %index2, align 4
  %idxprom903 = sext i32 %655 to i64
  %656 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx904 = getelementptr inbounds %struct.rect, %struct.rect* %656, i64 %idxprom903
  %nedges905 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx904, i32 0, i32 12
  %657 = load i32, i32* %nedges905, align 4
  %dec906 = add nsw i32 %657, -1
  store i32 %dec906, i32* %nedges905, align 4
  %658 = load i32, i32* %index1, align 4
  %idxprom907 = sext i32 %658 to i64
  %659 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx908 = getelementptr inbounds %struct.rect, %struct.rect* %659, i64 %idxprom907
  %nedges909 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx908, i32 0, i32 12
  %660 = load i32, i32* %nedges909, align 4
  %dec910 = add nsw i32 %660, -1
  store i32 %dec910, i32* %nedges909, align 4
  store i32 1, i32* %hit, align 4
  store i32 0, i32* %flag, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.911

for.cond.911:                                     ; preds = %for.inc.992, %if.then.896
  %661 = load i32, i32* %c, align 4
  %662 = load i32, i32* %k, align 4
  %add912 = add nsw i32 %661, %662
  %663 = load i32, i32* %count, align 4
  %cmp913 = icmp sle i32 %add912, %663
  br i1 %cmp913, label %if.then.915, label %if.end.948

if.then.915:                                      ; preds = %for.cond.911
  %664 = load i32, i32* %c, align 4
  %665 = load i32, i32* %k, align 4
  %add916 = add nsw i32 %664, %665
  %idxprom917 = sext i32 %add916 to i64
  %666 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels918 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %666, i32 0, i32 2
  %667 = load i32*, i32** %channels918, align 8
  %arrayidx919 = getelementptr inbounds i32, i32* %667, i64 %idxprom917
  %668 = load i32, i32* %arrayidx919, align 4
  %idxprom920 = sext i32 %668 to i64
  %669 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx921 = getelementptr inbounds %struct.ebox, %struct.ebox* %669, i64 %idxprom920
  %notActive922 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx921, i32 0, i32 11
  %670 = load i32, i32* %notActive922, align 4
  %cmp923 = icmp eq i32 %670, 0
  br i1 %cmp923, label %if.then.925, label %if.end.947

if.then.925:                                      ; preds = %if.then.915
  store i32 1, i32* %flag, align 4
  %671 = load i32, i32* %c, align 4
  %idxprom926 = sext i32 %671 to i64
  %672 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels927 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %672, i32 0, i32 2
  %673 = load i32*, i32** %channels927, align 8
  %arrayidx928 = getelementptr inbounds i32, i32* %673, i64 %idxprom926
  %674 = load i32, i32* %arrayidx928, align 4
  %idxprom929 = sext i32 %674 to i64
  %675 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx930 = getelementptr inbounds %struct.ebox, %struct.ebox* %675, i64 %idxprom929
  %rtside931 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx930, i32 0, i32 4
  %676 = load i32, i32* %rtside931, align 4
  %677 = load i32, i32* %c, align 4
  %idxprom932 = sext i32 %677 to i64
  %678 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels933 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %678, i32 0, i32 2
  %679 = load i32*, i32** %channels933, align 8
  %arrayidx934 = getelementptr inbounds i32, i32* %679, i64 %idxprom932
  %680 = load i32, i32* %arrayidx934, align 4
  %idxprom935 = sext i32 %680 to i64
  %681 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx936 = getelementptr inbounds %struct.ebox, %struct.ebox* %681, i64 %idxprom935
  %lbside937 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx936, i32 0, i32 3
  %682 = load i32, i32* %lbside937, align 4
  %sub938 = sub nsw i32 %676, %682
  %683 = load i32, i32* %c, align 4
  %684 = load i32, i32* %k, align 4
  %add939 = add nsw i32 %683, %684
  %idxprom940 = sext i32 %add939 to i64
  %685 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels941 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %685, i32 0, i32 2
  %686 = load i32*, i32** %channels941, align 8
  %arrayidx942 = getelementptr inbounds i32, i32* %686, i64 %idxprom940
  %687 = load i32, i32* %arrayidx942, align 4
  %idxprom943 = sext i32 %687 to i64
  %688 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx944 = getelementptr inbounds %struct.ebox, %struct.ebox* %688, i64 %idxprom943
  %lbside945 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx944, i32 0, i32 3
  %689 = load i32, i32* %lbside945, align 4
  %sub946 = sub nsw i32 %689, %sub938
  store i32 %sub946, i32* %lbside945, align 4
  br label %if.end.947

if.end.947:                                       ; preds = %if.then.925, %if.then.915
  br label %if.end.948

if.end.948:                                       ; preds = %if.end.947, %for.cond.911
  %690 = load i32, i32* %flag, align 4
  %tobool949 = icmp ne i32 %690, 0
  br i1 %tobool949, label %if.then.950, label %if.end.951

if.then.950:                                      ; preds = %if.end.948
  br label %for.end.994

if.end.951:                                       ; preds = %if.end.948
  %691 = load i32, i32* %c, align 4
  %692 = load i32, i32* %k, align 4
  %sub952 = sub nsw i32 %691, %692
  %cmp953 = icmp sge i32 %sub952, 1
  br i1 %cmp953, label %if.then.955, label %if.end.988

if.then.955:                                      ; preds = %if.end.951
  %693 = load i32, i32* %c, align 4
  %694 = load i32, i32* %k, align 4
  %sub956 = sub nsw i32 %693, %694
  %idxprom957 = sext i32 %sub956 to i64
  %695 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels958 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %695, i32 0, i32 2
  %696 = load i32*, i32** %channels958, align 8
  %arrayidx959 = getelementptr inbounds i32, i32* %696, i64 %idxprom957
  %697 = load i32, i32* %arrayidx959, align 4
  %idxprom960 = sext i32 %697 to i64
  %698 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx961 = getelementptr inbounds %struct.ebox, %struct.ebox* %698, i64 %idxprom960
  %notActive962 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx961, i32 0, i32 11
  %699 = load i32, i32* %notActive962, align 4
  %cmp963 = icmp eq i32 %699, 0
  br i1 %cmp963, label %if.then.965, label %if.end.987

if.then.965:                                      ; preds = %if.then.955
  store i32 1, i32* %flag, align 4
  %700 = load i32, i32* %c, align 4
  %idxprom966 = sext i32 %700 to i64
  %701 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels967 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %701, i32 0, i32 2
  %702 = load i32*, i32** %channels967, align 8
  %arrayidx968 = getelementptr inbounds i32, i32* %702, i64 %idxprom966
  %703 = load i32, i32* %arrayidx968, align 4
  %idxprom969 = sext i32 %703 to i64
  %704 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx970 = getelementptr inbounds %struct.ebox, %struct.ebox* %704, i64 %idxprom969
  %rtside971 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx970, i32 0, i32 4
  %705 = load i32, i32* %rtside971, align 4
  %706 = load i32, i32* %c, align 4
  %idxprom972 = sext i32 %706 to i64
  %707 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels973 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %707, i32 0, i32 2
  %708 = load i32*, i32** %channels973, align 8
  %arrayidx974 = getelementptr inbounds i32, i32* %708, i64 %idxprom972
  %709 = load i32, i32* %arrayidx974, align 4
  %idxprom975 = sext i32 %709 to i64
  %710 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx976 = getelementptr inbounds %struct.ebox, %struct.ebox* %710, i64 %idxprom975
  %lbside977 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx976, i32 0, i32 3
  %711 = load i32, i32* %lbside977, align 4
  %sub978 = sub nsw i32 %705, %711
  %712 = load i32, i32* %c, align 4
  %713 = load i32, i32* %k, align 4
  %sub979 = sub nsw i32 %712, %713
  %idxprom980 = sext i32 %sub979 to i64
  %714 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels981 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %714, i32 0, i32 2
  %715 = load i32*, i32** %channels981, align 8
  %arrayidx982 = getelementptr inbounds i32, i32* %715, i64 %idxprom980
  %716 = load i32, i32* %arrayidx982, align 4
  %idxprom983 = sext i32 %716 to i64
  %717 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx984 = getelementptr inbounds %struct.ebox, %struct.ebox* %717, i64 %idxprom983
  %rtside985 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx984, i32 0, i32 4
  %718 = load i32, i32* %rtside985, align 4
  %add986 = add nsw i32 %718, %sub978
  store i32 %add986, i32* %rtside985, align 4
  br label %if.end.987

if.end.987:                                       ; preds = %if.then.965, %if.then.955
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987, %if.end.951
  %719 = load i32, i32* %flag, align 4
  %tobool989 = icmp ne i32 %719, 0
  br i1 %tobool989, label %if.then.990, label %if.end.991

if.then.990:                                      ; preds = %if.end.988
  br label %for.end.994

if.end.991:                                       ; preds = %if.end.988
  br label %for.inc.992

for.inc.992:                                      ; preds = %if.end.991
  %720 = load i32, i32* %k, align 4
  %inc993 = add nsw i32 %720, 1
  store i32 %inc993, i32* %k, align 4
  br label %for.cond.911

for.end.994:                                      ; preds = %if.then.990, %if.then.950
  br label %if.end.995

if.end.995:                                       ; preds = %for.end.994, %lor.lhs.false.890
  br label %for.inc.996

for.inc.996:                                      ; preds = %if.end.995, %if.then.871
  %721 = load i32, i32* %c, align 4
  %inc997 = add nsw i32 %721, 1
  store i32 %inc997, i32* %c, align 4
  br label %for.cond.859

for.end.998:                                      ; preds = %for.cond.859
  br label %for.inc.999

for.inc.999:                                      ; preds = %for.end.998, %if.then.855
  %722 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next1000 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %722, i32 0, i32 4
  %723 = load %struct.wcbox*, %struct.wcbox** %next1000, align 8
  store %struct.wcbox* %723, %struct.wcbox** %ptr, align 8
  br label %for.cond.848

for.end.1001:                                     ; preds = %for.cond.848
  br label %for.inc.1002

for.inc.1002:                                     ; preds = %for.end.1001
  %724 = load i32, i32* %i, align 4
  %inc1003 = add nsw i32 %724, 1
  store i32 %inc1003, i32* %i, align 4
  br label %for.cond.842

for.end.1004:                                     ; preds = %for.cond.842
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %twoTimes, align 4
  br label %for.cond.1005

for.cond.1005:                                    ; preds = %for.inc.1689, %while.end
  %725 = load i32, i32* %twoTimes, align 4
  %cmp1006 = icmp sle i32 %725, 2
  br i1 %cmp1006, label %for.body.1008, label %for.end.1691

for.body.1008:                                    ; preds = %for.cond.1005
  store i32 1, i32* %i, align 4
  br label %for.cond.1009

for.cond.1009:                                    ; preds = %for.inc.1345, %for.body.1008
  %726 = load i32, i32* %i, align 4
  %727 = load i32, i32* @numXnodes, align 4
  %cmp1010 = icmp sle i32 %726, %727
  br i1 %cmp1010, label %for.body.1012, label %for.end.1347

for.body.1012:                                    ; preds = %for.cond.1009
  %728 = load i32, i32* %i, align 4
  %idxprom1013 = sext i32 %728 to i64
  %729 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx1014 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %729, i64 %idxprom1013
  %730 = load %struct.wcbox*, %struct.wcbox** %arrayidx1014, align 8
  store %struct.wcbox* %730, %struct.wcbox** %ptr, align 8
  br label %for.cond.1015

for.cond.1015:                                    ; preds = %for.inc.1342, %for.body.1012
  %731 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp1016 = icmp ne %struct.wcbox* %731, null
  br i1 %cmp1016, label %for.body.1018, label %for.end.1344

for.body.1018:                                    ; preds = %for.cond.1015
  %732 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth1019 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %732, i32 0, i32 0
  %733 = load i32, i32* %fixedWidth1019, align 4
  %cmp1020 = icmp eq i32 %733, 1
  br i1 %cmp1020, label %if.then.1022, label %if.end.1023

if.then.1022:                                     ; preds = %for.body.1018
  br label %for.inc.1342

if.end.1023:                                      ; preds = %for.body.1018
  %734 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1024 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %734, i32 0, i32 2
  %735 = load i32*, i32** %channels1024, align 8
  %arrayidx1025 = getelementptr inbounds i32, i32* %735, i64 0
  %736 = load i32, i32* %arrayidx1025, align 4
  store i32 %736, i32* %count, align 4
  %737 = load i32, i32* %count, align 4
  %cmp1026 = icmp sle i32 %737, 1
  br i1 %cmp1026, label %if.then.1028, label %if.end.1029

if.then.1028:                                     ; preds = %if.end.1023
  br label %for.inc.1342

if.end.1029:                                      ; preds = %if.end.1023
  %738 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1030 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %738, i32 0, i32 2
  %739 = load i32*, i32** %channels1030, align 8
  %arrayidx1031 = getelementptr inbounds i32, i32* %739, i64 1
  %740 = load i32, i32* %arrayidx1031, align 4
  %idxprom1032 = sext i32 %740 to i64
  %741 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1033 = getelementptr inbounds %struct.ebox, %struct.ebox* %741, i64 %idxprom1032
  %notActive1034 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1033, i32 0, i32 11
  %742 = load i32, i32* %notActive1034, align 4
  %cmp1035 = icmp eq i32 %742, 1
  br i1 %cmp1035, label %if.then.1037, label %if.end.1180

if.then.1037:                                     ; preds = %if.end.1029
  %743 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1038 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %743, i32 0, i32 2
  %744 = load i32*, i32** %channels1038, align 8
  %arrayidx1039 = getelementptr inbounds i32, i32* %744, i64 1
  %745 = load i32, i32* %arrayidx1039, align 4
  %idxprom1040 = sext i32 %745 to i64
  %746 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1041 = getelementptr inbounds %struct.ebox, %struct.ebox* %746, i64 %idxprom1040
  %index21042 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1041, i32 0, i32 1
  %747 = load i32, i32* %index21042, align 4
  store i32 %747, i32* %i2, align 4
  %748 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1043 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %748, i32 0, i32 2
  %749 = load i32*, i32** %channels1043, align 8
  %arrayidx1044 = getelementptr inbounds i32, i32* %749, i64 1
  %750 = load i32, i32* %arrayidx1044, align 4
  %idxprom1045 = sext i32 %750 to i64
  %751 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1046 = getelementptr inbounds %struct.ebox, %struct.ebox* %751, i64 %idxprom1045
  %index11047 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1046, i32 0, i32 0
  %752 = load i32, i32* %index11047, align 4
  store i32 %752, i32* %i1, align 4
  %753 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1048 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %753, i32 0, i32 2
  %754 = load i32*, i32** %channels1048, align 8
  %arrayidx1049 = getelementptr inbounds i32, i32* %754, i64 1
  %755 = load i32, i32* %arrayidx1049, align 4
  %idxprom1050 = sext i32 %755 to i64
  %756 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1051 = getelementptr inbounds %struct.ebox, %struct.ebox* %756, i64 %idxprom1050
  %edge1 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1051, i32 0, i32 8
  %757 = load i32, i32* %edge1, align 4
  store i32 %757, i32* %edge, align 4
  %758 = load i32, i32* %edge, align 4
  %idxprom1052 = sext i32 %758 to i64
  %759 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1053 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %759, i64 %idxprom1052
  %start1054 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1053, i32 0, i32 1
  %760 = load i32, i32* %start1054, align 4
  store i32 %760, i32* %start, align 4
  %761 = load i32, i32* %edge, align 4
  %idxprom1055 = sext i32 %761 to i64
  %762 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1056 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %762, i64 %idxprom1055
  %end1057 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1056, i32 0, i32 2
  %763 = load i32, i32* %end1057, align 4
  store i32 %763, i32* %end, align 4
  %764 = load i32, i32* %i2, align 4
  %idxprom1058 = sext i32 %764 to i64
  %765 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1059 = getelementptr inbounds %struct.rect, %struct.rect* %765, i64 %idxprom1058
  %yc1060 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1059, i32 0, i32 1
  %766 = load i32, i32* %yc1060, align 4
  store i32 %766, i32* %ymax, align 4
  %767 = load i32, i32* %i1, align 4
  %idxprom1061 = sext i32 %767 to i64
  %768 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1062 = getelementptr inbounds %struct.rect, %struct.rect* %768, i64 %idxprom1061
  %yc1063 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1062, i32 0, i32 1
  %769 = load i32, i32* %yc1063, align 4
  store i32 %769, i32* %ymin, align 4
  store i32 2, i32* %c, align 4
  br label %for.cond.1064

for.cond.1064:                                    ; preds = %for.inc.1177, %if.then.1037
  %770 = load i32, i32* %c, align 4
  %771 = load i32, i32* %count, align 4
  %cmp1065 = icmp sle i32 %770, %771
  br i1 %cmp1065, label %for.body.1067, label %for.end.1179

for.body.1067:                                    ; preds = %for.cond.1064
  %772 = load i32, i32* %c, align 4
  %idxprom1068 = sext i32 %772 to i64
  %773 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1069 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %773, i32 0, i32 2
  %774 = load i32*, i32** %channels1069, align 8
  %arrayidx1070 = getelementptr inbounds i32, i32* %774, i64 %idxprom1068
  %775 = load i32, i32* %arrayidx1070, align 4
  %idxprom1071 = sext i32 %775 to i64
  %776 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1072 = getelementptr inbounds %struct.ebox, %struct.ebox* %776, i64 %idxprom1071
  %notActive1073 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1072, i32 0, i32 11
  %777 = load i32, i32* %notActive1073, align 4
  %cmp1074 = icmp eq i32 %777, 0
  br i1 %cmp1074, label %if.then.1076, label %if.end.1176

if.then.1076:                                     ; preds = %for.body.1067
  %778 = load i32, i32* %c, align 4
  %idxprom1077 = sext i32 %778 to i64
  %779 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1078 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %779, i32 0, i32 2
  %780 = load i32*, i32** %channels1078, align 8
  %arrayidx1079 = getelementptr inbounds i32, i32* %780, i64 %idxprom1077
  %781 = load i32, i32* %arrayidx1079, align 4
  %idxprom1080 = sext i32 %781 to i64
  %782 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1081 = getelementptr inbounds %struct.ebox, %struct.ebox* %782, i64 %idxprom1080
  %index11082 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1081, i32 0, i32 0
  %783 = load i32, i32* %index11082, align 4
  store i32 %783, i32* %i1, align 4
  %784 = load i32, i32* %c, align 4
  %idxprom1083 = sext i32 %784 to i64
  %785 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1084 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %785, i32 0, i32 2
  %786 = load i32*, i32** %channels1084, align 8
  %arrayidx1085 = getelementptr inbounds i32, i32* %786, i64 %idxprom1083
  %787 = load i32, i32* %arrayidx1085, align 4
  %idxprom1086 = sext i32 %787 to i64
  %788 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1087 = getelementptr inbounds %struct.ebox, %struct.ebox* %788, i64 %idxprom1086
  %index21088 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1087, i32 0, i32 1
  %789 = load i32, i32* %index21088, align 4
  store i32 %789, i32* %i2, align 4
  %790 = load i32, i32* %i2, align 4
  %idxprom1089 = sext i32 %790 to i64
  %791 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1090 = getelementptr inbounds %struct.rect, %struct.rect* %791, i64 %idxprom1089
  %yc1091 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1090, i32 0, i32 1
  %792 = load i32, i32* %yc1091, align 4
  %793 = load i32, i32* %ymax, align 4
  %cmp1092 = icmp slt i32 %792, %793
  br i1 %cmp1092, label %if.then.1094, label %if.end.1131

if.then.1094:                                     ; preds = %if.then.1076
  %794 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1095 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %794, i32 0, i32 2
  %795 = load i32*, i32** %channels1095, align 8
  %arrayidx1096 = getelementptr inbounds i32, i32* %795, i64 1
  %796 = load i32, i32* %arrayidx1096, align 4
  %idxprom1097 = sext i32 %796 to i64
  %797 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1098 = getelementptr inbounds %struct.ebox, %struct.ebox* %797, i64 %idxprom1097
  %index21099 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1098, i32 0, i32 1
  %798 = load i32, i32* %index21099, align 4
  store i32 %798, i32* %j, align 4
  %799 = load i32, i32* %j, align 4
  %idxprom1100 = sext i32 %799 to i64
  %800 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1101 = getelementptr inbounds %struct.rect, %struct.rect* %800, i64 %idxprom1100
  %t = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1101, i32 0, i32 7
  %801 = load i32, i32* %t, align 4
  %802 = load i32, i32* %end, align 4
  %cmp1102 = icmp slt i32 %801, %802
  br i1 %cmp1102, label %land.lhs.true.1104, label %if.else.1119

land.lhs.true.1104:                               ; preds = %if.then.1094
  %803 = load i32, i32* %j, align 4
  %idxprom1105 = sext i32 %803 to i64
  %804 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1106 = getelementptr inbounds %struct.rect, %struct.rect* %804, i64 %idxprom1105
  %yreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1106, i32 0, i32 3
  %805 = load i32, i32* %yreset, align 4
  %cmp1107 = icmp eq i32 %805, 0
  br i1 %cmp1107, label %if.then.1109, label %if.else.1119

if.then.1109:                                     ; preds = %land.lhs.true.1104
  %806 = load i32, i32* %i2, align 4
  %idxprom1110 = sext i32 %806 to i64
  %807 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1111 = getelementptr inbounds %struct.rect, %struct.rect* %807, i64 %idxprom1110
  %yc1112 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1111, i32 0, i32 1
  %808 = load i32, i32* %yc1112, align 4
  %809 = load i32, i32* %j, align 4
  %idxprom1113 = sext i32 %809 to i64
  %810 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1114 = getelementptr inbounds %struct.rect, %struct.rect* %810, i64 %idxprom1113
  %yc1115 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1114, i32 0, i32 1
  store i32 %808, i32* %yc1115, align 4
  %811 = load i32, i32* %j, align 4
  %idxprom1116 = sext i32 %811 to i64
  %812 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1117 = getelementptr inbounds %struct.rect, %struct.rect* %812, i64 %idxprom1116
  %yreset1118 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1117, i32 0, i32 3
  store i32 1, i32* %yreset1118, align 4
  br label %if.end.1130

if.else.1119:                                     ; preds = %land.lhs.true.1104, %if.then.1094
  %813 = load i32, i32* %i2, align 4
  %idxprom1120 = sext i32 %813 to i64
  %814 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1121 = getelementptr inbounds %struct.rect, %struct.rect* %814, i64 %idxprom1120
  %yc1122 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1121, i32 0, i32 1
  %815 = load i32, i32* %yc1122, align 4
  %816 = load i32, i32* %end, align 4
  %cmp1123 = icmp slt i32 %815, %816
  br i1 %cmp1123, label %if.then.1125, label %if.end.1129

if.then.1125:                                     ; preds = %if.else.1119
  %817 = load i32, i32* %end, align 4
  %818 = load i32, i32* %i2, align 4
  %idxprom1126 = sext i32 %818 to i64
  %819 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1127 = getelementptr inbounds %struct.rect, %struct.rect* %819, i64 %idxprom1126
  %yc1128 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1127, i32 0, i32 1
  store i32 %817, i32* %yc1128, align 4
  br label %if.end.1129

if.end.1129:                                      ; preds = %if.then.1125, %if.else.1119
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.end.1129, %if.then.1109
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.end.1130, %if.then.1076
  %820 = load i32, i32* %i1, align 4
  %idxprom1132 = sext i32 %820 to i64
  %821 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1133 = getelementptr inbounds %struct.rect, %struct.rect* %821, i64 %idxprom1132
  %yc1134 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1133, i32 0, i32 1
  %822 = load i32, i32* %yc1134, align 4
  %823 = load i32, i32* %ymin, align 4
  %cmp1135 = icmp sgt i32 %822, %823
  br i1 %cmp1135, label %if.then.1137, label %if.end.1175

if.then.1137:                                     ; preds = %if.end.1131
  %824 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1138 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %824, i32 0, i32 2
  %825 = load i32*, i32** %channels1138, align 8
  %arrayidx1139 = getelementptr inbounds i32, i32* %825, i64 1
  %826 = load i32, i32* %arrayidx1139, align 4
  %idxprom1140 = sext i32 %826 to i64
  %827 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1141 = getelementptr inbounds %struct.ebox, %struct.ebox* %827, i64 %idxprom1140
  %index11142 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1141, i32 0, i32 0
  %828 = load i32, i32* %index11142, align 4
  store i32 %828, i32* %j, align 4
  %829 = load i32, i32* %start, align 4
  %830 = load i32, i32* %j, align 4
  %idxprom1143 = sext i32 %830 to i64
  %831 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1144 = getelementptr inbounds %struct.rect, %struct.rect* %831, i64 %idxprom1143
  %b = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1144, i32 0, i32 6
  %832 = load i32, i32* %b, align 4
  %cmp1145 = icmp slt i32 %829, %832
  br i1 %cmp1145, label %land.lhs.true.1147, label %if.else.1163

land.lhs.true.1147:                               ; preds = %if.then.1137
  %833 = load i32, i32* %j, align 4
  %idxprom1148 = sext i32 %833 to i64
  %834 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1149 = getelementptr inbounds %struct.rect, %struct.rect* %834, i64 %idxprom1148
  %yreset1150 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1149, i32 0, i32 3
  %835 = load i32, i32* %yreset1150, align 4
  %cmp1151 = icmp eq i32 %835, 0
  br i1 %cmp1151, label %if.then.1153, label %if.else.1163

if.then.1153:                                     ; preds = %land.lhs.true.1147
  %836 = load i32, i32* %i1, align 4
  %idxprom1154 = sext i32 %836 to i64
  %837 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1155 = getelementptr inbounds %struct.rect, %struct.rect* %837, i64 %idxprom1154
  %yc1156 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1155, i32 0, i32 1
  %838 = load i32, i32* %yc1156, align 4
  %839 = load i32, i32* %j, align 4
  %idxprom1157 = sext i32 %839 to i64
  %840 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1158 = getelementptr inbounds %struct.rect, %struct.rect* %840, i64 %idxprom1157
  %yc1159 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1158, i32 0, i32 1
  store i32 %838, i32* %yc1159, align 4
  %841 = load i32, i32* %j, align 4
  %idxprom1160 = sext i32 %841 to i64
  %842 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1161 = getelementptr inbounds %struct.rect, %struct.rect* %842, i64 %idxprom1160
  %yreset1162 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1161, i32 0, i32 3
  store i32 1, i32* %yreset1162, align 4
  br label %if.end.1174

if.else.1163:                                     ; preds = %land.lhs.true.1147, %if.then.1137
  %843 = load i32, i32* %start, align 4
  %844 = load i32, i32* %i1, align 4
  %idxprom1164 = sext i32 %844 to i64
  %845 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1165 = getelementptr inbounds %struct.rect, %struct.rect* %845, i64 %idxprom1164
  %yc1166 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1165, i32 0, i32 1
  %846 = load i32, i32* %yc1166, align 4
  %cmp1167 = icmp slt i32 %843, %846
  br i1 %cmp1167, label %if.then.1169, label %if.end.1173

if.then.1169:                                     ; preds = %if.else.1163
  %847 = load i32, i32* %start, align 4
  %848 = load i32, i32* %i1, align 4
  %idxprom1170 = sext i32 %848 to i64
  %849 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1171 = getelementptr inbounds %struct.rect, %struct.rect* %849, i64 %idxprom1170
  %yc1172 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1171, i32 0, i32 1
  store i32 %847, i32* %yc1172, align 4
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.then.1169, %if.else.1163
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.end.1173, %if.then.1153
  br label %if.end.1175

if.end.1175:                                      ; preds = %if.end.1174, %if.end.1131
  br label %for.end.1179

if.end.1176:                                      ; preds = %for.body.1067
  br label %for.inc.1177

for.inc.1177:                                     ; preds = %if.end.1176
  %850 = load i32, i32* %c, align 4
  %inc1178 = add nsw i32 %850, 1
  store i32 %inc1178, i32* %c, align 4
  br label %for.cond.1064

for.end.1179:                                     ; preds = %if.end.1175, %for.cond.1064
  br label %if.end.1180

if.end.1180:                                      ; preds = %for.end.1179, %if.end.1029
  %851 = load i32, i32* %count, align 4
  %idxprom1181 = sext i32 %851 to i64
  %852 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1182 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %852, i32 0, i32 2
  %853 = load i32*, i32** %channels1182, align 8
  %arrayidx1183 = getelementptr inbounds i32, i32* %853, i64 %idxprom1181
  %854 = load i32, i32* %arrayidx1183, align 4
  %idxprom1184 = sext i32 %854 to i64
  %855 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1185 = getelementptr inbounds %struct.ebox, %struct.ebox* %855, i64 %idxprom1184
  %notActive1186 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1185, i32 0, i32 11
  %856 = load i32, i32* %notActive1186, align 4
  %cmp1187 = icmp eq i32 %856, 1
  br i1 %cmp1187, label %if.then.1189, label %if.end.1341

if.then.1189:                                     ; preds = %if.end.1180
  %857 = load i32, i32* %count, align 4
  %idxprom1190 = sext i32 %857 to i64
  %858 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1191 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %858, i32 0, i32 2
  %859 = load i32*, i32** %channels1191, align 8
  %arrayidx1192 = getelementptr inbounds i32, i32* %859, i64 %idxprom1190
  %860 = load i32, i32* %arrayidx1192, align 4
  %idxprom1193 = sext i32 %860 to i64
  %861 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1194 = getelementptr inbounds %struct.ebox, %struct.ebox* %861, i64 %idxprom1193
  %index21195 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1194, i32 0, i32 1
  %862 = load i32, i32* %index21195, align 4
  store i32 %862, i32* %i2, align 4
  %863 = load i32, i32* %count, align 4
  %idxprom1196 = sext i32 %863 to i64
  %864 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1197 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %864, i32 0, i32 2
  %865 = load i32*, i32** %channels1197, align 8
  %arrayidx1198 = getelementptr inbounds i32, i32* %865, i64 %idxprom1196
  %866 = load i32, i32* %arrayidx1198, align 4
  %idxprom1199 = sext i32 %866 to i64
  %867 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1200 = getelementptr inbounds %struct.ebox, %struct.ebox* %867, i64 %idxprom1199
  %index11201 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1200, i32 0, i32 0
  %868 = load i32, i32* %index11201, align 4
  store i32 %868, i32* %i1, align 4
  %869 = load i32, i32* %count, align 4
  %idxprom1202 = sext i32 %869 to i64
  %870 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1203 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %870, i32 0, i32 2
  %871 = load i32*, i32** %channels1203, align 8
  %arrayidx1204 = getelementptr inbounds i32, i32* %871, i64 %idxprom1202
  %872 = load i32, i32* %arrayidx1204, align 4
  %idxprom1205 = sext i32 %872 to i64
  %873 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1206 = getelementptr inbounds %struct.ebox, %struct.ebox* %873, i64 %idxprom1205
  %edge2 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1206, i32 0, i32 9
  %874 = load i32, i32* %edge2, align 4
  store i32 %874, i32* %edge, align 4
  %875 = load i32, i32* %edge, align 4
  %idxprom1207 = sext i32 %875 to i64
  %876 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1208 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %876, i64 %idxprom1207
  %start1209 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1208, i32 0, i32 1
  %877 = load i32, i32* %start1209, align 4
  store i32 %877, i32* %start, align 4
  %878 = load i32, i32* %edge, align 4
  %idxprom1210 = sext i32 %878 to i64
  %879 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1211 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %879, i64 %idxprom1210
  %end1212 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1211, i32 0, i32 2
  %880 = load i32, i32* %end1212, align 4
  store i32 %880, i32* %end, align 4
  %881 = load i32, i32* %i2, align 4
  %idxprom1213 = sext i32 %881 to i64
  %882 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1214 = getelementptr inbounds %struct.rect, %struct.rect* %882, i64 %idxprom1213
  %yc1215 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1214, i32 0, i32 1
  %883 = load i32, i32* %yc1215, align 4
  store i32 %883, i32* %ymax, align 4
  %884 = load i32, i32* %i1, align 4
  %idxprom1216 = sext i32 %884 to i64
  %885 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1217 = getelementptr inbounds %struct.rect, %struct.rect* %885, i64 %idxprom1216
  %yc1218 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1217, i32 0, i32 1
  %886 = load i32, i32* %yc1218, align 4
  store i32 %886, i32* %ymin, align 4
  %887 = load i32, i32* %count, align 4
  %sub1219 = sub nsw i32 %887, 1
  store i32 %sub1219, i32* %c, align 4
  br label %for.cond.1220

for.cond.1220:                                    ; preds = %for.inc.1338, %if.then.1189
  %888 = load i32, i32* %c, align 4
  %cmp1221 = icmp sge i32 %888, 1
  br i1 %cmp1221, label %for.body.1223, label %for.end.1340

for.body.1223:                                    ; preds = %for.cond.1220
  %889 = load i32, i32* %c, align 4
  %idxprom1224 = sext i32 %889 to i64
  %890 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1225 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %890, i32 0, i32 2
  %891 = load i32*, i32** %channels1225, align 8
  %arrayidx1226 = getelementptr inbounds i32, i32* %891, i64 %idxprom1224
  %892 = load i32, i32* %arrayidx1226, align 4
  %idxprom1227 = sext i32 %892 to i64
  %893 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1228 = getelementptr inbounds %struct.ebox, %struct.ebox* %893, i64 %idxprom1227
  %notActive1229 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1228, i32 0, i32 11
  %894 = load i32, i32* %notActive1229, align 4
  %cmp1230 = icmp eq i32 %894, 0
  br i1 %cmp1230, label %if.then.1232, label %if.end.1337

if.then.1232:                                     ; preds = %for.body.1223
  %895 = load i32, i32* %c, align 4
  %idxprom1233 = sext i32 %895 to i64
  %896 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1234 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %896, i32 0, i32 2
  %897 = load i32*, i32** %channels1234, align 8
  %arrayidx1235 = getelementptr inbounds i32, i32* %897, i64 %idxprom1233
  %898 = load i32, i32* %arrayidx1235, align 4
  %idxprom1236 = sext i32 %898 to i64
  %899 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1237 = getelementptr inbounds %struct.ebox, %struct.ebox* %899, i64 %idxprom1236
  %index11238 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1237, i32 0, i32 0
  %900 = load i32, i32* %index11238, align 4
  store i32 %900, i32* %i1, align 4
  %901 = load i32, i32* %c, align 4
  %idxprom1239 = sext i32 %901 to i64
  %902 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1240 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %902, i32 0, i32 2
  %903 = load i32*, i32** %channels1240, align 8
  %arrayidx1241 = getelementptr inbounds i32, i32* %903, i64 %idxprom1239
  %904 = load i32, i32* %arrayidx1241, align 4
  %idxprom1242 = sext i32 %904 to i64
  %905 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1243 = getelementptr inbounds %struct.ebox, %struct.ebox* %905, i64 %idxprom1242
  %index21244 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1243, i32 0, i32 1
  %906 = load i32, i32* %index21244, align 4
  store i32 %906, i32* %i2, align 4
  %907 = load i32, i32* %i2, align 4
  %idxprom1245 = sext i32 %907 to i64
  %908 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1246 = getelementptr inbounds %struct.rect, %struct.rect* %908, i64 %idxprom1245
  %yc1247 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1246, i32 0, i32 1
  %909 = load i32, i32* %yc1247, align 4
  %910 = load i32, i32* %ymax, align 4
  %cmp1248 = icmp slt i32 %909, %910
  br i1 %cmp1248, label %if.then.1250, label %if.end.1290

if.then.1250:                                     ; preds = %if.then.1232
  %911 = load i32, i32* %count, align 4
  %idxprom1251 = sext i32 %911 to i64
  %912 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1252 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %912, i32 0, i32 2
  %913 = load i32*, i32** %channels1252, align 8
  %arrayidx1253 = getelementptr inbounds i32, i32* %913, i64 %idxprom1251
  %914 = load i32, i32* %arrayidx1253, align 4
  %idxprom1254 = sext i32 %914 to i64
  %915 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1255 = getelementptr inbounds %struct.ebox, %struct.ebox* %915, i64 %idxprom1254
  %index21256 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1255, i32 0, i32 1
  %916 = load i32, i32* %index21256, align 4
  store i32 %916, i32* %j, align 4
  %917 = load i32, i32* %j, align 4
  %idxprom1257 = sext i32 %917 to i64
  %918 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1258 = getelementptr inbounds %struct.rect, %struct.rect* %918, i64 %idxprom1257
  %t1259 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1258, i32 0, i32 7
  %919 = load i32, i32* %t1259, align 4
  %920 = load i32, i32* %end, align 4
  %cmp1260 = icmp slt i32 %919, %920
  br i1 %cmp1260, label %land.lhs.true.1262, label %if.else.1278

land.lhs.true.1262:                               ; preds = %if.then.1250
  %921 = load i32, i32* %j, align 4
  %idxprom1263 = sext i32 %921 to i64
  %922 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1264 = getelementptr inbounds %struct.rect, %struct.rect* %922, i64 %idxprom1263
  %yreset1265 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1264, i32 0, i32 3
  %923 = load i32, i32* %yreset1265, align 4
  %cmp1266 = icmp eq i32 %923, 0
  br i1 %cmp1266, label %if.then.1268, label %if.else.1278

if.then.1268:                                     ; preds = %land.lhs.true.1262
  %924 = load i32, i32* %i2, align 4
  %idxprom1269 = sext i32 %924 to i64
  %925 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1270 = getelementptr inbounds %struct.rect, %struct.rect* %925, i64 %idxprom1269
  %yc1271 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1270, i32 0, i32 1
  %926 = load i32, i32* %yc1271, align 4
  %927 = load i32, i32* %j, align 4
  %idxprom1272 = sext i32 %927 to i64
  %928 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1273 = getelementptr inbounds %struct.rect, %struct.rect* %928, i64 %idxprom1272
  %yc1274 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1273, i32 0, i32 1
  store i32 %926, i32* %yc1274, align 4
  %929 = load i32, i32* %j, align 4
  %idxprom1275 = sext i32 %929 to i64
  %930 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1276 = getelementptr inbounds %struct.rect, %struct.rect* %930, i64 %idxprom1275
  %yreset1277 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1276, i32 0, i32 3
  store i32 1, i32* %yreset1277, align 4
  br label %if.end.1289

if.else.1278:                                     ; preds = %land.lhs.true.1262, %if.then.1250
  %931 = load i32, i32* %i2, align 4
  %idxprom1279 = sext i32 %931 to i64
  %932 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1280 = getelementptr inbounds %struct.rect, %struct.rect* %932, i64 %idxprom1279
  %yc1281 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1280, i32 0, i32 1
  %933 = load i32, i32* %yc1281, align 4
  %934 = load i32, i32* %end, align 4
  %cmp1282 = icmp slt i32 %933, %934
  br i1 %cmp1282, label %if.then.1284, label %if.end.1288

if.then.1284:                                     ; preds = %if.else.1278
  %935 = load i32, i32* %end, align 4
  %936 = load i32, i32* %i2, align 4
  %idxprom1285 = sext i32 %936 to i64
  %937 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1286 = getelementptr inbounds %struct.rect, %struct.rect* %937, i64 %idxprom1285
  %yc1287 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1286, i32 0, i32 1
  store i32 %935, i32* %yc1287, align 4
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.then.1284, %if.else.1278
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.end.1288, %if.then.1268
  br label %if.end.1290

if.end.1290:                                      ; preds = %if.end.1289, %if.then.1232
  %938 = load i32, i32* %i1, align 4
  %idxprom1291 = sext i32 %938 to i64
  %939 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1292 = getelementptr inbounds %struct.rect, %struct.rect* %939, i64 %idxprom1291
  %yc1293 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1292, i32 0, i32 1
  %940 = load i32, i32* %yc1293, align 4
  %941 = load i32, i32* %ymin, align 4
  %cmp1294 = icmp sgt i32 %940, %941
  br i1 %cmp1294, label %if.then.1296, label %if.end.1336

if.then.1296:                                     ; preds = %if.end.1290
  %942 = load i32, i32* %count, align 4
  %idxprom1297 = sext i32 %942 to i64
  %943 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1298 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %943, i32 0, i32 2
  %944 = load i32*, i32** %channels1298, align 8
  %arrayidx1299 = getelementptr inbounds i32, i32* %944, i64 %idxprom1297
  %945 = load i32, i32* %arrayidx1299, align 4
  %idxprom1300 = sext i32 %945 to i64
  %946 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1301 = getelementptr inbounds %struct.ebox, %struct.ebox* %946, i64 %idxprom1300
  %index11302 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1301, i32 0, i32 0
  %947 = load i32, i32* %index11302, align 4
  store i32 %947, i32* %j, align 4
  %948 = load i32, i32* %start, align 4
  %949 = load i32, i32* %j, align 4
  %idxprom1303 = sext i32 %949 to i64
  %950 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1304 = getelementptr inbounds %struct.rect, %struct.rect* %950, i64 %idxprom1303
  %b1305 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1304, i32 0, i32 6
  %951 = load i32, i32* %b1305, align 4
  %cmp1306 = icmp slt i32 %948, %951
  br i1 %cmp1306, label %land.lhs.true.1308, label %if.else.1324

land.lhs.true.1308:                               ; preds = %if.then.1296
  %952 = load i32, i32* %j, align 4
  %idxprom1309 = sext i32 %952 to i64
  %953 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1310 = getelementptr inbounds %struct.rect, %struct.rect* %953, i64 %idxprom1309
  %yreset1311 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1310, i32 0, i32 3
  %954 = load i32, i32* %yreset1311, align 4
  %cmp1312 = icmp eq i32 %954, 0
  br i1 %cmp1312, label %if.then.1314, label %if.else.1324

if.then.1314:                                     ; preds = %land.lhs.true.1308
  %955 = load i32, i32* %i1, align 4
  %idxprom1315 = sext i32 %955 to i64
  %956 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1316 = getelementptr inbounds %struct.rect, %struct.rect* %956, i64 %idxprom1315
  %yc1317 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1316, i32 0, i32 1
  %957 = load i32, i32* %yc1317, align 4
  %958 = load i32, i32* %j, align 4
  %idxprom1318 = sext i32 %958 to i64
  %959 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1319 = getelementptr inbounds %struct.rect, %struct.rect* %959, i64 %idxprom1318
  %yc1320 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1319, i32 0, i32 1
  store i32 %957, i32* %yc1320, align 4
  %960 = load i32, i32* %j, align 4
  %idxprom1321 = sext i32 %960 to i64
  %961 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1322 = getelementptr inbounds %struct.rect, %struct.rect* %961, i64 %idxprom1321
  %yreset1323 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1322, i32 0, i32 3
  store i32 1, i32* %yreset1323, align 4
  br label %if.end.1335

if.else.1324:                                     ; preds = %land.lhs.true.1308, %if.then.1296
  %962 = load i32, i32* %start, align 4
  %963 = load i32, i32* %i1, align 4
  %idxprom1325 = sext i32 %963 to i64
  %964 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1326 = getelementptr inbounds %struct.rect, %struct.rect* %964, i64 %idxprom1325
  %yc1327 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1326, i32 0, i32 1
  %965 = load i32, i32* %yc1327, align 4
  %cmp1328 = icmp slt i32 %962, %965
  br i1 %cmp1328, label %if.then.1330, label %if.end.1334

if.then.1330:                                     ; preds = %if.else.1324
  %966 = load i32, i32* %start, align 4
  %967 = load i32, i32* %i1, align 4
  %idxprom1331 = sext i32 %967 to i64
  %968 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1332 = getelementptr inbounds %struct.rect, %struct.rect* %968, i64 %idxprom1331
  %yc1333 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1332, i32 0, i32 1
  store i32 %966, i32* %yc1333, align 4
  br label %if.end.1334

if.end.1334:                                      ; preds = %if.then.1330, %if.else.1324
  br label %if.end.1335

if.end.1335:                                      ; preds = %if.end.1334, %if.then.1314
  br label %if.end.1336

if.end.1336:                                      ; preds = %if.end.1335, %if.end.1290
  br label %for.end.1340

if.end.1337:                                      ; preds = %for.body.1223
  br label %for.inc.1338

for.inc.1338:                                     ; preds = %if.end.1337
  %969 = load i32, i32* %c, align 4
  %dec1339 = add nsw i32 %969, -1
  store i32 %dec1339, i32* %c, align 4
  br label %for.cond.1220

for.end.1340:                                     ; preds = %if.end.1336, %for.cond.1220
  br label %if.end.1341

if.end.1341:                                      ; preds = %for.end.1340, %if.end.1180
  br label %for.inc.1342

for.inc.1342:                                     ; preds = %if.end.1341, %if.then.1028, %if.then.1022
  %970 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next1343 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %970, i32 0, i32 4
  %971 = load %struct.wcbox*, %struct.wcbox** %next1343, align 8
  store %struct.wcbox* %971, %struct.wcbox** %ptr, align 8
  br label %for.cond.1015

for.end.1344:                                     ; preds = %for.cond.1015
  br label %for.inc.1345

for.inc.1345:                                     ; preds = %for.end.1344
  %972 = load i32, i32* %i, align 4
  %inc1346 = add nsw i32 %972, 1
  store i32 %inc1346, i32* %i, align 4
  br label %for.cond.1009

for.end.1347:                                     ; preds = %for.cond.1009
  store i32 1, i32* %i, align 4
  br label %for.cond.1348

for.cond.1348:                                    ; preds = %for.inc.1686, %for.end.1347
  %973 = load i32, i32* %i, align 4
  %974 = load i32, i32* @numYnodes, align 4
  %cmp1349 = icmp sle i32 %973, %974
  br i1 %cmp1349, label %for.body.1351, label %for.end.1688

for.body.1351:                                    ; preds = %for.cond.1348
  %975 = load i32, i32* %i, align 4
  %idxprom1352 = sext i32 %975 to i64
  %976 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx1353 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %976, i64 %idxprom1352
  %977 = load %struct.wcbox*, %struct.wcbox** %arrayidx1353, align 8
  store %struct.wcbox* %977, %struct.wcbox** %ptr, align 8
  br label %for.cond.1354

for.cond.1354:                                    ; preds = %for.inc.1683, %for.body.1351
  %978 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp1355 = icmp ne %struct.wcbox* %978, null
  br i1 %cmp1355, label %for.body.1357, label %for.end.1685

for.body.1357:                                    ; preds = %for.cond.1354
  %979 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %fixedWidth1358 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %979, i32 0, i32 0
  %980 = load i32, i32* %fixedWidth1358, align 4
  %cmp1359 = icmp eq i32 %980, 1
  br i1 %cmp1359, label %if.then.1361, label %if.end.1362

if.then.1361:                                     ; preds = %for.body.1357
  br label %for.inc.1683

if.end.1362:                                      ; preds = %for.body.1357
  %981 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1363 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %981, i32 0, i32 2
  %982 = load i32*, i32** %channels1363, align 8
  %arrayidx1364 = getelementptr inbounds i32, i32* %982, i64 0
  %983 = load i32, i32* %arrayidx1364, align 4
  store i32 %983, i32* %count, align 4
  %984 = load i32, i32* %count, align 4
  %cmp1365 = icmp sle i32 %984, 1
  br i1 %cmp1365, label %if.then.1367, label %if.end.1368

if.then.1367:                                     ; preds = %if.end.1362
  br label %for.inc.1683

if.end.1368:                                      ; preds = %if.end.1362
  %985 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1369 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %985, i32 0, i32 2
  %986 = load i32*, i32** %channels1369, align 8
  %arrayidx1370 = getelementptr inbounds i32, i32* %986, i64 1
  %987 = load i32, i32* %arrayidx1370, align 4
  %idxprom1371 = sext i32 %987 to i64
  %988 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1372 = getelementptr inbounds %struct.ebox, %struct.ebox* %988, i64 %idxprom1371
  %notActive1373 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1372, i32 0, i32 11
  %989 = load i32, i32* %notActive1373, align 4
  %cmp1374 = icmp eq i32 %989, 1
  br i1 %cmp1374, label %if.then.1376, label %if.end.1520

if.then.1376:                                     ; preds = %if.end.1368
  %990 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1377 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %990, i32 0, i32 2
  %991 = load i32*, i32** %channels1377, align 8
  %arrayidx1378 = getelementptr inbounds i32, i32* %991, i64 1
  %992 = load i32, i32* %arrayidx1378, align 4
  %idxprom1379 = sext i32 %992 to i64
  %993 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1380 = getelementptr inbounds %struct.ebox, %struct.ebox* %993, i64 %idxprom1379
  %index21381 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1380, i32 0, i32 1
  %994 = load i32, i32* %index21381, align 4
  store i32 %994, i32* %i2, align 4
  %995 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1382 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %995, i32 0, i32 2
  %996 = load i32*, i32** %channels1382, align 8
  %arrayidx1383 = getelementptr inbounds i32, i32* %996, i64 1
  %997 = load i32, i32* %arrayidx1383, align 4
  %idxprom1384 = sext i32 %997 to i64
  %998 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1385 = getelementptr inbounds %struct.ebox, %struct.ebox* %998, i64 %idxprom1384
  %index11386 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1385, i32 0, i32 0
  %999 = load i32, i32* %index11386, align 4
  store i32 %999, i32* %i1, align 4
  %1000 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1387 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1000, i32 0, i32 2
  %1001 = load i32*, i32** %channels1387, align 8
  %arrayidx1388 = getelementptr inbounds i32, i32* %1001, i64 1
  %1002 = load i32, i32* %arrayidx1388, align 4
  %idxprom1389 = sext i32 %1002 to i64
  %1003 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1390 = getelementptr inbounds %struct.ebox, %struct.ebox* %1003, i64 %idxprom1389
  %edge11391 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1390, i32 0, i32 8
  %1004 = load i32, i32* %edge11391, align 4
  store i32 %1004, i32* %edge, align 4
  %1005 = load i32, i32* %edge, align 4
  %idxprom1392 = sext i32 %1005 to i64
  %1006 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1393 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1006, i64 %idxprom1392
  %start1394 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1393, i32 0, i32 1
  %1007 = load i32, i32* %start1394, align 4
  store i32 %1007, i32* %start, align 4
  %1008 = load i32, i32* %edge, align 4
  %idxprom1395 = sext i32 %1008 to i64
  %1009 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1396 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1009, i64 %idxprom1395
  %end1397 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1396, i32 0, i32 2
  %1010 = load i32, i32* %end1397, align 4
  store i32 %1010, i32* %end, align 4
  %1011 = load i32, i32* %i2, align 4
  %idxprom1398 = sext i32 %1011 to i64
  %1012 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1399 = getelementptr inbounds %struct.rect, %struct.rect* %1012, i64 %idxprom1398
  %xc1400 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1399, i32 0, i32 0
  %1013 = load i32, i32* %xc1400, align 4
  store i32 %1013, i32* %xmax, align 4
  %1014 = load i32, i32* %i1, align 4
  %idxprom1401 = sext i32 %1014 to i64
  %1015 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1402 = getelementptr inbounds %struct.rect, %struct.rect* %1015, i64 %idxprom1401
  %xc1403 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1402, i32 0, i32 0
  %1016 = load i32, i32* %xc1403, align 4
  store i32 %1016, i32* %xmin, align 4
  store i32 2, i32* %c, align 4
  br label %for.cond.1404

for.cond.1404:                                    ; preds = %for.inc.1517, %if.then.1376
  %1017 = load i32, i32* %c, align 4
  %1018 = load i32, i32* %count, align 4
  %cmp1405 = icmp sle i32 %1017, %1018
  br i1 %cmp1405, label %for.body.1407, label %for.end.1519

for.body.1407:                                    ; preds = %for.cond.1404
  %1019 = load i32, i32* %c, align 4
  %idxprom1408 = sext i32 %1019 to i64
  %1020 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1409 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1020, i32 0, i32 2
  %1021 = load i32*, i32** %channels1409, align 8
  %arrayidx1410 = getelementptr inbounds i32, i32* %1021, i64 %idxprom1408
  %1022 = load i32, i32* %arrayidx1410, align 4
  %idxprom1411 = sext i32 %1022 to i64
  %1023 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1412 = getelementptr inbounds %struct.ebox, %struct.ebox* %1023, i64 %idxprom1411
  %notActive1413 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1412, i32 0, i32 11
  %1024 = load i32, i32* %notActive1413, align 4
  %cmp1414 = icmp eq i32 %1024, 0
  br i1 %cmp1414, label %if.then.1416, label %if.end.1516

if.then.1416:                                     ; preds = %for.body.1407
  %1025 = load i32, i32* %c, align 4
  %idxprom1417 = sext i32 %1025 to i64
  %1026 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1418 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1026, i32 0, i32 2
  %1027 = load i32*, i32** %channels1418, align 8
  %arrayidx1419 = getelementptr inbounds i32, i32* %1027, i64 %idxprom1417
  %1028 = load i32, i32* %arrayidx1419, align 4
  %idxprom1420 = sext i32 %1028 to i64
  %1029 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1421 = getelementptr inbounds %struct.ebox, %struct.ebox* %1029, i64 %idxprom1420
  %index11422 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1421, i32 0, i32 0
  %1030 = load i32, i32* %index11422, align 4
  store i32 %1030, i32* %i1, align 4
  %1031 = load i32, i32* %c, align 4
  %idxprom1423 = sext i32 %1031 to i64
  %1032 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1424 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1032, i32 0, i32 2
  %1033 = load i32*, i32** %channels1424, align 8
  %arrayidx1425 = getelementptr inbounds i32, i32* %1033, i64 %idxprom1423
  %1034 = load i32, i32* %arrayidx1425, align 4
  %idxprom1426 = sext i32 %1034 to i64
  %1035 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1427 = getelementptr inbounds %struct.ebox, %struct.ebox* %1035, i64 %idxprom1426
  %index21428 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1427, i32 0, i32 1
  %1036 = load i32, i32* %index21428, align 4
  store i32 %1036, i32* %i2, align 4
  %1037 = load i32, i32* %i2, align 4
  %idxprom1429 = sext i32 %1037 to i64
  %1038 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1430 = getelementptr inbounds %struct.rect, %struct.rect* %1038, i64 %idxprom1429
  %xc1431 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1430, i32 0, i32 0
  %1039 = load i32, i32* %xc1431, align 4
  %1040 = load i32, i32* %xmax, align 4
  %cmp1432 = icmp slt i32 %1039, %1040
  br i1 %cmp1432, label %if.then.1434, label %if.end.1471

if.then.1434:                                     ; preds = %if.then.1416
  %1041 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1435 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1041, i32 0, i32 2
  %1042 = load i32*, i32** %channels1435, align 8
  %arrayidx1436 = getelementptr inbounds i32, i32* %1042, i64 1
  %1043 = load i32, i32* %arrayidx1436, align 4
  %idxprom1437 = sext i32 %1043 to i64
  %1044 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1438 = getelementptr inbounds %struct.ebox, %struct.ebox* %1044, i64 %idxprom1437
  %index21439 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1438, i32 0, i32 1
  %1045 = load i32, i32* %index21439, align 4
  store i32 %1045, i32* %j, align 4
  %1046 = load i32, i32* %j, align 4
  %idxprom1440 = sext i32 %1046 to i64
  %1047 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1441 = getelementptr inbounds %struct.rect, %struct.rect* %1047, i64 %idxprom1440
  %r = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1441, i32 0, i32 5
  %1048 = load i32, i32* %r, align 4
  %1049 = load i32, i32* %end, align 4
  %cmp1442 = icmp slt i32 %1048, %1049
  br i1 %cmp1442, label %land.lhs.true.1444, label %if.else.1459

land.lhs.true.1444:                               ; preds = %if.then.1434
  %1050 = load i32, i32* %j, align 4
  %idxprom1445 = sext i32 %1050 to i64
  %1051 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1446 = getelementptr inbounds %struct.rect, %struct.rect* %1051, i64 %idxprom1445
  %xreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1446, i32 0, i32 2
  %1052 = load i32, i32* %xreset, align 4
  %cmp1447 = icmp eq i32 %1052, 0
  br i1 %cmp1447, label %if.then.1449, label %if.else.1459

if.then.1449:                                     ; preds = %land.lhs.true.1444
  %1053 = load i32, i32* %i2, align 4
  %idxprom1450 = sext i32 %1053 to i64
  %1054 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1451 = getelementptr inbounds %struct.rect, %struct.rect* %1054, i64 %idxprom1450
  %xc1452 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1451, i32 0, i32 0
  %1055 = load i32, i32* %xc1452, align 4
  %1056 = load i32, i32* %j, align 4
  %idxprom1453 = sext i32 %1056 to i64
  %1057 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1454 = getelementptr inbounds %struct.rect, %struct.rect* %1057, i64 %idxprom1453
  %xc1455 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1454, i32 0, i32 0
  store i32 %1055, i32* %xc1455, align 4
  %1058 = load i32, i32* %j, align 4
  %idxprom1456 = sext i32 %1058 to i64
  %1059 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1457 = getelementptr inbounds %struct.rect, %struct.rect* %1059, i64 %idxprom1456
  %xreset1458 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1457, i32 0, i32 2
  store i32 1, i32* %xreset1458, align 4
  br label %if.end.1470

if.else.1459:                                     ; preds = %land.lhs.true.1444, %if.then.1434
  %1060 = load i32, i32* %i2, align 4
  %idxprom1460 = sext i32 %1060 to i64
  %1061 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1461 = getelementptr inbounds %struct.rect, %struct.rect* %1061, i64 %idxprom1460
  %xc1462 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1461, i32 0, i32 0
  %1062 = load i32, i32* %xc1462, align 4
  %1063 = load i32, i32* %end, align 4
  %cmp1463 = icmp slt i32 %1062, %1063
  br i1 %cmp1463, label %if.then.1465, label %if.end.1469

if.then.1465:                                     ; preds = %if.else.1459
  %1064 = load i32, i32* %end, align 4
  %1065 = load i32, i32* %i2, align 4
  %idxprom1466 = sext i32 %1065 to i64
  %1066 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1467 = getelementptr inbounds %struct.rect, %struct.rect* %1066, i64 %idxprom1466
  %xc1468 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1467, i32 0, i32 0
  store i32 %1064, i32* %xc1468, align 4
  br label %if.end.1469

if.end.1469:                                      ; preds = %if.then.1465, %if.else.1459
  br label %if.end.1470

if.end.1470:                                      ; preds = %if.end.1469, %if.then.1449
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.end.1470, %if.then.1416
  %1067 = load i32, i32* %i1, align 4
  %idxprom1472 = sext i32 %1067 to i64
  %1068 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1473 = getelementptr inbounds %struct.rect, %struct.rect* %1068, i64 %idxprom1472
  %xc1474 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1473, i32 0, i32 0
  %1069 = load i32, i32* %xc1474, align 4
  %1070 = load i32, i32* %xmin, align 4
  %cmp1475 = icmp sgt i32 %1069, %1070
  br i1 %cmp1475, label %if.then.1477, label %if.end.1515

if.then.1477:                                     ; preds = %if.end.1471
  %1071 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1478 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1071, i32 0, i32 2
  %1072 = load i32*, i32** %channels1478, align 8
  %arrayidx1479 = getelementptr inbounds i32, i32* %1072, i64 1
  %1073 = load i32, i32* %arrayidx1479, align 4
  %idxprom1480 = sext i32 %1073 to i64
  %1074 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1481 = getelementptr inbounds %struct.ebox, %struct.ebox* %1074, i64 %idxprom1480
  %index11482 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1481, i32 0, i32 0
  %1075 = load i32, i32* %index11482, align 4
  store i32 %1075, i32* %j, align 4
  %1076 = load i32, i32* %start, align 4
  %1077 = load i32, i32* %j, align 4
  %idxprom1483 = sext i32 %1077 to i64
  %1078 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1484 = getelementptr inbounds %struct.rect, %struct.rect* %1078, i64 %idxprom1483
  %l = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1484, i32 0, i32 4
  %1079 = load i32, i32* %l, align 4
  %cmp1485 = icmp slt i32 %1076, %1079
  br i1 %cmp1485, label %land.lhs.true.1487, label %if.else.1503

land.lhs.true.1487:                               ; preds = %if.then.1477
  %1080 = load i32, i32* %j, align 4
  %idxprom1488 = sext i32 %1080 to i64
  %1081 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1489 = getelementptr inbounds %struct.rect, %struct.rect* %1081, i64 %idxprom1488
  %xreset1490 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1489, i32 0, i32 2
  %1082 = load i32, i32* %xreset1490, align 4
  %cmp1491 = icmp eq i32 %1082, 0
  br i1 %cmp1491, label %if.then.1493, label %if.else.1503

if.then.1493:                                     ; preds = %land.lhs.true.1487
  %1083 = load i32, i32* %i1, align 4
  %idxprom1494 = sext i32 %1083 to i64
  %1084 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1495 = getelementptr inbounds %struct.rect, %struct.rect* %1084, i64 %idxprom1494
  %xc1496 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1495, i32 0, i32 0
  %1085 = load i32, i32* %xc1496, align 4
  %1086 = load i32, i32* %j, align 4
  %idxprom1497 = sext i32 %1086 to i64
  %1087 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1498 = getelementptr inbounds %struct.rect, %struct.rect* %1087, i64 %idxprom1497
  %xc1499 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1498, i32 0, i32 0
  store i32 %1085, i32* %xc1499, align 4
  %1088 = load i32, i32* %j, align 4
  %idxprom1500 = sext i32 %1088 to i64
  %1089 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1501 = getelementptr inbounds %struct.rect, %struct.rect* %1089, i64 %idxprom1500
  %xreset1502 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1501, i32 0, i32 2
  store i32 1, i32* %xreset1502, align 4
  br label %if.end.1514

if.else.1503:                                     ; preds = %land.lhs.true.1487, %if.then.1477
  %1090 = load i32, i32* %start, align 4
  %1091 = load i32, i32* %i1, align 4
  %idxprom1504 = sext i32 %1091 to i64
  %1092 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1505 = getelementptr inbounds %struct.rect, %struct.rect* %1092, i64 %idxprom1504
  %xc1506 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1505, i32 0, i32 0
  %1093 = load i32, i32* %xc1506, align 4
  %cmp1507 = icmp slt i32 %1090, %1093
  br i1 %cmp1507, label %if.then.1509, label %if.end.1513

if.then.1509:                                     ; preds = %if.else.1503
  %1094 = load i32, i32* %start, align 4
  %1095 = load i32, i32* %i1, align 4
  %idxprom1510 = sext i32 %1095 to i64
  %1096 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1511 = getelementptr inbounds %struct.rect, %struct.rect* %1096, i64 %idxprom1510
  %xc1512 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1511, i32 0, i32 0
  store i32 %1094, i32* %xc1512, align 4
  br label %if.end.1513

if.end.1513:                                      ; preds = %if.then.1509, %if.else.1503
  br label %if.end.1514

if.end.1514:                                      ; preds = %if.end.1513, %if.then.1493
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.end.1514, %if.end.1471
  br label %for.end.1519

if.end.1516:                                      ; preds = %for.body.1407
  br label %for.inc.1517

for.inc.1517:                                     ; preds = %if.end.1516
  %1097 = load i32, i32* %c, align 4
  %inc1518 = add nsw i32 %1097, 1
  store i32 %inc1518, i32* %c, align 4
  br label %for.cond.1404

for.end.1519:                                     ; preds = %if.end.1515, %for.cond.1404
  br label %if.end.1520

if.end.1520:                                      ; preds = %for.end.1519, %if.end.1368
  %1098 = load i32, i32* %count, align 4
  %idxprom1521 = sext i32 %1098 to i64
  %1099 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1522 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1099, i32 0, i32 2
  %1100 = load i32*, i32** %channels1522, align 8
  %arrayidx1523 = getelementptr inbounds i32, i32* %1100, i64 %idxprom1521
  %1101 = load i32, i32* %arrayidx1523, align 4
  %idxprom1524 = sext i32 %1101 to i64
  %1102 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1525 = getelementptr inbounds %struct.ebox, %struct.ebox* %1102, i64 %idxprom1524
  %notActive1526 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1525, i32 0, i32 11
  %1103 = load i32, i32* %notActive1526, align 4
  %cmp1527 = icmp eq i32 %1103, 1
  br i1 %cmp1527, label %if.then.1529, label %if.end.1682

if.then.1529:                                     ; preds = %if.end.1520
  %1104 = load i32, i32* %count, align 4
  %idxprom1530 = sext i32 %1104 to i64
  %1105 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1531 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1105, i32 0, i32 2
  %1106 = load i32*, i32** %channels1531, align 8
  %arrayidx1532 = getelementptr inbounds i32, i32* %1106, i64 %idxprom1530
  %1107 = load i32, i32* %arrayidx1532, align 4
  %idxprom1533 = sext i32 %1107 to i64
  %1108 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1534 = getelementptr inbounds %struct.ebox, %struct.ebox* %1108, i64 %idxprom1533
  %index21535 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1534, i32 0, i32 1
  %1109 = load i32, i32* %index21535, align 4
  store i32 %1109, i32* %i2, align 4
  %1110 = load i32, i32* %count, align 4
  %idxprom1536 = sext i32 %1110 to i64
  %1111 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1537 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1111, i32 0, i32 2
  %1112 = load i32*, i32** %channels1537, align 8
  %arrayidx1538 = getelementptr inbounds i32, i32* %1112, i64 %idxprom1536
  %1113 = load i32, i32* %arrayidx1538, align 4
  %idxprom1539 = sext i32 %1113 to i64
  %1114 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1540 = getelementptr inbounds %struct.ebox, %struct.ebox* %1114, i64 %idxprom1539
  %index11541 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1540, i32 0, i32 0
  %1115 = load i32, i32* %index11541, align 4
  store i32 %1115, i32* %i1, align 4
  %1116 = load i32, i32* %count, align 4
  %idxprom1542 = sext i32 %1116 to i64
  %1117 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1543 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1117, i32 0, i32 2
  %1118 = load i32*, i32** %channels1543, align 8
  %arrayidx1544 = getelementptr inbounds i32, i32* %1118, i64 %idxprom1542
  %1119 = load i32, i32* %arrayidx1544, align 4
  %idxprom1545 = sext i32 %1119 to i64
  %1120 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1546 = getelementptr inbounds %struct.ebox, %struct.ebox* %1120, i64 %idxprom1545
  %edge21547 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1546, i32 0, i32 9
  %1121 = load i32, i32* %edge21547, align 4
  store i32 %1121, i32* %edge, align 4
  %1122 = load i32, i32* %edge, align 4
  %idxprom1548 = sext i32 %1122 to i64
  %1123 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1549 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1123, i64 %idxprom1548
  %start1550 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1549, i32 0, i32 1
  %1124 = load i32, i32* %start1550, align 4
  store i32 %1124, i32* %start, align 4
  %1125 = load i32, i32* %edge, align 4
  %idxprom1551 = sext i32 %1125 to i64
  %1126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx1552 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1126, i64 %idxprom1551
  %end1553 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx1552, i32 0, i32 2
  %1127 = load i32, i32* %end1553, align 4
  store i32 %1127, i32* %end, align 4
  %1128 = load i32, i32* %i2, align 4
  %idxprom1554 = sext i32 %1128 to i64
  %1129 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1555 = getelementptr inbounds %struct.rect, %struct.rect* %1129, i64 %idxprom1554
  %xc1556 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1555, i32 0, i32 0
  %1130 = load i32, i32* %xc1556, align 4
  store i32 %1130, i32* %xmax, align 4
  %1131 = load i32, i32* %i1, align 4
  %idxprom1557 = sext i32 %1131 to i64
  %1132 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1558 = getelementptr inbounds %struct.rect, %struct.rect* %1132, i64 %idxprom1557
  %xc1559 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1558, i32 0, i32 0
  %1133 = load i32, i32* %xc1559, align 4
  store i32 %1133, i32* %xmin, align 4
  %1134 = load i32, i32* %count, align 4
  %sub1560 = sub nsw i32 %1134, 1
  store i32 %sub1560, i32* %c, align 4
  br label %for.cond.1561

for.cond.1561:                                    ; preds = %for.inc.1679, %if.then.1529
  %1135 = load i32, i32* %c, align 4
  %cmp1562 = icmp sge i32 %1135, 1
  br i1 %cmp1562, label %for.body.1564, label %for.end.1681

for.body.1564:                                    ; preds = %for.cond.1561
  %1136 = load i32, i32* %c, align 4
  %idxprom1565 = sext i32 %1136 to i64
  %1137 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1566 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1137, i32 0, i32 2
  %1138 = load i32*, i32** %channels1566, align 8
  %arrayidx1567 = getelementptr inbounds i32, i32* %1138, i64 %idxprom1565
  %1139 = load i32, i32* %arrayidx1567, align 4
  %idxprom1568 = sext i32 %1139 to i64
  %1140 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1569 = getelementptr inbounds %struct.ebox, %struct.ebox* %1140, i64 %idxprom1568
  %notActive1570 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1569, i32 0, i32 11
  %1141 = load i32, i32* %notActive1570, align 4
  %cmp1571 = icmp eq i32 %1141, 0
  br i1 %cmp1571, label %if.then.1573, label %if.end.1678

if.then.1573:                                     ; preds = %for.body.1564
  %1142 = load i32, i32* %c, align 4
  %idxprom1574 = sext i32 %1142 to i64
  %1143 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1575 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1143, i32 0, i32 2
  %1144 = load i32*, i32** %channels1575, align 8
  %arrayidx1576 = getelementptr inbounds i32, i32* %1144, i64 %idxprom1574
  %1145 = load i32, i32* %arrayidx1576, align 4
  %idxprom1577 = sext i32 %1145 to i64
  %1146 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1578 = getelementptr inbounds %struct.ebox, %struct.ebox* %1146, i64 %idxprom1577
  %index11579 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1578, i32 0, i32 0
  %1147 = load i32, i32* %index11579, align 4
  store i32 %1147, i32* %i1, align 4
  %1148 = load i32, i32* %c, align 4
  %idxprom1580 = sext i32 %1148 to i64
  %1149 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1581 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1149, i32 0, i32 2
  %1150 = load i32*, i32** %channels1581, align 8
  %arrayidx1582 = getelementptr inbounds i32, i32* %1150, i64 %idxprom1580
  %1151 = load i32, i32* %arrayidx1582, align 4
  %idxprom1583 = sext i32 %1151 to i64
  %1152 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1584 = getelementptr inbounds %struct.ebox, %struct.ebox* %1152, i64 %idxprom1583
  %index21585 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1584, i32 0, i32 1
  %1153 = load i32, i32* %index21585, align 4
  store i32 %1153, i32* %i2, align 4
  %1154 = load i32, i32* %i2, align 4
  %idxprom1586 = sext i32 %1154 to i64
  %1155 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1587 = getelementptr inbounds %struct.rect, %struct.rect* %1155, i64 %idxprom1586
  %xc1588 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1587, i32 0, i32 0
  %1156 = load i32, i32* %xc1588, align 4
  %1157 = load i32, i32* %xmax, align 4
  %cmp1589 = icmp slt i32 %1156, %1157
  br i1 %cmp1589, label %if.then.1591, label %if.end.1631

if.then.1591:                                     ; preds = %if.then.1573
  %1158 = load i32, i32* %count, align 4
  %idxprom1592 = sext i32 %1158 to i64
  %1159 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1593 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1159, i32 0, i32 2
  %1160 = load i32*, i32** %channels1593, align 8
  %arrayidx1594 = getelementptr inbounds i32, i32* %1160, i64 %idxprom1592
  %1161 = load i32, i32* %arrayidx1594, align 4
  %idxprom1595 = sext i32 %1161 to i64
  %1162 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1596 = getelementptr inbounds %struct.ebox, %struct.ebox* %1162, i64 %idxprom1595
  %index21597 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1596, i32 0, i32 1
  %1163 = load i32, i32* %index21597, align 4
  store i32 %1163, i32* %j, align 4
  %1164 = load i32, i32* %j, align 4
  %idxprom1598 = sext i32 %1164 to i64
  %1165 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1599 = getelementptr inbounds %struct.rect, %struct.rect* %1165, i64 %idxprom1598
  %r1600 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1599, i32 0, i32 5
  %1166 = load i32, i32* %r1600, align 4
  %1167 = load i32, i32* %end, align 4
  %cmp1601 = icmp slt i32 %1166, %1167
  br i1 %cmp1601, label %land.lhs.true.1603, label %if.else.1619

land.lhs.true.1603:                               ; preds = %if.then.1591
  %1168 = load i32, i32* %j, align 4
  %idxprom1604 = sext i32 %1168 to i64
  %1169 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1605 = getelementptr inbounds %struct.rect, %struct.rect* %1169, i64 %idxprom1604
  %xreset1606 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1605, i32 0, i32 2
  %1170 = load i32, i32* %xreset1606, align 4
  %cmp1607 = icmp eq i32 %1170, 0
  br i1 %cmp1607, label %if.then.1609, label %if.else.1619

if.then.1609:                                     ; preds = %land.lhs.true.1603
  %1171 = load i32, i32* %i2, align 4
  %idxprom1610 = sext i32 %1171 to i64
  %1172 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1611 = getelementptr inbounds %struct.rect, %struct.rect* %1172, i64 %idxprom1610
  %xc1612 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1611, i32 0, i32 0
  %1173 = load i32, i32* %xc1612, align 4
  %1174 = load i32, i32* %j, align 4
  %idxprom1613 = sext i32 %1174 to i64
  %1175 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1614 = getelementptr inbounds %struct.rect, %struct.rect* %1175, i64 %idxprom1613
  %xc1615 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1614, i32 0, i32 0
  store i32 %1173, i32* %xc1615, align 4
  %1176 = load i32, i32* %j, align 4
  %idxprom1616 = sext i32 %1176 to i64
  %1177 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1617 = getelementptr inbounds %struct.rect, %struct.rect* %1177, i64 %idxprom1616
  %xreset1618 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1617, i32 0, i32 2
  store i32 1, i32* %xreset1618, align 4
  br label %if.end.1630

if.else.1619:                                     ; preds = %land.lhs.true.1603, %if.then.1591
  %1178 = load i32, i32* %i2, align 4
  %idxprom1620 = sext i32 %1178 to i64
  %1179 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1621 = getelementptr inbounds %struct.rect, %struct.rect* %1179, i64 %idxprom1620
  %xc1622 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1621, i32 0, i32 0
  %1180 = load i32, i32* %xc1622, align 4
  %1181 = load i32, i32* %end, align 4
  %cmp1623 = icmp slt i32 %1180, %1181
  br i1 %cmp1623, label %if.then.1625, label %if.end.1629

if.then.1625:                                     ; preds = %if.else.1619
  %1182 = load i32, i32* %end, align 4
  %1183 = load i32, i32* %i2, align 4
  %idxprom1626 = sext i32 %1183 to i64
  %1184 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1627 = getelementptr inbounds %struct.rect, %struct.rect* %1184, i64 %idxprom1626
  %xc1628 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1627, i32 0, i32 0
  store i32 %1182, i32* %xc1628, align 4
  br label %if.end.1629

if.end.1629:                                      ; preds = %if.then.1625, %if.else.1619
  br label %if.end.1630

if.end.1630:                                      ; preds = %if.end.1629, %if.then.1609
  br label %if.end.1631

if.end.1631:                                      ; preds = %if.end.1630, %if.then.1573
  %1185 = load i32, i32* %i1, align 4
  %idxprom1632 = sext i32 %1185 to i64
  %1186 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1633 = getelementptr inbounds %struct.rect, %struct.rect* %1186, i64 %idxprom1632
  %xc1634 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1633, i32 0, i32 0
  %1187 = load i32, i32* %xc1634, align 4
  %1188 = load i32, i32* %xmin, align 4
  %cmp1635 = icmp sgt i32 %1187, %1188
  br i1 %cmp1635, label %if.then.1637, label %if.end.1677

if.then.1637:                                     ; preds = %if.end.1631
  %1189 = load i32, i32* %count, align 4
  %idxprom1638 = sext i32 %1189 to i64
  %1190 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %channels1639 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1190, i32 0, i32 2
  %1191 = load i32*, i32** %channels1639, align 8
  %arrayidx1640 = getelementptr inbounds i32, i32* %1191, i64 %idxprom1638
  %1192 = load i32, i32* %arrayidx1640, align 4
  %idxprom1641 = sext i32 %1192 to i64
  %1193 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx1642 = getelementptr inbounds %struct.ebox, %struct.ebox* %1193, i64 %idxprom1641
  %index11643 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx1642, i32 0, i32 0
  %1194 = load i32, i32* %index11643, align 4
  store i32 %1194, i32* %j, align 4
  %1195 = load i32, i32* %start, align 4
  %1196 = load i32, i32* %j, align 4
  %idxprom1644 = sext i32 %1196 to i64
  %1197 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1645 = getelementptr inbounds %struct.rect, %struct.rect* %1197, i64 %idxprom1644
  %l1646 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1645, i32 0, i32 4
  %1198 = load i32, i32* %l1646, align 4
  %cmp1647 = icmp slt i32 %1195, %1198
  br i1 %cmp1647, label %land.lhs.true.1649, label %if.else.1665

land.lhs.true.1649:                               ; preds = %if.then.1637
  %1199 = load i32, i32* %j, align 4
  %idxprom1650 = sext i32 %1199 to i64
  %1200 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1651 = getelementptr inbounds %struct.rect, %struct.rect* %1200, i64 %idxprom1650
  %xreset1652 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1651, i32 0, i32 2
  %1201 = load i32, i32* %xreset1652, align 4
  %cmp1653 = icmp eq i32 %1201, 0
  br i1 %cmp1653, label %if.then.1655, label %if.else.1665

if.then.1655:                                     ; preds = %land.lhs.true.1649
  %1202 = load i32, i32* %i1, align 4
  %idxprom1656 = sext i32 %1202 to i64
  %1203 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1657 = getelementptr inbounds %struct.rect, %struct.rect* %1203, i64 %idxprom1656
  %xc1658 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1657, i32 0, i32 0
  %1204 = load i32, i32* %xc1658, align 4
  %1205 = load i32, i32* %j, align 4
  %idxprom1659 = sext i32 %1205 to i64
  %1206 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1660 = getelementptr inbounds %struct.rect, %struct.rect* %1206, i64 %idxprom1659
  %xc1661 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1660, i32 0, i32 0
  store i32 %1204, i32* %xc1661, align 4
  %1207 = load i32, i32* %j, align 4
  %idxprom1662 = sext i32 %1207 to i64
  %1208 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1663 = getelementptr inbounds %struct.rect, %struct.rect* %1208, i64 %idxprom1662
  %xreset1664 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1663, i32 0, i32 2
  store i32 1, i32* %xreset1664, align 4
  br label %if.end.1676

if.else.1665:                                     ; preds = %land.lhs.true.1649, %if.then.1637
  %1209 = load i32, i32* %start, align 4
  %1210 = load i32, i32* %i1, align 4
  %idxprom1666 = sext i32 %1210 to i64
  %1211 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1667 = getelementptr inbounds %struct.rect, %struct.rect* %1211, i64 %idxprom1666
  %xc1668 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1667, i32 0, i32 0
  %1212 = load i32, i32* %xc1668, align 4
  %cmp1669 = icmp slt i32 %1209, %1212
  br i1 %cmp1669, label %if.then.1671, label %if.end.1675

if.then.1671:                                     ; preds = %if.else.1665
  %1213 = load i32, i32* %start, align 4
  %1214 = load i32, i32* %i1, align 4
  %idxprom1672 = sext i32 %1214 to i64
  %1215 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx1673 = getelementptr inbounds %struct.rect, %struct.rect* %1215, i64 %idxprom1672
  %xc1674 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx1673, i32 0, i32 0
  store i32 %1213, i32* %xc1674, align 4
  br label %if.end.1675

if.end.1675:                                      ; preds = %if.then.1671, %if.else.1665
  br label %if.end.1676

if.end.1676:                                      ; preds = %if.end.1675, %if.then.1655
  br label %if.end.1677

if.end.1677:                                      ; preds = %if.end.1676, %if.end.1631
  br label %for.end.1681

if.end.1678:                                      ; preds = %for.body.1564
  br label %for.inc.1679

for.inc.1679:                                     ; preds = %if.end.1678
  %1216 = load i32, i32* %c, align 4
  %dec1680 = add nsw i32 %1216, -1
  store i32 %dec1680, i32* %c, align 4
  br label %for.cond.1561

for.end.1681:                                     ; preds = %if.end.1677, %for.cond.1561
  br label %if.end.1682

if.end.1682:                                      ; preds = %for.end.1681, %if.end.1520
  br label %for.inc.1683

for.inc.1683:                                     ; preds = %if.end.1682, %if.then.1367, %if.then.1361
  %1217 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next1684 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1217, i32 0, i32 4
  %1218 = load %struct.wcbox*, %struct.wcbox** %next1684, align 8
  store %struct.wcbox* %1218, %struct.wcbox** %ptr, align 8
  br label %for.cond.1354

for.end.1685:                                     ; preds = %for.cond.1354
  br label %for.inc.1686

for.inc.1686:                                     ; preds = %for.end.1685
  %1219 = load i32, i32* %i, align 4
  %inc1687 = add nsw i32 %1219, 1
  store i32 %inc1687, i32* %i, align 4
  br label %for.cond.1348

for.end.1688:                                     ; preds = %for.cond.1348
  br label %for.inc.1689

for.inc.1689:                                     ; preds = %for.end.1688
  %1220 = load i32, i32* %twoTimes, align 4
  %inc1690 = add nsw i32 %1220, 1
  store i32 %inc1690, i32* %twoTimes, align 4
  br label %for.cond.1005

for.end.1691:                                     ; preds = %for.cond.1005
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare void @tinsert(%struct.tnode**, i32, i32) #2

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
