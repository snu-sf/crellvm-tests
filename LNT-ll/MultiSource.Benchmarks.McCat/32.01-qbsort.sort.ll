; ModuleID = './MultiSource.Benchmarks.McCat/32.01-qbsort.sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { i32, i32* }
%struct.LinkList = type { i32, %struct.LinkList* }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"[]\00", align 1

; Function Attrs: nounwind uwtable
define %struct.List* @BubbleSort(%struct.List* %l, i32 (i32, i32)* %compare) #0 {
entry:
  %l.addr = alloca %struct.List*, align 8
  %compare.addr = alloca i32 (i32, i32)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.List* %l, %struct.List** %l.addr, align 8
  store i32 (i32, i32)* %compare, i32 (i32, i32)** %compare.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.List*, %struct.List** %l.addr, align 8
  %n = getelementptr inbounds %struct.List, %struct.List* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.List*, %struct.List** %l.addr, align 8
  %n2 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 0
  %5 = load i32, i32* %n2, align 4
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, %6
  %sub3 = sub nsw i32 %sub, 1
  %cmp4 = icmp slt i32 %3, %sub3
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %compare.addr, align 8
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %9 = load %struct.List*, %struct.List** %l.addr, align 8
  %l6 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 1
  %10 = load i32*, i32** %l6, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.List*, %struct.List** %l.addr, align 8
  %l8 = getelementptr inbounds %struct.List, %struct.List* %13, i32 0, i32 1
  %14 = load i32*, i32** %l8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %15 = load i32, i32* %arrayidx9, align 4
  %call = call i32 %7(i32 %11, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %16 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.List*, %struct.List** %l.addr, align 8
  %l11 = getelementptr inbounds %struct.List, %struct.List* %17, i32 0, i32 1
  %18 = load i32*, i32** %l11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %19 = load i32, i32* %arrayidx12, align 4
  store i32 %19, i32* %temp, align 4
  %20 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %20, 1
  %idxprom14 = sext i32 %add13 to i64
  %21 = load %struct.List*, %struct.List** %l.addr, align 8
  %l15 = getelementptr inbounds %struct.List, %struct.List* %21, i32 0, i32 1
  %22 = load i32*, i32** %l15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx16, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.List*, %struct.List** %l.addr, align 8
  %l18 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 1
  %26 = load i32*, i32** %l18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom17
  store i32 %23, i32* %arrayidx19, align 4
  %27 = load i32, i32* %temp, align 4
  %28 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %28, 1
  %idxprom21 = sext i32 %add20 to i64
  %29 = load %struct.List*, %struct.List** %l.addr, align 8
  %l22 = getelementptr inbounds %struct.List, %struct.List* %29, i32 0, i32 1
  %30 = load i32*, i32** %l22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom21
  store i32 %27, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %33 = load %struct.List*, %struct.List** %l.addr, align 8
  ret %struct.List* %33
}

; Function Attrs: nounwind uwtable
define %struct.LinkList* @QuickSort(%struct.LinkList* %l, i32 (i32, i32)* %compare) #0 {
entry:
  %retval = alloca %struct.LinkList*, align 8
  %l.addr = alloca %struct.LinkList*, align 8
  %compare.addr = alloca i32 (i32, i32)*, align 8
  %p = alloca %struct.LinkList*, align 8
  %SortList = alloca %struct.LinkList*, align 8
  %InfList = alloca %struct.LinkList*, align 8
  %SupList = alloca %struct.LinkList*, align 8
  %NewElement = alloca %struct.LinkList*, align 8
  %FirstElement = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %l, %struct.LinkList** %l.addr, align 8
  store i32 (i32, i32)* %compare, i32 (i32, i32)** %compare.addr, align 8
  store %struct.LinkList* null, %struct.LinkList** %InfList, align 8
  store %struct.LinkList* null, %struct.LinkList** %SupList, align 8
  %0 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %cmp = icmp eq %struct.LinkList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.LinkList* null, %struct.LinkList** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #2
  %1 = bitcast i8* %call to %struct.LinkList*
  store %struct.LinkList* %1, %struct.LinkList** %FirstElement, align 8
  %2 = load %struct.LinkList*, %struct.LinkList** %FirstElement, align 8
  %3 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %4 = bitcast %struct.LinkList* %2 to i8*
  %5 = bitcast %struct.LinkList* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %next = getelementptr inbounds %struct.LinkList, %struct.LinkList* %6, i32 0, i32 1
  %7 = load %struct.LinkList*, %struct.LinkList** %next, align 8
  store %struct.LinkList* %7, %struct.LinkList** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %cmp1 = icmp ne %struct.LinkList* %8, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %compare.addr, align 8
  %10 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %key = getelementptr inbounds %struct.LinkList, %struct.LinkList* %10, i32 0, i32 0
  %11 = load i32, i32* %key, align 4
  %12 = load %struct.LinkList*, %struct.LinkList** %FirstElement, align 8
  %key2 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %12, i32 0, i32 0
  %13 = load i32, i32* %key2, align 4
  %call3 = call i32 %9(i32 %11, i32 %13)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else.9

if.then.4:                                        ; preds = %for.body
  %call5 = call noalias i8* @malloc(i64 16) #2
  %14 = bitcast i8* %call5 to %struct.LinkList*
  store %struct.LinkList* %14, %struct.LinkList** %NewElement, align 8
  %15 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %key6 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %15, i32 0, i32 0
  %16 = load i32, i32* %key6, align 4
  %17 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %key7 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %17, i32 0, i32 0
  store i32 %16, i32* %key7, align 4
  %18 = load %struct.LinkList*, %struct.LinkList** %InfList, align 8
  %19 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %next8 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %19, i32 0, i32 1
  store %struct.LinkList* %18, %struct.LinkList** %next8, align 8
  %20 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  store %struct.LinkList* %20, %struct.LinkList** %InfList, align 8
  br label %if.end

if.else.9:                                        ; preds = %for.body
  %call10 = call noalias i8* @malloc(i64 16) #2
  %21 = bitcast i8* %call10 to %struct.LinkList*
  store %struct.LinkList* %21, %struct.LinkList** %NewElement, align 8
  %22 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %key11 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %22, i32 0, i32 0
  %23 = load i32, i32* %key11, align 4
  %24 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %key12 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %24, i32 0, i32 0
  store i32 %23, i32* %key12, align 4
  %25 = load %struct.LinkList*, %struct.LinkList** %SupList, align 8
  %26 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %next13 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %26, i32 0, i32 1
  store %struct.LinkList* %25, %struct.LinkList** %next13, align 8
  %27 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  store %struct.LinkList* %27, %struct.LinkList** %SupList, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %next14 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %28, i32 0, i32 1
  %29 = load %struct.LinkList*, %struct.LinkList** %next14, align 8
  store %struct.LinkList* %29, %struct.LinkList** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.LinkList*, %struct.LinkList** %SupList, align 8
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %compare.addr, align 8
  %call15 = call %struct.LinkList* @QuickSort(%struct.LinkList* %30, i32 (i32, i32)* %31)
  store %struct.LinkList* %call15, %struct.LinkList** %SortList, align 8
  %32 = load %struct.LinkList*, %struct.LinkList** %SupList, align 8
  call void @FreeLinkList(%struct.LinkList* %32)
  %33 = load %struct.LinkList*, %struct.LinkList** %SortList, align 8
  store %struct.LinkList* %33, %struct.LinkList** %SupList, align 8
  %34 = load %struct.LinkList*, %struct.LinkList** %InfList, align 8
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %compare.addr, align 8
  %call16 = call %struct.LinkList* @QuickSort(%struct.LinkList* %34, i32 (i32, i32)* %35)
  store %struct.LinkList* %call16, %struct.LinkList** %SortList, align 8
  %36 = load %struct.LinkList*, %struct.LinkList** %InfList, align 8
  call void @FreeLinkList(%struct.LinkList* %36)
  %37 = load %struct.LinkList*, %struct.LinkList** %SortList, align 8
  %cmp17 = icmp ne %struct.LinkList* %37, null
  br i1 %cmp17, label %if.then.18, label %if.else.27

if.then.18:                                       ; preds = %for.end
  %38 = load %struct.LinkList*, %struct.LinkList** %SortList, align 8
  store %struct.LinkList* %38, %struct.LinkList** %p, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.23, %if.then.18
  %39 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %next20 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %39, i32 0, i32 1
  %40 = load %struct.LinkList*, %struct.LinkList** %next20, align 8
  %cmp21 = icmp ne %struct.LinkList* %40, null
  br i1 %cmp21, label %for.body.22, label %for.end.25

for.body.22:                                      ; preds = %for.cond.19
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.22
  %41 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %next24 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %41, i32 0, i32 1
  %42 = load %struct.LinkList*, %struct.LinkList** %next24, align 8
  store %struct.LinkList* %42, %struct.LinkList** %p, align 8
  br label %for.cond.19

for.end.25:                                       ; preds = %for.cond.19
  %43 = load %struct.LinkList*, %struct.LinkList** %FirstElement, align 8
  %44 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %next26 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %44, i32 0, i32 1
  store %struct.LinkList* %43, %struct.LinkList** %next26, align 8
  br label %if.end.28

if.else.27:                                       ; preds = %for.end
  %45 = load %struct.LinkList*, %struct.LinkList** %FirstElement, align 8
  store %struct.LinkList* %45, %struct.LinkList** %SortList, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %for.end.25
  %46 = load %struct.LinkList*, %struct.LinkList** %SupList, align 8
  %47 = load %struct.LinkList*, %struct.LinkList** %FirstElement, align 8
  %next29 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %47, i32 0, i32 1
  store %struct.LinkList* %46, %struct.LinkList** %next29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28
  %48 = load %struct.LinkList*, %struct.LinkList** %SortList, align 8
  store %struct.LinkList* %48, %struct.LinkList** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  %49 = load %struct.LinkList*, %struct.LinkList** %retval
  ret %struct.LinkList* %49
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @FreeLinkList(%struct.LinkList* %l) #0 {
entry:
  %l.addr = alloca %struct.LinkList*, align 8
  %next = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %l, %struct.LinkList** %l.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %cmp = icmp ne %struct.LinkList* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %next1 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %1, i32 0, i32 1
  %2 = load %struct.LinkList*, %struct.LinkList** %next1, align 8
  store %struct.LinkList* %2, %struct.LinkList** %next, align 8
  %3 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %4 = bitcast %struct.LinkList* %3 to i8*
  call void @free(i8* %4) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LinkList*, %struct.LinkList** %next, align 8
  store %struct.LinkList* %5, %struct.LinkList** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintList(%struct.List* %l) #0 {
entry:
  %l.addr = alloca %struct.List*, align 8
  %i = alloca i32, align 4
  store %struct.List* %l, %struct.List** %l.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.List*, %struct.List** %l.addr, align 8
  %n = getelementptr inbounds %struct.List, %struct.List* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.List*, %struct.List** %l.addr, align 8
  %l1 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 1
  %5 = load i32*, i32** %l1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.List*, %struct.List** %l.addr, align 8
  %n3 = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %sub4 = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub4 to i64
  %10 = load %struct.List*, %struct.List** %l.addr, align 8
  %l6 = getelementptr inbounds %struct.List, %struct.List* %10, i32 0, i32 1
  %11 = load i32*, i32** %l6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @PrintLinkList(%struct.LinkList* %l) #0 {
entry:
  %l.addr = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %l, %struct.LinkList** %l.addr, align 8
  %0 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %cmp = icmp eq %struct.LinkList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %next = getelementptr inbounds %struct.LinkList, %struct.LinkList* %1, i32 0, i32 1
  %2 = load %struct.LinkList*, %struct.LinkList** %next, align 8
  %cmp2 = icmp ne %struct.LinkList* %2, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %key = getelementptr inbounds %struct.LinkList, %struct.LinkList* %3, i32 0, i32 0
  %4 = load i32, i32* %key, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %next4 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %5, i32 0, i32 1
  %6 = load %struct.LinkList*, %struct.LinkList** %next4, align 8
  store %struct.LinkList* %6, %struct.LinkList** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LinkList*, %struct.LinkList** %l.addr, align 8
  %key5 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %7, i32 0, i32 0
  %8 = load i32, i32* %key5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
