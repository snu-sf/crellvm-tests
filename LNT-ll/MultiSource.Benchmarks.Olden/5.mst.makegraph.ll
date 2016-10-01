; ModuleID = './MultiSource.Benchmarks.Olden/5.mst.makegraph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_st = type { [1 x %struct.vert_st*] }
%struct.vert_st = type { i32, %struct.vert_st*, %struct.hash* }
%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }

@.str = private unnamed_addr constant [14 x i8] c"Make phase 2\0A\00", align 1
@HashRange = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Make phase 3\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Make phase 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Make returning\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.graph_st* @MakeGraph(i32 %numvert, i32 %numproc) #0 {
entry:
  %numvert.addr = alloca i32, align 4
  %numproc.addr = alloca i32, align 4
  %perproc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count1 = alloca i32, align 4
  %v = alloca %struct.vert_st*, align 8
  %tmp = alloca %struct.vert_st*, align 8
  %block = alloca %struct.vert_st*, align 8
  %retval3 = alloca %struct.graph_st*, align 8
  store i32 %numvert, i32* %numvert.addr, align 4
  store i32 %numproc, i32* %numproc.addr, align 4
  %0 = load i32, i32* %numvert.addr, align 4
  %1 = load i32, i32* %numproc.addr, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %perproc, align 4
  %call = call noalias i8* @malloc(i64 8) #3
  %2 = bitcast i8* %call to %struct.graph_st*
  store %struct.graph_st* %2, %struct.graph_st** %retval3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.graph_st*, %struct.graph_st** %retval3, align 8
  %vlist = getelementptr inbounds %struct.graph_st, %struct.graph_st* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist, i32 0, i64 %idxprom
  store %struct.vert_st* null, %struct.vert_st** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %7 = load i32, i32* %numproc.addr, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.24, %for.end
  %8 = load i32, i32* %j, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.5
  %9 = load i32, i32* %perproc, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 24
  %call8 = call noalias i8* @malloc(i64 %mul) #3
  %10 = bitcast i8* %call8 to %struct.vert_st*
  store %struct.vert_st* %10, %struct.vert_st** %block, align 8
  store %struct.vert_st* null, %struct.vert_st** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.18, %for.body.7
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %perproc, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.9
  %13 = load %struct.vert_st*, %struct.vert_st** %block, align 8
  %14 = load i32, i32* %perproc, align 4
  %15 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %14, %15
  %sub14 = sub nsw i32 %sub13, 1
  %idx.ext = sext i32 %sub14 to i64
  %add.ptr = getelementptr inbounds %struct.vert_st, %struct.vert_st* %13, i64 %idx.ext
  store %struct.vert_st* %add.ptr, %struct.vert_st** %tmp, align 8
  %16 = load i32, i32* %numvert.addr, align 4
  %div15 = sdiv i32 %16, 4
  store i32 %div15, i32* @HashRange, align 4
  %17 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %mindist = getelementptr inbounds %struct.vert_st, %struct.vert_st* %17, i32 0, i32 0
  store i32 9999999, i32* %mindist, align 4
  %18 = load i32, i32* %numvert.addr, align 4
  %div16 = sdiv i32 %18, 4
  %call17 = call %struct.hash* @MakeHash(i32 %div16, i32 (i32)* @hashfunc)
  %19 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %edgehash = getelementptr inbounds %struct.vert_st, %struct.vert_st* %19, i32 0, i32 2
  store %struct.hash* %call17, %struct.hash** %edgehash, align 8
  %20 = load %struct.vert_st*, %struct.vert_st** %v, align 8
  %21 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %next = getelementptr inbounds %struct.vert_st, %struct.vert_st* %21, i32 0, i32 1
  store %struct.vert_st* %20, %struct.vert_st** %next, align 8
  %22 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  store %struct.vert_st* %22, %struct.vert_st** %v, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %23 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.9

for.end.20:                                       ; preds = %for.cond.9
  %24 = load %struct.vert_st*, %struct.vert_st** %v, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load %struct.graph_st*, %struct.graph_st** %retval3, align 8
  %vlist22 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %26, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist22, i32 0, i64 %idxprom21
  store %struct.vert_st* %24, %struct.vert_st** %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.20
  %27 = load i32, i32* %j, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %28 = load i32, i32* %numproc.addr, align 4
  %sub27 = sub nsw i32 %28, 1
  store i32 %sub27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.33, %for.end.25
  %29 = load i32, i32* %j, align 4
  %cmp29 = icmp sge i32 %29, 0
  br i1 %cmp29, label %for.body.31, label %for.end.35

for.body.31:                                      ; preds = %for.cond.28
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %perproc, align 4
  %mul32 = mul nsw i32 %30, %31
  store i32 %mul32, i32* %count1, align 4
  %32 = load i32, i32* %count1, align 4
  %33 = load %struct.graph_st*, %struct.graph_st** %retval3, align 8
  %34 = load i32, i32* %numproc.addr, align 4
  %35 = load i32, i32* %perproc, align 4
  %36 = load i32, i32* %numvert.addr, align 4
  %37 = load i32, i32* %j, align 4
  call void @AddEdges(i32 %32, %struct.graph_st* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.31
  %38 = load i32, i32* %j, align 4
  %dec34 = add nsw i32 %38, -1
  store i32 %dec34, i32* %j, align 4
  br label %for.cond.28

for.end.35:                                       ; preds = %for.cond.28
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %39 = load %struct.graph_st*, %struct.graph_st** %retval3, align 8
  ret %struct.graph_st* %39
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

declare %struct.hash* @MakeHash(i32, i32 (i32)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hashfunc(i32 %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %shr = lshr i32 %0, 3
  %1 = load i32, i32* @HashRange, align 4
  %rem = urem i32 %shr, %1
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define internal void @AddEdges(i32 %count1, %struct.graph_st* %retval, i32 %numproc, i32 %perproc, i32 %numvert, i32 %j) #0 {
entry:
  %count1.addr = alloca i32, align 4
  %retval.addr = alloca %struct.graph_st*, align 8
  %numproc.addr = alloca i32, align 4
  %perproc.addr = alloca i32, align 4
  %numvert.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca %struct.vert_st*, align 8
  %helper = alloca [1 x %struct.vert_st*], align 8
  %i = alloca i32, align 4
  %pn = alloca i32, align 4
  %offset = alloca i32, align 4
  %dist = alloca i32, align 4
  %dest = alloca %struct.vert_st*, align 8
  %hash = alloca %struct.hash*, align 8
  store i32 %count1, i32* %count1.addr, align 4
  store %struct.graph_st* %retval, %struct.graph_st** %retval.addr, align 8
  store i32 %numproc, i32* %numproc.addr, align 4
  store i32 %perproc, i32* %perproc.addr, align 4
  store i32 %numvert, i32* %numvert.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numproc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.graph_st*, %struct.graph_st** %retval.addr, align 8
  %vlist = getelementptr inbounds %struct.graph_st, %struct.graph_st* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist, i32 0, i64 %idxprom
  %4 = load %struct.vert_st*, %struct.vert_st** %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %helper, i32 0, i64 %idxprom3
  store %struct.vert_st* %4, %struct.vert_st** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %j.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.graph_st*, %struct.graph_st** %retval.addr, align 8
  %vlist6 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %vlist6, i32 0, i64 %idxprom5
  %9 = load %struct.vert_st*, %struct.vert_st** %arrayidx7, align 8
  store %struct.vert_st* %9, %struct.vert_st** %tmp, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.25, %for.end
  %10 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %tobool = icmp ne %struct.vert_st* %10, null
  br i1 %tobool, label %for.body.9, label %for.end.26

for.body.9:                                       ; preds = %for.cond.8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.body.9
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %numproc.addr, align 4
  %13 = load i32, i32* %perproc.addr, align 4
  %mul = mul nsw i32 %12, %13
  %cmp11 = icmp slt i32 %11, %mul
  br i1 %cmp11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %count1.addr, align 4
  %cmp18 = icmp ne i32 %14, %15
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %count1.addr, align 4
  %18 = load i32, i32* %numvert.addr, align 4
  %call = call i32 @compute_dist(i32 %16, i32 %17, i32 %18)
  store i32 %call, i32* %dist, align 4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %perproc.addr, align 4
  %div = sdiv i32 %19, %20
  store i32 %div, i32* %pn, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %perproc.addr, align 4
  %rem = srem i32 %21, %22
  store i32 %rem, i32* %offset, align 4
  %23 = load i32, i32* %pn, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %helper, i32 0, i64 %idxprom19
  %24 = load %struct.vert_st*, %struct.vert_st** %arrayidx20, align 8
  %25 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds %struct.vert_st, %struct.vert_st* %24, i64 %idx.ext
  store %struct.vert_st* %add.ptr, %struct.vert_st** %dest, align 8
  %26 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %edgehash = getelementptr inbounds %struct.vert_st, %struct.vert_st* %26, i32 0, i32 2
  %27 = load %struct.hash*, %struct.hash** %edgehash, align 8
  store %struct.hash* %27, %struct.hash** %hash, align 8
  %28 = load i32, i32* %dist, align 4
  %conv = sext i32 %28 to i64
  %29 = inttoptr i64 %conv to i8*
  %30 = load %struct.vert_st*, %struct.vert_st** %dest, align 8
  %31 = ptrtoint %struct.vert_st* %30 to i32
  %32 = load %struct.hash*, %struct.hash** %hash, align 8
  call void @HashInsert(i8* %29, i32 %31, %struct.hash* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %33, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  %34 = load i32, i32* %count1.addr, align 4
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %count1.addr, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.23
  %35 = load %struct.vert_st*, %struct.vert_st** %tmp, align 8
  %next = getelementptr inbounds %struct.vert_st, %struct.vert_st* %35, i32 0, i32 1
  %36 = load %struct.vert_st*, %struct.vert_st** %next, align 8
  store %struct.vert_st* %36, %struct.vert_st** %tmp, align 8
  br label %for.cond.8

for.end.26:                                       ; preds = %for.cond.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_dist(i32 %i, i32 %j, i32 %numvert) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %numvert.addr = alloca i32, align 4
  %less = alloca i32, align 4
  %gt = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %numvert, i32* %numvert.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i.addr, align 4
  store i32 %2, i32* %less, align 4
  %3 = load i32, i32* %j.addr, align 4
  store i32 %3, i32* %gt, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %j.addr, align 4
  store i32 %4, i32* %less, align 4
  %5 = load i32, i32* %i.addr, align 4
  store i32 %5, i32* %gt, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %less, align 4
  %7 = load i32, i32* %numvert.addr, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %gt, align 4
  %add = add nsw i32 %mul, %8
  %call = call i32 @random2(i32 %add)
  %rem = srem i32 %call, 2048
  %add1 = add nsw i32 %rem, 1
  ret i32 %add1
}

declare void @HashInsert(i8*, i32, %struct.hash*) #2

; Function Attrs: nounwind uwtable
define internal i32 @random2(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %call = call i32 @mult(i32 %0, i32 31415821)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %tmp, align 4
  %1 = load i32, i32* %tmp, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @mult(i32 %p, i32 %q) #0 {
entry:
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p0 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %q0 = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %div = sdiv i32 %0, 10000
  store i32 %div, i32* %p1, align 4
  %1 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %1, 10000
  store i32 %rem, i32* %p0, align 4
  %2 = load i32, i32* %q.addr, align 4
  %div1 = sdiv i32 %2, 10000
  store i32 %div1, i32* %q1, align 4
  %3 = load i32, i32* %q.addr, align 4
  %rem2 = srem i32 %3, 10000
  store i32 %rem2, i32* %q0, align 4
  %4 = load i32, i32* %p0, align 4
  %5 = load i32, i32* %q1, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %p1, align 4
  %7 = load i32, i32* %q0, align 4
  %mul3 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, %mul3
  %rem4 = srem i32 %add, 10000
  %mul5 = mul nsw i32 %rem4, 10000
  %8 = load i32, i32* %p0, align 4
  %9 = load i32, i32* %q0, align 4
  %mul6 = mul nsw i32 %8, %9
  %add7 = add nsw i32 %mul5, %mul6
  ret i32 %add7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
