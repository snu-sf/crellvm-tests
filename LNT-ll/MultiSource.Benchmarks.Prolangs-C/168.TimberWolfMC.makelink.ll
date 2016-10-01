; ModuleID = './MultiSource.Benchmarks.Prolangs-C/168.TimberWolfMC.makelink.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hFixedList = external global %struct.dlink1*, align 8
@edgeCount = external global i32, align 4
@hFixedEnd = external global %struct.dlink1*, align 8
@vFixedList = external global %struct.dlink1*, align 8
@vFixedEnd = external global %struct.dlink1*, align 8
@hFixedEdgeRoot = external global %struct.tnode*, align 8
@vFixedEdgeRoot = external global %struct.tnode*, align 8
@Vroot = external global %struct.tnode*, align 8
@Vptrs = external global %struct.dlink1**, align 8
@edgeList = external global %struct.edgebox*, align 8
@Hroot = external global %struct.tnode*, align 8
@Hptrs = external global %struct.dlink1**, align 8

; Function Attrs: nounwind uwtable
define void @makelink() #0 {
entry:
  %junkptr = alloca %struct.tnode*, align 8
  %ptr = alloca %struct.dlink1*, align 8
  %pptr = alloca %struct.dlink1*, align 8
  %nptr = alloca %struct.dlink1*, align 8
  %location = alloca i32, align 4
  %index = alloca i32, align 4
  %call = call noalias i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.dlink1*
  store %struct.dlink1* %0, %struct.dlink1** @hFixedList, align 8
  %1 = load i32, i32* @edgeCount, align 4
  %2 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %edge = getelementptr inbounds %struct.dlink1, %struct.dlink1* %2, i32 0, i32 0
  store i32 %1, i32* %edge, align 4
  %call1 = call noalias i8* @malloc(i64 24) #3
  %3 = bitcast i8* %call1 to %struct.dlink1*
  %4 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %4, i32 0, i32 2
  store %struct.dlink1* %3, %struct.dlink1** %next, align 8
  %5 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %prev = getelementptr inbounds %struct.dlink1, %struct.dlink1* %5, i32 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %prev, align 8
  %6 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next2 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %6, i32 0, i32 2
  %7 = load %struct.dlink1*, %struct.dlink1** %next2, align 8
  %next3 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %7, i32 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %next3, align 8
  %8 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %9 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %9, i32 0, i32 2
  %10 = load %struct.dlink1*, %struct.dlink1** %next4, align 8
  %prev5 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %10, i32 0, i32 1
  store %struct.dlink1* %8, %struct.dlink1** %prev5, align 8
  %11 = load i32, i32* @edgeCount, align 4
  %sub = sub nsw i32 %11, 2
  %12 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next6 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i32 0, i32 2
  %13 = load %struct.dlink1*, %struct.dlink1** %next6, align 8
  %edge7 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %13, i32 0, i32 0
  store i32 %sub, i32* %edge7, align 4
  %14 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next8 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %14, i32 0, i32 2
  %15 = load %struct.dlink1*, %struct.dlink1** %next8, align 8
  store %struct.dlink1* %15, %struct.dlink1** @hFixedEnd, align 8
  %call9 = call noalias i8* @malloc(i64 24) #3
  %16 = bitcast i8* %call9 to %struct.dlink1*
  store %struct.dlink1* %16, %struct.dlink1** @vFixedList, align 8
  %17 = load i32, i32* @edgeCount, align 4
  %sub10 = sub nsw i32 %17, 3
  %18 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %edge11 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %18, i32 0, i32 0
  store i32 %sub10, i32* %edge11, align 4
  %call12 = call noalias i8* @malloc(i64 24) #3
  %19 = bitcast i8* %call12 to %struct.dlink1*
  %20 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next13 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %20, i32 0, i32 2
  store %struct.dlink1* %19, %struct.dlink1** %next13, align 8
  %21 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %prev14 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %21, i32 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %prev14, align 8
  %22 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next15 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i32 0, i32 2
  %23 = load %struct.dlink1*, %struct.dlink1** %next15, align 8
  %next16 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %23, i32 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %next16, align 8
  %24 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %25 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next17 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %25, i32 0, i32 2
  %26 = load %struct.dlink1*, %struct.dlink1** %next17, align 8
  %prev18 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %26, i32 0, i32 1
  store %struct.dlink1* %24, %struct.dlink1** %prev18, align 8
  %27 = load i32, i32* @edgeCount, align 4
  %sub19 = sub nsw i32 %27, 1
  %28 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next20 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %28, i32 0, i32 2
  %29 = load %struct.dlink1*, %struct.dlink1** %next20, align 8
  %edge21 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %29, i32 0, i32 0
  store i32 %sub19, i32* %edge21, align 4
  %30 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next22 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %30, i32 0, i32 2
  %31 = load %struct.dlink1*, %struct.dlink1** %next22, align 8
  store %struct.dlink1* %31, %struct.dlink1** @vFixedEnd, align 8
  %32 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %32, %struct.dlink1** %pptr, align 8
  %33 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %next23 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %33, i32 0, i32 2
  %34 = load %struct.dlink1*, %struct.dlink1** %next23, align 8
  store %struct.dlink1* %34, %struct.dlink1** %nptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  call void @tpop(%struct.tnode** @hFixedEdgeRoot, %struct.tnode** %junkptr, i32* %location, i32* %index)
  %35 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp = icmp eq %struct.tnode* %35, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %call24 = call noalias i8* @malloc(i64 24) #3
  %36 = bitcast i8* %call24 to %struct.dlink1*
  store %struct.dlink1* %36, %struct.dlink1** %ptr, align 8
  %37 = load i32, i32* %index, align 4
  %38 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge25 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %38, i32 0, i32 0
  store i32 %37, i32* %edge25, align 4
  %39 = load %struct.dlink1*, %struct.dlink1** %pptr, align 8
  %40 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev26 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %40, i32 0, i32 1
  store %struct.dlink1* %39, %struct.dlink1** %prev26, align 8
  %41 = load %struct.dlink1*, %struct.dlink1** %nptr, align 8
  %42 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next27 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %42, i32 0, i32 2
  store %struct.dlink1* %41, %struct.dlink1** %next27, align 8
  %43 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %44 = load %struct.dlink1*, %struct.dlink1** %pptr, align 8
  %next28 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %44, i32 0, i32 2
  store %struct.dlink1* %43, %struct.dlink1** %next28, align 8
  %45 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %46 = load %struct.dlink1*, %struct.dlink1** %nptr, align 8
  %prev29 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %46, i32 0, i32 1
  store %struct.dlink1* %45, %struct.dlink1** %prev29, align 8
  %47 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  store %struct.dlink1* %47, %struct.dlink1** %pptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %48 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %48, %struct.dlink1** %pptr, align 8
  %49 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %next30 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %49, i32 0, i32 2
  %50 = load %struct.dlink1*, %struct.dlink1** %next30, align 8
  store %struct.dlink1* %50, %struct.dlink1** %nptr, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %if.end.34, %for.end
  call void @tpop(%struct.tnode** @vFixedEdgeRoot, %struct.tnode** %junkptr, i32* %location, i32* %index)
  %51 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp32 = icmp eq %struct.tnode* %51, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.cond.31
  br label %for.end.41

if.end.34:                                        ; preds = %for.cond.31
  %call35 = call noalias i8* @malloc(i64 24) #3
  %52 = bitcast i8* %call35 to %struct.dlink1*
  store %struct.dlink1* %52, %struct.dlink1** %ptr, align 8
  %53 = load i32, i32* %index, align 4
  %54 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %edge36 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %54, i32 0, i32 0
  store i32 %53, i32* %edge36, align 4
  %55 = load %struct.dlink1*, %struct.dlink1** %pptr, align 8
  %56 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %prev37 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %56, i32 0, i32 1
  store %struct.dlink1* %55, %struct.dlink1** %prev37, align 8
  %57 = load %struct.dlink1*, %struct.dlink1** %nptr, align 8
  %58 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %next38 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %58, i32 0, i32 2
  store %struct.dlink1* %57, %struct.dlink1** %next38, align 8
  %59 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %60 = load %struct.dlink1*, %struct.dlink1** %pptr, align 8
  %next39 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %60, i32 0, i32 2
  store %struct.dlink1* %59, %struct.dlink1** %next39, align 8
  %61 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  %62 = load %struct.dlink1*, %struct.dlink1** %nptr, align 8
  %prev40 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %62, i32 0, i32 1
  store %struct.dlink1* %61, %struct.dlink1** %prev40, align 8
  %63 = load %struct.dlink1*, %struct.dlink1** %ptr, align 8
  store %struct.dlink1* %63, %struct.dlink1** %pptr, align 8
  br label %for.cond.31

for.end.41:                                       ; preds = %if.then.33
  call void @makeVtree()
  call void @makeHtree()
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @makeVtree() #0 {
entry:
  %vptr = alloca %struct.dlink1*, align 8
  %last = alloca i32, align 4
  %edge = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @Vroot, align 8
  %call = call noalias i8* @malloc(i64 800) #3
  %0 = bitcast i8* %call to %struct.dlink1**
  store %struct.dlink1** %0, %struct.dlink1*** @Vptrs, align 8
  store i32 0, i32* %count, align 4
  store i32 -1000000, i32* %last, align 4
  %1 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %1, %struct.dlink1** %vptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %cmp = icmp ne %struct.dlink1* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %edge1 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %3, i32 0, i32 0
  %4 = load i32, i32* %edge1, align 4
  store i32 %4, i32* %edge, align 4
  %5 = load i32, i32* %edge, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %idxprom
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx, i32 0, i32 3
  %7 = load i32, i32* %loc, align 4
  %8 = load i32, i32* %last, align 4
  %cmp2 = icmp sgt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %edge, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx4 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %10, i64 %idxprom3
  %loc5 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx4, i32 0, i32 3
  %11 = load i32, i32* %loc5, align 4
  store i32 %11, i32* %last, align 4
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  %rem = srem i32 %inc, 100
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %14 = bitcast %struct.dlink1** %13 to i8*
  %15 = load i32, i32* %count, align 4
  %add = add nsw i32 %15, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call8 = call i8* @realloc(i8* %14, i64 %mul) #3
  %16 = bitcast i8* %call8 to %struct.dlink1**
  store %struct.dlink1** %16, %struct.dlink1*** @Vptrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %17 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %18 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx10 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %19, i64 %idxprom9
  store %struct.dlink1* %17, %struct.dlink1** %arrayidx10, align 8
  %20 = load i32, i32* %last, align 4
  %21 = load i32, i32* %count, align 4
  call void @tinsert(%struct.tnode** @Vroot, i32 %20, i32 %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load %struct.dlink1*, %struct.dlink1** %vptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i32 0, i32 2
  %23 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %23, %struct.dlink1** %vptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeHtree() #0 {
entry:
  %hptr = alloca %struct.dlink1*, align 8
  %last = alloca i32, align 4
  %edge = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @Hroot, align 8
  %call = call noalias i8* @malloc(i64 800) #3
  %0 = bitcast i8* %call to %struct.dlink1**
  store %struct.dlink1** %0, %struct.dlink1*** @Hptrs, align 8
  store i32 0, i32* %count, align 4
  store i32 -1000000, i32* %last, align 4
  %1 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %1, %struct.dlink1** %hptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp = icmp ne %struct.dlink1* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge1 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %3, i32 0, i32 0
  %4 = load i32, i32* %edge1, align 4
  store i32 %4, i32* %edge, align 4
  %5 = load i32, i32* %edge, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %idxprom
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx, i32 0, i32 3
  %7 = load i32, i32* %loc, align 4
  %8 = load i32, i32* %last, align 4
  %cmp2 = icmp sgt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %edge, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx4 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %10, i64 %idxprom3
  %loc5 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx4, i32 0, i32 3
  %11 = load i32, i32* %loc5, align 4
  store i32 %11, i32* %last, align 4
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  %rem = srem i32 %inc, 100
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %14 = bitcast %struct.dlink1** %13 to i8*
  %15 = load i32, i32* %count, align 4
  %add = add nsw i32 %15, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call8 = call i8* @realloc(i8* %14, i64 %mul) #3
  %16 = bitcast i8* %call8 to %struct.dlink1**
  store %struct.dlink1** %16, %struct.dlink1*** @Hptrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %17 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %18 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %arrayidx10 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %19, i64 %idxprom9
  store %struct.dlink1* %17, %struct.dlink1** %arrayidx10, align 8
  %20 = load i32, i32* %last, align 4
  %21 = load i32, i32* %count, align 4
  call void @tinsert(%struct.tnode** @Hroot, i32 %20, i32 %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i32 0, i32 2
  %23 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %23, %struct.dlink1** %hptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare void @tinsert(%struct.tnode**, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
