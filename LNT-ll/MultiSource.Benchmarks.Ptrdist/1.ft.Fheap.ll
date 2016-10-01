; ModuleID = './MultiSource.Benchmarks.Ptrdist/1.ft.Fheap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hTable = internal global [10000 x %struct._Heap*] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Oops, could not malloc\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @InitFHeap() #0 {
entry:
  %j = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom
  store %struct._Heap* null, %struct._Heap** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @MakeHeap() #0 {
entry:
  ret %struct._Heap* null
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @FindMin(%struct._Heap* %h) #0 {
entry:
  %retval = alloca %struct._Vertices*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._Vertices* null, %struct._Vertices** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i32 0, i32 0
  %2 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  store %struct._Vertices* %2, %struct._Vertices** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._Vertices*, %struct._Vertices** %retval
  ret %struct._Vertices* %3
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @Insert(%struct._Heap** %h, %struct._Vertices* %i) #0 {
entry:
  %h.addr = alloca %struct._Heap**, align 8
  %i.addr = alloca %struct._Vertices*, align 8
  %h1 = alloca %struct._Heap*, align 8
  store %struct._Heap** %h, %struct._Heap*** %h.addr, align 8
  store %struct._Vertices* %i, %struct._Vertices** %i.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %i.addr, align 8
  %call = call %struct._Heap* @NewHeap(%struct._Vertices* %0)
  store %struct._Heap* %call, %struct._Heap** %h1, align 8
  %1 = load %struct._Heap**, %struct._Heap*** %h.addr, align 8
  %2 = load %struct._Heap*, %struct._Heap** %1, align 8
  %3 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %call1 = call %struct._Heap* @Meld(%struct._Heap* %2, %struct._Heap* %3)
  %4 = load %struct._Heap**, %struct._Heap*** %h.addr, align 8
  store %struct._Heap* %call1, %struct._Heap** %4, align 8
  %5 = load %struct._Heap*, %struct._Heap** %h1, align 8
  ret %struct._Heap* %5
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @NewHeap(%struct._Vertices* %i) #0 {
entry:
  %i.addr = alloca %struct._Vertices*, align 8
  %h = alloca %struct._Heap*, align 8
  store %struct._Vertices* %i, %struct._Vertices** %i.addr, align 8
  %call = call noalias i8* @malloc(i64 48) #4
  %0 = bitcast i8* %call to %struct._Heap*
  store %struct._Heap* %0, %struct._Heap** %h, align 8
  %1 = load %struct._Heap*, %struct._Heap** %h, align 8
  %cmp = icmp eq %struct._Heap* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._Vertices*, %struct._Vertices** %i.addr, align 8
  %4 = load %struct._Heap*, %struct._Heap** %h, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %4, i32 0, i32 0
  store %struct._Vertices* %3, %struct._Vertices** %item, align 8
  %5 = load %struct._Heap*, %struct._Heap** %h, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %5, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %parent, align 8
  %6 = load %struct._Heap*, %struct._Heap** %h, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %child, align 8
  %7 = load %struct._Heap*, %struct._Heap** %h, align 8
  %8 = load %struct._Heap*, %struct._Heap** %h, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 3
  store %struct._Heap* %7, %struct._Heap** %forward, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h, align 8
  %10 = load %struct._Heap*, %struct._Heap** %h, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 4
  store %struct._Heap* %9, %struct._Heap** %backward, align 8
  %11 = load %struct._Heap*, %struct._Heap** %h, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 5
  store i32 0, i32* %rank, align 4
  %12 = load %struct._Heap*, %struct._Heap** %h, align 8
  %marked = getelementptr inbounds %struct._Heap, %struct._Heap* %12, i32 0, i32 6
  store i16 0, i16* %marked, align 2
  %13 = load %struct._Heap*, %struct._Heap** %h, align 8
  ret %struct._Heap* %13
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @Meld(%struct._Heap* %h1, %struct._Heap* %h2) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h1.addr = alloca %struct._Heap*, align 8
  %h2.addr = alloca %struct._Heap*, align 8
  store %struct._Heap* %h1, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %h2, %struct._Heap** %h2.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %1, %struct._Heap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %cmp1 = icmp eq %struct._Heap* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  store %struct._Heap* %3, %struct._Heap** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %5 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  call void @CombineLists(%struct._Heap* %4, %struct._Heap* %5)
  %6 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 0
  %7 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  %8 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %item4 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 0
  %9 = load %struct._Vertices*, %struct._Vertices** %item4, align 8
  %call = call i32 @LessThan(%struct._Vertices* %7, %struct._Vertices* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %10, %struct._Heap** %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %11 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  store %struct._Heap* %11, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then.2, %if.then
  %12 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %12
}

; Function Attrs: nounwind uwtable
define void @CombineLists(%struct._Heap* %h1, %struct._Heap* %h2) #0 {
entry:
  %h1.addr = alloca %struct._Heap*, align 8
  %h2.addr = alloca %struct._Heap*, align 8
  %h = alloca %struct._Heap*, align 8
  store %struct._Heap* %h1, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %h2, %struct._Heap** %h2.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %0, %struct._Heap** %h, align 8
  %1 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %2 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 3
  %3 = load %struct._Heap*, %struct._Heap** %forward, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 4
  store %struct._Heap* %1, %struct._Heap** %backward, align 8
  %4 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %5 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %forward1 = getelementptr inbounds %struct._Heap, %struct._Heap* %5, i32 0, i32 3
  %6 = load %struct._Heap*, %struct._Heap** %forward1, align 8
  %backward2 = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 4
  store %struct._Heap* %4, %struct._Heap** %backward2, align 8
  %7 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %forward3 = getelementptr inbounds %struct._Heap, %struct._Heap* %7, i32 0, i32 3
  %8 = load %struct._Heap*, %struct._Heap** %forward3, align 8
  store %struct._Heap* %8, %struct._Heap** %h, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %forward4 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 3
  %10 = load %struct._Heap*, %struct._Heap** %forward4, align 8
  %11 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %forward5 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 3
  store %struct._Heap* %10, %struct._Heap** %forward5, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h, align 8
  %13 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %forward6 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 3
  store %struct._Heap* %12, %struct._Heap** %forward6, align 8
  ret void
}

declare i32 @LessThan(%struct._Vertices*, %struct._Vertices*) #1

; Function Attrs: nounwind uwtable
define %struct._Heap* @DeleteMin(%struct._Heap* %h) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  %r = alloca i32, align 4
  %rMax = alloca i32, align 4
  %j = alloca i32, align 4
  %h1 = alloca %struct._Heap*, align 8
  %h2 = alloca %struct._Heap*, align 8
  %h3 = alloca %struct._Heap*, align 8
  %min = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store i32 0, i32* %rMax, align 4
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Heap* null, %struct._Heap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %call = call %struct._Heap* @RemoveEntry(%struct._Heap* %1)
  store %struct._Heap* %call, %struct._Heap** %h1, align 8
  %2 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %cmp1 = icmp eq %struct._Heap* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %4 = bitcast %struct._Heap* %3 to i8*
  call void @free(i8* %4) #4
  store %struct._Heap* null, %struct._Heap** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %6 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 2
  %7 = load %struct._Heap*, %struct._Heap** %child, align 8
  %cmp4 = icmp eq %struct._Heap* %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child6 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %child6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %9 = load %struct._Heap*, %struct._Heap** %h1, align 8
  store %struct._Heap* %9, %struct._Heap** %h2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %10 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 3
  %11 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %11, %struct._Heap** %h3, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %13 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %forward8 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 3
  store %struct._Heap* %12, %struct._Heap** %forward8, align 8
  %14 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %15 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 4
  store %struct._Heap* %14, %struct._Heap** %backward, align 8
  %16 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %parent, align 8
  %17 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 5
  %18 = load i32, i32* %rank, align 4
  store i32 %18, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %do.body
  %19 = load i32, i32* %r, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom
  %20 = load %struct._Heap*, %struct._Heap** %arrayidx, align 8
  %cmp9 = icmp ne %struct._Heap* %20, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %r, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom10
  %22 = load %struct._Heap*, %struct._Heap** %arrayidx11, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 0
  %23 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  %24 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %item12 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 0
  %25 = load %struct._Vertices*, %struct._Vertices** %item12, align 8
  %call13 = call i32 @LessThan(%struct._Vertices* %23, %struct._Vertices* %25)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body
  %26 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom15
  %27 = load %struct._Heap*, %struct._Heap** %arrayidx16, align 8
  %28 = load %struct._Heap*, %struct._Heap** %h2, align 8
  call void @AddEntry(%struct._Heap* %27, %struct._Heap* %28)
  %29 = load i32, i32* %r, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom17
  %30 = load %struct._Heap*, %struct._Heap** %arrayidx18, align 8
  store %struct._Heap* %30, %struct._Heap** %h2, align 8
  br label %if.end.21

if.else:                                          ; preds = %while.body
  %31 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %32 = load i32, i32* %r, align 4
  %idxprom19 = sext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom19
  %33 = load %struct._Heap*, %struct._Heap** %arrayidx20, align 8
  call void @AddEntry(%struct._Heap* %31, %struct._Heap* %33)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.14
  %34 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom22
  store %struct._Heap* null, %struct._Heap** %arrayidx23, align 8
  %35 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %rank24 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i32 0, i32 5
  %36 = load i32, i32* %rank24, align 4
  store i32 %36, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %38 = load i32, i32* %r, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom25
  store %struct._Heap* %37, %struct._Heap** %arrayidx26, align 8
  %39 = load i32, i32* %r, align 4
  %40 = load i32, i32* %rMax, align 4
  %cmp27 = icmp sgt i32 %39, %40
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.end
  %41 = load i32, i32* %r, align 4
  store i32 %41, i32* %rMax, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %while.end
  %42 = load %struct._Heap*, %struct._Heap** %h3, align 8
  store %struct._Heap* %42, %struct._Heap** %h2, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  %43 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %44 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %cmp30 = icmp ne %struct._Heap* %43, %44
  br i1 %cmp30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child31 = getelementptr inbounds %struct._Heap, %struct._Heap* %45, i32 0, i32 2
  %46 = load %struct._Heap*, %struct._Heap** %child31, align 8
  %cmp32 = icmp ne %struct._Heap* %46, null
  br i1 %cmp32, label %if.then.33, label %if.end.74

if.then.33:                                       ; preds = %do.end
  %47 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child34 = getelementptr inbounds %struct._Heap, %struct._Heap* %47, i32 0, i32 2
  %48 = load %struct._Heap*, %struct._Heap** %child34, align 8
  store %struct._Heap* %48, %struct._Heap** %h2, align 8
  br label %do.body.35

do.body.35:                                       ; preds = %do.cond.70, %if.then.33
  %49 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %forward36 = getelementptr inbounds %struct._Heap, %struct._Heap* %49, i32 0, i32 3
  %50 = load %struct._Heap*, %struct._Heap** %forward36, align 8
  store %struct._Heap* %50, %struct._Heap** %h3, align 8
  %51 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %52 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %forward37 = getelementptr inbounds %struct._Heap, %struct._Heap* %52, i32 0, i32 3
  store %struct._Heap* %51, %struct._Heap** %forward37, align 8
  %53 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %54 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %backward38 = getelementptr inbounds %struct._Heap, %struct._Heap* %54, i32 0, i32 4
  store %struct._Heap* %53, %struct._Heap** %backward38, align 8
  %55 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %parent39 = getelementptr inbounds %struct._Heap, %struct._Heap* %55, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %parent39, align 8
  %56 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %rank40 = getelementptr inbounds %struct._Heap, %struct._Heap* %56, i32 0, i32 5
  %57 = load i32, i32* %rank40, align 4
  store i32 %57, i32* %r, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %if.end.60, %do.body.35
  %58 = load i32, i32* %r, align 4
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom42
  %59 = load %struct._Heap*, %struct._Heap** %arrayidx43, align 8
  %cmp44 = icmp ne %struct._Heap* %59, null
  br i1 %cmp44, label %while.body.45, label %while.end.64

while.body.45:                                    ; preds = %while.cond.41
  %60 = load i32, i32* %r, align 4
  %idxprom46 = sext i32 %60 to i64
  %arrayidx47 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom46
  %61 = load %struct._Heap*, %struct._Heap** %arrayidx47, align 8
  %item48 = getelementptr inbounds %struct._Heap, %struct._Heap* %61, i32 0, i32 0
  %62 = load %struct._Vertices*, %struct._Vertices** %item48, align 8
  %63 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %item49 = getelementptr inbounds %struct._Heap, %struct._Heap* %63, i32 0, i32 0
  %64 = load %struct._Vertices*, %struct._Vertices** %item49, align 8
  %call50 = call i32 @LessThan(%struct._Vertices* %62, %struct._Vertices* %64)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %while.body.45
  %65 = load i32, i32* %r, align 4
  %idxprom53 = sext i32 %65 to i64
  %arrayidx54 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom53
  %66 = load %struct._Heap*, %struct._Heap** %arrayidx54, align 8
  %67 = load %struct._Heap*, %struct._Heap** %h2, align 8
  call void @AddEntry(%struct._Heap* %66, %struct._Heap* %67)
  %68 = load i32, i32* %r, align 4
  %idxprom55 = sext i32 %68 to i64
  %arrayidx56 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom55
  %69 = load %struct._Heap*, %struct._Heap** %arrayidx56, align 8
  store %struct._Heap* %69, %struct._Heap** %h2, align 8
  br label %if.end.60

if.else.57:                                       ; preds = %while.body.45
  %70 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %71 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %71 to i64
  %arrayidx59 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom58
  %72 = load %struct._Heap*, %struct._Heap** %arrayidx59, align 8
  call void @AddEntry(%struct._Heap* %70, %struct._Heap* %72)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.52
  %73 = load i32, i32* %r, align 4
  %idxprom61 = sext i32 %73 to i64
  %arrayidx62 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom61
  store %struct._Heap* null, %struct._Heap** %arrayidx62, align 8
  %74 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %rank63 = getelementptr inbounds %struct._Heap, %struct._Heap* %74, i32 0, i32 5
  %75 = load i32, i32* %rank63, align 4
  store i32 %75, i32* %r, align 4
  br label %while.cond.41

while.end.64:                                     ; preds = %while.cond.41
  %76 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %77 = load i32, i32* %r, align 4
  %idxprom65 = sext i32 %77 to i64
  %arrayidx66 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom65
  store %struct._Heap* %76, %struct._Heap** %arrayidx66, align 8
  %78 = load i32, i32* %r, align 4
  %79 = load i32, i32* %rMax, align 4
  %cmp67 = icmp sgt i32 %78, %79
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.end.64
  %80 = load i32, i32* %r, align 4
  store i32 %80, i32* %rMax, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %while.end.64
  %81 = load %struct._Heap*, %struct._Heap** %h3, align 8
  store %struct._Heap* %81, %struct._Heap** %h2, align 8
  br label %do.cond.70

do.cond.70:                                       ; preds = %if.end.69
  %82 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %83 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child71 = getelementptr inbounds %struct._Heap, %struct._Heap* %83, i32 0, i32 2
  %84 = load %struct._Heap*, %struct._Heap** %child71, align 8
  %cmp72 = icmp ne %struct._Heap* %82, %84
  br i1 %cmp72, label %do.body.35, label %do.end.73

do.end.73:                                        ; preds = %do.cond.70
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.74
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %rMax, align 4
  %cmp75 = icmp sle i32 %85, %86
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %87 to i64
  %arrayidx77 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom76
  %88 = load %struct._Heap*, %struct._Heap** %arrayidx77, align 8
  %cmp78 = icmp ne %struct._Heap* %88, null
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body
  br label %for.end

if.end.80:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %89 = load i32, i32* %j, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.79, %for.cond
  %90 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %90 to i64
  %arrayidx82 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom81
  %91 = load %struct._Heap*, %struct._Heap** %arrayidx82, align 8
  store %struct._Heap* %91, %struct._Heap** %h1, align 8
  %92 = load %struct._Heap*, %struct._Heap** %h1, align 8
  store %struct._Heap* %92, %struct._Heap** %min, align 8
  %93 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %93 to i64
  %arrayidx84 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom83
  store %struct._Heap* null, %struct._Heap** %arrayidx84, align 8
  %94 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %94, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.108, %for.end
  %95 = load i32, i32* %j, align 4
  %96 = load i32, i32* %rMax, align 4
  %cmp87 = icmp sle i32 %95, %96
  br i1 %cmp87, label %for.body.88, label %for.end.110

for.body.88:                                      ; preds = %for.cond.86
  %97 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %97 to i64
  %arrayidx90 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom89
  %98 = load %struct._Heap*, %struct._Heap** %arrayidx90, align 8
  %cmp91 = icmp ne %struct._Heap* %98, null
  br i1 %cmp91, label %if.then.92, label %if.end.107

if.then.92:                                       ; preds = %for.body.88
  %99 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %100 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %100 to i64
  %arrayidx94 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom93
  %101 = load %struct._Heap*, %struct._Heap** %arrayidx94, align 8
  call void @CombineLists(%struct._Heap* %99, %struct._Heap* %101)
  %102 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %102 to i64
  %arrayidx96 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom95
  %103 = load %struct._Heap*, %struct._Heap** %arrayidx96, align 8
  %item97 = getelementptr inbounds %struct._Heap, %struct._Heap* %103, i32 0, i32 0
  %104 = load %struct._Vertices*, %struct._Vertices** %item97, align 8
  %105 = load %struct._Heap*, %struct._Heap** %min, align 8
  %item98 = getelementptr inbounds %struct._Heap, %struct._Heap* %105, i32 0, i32 0
  %106 = load %struct._Vertices*, %struct._Vertices** %item98, align 8
  %call99 = call i32 @LessThan(%struct._Vertices* %104, %struct._Vertices* %106)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.then.92
  %107 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %107 to i64
  %arrayidx103 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom102
  %108 = load %struct._Heap*, %struct._Heap** %arrayidx103, align 8
  store %struct._Heap* %108, %struct._Heap** %min, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.then.92
  %109 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %109 to i64
  %arrayidx106 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i32 0, i64 %idxprom105
  store %struct._Heap* null, %struct._Heap** %arrayidx106, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.104, %for.body.88
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %110 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %110, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.86

for.end.110:                                      ; preds = %for.cond.86
  %111 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %112 = bitcast %struct._Heap* %111 to i8*
  call void @free(i8* %112) #4
  %113 = load %struct._Heap*, %struct._Heap** %min, align 8
  store %struct._Heap* %113, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %for.end.110, %if.then.2, %if.then
  %114 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %114
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @RemoveEntry(%struct._Heap* %h) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i32 0, i32 3
  %2 = load %struct._Heap*, %struct._Heap** %forward, align 8
  %cmp = icmp eq %struct._Heap* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 2
  %4 = load %struct._Heap*, %struct._Heap** %child, align 8
  store %struct._Heap* %4, %struct._Heap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %5, i32 0, i32 4
  %6 = load %struct._Heap*, %struct._Heap** %backward, align 8
  %7 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %forward1 = getelementptr inbounds %struct._Heap, %struct._Heap* %7, i32 0, i32 3
  %8 = load %struct._Heap*, %struct._Heap** %forward1, align 8
  %backward2 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 4
  store %struct._Heap* %6, %struct._Heap** %backward2, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %forward3 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 3
  %10 = load %struct._Heap*, %struct._Heap** %forward3, align 8
  %11 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %backward4 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 4
  %12 = load %struct._Heap*, %struct._Heap** %backward4, align 8
  %forward5 = getelementptr inbounds %struct._Heap, %struct._Heap* %12, i32 0, i32 3
  store %struct._Heap* %10, %struct._Heap** %forward5, align 8
  %13 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %forward6 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 3
  %14 = load %struct._Heap*, %struct._Heap** %forward6, align 8
  store %struct._Heap* %14, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %15
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @AddEntry(%struct._Heap* %h1, %struct._Heap* %h2) #0 {
entry:
  %h1.addr = alloca %struct._Heap*, align 8
  %h2.addr = alloca %struct._Heap*, align 8
  store %struct._Heap* %h1, %struct._Heap** %h1.addr, align 8
  store %struct._Heap* %h2, %struct._Heap** %h2.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i32 0, i32 2
  %1 = load %struct._Heap*, %struct._Heap** %child, align 8
  %cmp = icmp eq %struct._Heap* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %3 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %child1 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 2
  store %struct._Heap* %2, %struct._Heap** %child1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %child2 = getelementptr inbounds %struct._Heap, %struct._Heap* %4, i32 0, i32 2
  %5 = load %struct._Heap*, %struct._Heap** %child2, align 8
  %6 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  call void @CombineLists(%struct._Heap* %5, %struct._Heap* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %8 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 1
  store %struct._Heap* %7, %struct._Heap** %parent, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 5
  %10 = load i32, i32* %rank, align 4
  %11 = load %struct._Heap*, %struct._Heap** %h2.addr, align 8
  %rank3 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 5
  %12 = load i32, i32* %rank3, align 4
  %add = add nsw i32 %10, %12
  %add4 = add nsw i32 %add, 1
  %13 = load %struct._Heap*, %struct._Heap** %h1.addr, align 8
  %rank5 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 5
  store i32 %add4, i32* %rank5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @DecreaseKey(%struct._Heap* %h, %struct._Heap* %i, i32 %delta) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  %i.addr = alloca %struct._Heap*, align 8
  %delta.addr = alloca i32, align 4
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %i, %struct._Heap** %i.addr, align 8
  store i32 %delta, i32* %delta.addr, align 4
  %0 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i32 0, i32 1
  %1 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %cmp = icmp eq %struct._Heap* %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  call void @RemoveChild(%struct._Heap* %2)
  %3 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %4 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  call void @CombineLists(%struct._Heap* %3, %struct._Heap* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %5, i32 0, i32 0
  %6 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  %7 = load i32, i32* %delta.addr, align 4
  %call = call %struct._Vertices* @Subtract(%struct._Vertices* %6, i32 %7)
  %8 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %item1 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 0
  store %struct._Vertices* %call, %struct._Vertices** %item1, align 8
  %9 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %item2 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 0
  %10 = load %struct._Vertices*, %struct._Vertices** %item2, align 8
  %11 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %item3 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 0
  %12 = load %struct._Vertices*, %struct._Vertices** %item3, align 8
  %call4 = call i32 @LessThan(%struct._Vertices* %10, %struct._Vertices* %12)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  store %struct._Heap* %13, %struct._Heap** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %14 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %14, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5
  %15 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %15
}

; Function Attrs: nounwind uwtable
define void @RemoveChild(%struct._Heap* %i) #0 {
entry:
  %i.addr = alloca %struct._Heap*, align 8
  %parent = alloca %struct._Heap*, align 8
  store %struct._Heap* %i, %struct._Heap** %i.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %parent1 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i32 0, i32 1
  %1 = load %struct._Heap*, %struct._Heap** %parent1, align 8
  store %struct._Heap* %1, %struct._Heap** %parent, align 8
  %2 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 2
  %3 = load %struct._Heap*, %struct._Heap** %child, align 8
  %4 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %cmp = icmp eq %struct._Heap* %3, %4
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %6 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 3
  %7 = load %struct._Heap*, %struct._Heap** %forward, align 8
  %cmp2 = icmp eq %struct._Heap* %5, %7
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %child4 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %child4, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %forward5 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 3
  %10 = load %struct._Heap*, %struct._Heap** %forward5, align 8
  %11 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %child6 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i32 0, i32 2
  store %struct._Heap* %10, %struct._Heap** %child6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %12 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %call = call %struct._Heap* @RemoveEntry(%struct._Heap* %12)
  %13 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %14 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %14, i32 0, i32 5
  %15 = load i32, i32* %rank, align 4
  %add = add nsw i32 %15, 1
  call void @FixRank(%struct._Heap* %13, i32 %add)
  %16 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %17 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %forward8 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 3
  store %struct._Heap* %16, %struct._Heap** %forward8, align 8
  %18 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %19 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 4
  store %struct._Heap* %18, %struct._Heap** %backward, align 8
  %20 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %parent9 = getelementptr inbounds %struct._Heap, %struct._Heap* %20, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %parent9, align 8
  ret void
}

declare %struct._Vertices* @Subtract(%struct._Vertices*, i32) #1

; Function Attrs: nounwind uwtable
define void @FixRank(%struct._Heap* %h, i32 %delta) #0 {
entry:
  %h.addr = alloca %struct._Heap*, align 8
  %delta.addr = alloca i32, align 4
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store i32 %delta, i32* %delta.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i32 0, i32 5
  %1 = load i32, i32* %rank, align 4
  %2 = load i32, i32* %delta.addr, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %rank1 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 5
  store i32 %sub, i32* %rank1, align 4
  %4 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %4, i32 0, i32 1
  %5 = load %struct._Heap*, %struct._Heap** %parent, align 8
  store %struct._Heap* %5, %struct._Heap** %h.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp ne %struct._Heap* %6, null
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @Delete(%struct._Heap* %h, %struct._Heap* %i) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  %i.addr = alloca %struct._Heap*, align 8
  %h1 = alloca %struct._Heap*, align 8
  %h2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %i, %struct._Heap** %i.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %1 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %call = call %struct._Heap* @DeleteMin(%struct._Heap* %2)
  store %struct._Heap* %call, %struct._Heap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %parent = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 1
  %4 = load %struct._Heap*, %struct._Heap** %parent, align 8
  %cmp1 = icmp eq %struct._Heap* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %call3 = call %struct._Heap* @RemoveEntry(%struct._Heap* %5)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %6 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  call void @RemoveChild(%struct._Heap* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %7 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %7, i32 0, i32 2
  %8 = load %struct._Heap*, %struct._Heap** %child, align 8
  store %struct._Heap* %8, %struct._Heap** %h1, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %cmp5 = icmp ne %struct._Heap* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.6
  %10 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 3
  %11 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %11, %struct._Heap** %h2, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %13 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward7 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 3
  store %struct._Heap* %12, %struct._Heap** %forward7, align 8
  %14 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %15 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %backward = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 4
  store %struct._Heap* %14, %struct._Heap** %backward, align 8
  %16 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %parent8 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %parent8, align 8
  %17 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %18 = load %struct._Heap*, %struct._Heap** %h1, align 8
  call void @CombineLists(%struct._Heap* %17, %struct._Heap* %18)
  %19 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 0
  %20 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  %21 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %item9 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 0
  %22 = load %struct._Vertices*, %struct._Vertices** %item9, align 8
  %call10 = call i32 @LessThan(%struct._Vertices* %20, %struct._Vertices* %22)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  %23 = load %struct._Heap*, %struct._Heap** %h1, align 8
  store %struct._Heap* %23, %struct._Heap** %h.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.body
  %24 = load %struct._Heap*, %struct._Heap** %h2, align 8
  store %struct._Heap* %24, %struct._Heap** %h1, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %25 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %26 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %child13 = getelementptr inbounds %struct._Heap, %struct._Heap* %26, i32 0, i32 2
  %27 = load %struct._Heap*, %struct._Heap** %child13, align 8
  %cmp14 = icmp ne %struct._Heap* %25, %27
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end.4
  %28 = load %struct._Heap*, %struct._Heap** %i.addr, align 8
  %29 = bitcast %struct._Heap* %28 to i8*
  call void @free(i8* %29) #4
  %30 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %30, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %31 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %31
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct._Vertices* @ItemOf(%struct._Heap* %h) #0 {
entry:
  %h.addr = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i32 0, i32 0
  %1 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  ret %struct._Vertices* %1
}

; Function Attrs: nounwind uwtable
define %struct._Heap* @Find(%struct._Heap* %h, %struct._Vertices* %item) #0 {
entry:
  %retval = alloca %struct._Heap*, align 8
  %h.addr = alloca %struct._Heap*, align 8
  %item.addr = alloca %struct._Vertices*, align 8
  %h1 = alloca %struct._Heap*, align 8
  %h2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store %struct._Vertices* %item, %struct._Vertices** %item.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Heap* null, %struct._Heap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %1, %struct._Heap** %h1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %item1 = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 0
  %3 = load %struct._Vertices*, %struct._Vertices** %item1, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  %call = call i32 @Equal(%struct._Vertices* %3, %struct._Vertices* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  %5 = load %struct._Heap*, %struct._Heap** %h1, align 8
  store %struct._Heap* %5, %struct._Heap** %retval
  br label %return

if.else:                                          ; preds = %do.body
  %6 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %item3 = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 0
  %7 = load %struct._Vertices*, %struct._Vertices** %item3, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  %call4 = call i32 @LessThan(%struct._Vertices* %7, %struct._Vertices* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.else
  %9 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 2
  %10 = load %struct._Heap*, %struct._Heap** %child, align 8
  %11 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  %call7 = call %struct._Heap* @Find(%struct._Heap* %10, %struct._Vertices* %11)
  store %struct._Heap* %call7, %struct._Heap** %h2, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %cmp8 = icmp ne %struct._Heap* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %13 = load %struct._Heap*, %struct._Heap** %h2, align 8
  store %struct._Heap* %13, %struct._Heap** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11
  %14 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %14, i32 0, i32 3
  %15 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %15, %struct._Heap** %h1, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %16 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %17 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp13 = icmp ne %struct._Heap* %16, %17
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct._Heap* null, %struct._Heap** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.9, %if.then.2, %if.then
  %18 = load %struct._Heap*, %struct._Heap** %retval
  ret %struct._Heap* %18
}

declare i32 @Equal(%struct._Vertices*, %struct._Vertices*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
