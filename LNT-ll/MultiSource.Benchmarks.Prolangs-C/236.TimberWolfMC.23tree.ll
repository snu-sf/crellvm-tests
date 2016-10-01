; ModuleID = './MultiSource.Benchmarks.Prolangs-C/236.TimberWolfMC.23tree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@.str = private unnamed_addr constant [14 x i8] c"Error Type 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Error Type 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Error Type 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"value: %d  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind uwtable
define void @tprint(%struct.tnode* %v) #0 {
entry:
  %v.addr = alloca %struct.tnode*, align 8
  %qbot = alloca i32, align 4
  %qtop = alloca i32, align 4
  %node = alloca %struct.tnode*, align 8
  %q = alloca %struct.tnode**, align 8
  %f = alloca %struct.tnode*, align 8
  store %struct.tnode* %v, %struct.tnode** %v.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %cmp = icmp eq %struct.tnode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %qtop, align 4
  store i32 0, i32* %qbot, align 4
  %call = call noalias i8* @malloc(i64 80008) #3
  %1 = bitcast i8* %call to %struct.tnode**
  store %struct.tnode** %1, %struct.tnode*** %q, align 8
  %2 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %3 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx = getelementptr inbounds %struct.tnode*, %struct.tnode** %3, i64 0
  store %struct.tnode* %2, %struct.tnode** %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end
  %4 = load i32, i32* %qtop, align 4
  %5 = load i32, i32* %qbot, align 4
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %qbot, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %qbot, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx2 = getelementptr inbounds %struct.tnode*, %struct.tnode** %7, i64 %idxprom
  %8 = load %struct.tnode*, %struct.tnode** %arrayidx2, align 8
  store %struct.tnode* %8, %struct.tnode** %node, align 8
  call void @tdump(%struct.tnode* %8)
  %9 = load %struct.tnode*, %struct.tnode** %node, align 8
  %10 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %cmp3 = icmp ne %struct.tnode* %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.29

if.then.4:                                        ; preds = %while.body
  %11 = load %struct.tnode*, %struct.tnode** %node, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 6
  %12 = load %struct.tnode*, %struct.tnode** %father, align 8
  store %struct.tnode* %12, %struct.tnode** %f, align 8
  %13 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 2
  %14 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %15 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp5 = icmp ne %struct.tnode* %14, %15
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.then.4
  %16 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %16, i32 0, i32 3
  %17 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %18 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp6 = icmp ne %struct.tnode* %17, %18
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.11

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %19 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 4
  %20 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %21 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp8 = icmp ne %struct.tnode* %20, %21
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true.7, %land.lhs.true, %if.then.4
  %22 = load %struct.tnode*, %struct.tnode** %node, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 1
  %23 = load i32, i32* %nsons, align 4
  %cmp12 = icmp ne i32 %23, 0
  br i1 %cmp12, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %if.end.11
  %24 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son114 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 2
  %25 = load %struct.tnode*, %struct.tnode** %son114, align 8
  %father15 = getelementptr inbounds %struct.tnode, %struct.tnode* %25, i32 0, i32 6
  %26 = load %struct.tnode*, %struct.tnode** %father15, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %26, i32 0, i32 7
  %27 = load i32, i32* %Lval, align 4
  %28 = load %struct.tnode*, %struct.tnode** %node, align 8
  %Lval16 = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 7
  %29 = load i32, i32* %Lval16, align 4
  %cmp17 = icmp ne i32 %27, %29
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.13
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.13
  %30 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son121 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 2
  %31 = load %struct.tnode*, %struct.tnode** %son121, align 8
  %father22 = getelementptr inbounds %struct.tnode, %struct.tnode* %31, i32 0, i32 6
  %32 = load %struct.tnode*, %struct.tnode** %father22, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 8
  %33 = load i32, i32* %Mval, align 4
  %34 = load %struct.tnode*, %struct.tnode** %node, align 8
  %Mval23 = getelementptr inbounds %struct.tnode, %struct.tnode* %34, i32 0, i32 8
  %35 = load i32, i32* %Mval23, align 4
  %cmp24 = icmp ne i32 %33, %35
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.11
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %while.body
  %36 = load %struct.tnode*, %struct.tnode** %node, align 8
  %nsons30 = getelementptr inbounds %struct.tnode, %struct.tnode* %36, i32 0, i32 1
  %37 = load i32, i32* %nsons30, align 4
  %cmp31 = icmp sgt i32 %37, 0
  br i1 %cmp31, label %if.then.32, label %if.end.49

if.then.32:                                       ; preds = %if.end.29
  %38 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son133 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 2
  %39 = load %struct.tnode*, %struct.tnode** %son133, align 8
  %40 = load i32, i32* %qtop, align 4
  %inc34 = add nsw i32 %40, 1
  store i32 %inc34, i32* %qtop, align 4
  %idxprom35 = sext i32 %inc34 to i64
  %41 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx36 = getelementptr inbounds %struct.tnode*, %struct.tnode** %41, i64 %idxprom35
  store %struct.tnode* %39, %struct.tnode** %arrayidx36, align 8
  %42 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son237 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 3
  %43 = load %struct.tnode*, %struct.tnode** %son237, align 8
  %44 = load i32, i32* %qtop, align 4
  %inc38 = add nsw i32 %44, 1
  store i32 %inc38, i32* %qtop, align 4
  %idxprom39 = sext i32 %inc38 to i64
  %45 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx40 = getelementptr inbounds %struct.tnode*, %struct.tnode** %45, i64 %idxprom39
  store %struct.tnode* %43, %struct.tnode** %arrayidx40, align 8
  %46 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son341 = getelementptr inbounds %struct.tnode, %struct.tnode* %46, i32 0, i32 4
  %47 = load %struct.tnode*, %struct.tnode** %son341, align 8
  %cmp42 = icmp ne %struct.tnode* %47, null
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.then.32
  %48 = load %struct.tnode*, %struct.tnode** %node, align 8
  %son344 = getelementptr inbounds %struct.tnode, %struct.tnode* %48, i32 0, i32 4
  %49 = load %struct.tnode*, %struct.tnode** %son344, align 8
  %50 = load i32, i32* %qtop, align 4
  %inc45 = add nsw i32 %50, 1
  store i32 %inc45, i32* %qtop, align 4
  %idxprom46 = sext i32 %inc45 to i64
  %51 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %arrayidx47 = getelementptr inbounds %struct.tnode*, %struct.tnode** %51, i64 %idxprom46
  store %struct.tnode* %49, %struct.tnode** %arrayidx47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.then.32
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.tnode**, %struct.tnode*** %q, align 8
  %53 = bitcast %struct.tnode** %52 to i8*
  call void @free(i8* %53) #3
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @tdump(%struct.tnode* %node) #0 {
entry:
  %node.addr = alloca %struct.tnode*, align 8
  %plptr = alloca %struct.plist*, align 8
  store %struct.tnode* %node, %struct.tnode** %node.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %0 = load %struct.tnode*, %struct.tnode** %node.addr, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %0, i32 0, i32 1
  %1 = load i32, i32* %nsons, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tnode*, %struct.tnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.tnode, %struct.tnode* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %3)
  %4 = load %struct.tnode*, %struct.tnode** %node.addr, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 9
  %5 = load %struct.plist*, %struct.plist** %plist, align 8
  store %struct.plist* %5, %struct.plist** %plptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp2 = icmp ne %struct.plist* %6, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property = getelementptr inbounds %struct.plist, %struct.plist* %7, i32 0, i32 0
  %8 = load i32, i32* %property, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %9, i32 0, i32 1
  %10 = load %struct.plist*, %struct.plist** %pnext, align 8
  store %struct.plist* %10, %struct.plist** %plptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @tmin(%struct.tnode* %root, %struct.tnode** %node, i32* %value, i32* %property) #0 {
entry:
  %root.addr = alloca %struct.tnode*, align 8
  %node.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32*, align 8
  %property.addr = alloca i32*, align 8
  %v = alloca %struct.tnode*, align 8
  store %struct.tnode* %root, %struct.tnode** %root.addr, align 8
  store %struct.tnode** %node, %struct.tnode*** %node.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  store i32* %property, i32** %property.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %root.addr, align 8
  store %struct.tnode* %0, %struct.tnode** %v, align 8
  %1 = load %struct.tnode*, %struct.tnode** %v, align 8
  %cmp = icmp eq %struct.tnode* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* null, %struct.tnode** %2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %3 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 2
  %4 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %cmp1 = icmp ne %struct.tnode* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son12 = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 2
  %6 = load %struct.tnode*, %struct.tnode** %son12, align 8
  store %struct.tnode* %6, %struct.tnode** %v, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.tnode*, %struct.tnode** %v, align 8
  %8 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* %7, %struct.tnode** %8, align 8
  %9 = load %struct.tnode*, %struct.tnode** %v, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 0
  %10 = load i32, i32* %value3, align 4
  %11 = load i32*, i32** %value.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.tnode*, %struct.tnode** %v, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 9
  %13 = load %struct.plist*, %struct.plist** %plist, align 8
  %property4 = getelementptr inbounds %struct.plist, %struct.plist* %13, i32 0, i32 0
  %14 = load i32, i32* %property4, align 4
  %15 = load i32*, i32** %property.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tpop(%struct.tnode** %root, %struct.tnode** %node, i32* %value, i32* %property) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %node.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32*, align 8
  %property.addr = alloca i32*, align 8
  %v = alloca %struct.tnode*, align 8
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store %struct.tnode** %node, %struct.tnode*** %node.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  store i32* %property, i32** %property.addr, align 8
  %0 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %1 = load %struct.tnode*, %struct.tnode** %0, align 8
  store %struct.tnode* %1, %struct.tnode** %v, align 8
  %2 = load %struct.tnode*, %struct.tnode** %v, align 8
  %cmp = icmp eq %struct.tnode* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* null, %struct.tnode** %3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %4 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 2
  %5 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %cmp1 = icmp ne %struct.tnode* %5, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son12 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 2
  %7 = load %struct.tnode*, %struct.tnode** %son12, align 8
  store %struct.tnode* %7, %struct.tnode** %v, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.tnode*, %struct.tnode** %v, align 8
  %9 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* %8, %struct.tnode** %9, align 8
  %10 = load %struct.tnode*, %struct.tnode** %v, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 0
  %11 = load i32, i32* %value3, align 4
  %12 = load i32*, i32** %value.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.tnode*, %struct.tnode** %v, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 9
  %14 = load %struct.plist*, %struct.plist** %plist, align 8
  %property4 = getelementptr inbounds %struct.plist, %struct.plist* %14, i32 0, i32 0
  %15 = load i32, i32* %property4, align 4
  %16 = load i32*, i32** %property.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %18 = load i32*, i32** %value.addr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %property.addr, align 8
  %21 = load i32, i32* %20, align 4
  call void @tdelete(%struct.tnode** %17, i32 %19, i32 %21)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tdelete(%struct.tnode** %root, i32 %value, i32 %property) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32, align 4
  %property.addr = alloca i32, align 4
  %f = alloca %struct.tnode*, align 8
  %l = alloca %struct.tnode*, align 8
  %g = alloca %struct.tnode*, align 8
  %s = alloca %struct.tnode*, align 8
  %plptr = alloca %struct.plist*, align 8
  %prevptr = alloca %struct.plist*, align 8
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %property, i32* %property.addr, align 4
  %0 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %1 = load %struct.tnode*, %struct.tnode** %0, align 8
  %cmp = icmp eq %struct.tnode* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.371

if.else:                                          ; preds = %entry
  %2 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %3 = load %struct.tnode*, %struct.tnode** %2, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 1
  %4 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else.16

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %6 = load %struct.tnode*, %struct.tnode** %5, align 8
  %7 = load i32, i32* %property.addr, align 4
  %call = call %struct.plist* @pfind(%struct.tnode* %6, i32 %7, %struct.plist** %prevptr)
  store %struct.plist* %call, %struct.plist** %plptr, align 8
  %8 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp3 = icmp ne %struct.plist* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.then.2
  %9 = load %struct.plist*, %struct.plist** %prevptr, align 8
  %cmp5 = icmp ne %struct.plist* %9, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %10, i32 0, i32 1
  %11 = load %struct.plist*, %struct.plist** %pnext, align 8
  %12 = load %struct.plist*, %struct.plist** %prevptr, align 8
  %pnext7 = getelementptr inbounds %struct.plist, %struct.plist* %12, i32 0, i32 1
  store %struct.plist* %11, %struct.plist** %pnext7, align 8
  %13 = load %struct.plist*, %struct.plist** %plptr, align 8
  %14 = bitcast %struct.plist* %13 to i8*
  call void @free(i8* %14) #3
  br label %if.end.14

if.else.8:                                        ; preds = %if.then.4
  %15 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext9 = getelementptr inbounds %struct.plist, %struct.plist* %15, i32 0, i32 1
  %16 = load %struct.plist*, %struct.plist** %pnext9, align 8
  %cmp10 = icmp ne %struct.plist* %16, null
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.8
  %17 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext12 = getelementptr inbounds %struct.plist, %struct.plist* %17, i32 0, i32 1
  %18 = load %struct.plist*, %struct.plist** %pnext12, align 8
  %19 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 9
  store %struct.plist* %18, %struct.plist** %plist, align 8
  %21 = load %struct.plist*, %struct.plist** %plptr, align 8
  %22 = bitcast %struct.plist* %21 to i8*
  call void @free(i8* %22) #3
  br label %if.end

if.else.13:                                       ; preds = %if.else.8
  %23 = load %struct.plist*, %struct.plist** %plptr, align 8
  %24 = bitcast %struct.plist* %23 to i8*
  call void @free(i8* %24) #3
  %25 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %26 = load %struct.tnode*, %struct.tnode** %25, align 8
  %27 = bitcast %struct.tnode* %26 to i8*
  call void @free(i8* %27) #3
  %28 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* null, %struct.tnode** %28, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.2
  br label %if.end.370

if.else.16:                                       ; preds = %if.else
  %29 = load i32, i32* %value.addr, align 4
  %30 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %31 = load %struct.tnode*, %struct.tnode** %30, align 8
  %call17 = call %struct.tnode* @tdsearch(i32 %29, %struct.tnode* %31)
  store %struct.tnode* %call17, %struct.tnode** %l, align 8
  %32 = load %struct.tnode*, %struct.tnode** %l, align 8
  %cmp18 = icmp ne %struct.tnode* %32, null
  br i1 %cmp18, label %if.then.19, label %if.end.369

if.then.19:                                       ; preds = %if.else.16
  %33 = load %struct.tnode*, %struct.tnode** %l, align 8
  %34 = load i32, i32* %property.addr, align 4
  %call20 = call %struct.plist* @pfind(%struct.tnode* %33, i32 %34, %struct.plist** %prevptr)
  store %struct.plist* %call20, %struct.plist** %plptr, align 8
  %35 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp21 = icmp ne %struct.plist* %35, null
  br i1 %cmp21, label %if.then.22, label %if.end.368

if.then.22:                                       ; preds = %if.then.19
  %36 = load %struct.plist*, %struct.plist** %prevptr, align 8
  %cmp23 = icmp ne %struct.plist* %36, null
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.then.22
  %37 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext25 = getelementptr inbounds %struct.plist, %struct.plist* %37, i32 0, i32 1
  %38 = load %struct.plist*, %struct.plist** %pnext25, align 8
  %39 = load %struct.plist*, %struct.plist** %prevptr, align 8
  %pnext26 = getelementptr inbounds %struct.plist, %struct.plist* %39, i32 0, i32 1
  store %struct.plist* %38, %struct.plist** %pnext26, align 8
  %40 = load %struct.plist*, %struct.plist** %plptr, align 8
  %41 = bitcast %struct.plist* %40 to i8*
  call void @free(i8* %41) #3
  br label %if.end.367

if.else.27:                                       ; preds = %if.then.22
  %42 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext28 = getelementptr inbounds %struct.plist, %struct.plist* %42, i32 0, i32 1
  %43 = load %struct.plist*, %struct.plist** %pnext28, align 8
  %cmp29 = icmp ne %struct.plist* %43, null
  br i1 %cmp29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.else.27
  %44 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext31 = getelementptr inbounds %struct.plist, %struct.plist* %44, i32 0, i32 1
  %45 = load %struct.plist*, %struct.plist** %pnext31, align 8
  %46 = load %struct.tnode*, %struct.tnode** %l, align 8
  %plist32 = getelementptr inbounds %struct.tnode, %struct.tnode* %46, i32 0, i32 9
  store %struct.plist* %45, %struct.plist** %plist32, align 8
  %47 = load %struct.plist*, %struct.plist** %plptr, align 8
  %48 = bitcast %struct.plist* %47 to i8*
  call void @free(i8* %48) #3
  br label %if.end.366

if.else.33:                                       ; preds = %if.else.27
  %49 = load %struct.plist*, %struct.plist** %plptr, align 8
  %50 = bitcast %struct.plist* %49 to i8*
  call void @free(i8* %50) #3
  %51 = load %struct.tnode*, %struct.tnode** %l, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %51, i32 0, i32 6
  %52 = load %struct.tnode*, %struct.tnode** %father, align 8
  store %struct.tnode* %52, %struct.tnode** %f, align 8
  %53 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons34 = getelementptr inbounds %struct.tnode, %struct.tnode* %53, i32 0, i32 1
  %54 = load i32, i32* %nsons34, align 4
  %cmp35 = icmp eq i32 %54, 3
  br i1 %cmp35, label %if.then.36, label %if.else.61

if.then.36:                                       ; preds = %if.else.33
  %55 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %55, i32 0, i32 2
  %56 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %57 = load %struct.tnode*, %struct.tnode** %l, align 8
  %cmp37 = icmp eq %struct.tnode* %56, %57
  br i1 %cmp37, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %if.then.36
  %58 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %58, i32 0, i32 3
  %59 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %60 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son139 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 2
  store %struct.tnode* %59, %struct.tnode** %son139, align 8
  %61 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %61, i32 0, i32 4
  %62 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %63 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son240 = getelementptr inbounds %struct.tnode, %struct.tnode* %63, i32 0, i32 3
  store %struct.tnode* %62, %struct.tnode** %son240, align 8
  %64 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son341 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son341, align 8
  %65 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son142 = getelementptr inbounds %struct.tnode, %struct.tnode* %65, i32 0, i32 2
  %66 = load %struct.tnode*, %struct.tnode** %son142, align 8
  %value43 = getelementptr inbounds %struct.tnode, %struct.tnode* %66, i32 0, i32 0
  %67 = load i32, i32* %value43, align 4
  %68 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %68, i32 0, i32 7
  store i32 %67, i32* %Lval, align 4
  %69 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son244 = getelementptr inbounds %struct.tnode, %struct.tnode* %69, i32 0, i32 3
  %70 = load %struct.tnode*, %struct.tnode** %son244, align 8
  %value45 = getelementptr inbounds %struct.tnode, %struct.tnode* %70, i32 0, i32 0
  %71 = load i32, i32* %value45, align 4
  %72 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 8
  store i32 %71, i32* %Mval, align 4
  br label %if.end.59

if.else.46:                                       ; preds = %if.then.36
  %73 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son247 = getelementptr inbounds %struct.tnode, %struct.tnode* %73, i32 0, i32 3
  %74 = load %struct.tnode*, %struct.tnode** %son247, align 8
  %75 = load %struct.tnode*, %struct.tnode** %l, align 8
  %cmp48 = icmp eq %struct.tnode* %74, %75
  br i1 %cmp48, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %if.else.46
  %76 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son350 = getelementptr inbounds %struct.tnode, %struct.tnode* %76, i32 0, i32 4
  %77 = load %struct.tnode*, %struct.tnode** %son350, align 8
  %78 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son251 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 3
  store %struct.tnode* %77, %struct.tnode** %son251, align 8
  %79 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son352 = getelementptr inbounds %struct.tnode, %struct.tnode* %79, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son352, align 8
  %80 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son253 = getelementptr inbounds %struct.tnode, %struct.tnode* %80, i32 0, i32 3
  %81 = load %struct.tnode*, %struct.tnode** %son253, align 8
  %value54 = getelementptr inbounds %struct.tnode, %struct.tnode* %81, i32 0, i32 0
  %82 = load i32, i32* %value54, align 4
  %83 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval55 = getelementptr inbounds %struct.tnode, %struct.tnode* %83, i32 0, i32 8
  store i32 %82, i32* %Mval55, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %if.else.46
  %84 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son357 = getelementptr inbounds %struct.tnode, %struct.tnode* %84, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son357, align 8
  %85 = load %struct.tnode*, %struct.tnode** %f, align 8
  %86 = load i32, i32* %value.addr, align 4
  call void @tpatch(%struct.tnode* %85, i32 %86)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.38
  %87 = load %struct.tnode*, %struct.tnode** %l, align 8
  %88 = bitcast %struct.tnode* %87 to i8*
  call void @free(i8* %88) #3
  %89 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons60 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 1
  store i32 2, i32* %nsons60, align 4
  br label %if.end.365

if.else.61:                                       ; preds = %if.else.33
  %90 = load %struct.tnode*, %struct.tnode** %f, align 8
  %91 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %92 = load %struct.tnode*, %struct.tnode** %91, align 8
  %cmp62 = icmp eq %struct.tnode* %90, %92
  br i1 %cmp62, label %if.then.63, label %if.else.86

if.then.63:                                       ; preds = %if.else.61
  %93 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %94 = load %struct.tnode*, %struct.tnode** %93, align 8
  %son164 = getelementptr inbounds %struct.tnode, %struct.tnode* %94, i32 0, i32 2
  %95 = load %struct.tnode*, %struct.tnode** %son164, align 8
  %96 = load %struct.tnode*, %struct.tnode** %l, align 8
  %cmp65 = icmp eq %struct.tnode* %95, %96
  br i1 %cmp65, label %if.then.66, label %if.else.73

if.then.66:                                       ; preds = %if.then.63
  %97 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %98 = load %struct.tnode*, %struct.tnode** %97, align 8
  %son267 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 3
  %99 = load %struct.tnode*, %struct.tnode** %son267, align 8
  %value68 = getelementptr inbounds %struct.tnode, %struct.tnode* %99, i32 0, i32 0
  %100 = load i32, i32* %value68, align 4
  %101 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %102 = load %struct.tnode*, %struct.tnode** %101, align 8
  %value69 = getelementptr inbounds %struct.tnode, %struct.tnode* %102, i32 0, i32 0
  store i32 %100, i32* %value69, align 4
  %103 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %104 = load %struct.tnode*, %struct.tnode** %103, align 8
  %son270 = getelementptr inbounds %struct.tnode, %struct.tnode* %104, i32 0, i32 3
  %105 = load %struct.tnode*, %struct.tnode** %son270, align 8
  %plist71 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 9
  %106 = load %struct.plist*, %struct.plist** %plist71, align 8
  %107 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %108 = load %struct.tnode*, %struct.tnode** %107, align 8
  %plist72 = getelementptr inbounds %struct.tnode, %struct.tnode* %108, i32 0, i32 9
  store %struct.plist* %106, %struct.plist** %plist72, align 8
  br label %if.end.80

if.else.73:                                       ; preds = %if.then.63
  %109 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %110 = load %struct.tnode*, %struct.tnode** %109, align 8
  %son174 = getelementptr inbounds %struct.tnode, %struct.tnode* %110, i32 0, i32 2
  %111 = load %struct.tnode*, %struct.tnode** %son174, align 8
  %value75 = getelementptr inbounds %struct.tnode, %struct.tnode* %111, i32 0, i32 0
  %112 = load i32, i32* %value75, align 4
  %113 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %114 = load %struct.tnode*, %struct.tnode** %113, align 8
  %value76 = getelementptr inbounds %struct.tnode, %struct.tnode* %114, i32 0, i32 0
  store i32 %112, i32* %value76, align 4
  %115 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %116 = load %struct.tnode*, %struct.tnode** %115, align 8
  %son177 = getelementptr inbounds %struct.tnode, %struct.tnode* %116, i32 0, i32 2
  %117 = load %struct.tnode*, %struct.tnode** %son177, align 8
  %plist78 = getelementptr inbounds %struct.tnode, %struct.tnode* %117, i32 0, i32 9
  %118 = load %struct.plist*, %struct.plist** %plist78, align 8
  %119 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %120 = load %struct.tnode*, %struct.tnode** %119, align 8
  %plist79 = getelementptr inbounds %struct.tnode, %struct.tnode* %120, i32 0, i32 9
  store %struct.plist* %118, %struct.plist** %plist79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.73, %if.then.66
  %121 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %122 = load %struct.tnode*, %struct.tnode** %121, align 8
  %son181 = getelementptr inbounds %struct.tnode, %struct.tnode* %122, i32 0, i32 2
  %123 = load %struct.tnode*, %struct.tnode** %son181, align 8
  %124 = bitcast %struct.tnode* %123 to i8*
  call void @free(i8* %124) #3
  %125 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %126 = load %struct.tnode*, %struct.tnode** %125, align 8
  %son282 = getelementptr inbounds %struct.tnode, %struct.tnode* %126, i32 0, i32 3
  %127 = load %struct.tnode*, %struct.tnode** %son282, align 8
  %128 = bitcast %struct.tnode* %127 to i8*
  call void @free(i8* %128) #3
  %129 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %130 = load %struct.tnode*, %struct.tnode** %129, align 8
  %son183 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 2
  store %struct.tnode* null, %struct.tnode** %son183, align 8
  %131 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %132 = load %struct.tnode*, %struct.tnode** %131, align 8
  %son284 = getelementptr inbounds %struct.tnode, %struct.tnode* %132, i32 0, i32 3
  store %struct.tnode* null, %struct.tnode** %son284, align 8
  %133 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %134 = load %struct.tnode*, %struct.tnode** %133, align 8
  %nsons85 = getelementptr inbounds %struct.tnode, %struct.tnode* %134, i32 0, i32 1
  store i32 0, i32* %nsons85, align 4
  br label %if.end.364

if.else.86:                                       ; preds = %if.else.61
  %135 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son187 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 2
  %136 = load %struct.tnode*, %struct.tnode** %son187, align 8
  %137 = load %struct.tnode*, %struct.tnode** %l, align 8
  %cmp88 = icmp eq %struct.tnode* %136, %137
  br i1 %cmp88, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.else.86
  %138 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son290 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 3
  %139 = load %struct.tnode*, %struct.tnode** %son290, align 8
  store %struct.tnode* %139, %struct.tnode** %s, align 8
  br label %if.end.93

if.else.91:                                       ; preds = %if.else.86
  %140 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son192 = getelementptr inbounds %struct.tnode, %struct.tnode* %140, i32 0, i32 2
  %141 = load %struct.tnode*, %struct.tnode** %son192, align 8
  store %struct.tnode* %141, %struct.tnode** %s, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  %142 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father94 = getelementptr inbounds %struct.tnode, %struct.tnode* %142, i32 0, i32 6
  %143 = load %struct.tnode*, %struct.tnode** %father94, align 8
  %son195 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 2
  %144 = load %struct.tnode*, %struct.tnode** %son195, align 8
  %145 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp96 = icmp eq %struct.tnode* %144, %145
  br i1 %cmp96, label %if.then.97, label %if.else.224

if.then.97:                                       ; preds = %if.end.93
  %146 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father98 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 6
  %147 = load %struct.tnode*, %struct.tnode** %father98, align 8
  %son299 = getelementptr inbounds %struct.tnode, %struct.tnode* %147, i32 0, i32 3
  %148 = load %struct.tnode*, %struct.tnode** %son299, align 8
  store %struct.tnode* %148, %struct.tnode** %g, align 8
  %149 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father100 = getelementptr inbounds %struct.tnode, %struct.tnode* %149, i32 0, i32 6
  %150 = load %struct.tnode*, %struct.tnode** %father100, align 8
  %nsons101 = getelementptr inbounds %struct.tnode, %struct.tnode* %150, i32 0, i32 1
  %151 = load i32, i32* %nsons101, align 4
  %cmp102 = icmp eq i32 %151, 2
  br i1 %cmp102, label %if.then.103, label %if.else.146

if.then.103:                                      ; preds = %if.then.97
  %152 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons104 = getelementptr inbounds %struct.tnode, %struct.tnode* %152, i32 0, i32 1
  %153 = load i32, i32* %nsons104, align 4
  %cmp105 = icmp eq i32 %153, 2
  br i1 %cmp105, label %if.then.106, label %if.else.119

if.then.106:                                      ; preds = %if.then.103
  %154 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons107 = getelementptr inbounds %struct.tnode, %struct.tnode* %154, i32 0, i32 1
  store i32 3, i32* %nsons107, align 4
  %155 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2108 = getelementptr inbounds %struct.tnode, %struct.tnode* %155, i32 0, i32 3
  %156 = load %struct.tnode*, %struct.tnode** %son2108, align 8
  %157 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3109 = getelementptr inbounds %struct.tnode, %struct.tnode* %157, i32 0, i32 4
  store %struct.tnode* %156, %struct.tnode** %son3109, align 8
  %158 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1110 = getelementptr inbounds %struct.tnode, %struct.tnode* %158, i32 0, i32 2
  %159 = load %struct.tnode*, %struct.tnode** %son1110, align 8
  %160 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2111 = getelementptr inbounds %struct.tnode, %struct.tnode* %160, i32 0, i32 3
  store %struct.tnode* %159, %struct.tnode** %son2111, align 8
  %161 = load %struct.tnode*, %struct.tnode** %s, align 8
  %162 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1112 = getelementptr inbounds %struct.tnode, %struct.tnode* %162, i32 0, i32 2
  store %struct.tnode* %161, %struct.tnode** %son1112, align 8
  %163 = load %struct.tnode*, %struct.tnode** %g, align 8
  %164 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father113 = getelementptr inbounds %struct.tnode, %struct.tnode* %164, i32 0, i32 6
  store %struct.tnode* %163, %struct.tnode** %father113, align 8
  %165 = load %struct.tnode*, %struct.tnode** %l, align 8
  %166 = bitcast %struct.tnode* %165 to i8*
  call void @free(i8* %166) #3
  %167 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value114 = getelementptr inbounds %struct.tnode, %struct.tnode* %167, i32 0, i32 0
  %168 = load i32, i32* %value114, align 4
  %169 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval115 = getelementptr inbounds %struct.tnode, %struct.tnode* %169, i32 0, i32 7
  store i32 %168, i32* %Lval115, align 4
  %170 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2116 = getelementptr inbounds %struct.tnode, %struct.tnode* %170, i32 0, i32 3
  %171 = load %struct.tnode*, %struct.tnode** %son2116, align 8
  %value117 = getelementptr inbounds %struct.tnode, %struct.tnode* %171, i32 0, i32 0
  %172 = load i32, i32* %value117, align 4
  %173 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval118 = getelementptr inbounds %struct.tnode, %struct.tnode* %173, i32 0, i32 8
  store i32 %172, i32* %Mval118, align 4
  %174 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %175 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @tsubson(%struct.tnode** %174, %struct.tnode* %175)
  br label %if.end.145

if.else.119:                                      ; preds = %if.then.103
  %176 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons120 = getelementptr inbounds %struct.tnode, %struct.tnode* %176, i32 0, i32 1
  store i32 2, i32* %nsons120, align 4
  %177 = load %struct.tnode*, %struct.tnode** %s, align 8
  %178 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1121 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 2
  store %struct.tnode* %177, %struct.tnode** %son1121, align 8
  %179 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1122 = getelementptr inbounds %struct.tnode, %struct.tnode* %179, i32 0, i32 2
  %180 = load %struct.tnode*, %struct.tnode** %son1122, align 8
  %181 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2123 = getelementptr inbounds %struct.tnode, %struct.tnode* %181, i32 0, i32 3
  store %struct.tnode* %180, %struct.tnode** %son2123, align 8
  %182 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2124 = getelementptr inbounds %struct.tnode, %struct.tnode* %182, i32 0, i32 3
  %183 = load %struct.tnode*, %struct.tnode** %son2124, align 8
  %184 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1125 = getelementptr inbounds %struct.tnode, %struct.tnode* %184, i32 0, i32 2
  store %struct.tnode* %183, %struct.tnode** %son1125, align 8
  %185 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3126 = getelementptr inbounds %struct.tnode, %struct.tnode* %185, i32 0, i32 4
  %186 = load %struct.tnode*, %struct.tnode** %son3126, align 8
  %187 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2127 = getelementptr inbounds %struct.tnode, %struct.tnode* %187, i32 0, i32 3
  store %struct.tnode* %186, %struct.tnode** %son2127, align 8
  %188 = load %struct.tnode*, %struct.tnode** %f, align 8
  %189 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2128 = getelementptr inbounds %struct.tnode, %struct.tnode* %189, i32 0, i32 3
  %190 = load %struct.tnode*, %struct.tnode** %son2128, align 8
  %father129 = getelementptr inbounds %struct.tnode, %struct.tnode* %190, i32 0, i32 6
  store %struct.tnode* %188, %struct.tnode** %father129, align 8
  %191 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3130 = getelementptr inbounds %struct.tnode, %struct.tnode* %191, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3130, align 8
  %192 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value131 = getelementptr inbounds %struct.tnode, %struct.tnode* %192, i32 0, i32 0
  %193 = load i32, i32* %value131, align 4
  %194 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval132 = getelementptr inbounds %struct.tnode, %struct.tnode* %194, i32 0, i32 7
  store i32 %193, i32* %Lval132, align 4
  %195 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2133 = getelementptr inbounds %struct.tnode, %struct.tnode* %195, i32 0, i32 3
  %196 = load %struct.tnode*, %struct.tnode** %son2133, align 8
  %value134 = getelementptr inbounds %struct.tnode, %struct.tnode* %196, i32 0, i32 0
  %197 = load i32, i32* %value134, align 4
  %198 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval135 = getelementptr inbounds %struct.tnode, %struct.tnode* %198, i32 0, i32 8
  store i32 %197, i32* %Mval135, align 4
  %199 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1136 = getelementptr inbounds %struct.tnode, %struct.tnode* %199, i32 0, i32 2
  %200 = load %struct.tnode*, %struct.tnode** %son1136, align 8
  %value137 = getelementptr inbounds %struct.tnode, %struct.tnode* %200, i32 0, i32 0
  %201 = load i32, i32* %value137, align 4
  %202 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval138 = getelementptr inbounds %struct.tnode, %struct.tnode* %202, i32 0, i32 7
  store i32 %201, i32* %Lval138, align 4
  %203 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2139 = getelementptr inbounds %struct.tnode, %struct.tnode* %203, i32 0, i32 3
  %204 = load %struct.tnode*, %struct.tnode** %son2139, align 8
  %value140 = getelementptr inbounds %struct.tnode, %struct.tnode* %204, i32 0, i32 0
  %205 = load i32, i32* %value140, align 4
  %206 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval141 = getelementptr inbounds %struct.tnode, %struct.tnode* %206, i32 0, i32 8
  store i32 %205, i32* %Mval141, align 4
  %207 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval142 = getelementptr inbounds %struct.tnode, %struct.tnode* %207, i32 0, i32 8
  %208 = load i32, i32* %Mval142, align 4
  %209 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father143 = getelementptr inbounds %struct.tnode, %struct.tnode* %209, i32 0, i32 6
  %210 = load %struct.tnode*, %struct.tnode** %father143, align 8
  %Lval144 = getelementptr inbounds %struct.tnode, %struct.tnode* %210, i32 0, i32 7
  store i32 %208, i32* %Lval144, align 4
  %211 = load %struct.tnode*, %struct.tnode** %l, align 8
  %212 = bitcast %struct.tnode* %211 to i8*
  call void @free(i8* %212) #3
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.119, %if.then.106
  br label %if.end.223

if.else.146:                                      ; preds = %if.then.97
  %213 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons147 = getelementptr inbounds %struct.tnode, %struct.tnode* %213, i32 0, i32 1
  %214 = load i32, i32* %nsons147, align 4
  %cmp148 = icmp eq i32 %214, 2
  br i1 %cmp148, label %if.then.149, label %if.else.196

if.then.149:                                      ; preds = %if.else.146
  %215 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons150 = getelementptr inbounds %struct.tnode, %struct.tnode* %215, i32 0, i32 1
  store i32 3, i32* %nsons150, align 4
  %216 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2151 = getelementptr inbounds %struct.tnode, %struct.tnode* %216, i32 0, i32 3
  %217 = load %struct.tnode*, %struct.tnode** %son2151, align 8
  %218 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3152 = getelementptr inbounds %struct.tnode, %struct.tnode* %218, i32 0, i32 4
  store %struct.tnode* %217, %struct.tnode** %son3152, align 8
  %219 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1153 = getelementptr inbounds %struct.tnode, %struct.tnode* %219, i32 0, i32 2
  %220 = load %struct.tnode*, %struct.tnode** %son1153, align 8
  %221 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2154 = getelementptr inbounds %struct.tnode, %struct.tnode* %221, i32 0, i32 3
  store %struct.tnode* %220, %struct.tnode** %son2154, align 8
  %222 = load %struct.tnode*, %struct.tnode** %s, align 8
  %223 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1155 = getelementptr inbounds %struct.tnode, %struct.tnode* %223, i32 0, i32 2
  store %struct.tnode* %222, %struct.tnode** %son1155, align 8
  %224 = load %struct.tnode*, %struct.tnode** %g, align 8
  %225 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father156 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 6
  store %struct.tnode* %224, %struct.tnode** %father156, align 8
  %226 = load %struct.tnode*, %struct.tnode** %l, align 8
  %227 = bitcast %struct.tnode* %226 to i8*
  call void @free(i8* %227) #3
  %228 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value157 = getelementptr inbounds %struct.tnode, %struct.tnode* %228, i32 0, i32 0
  %229 = load i32, i32* %value157, align 4
  %230 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval158 = getelementptr inbounds %struct.tnode, %struct.tnode* %230, i32 0, i32 7
  store i32 %229, i32* %Lval158, align 4
  %231 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2159 = getelementptr inbounds %struct.tnode, %struct.tnode* %231, i32 0, i32 3
  %232 = load %struct.tnode*, %struct.tnode** %son2159, align 8
  %value160 = getelementptr inbounds %struct.tnode, %struct.tnode* %232, i32 0, i32 0
  %233 = load i32, i32* %value160, align 4
  %234 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval161 = getelementptr inbounds %struct.tnode, %struct.tnode* %234, i32 0, i32 8
  store i32 %233, i32* %Mval161, align 4
  %235 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father162 = getelementptr inbounds %struct.tnode, %struct.tnode* %235, i32 0, i32 6
  %236 = load %struct.tnode*, %struct.tnode** %father162, align 8
  %son2163 = getelementptr inbounds %struct.tnode, %struct.tnode* %236, i32 0, i32 3
  %237 = load %struct.tnode*, %struct.tnode** %son2163, align 8
  %238 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father164 = getelementptr inbounds %struct.tnode, %struct.tnode* %238, i32 0, i32 6
  %239 = load %struct.tnode*, %struct.tnode** %father164, align 8
  %son1165 = getelementptr inbounds %struct.tnode, %struct.tnode* %239, i32 0, i32 2
  store %struct.tnode* %237, %struct.tnode** %son1165, align 8
  %240 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father166 = getelementptr inbounds %struct.tnode, %struct.tnode* %240, i32 0, i32 6
  %241 = load %struct.tnode*, %struct.tnode** %father166, align 8
  %son3167 = getelementptr inbounds %struct.tnode, %struct.tnode* %241, i32 0, i32 4
  %242 = load %struct.tnode*, %struct.tnode** %son3167, align 8
  %243 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father168 = getelementptr inbounds %struct.tnode, %struct.tnode* %243, i32 0, i32 6
  %244 = load %struct.tnode*, %struct.tnode** %father168, align 8
  %son2169 = getelementptr inbounds %struct.tnode, %struct.tnode* %244, i32 0, i32 3
  store %struct.tnode* %242, %struct.tnode** %son2169, align 8
  %245 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father170 = getelementptr inbounds %struct.tnode, %struct.tnode* %245, i32 0, i32 6
  %246 = load %struct.tnode*, %struct.tnode** %father170, align 8
  %son3171 = getelementptr inbounds %struct.tnode, %struct.tnode* %246, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3171, align 8
  %247 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father172 = getelementptr inbounds %struct.tnode, %struct.tnode* %247, i32 0, i32 6
  %248 = load %struct.tnode*, %struct.tnode** %father172, align 8
  %nsons173 = getelementptr inbounds %struct.tnode, %struct.tnode* %248, i32 0, i32 1
  store i32 2, i32* %nsons173, align 4
  %249 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father174 = getelementptr inbounds %struct.tnode, %struct.tnode* %249, i32 0, i32 6
  %250 = load %struct.tnode*, %struct.tnode** %father174, align 8
  %Mval175 = getelementptr inbounds %struct.tnode, %struct.tnode* %250, i32 0, i32 8
  %251 = load i32, i32* %Mval175, align 4
  %252 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father176 = getelementptr inbounds %struct.tnode, %struct.tnode* %252, i32 0, i32 6
  %253 = load %struct.tnode*, %struct.tnode** %father176, align 8
  %Lval177 = getelementptr inbounds %struct.tnode, %struct.tnode* %253, i32 0, i32 7
  store i32 %251, i32* %Lval177, align 4
  %254 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father178 = getelementptr inbounds %struct.tnode, %struct.tnode* %254, i32 0, i32 6
  %255 = load %struct.tnode*, %struct.tnode** %father178, align 8
  %son2179 = getelementptr inbounds %struct.tnode, %struct.tnode* %255, i32 0, i32 3
  %256 = load %struct.tnode*, %struct.tnode** %son2179, align 8
  %nsons180 = getelementptr inbounds %struct.tnode, %struct.tnode* %256, i32 0, i32 1
  %257 = load i32, i32* %nsons180, align 4
  %cmp181 = icmp eq i32 %257, 2
  br i1 %cmp181, label %if.then.182, label %if.else.188

if.then.182:                                      ; preds = %if.then.149
  %258 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father183 = getelementptr inbounds %struct.tnode, %struct.tnode* %258, i32 0, i32 6
  %259 = load %struct.tnode*, %struct.tnode** %father183, align 8
  %son2184 = getelementptr inbounds %struct.tnode, %struct.tnode* %259, i32 0, i32 3
  %260 = load %struct.tnode*, %struct.tnode** %son2184, align 8
  %Mval185 = getelementptr inbounds %struct.tnode, %struct.tnode* %260, i32 0, i32 8
  %261 = load i32, i32* %Mval185, align 4
  %262 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father186 = getelementptr inbounds %struct.tnode, %struct.tnode* %262, i32 0, i32 6
  %263 = load %struct.tnode*, %struct.tnode** %father186, align 8
  %Mval187 = getelementptr inbounds %struct.tnode, %struct.tnode* %263, i32 0, i32 8
  store i32 %261, i32* %Mval187, align 4
  br label %if.end.195

if.else.188:                                      ; preds = %if.then.149
  %264 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father189 = getelementptr inbounds %struct.tnode, %struct.tnode* %264, i32 0, i32 6
  %265 = load %struct.tnode*, %struct.tnode** %father189, align 8
  %son2190 = getelementptr inbounds %struct.tnode, %struct.tnode* %265, i32 0, i32 3
  %266 = load %struct.tnode*, %struct.tnode** %son2190, align 8
  %son3191 = getelementptr inbounds %struct.tnode, %struct.tnode* %266, i32 0, i32 4
  %267 = load %struct.tnode*, %struct.tnode** %son3191, align 8
  %value192 = getelementptr inbounds %struct.tnode, %struct.tnode* %267, i32 0, i32 0
  %268 = load i32, i32* %value192, align 4
  %269 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father193 = getelementptr inbounds %struct.tnode, %struct.tnode* %269, i32 0, i32 6
  %270 = load %struct.tnode*, %struct.tnode** %father193, align 8
  %Mval194 = getelementptr inbounds %struct.tnode, %struct.tnode* %270, i32 0, i32 8
  store i32 %268, i32* %Mval194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.188, %if.then.182
  %271 = load %struct.tnode*, %struct.tnode** %f, align 8
  %272 = bitcast %struct.tnode* %271 to i8*
  call void @free(i8* %272) #3
  br label %if.end.222

if.else.196:                                      ; preds = %if.else.146
  %273 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons197 = getelementptr inbounds %struct.tnode, %struct.tnode* %273, i32 0, i32 1
  store i32 2, i32* %nsons197, align 4
  %274 = load %struct.tnode*, %struct.tnode** %s, align 8
  %275 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1198 = getelementptr inbounds %struct.tnode, %struct.tnode* %275, i32 0, i32 2
  store %struct.tnode* %274, %struct.tnode** %son1198, align 8
  %276 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1199 = getelementptr inbounds %struct.tnode, %struct.tnode* %276, i32 0, i32 2
  %277 = load %struct.tnode*, %struct.tnode** %son1199, align 8
  %278 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2200 = getelementptr inbounds %struct.tnode, %struct.tnode* %278, i32 0, i32 3
  store %struct.tnode* %277, %struct.tnode** %son2200, align 8
  %279 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2201 = getelementptr inbounds %struct.tnode, %struct.tnode* %279, i32 0, i32 3
  %280 = load %struct.tnode*, %struct.tnode** %son2201, align 8
  %281 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1202 = getelementptr inbounds %struct.tnode, %struct.tnode* %281, i32 0, i32 2
  store %struct.tnode* %280, %struct.tnode** %son1202, align 8
  %282 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3203 = getelementptr inbounds %struct.tnode, %struct.tnode* %282, i32 0, i32 4
  %283 = load %struct.tnode*, %struct.tnode** %son3203, align 8
  %284 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2204 = getelementptr inbounds %struct.tnode, %struct.tnode* %284, i32 0, i32 3
  store %struct.tnode* %283, %struct.tnode** %son2204, align 8
  %285 = load %struct.tnode*, %struct.tnode** %f, align 8
  %286 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2205 = getelementptr inbounds %struct.tnode, %struct.tnode* %286, i32 0, i32 3
  %287 = load %struct.tnode*, %struct.tnode** %son2205, align 8
  %father206 = getelementptr inbounds %struct.tnode, %struct.tnode* %287, i32 0, i32 6
  store %struct.tnode* %285, %struct.tnode** %father206, align 8
  %288 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3207 = getelementptr inbounds %struct.tnode, %struct.tnode* %288, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3207, align 8
  %289 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value208 = getelementptr inbounds %struct.tnode, %struct.tnode* %289, i32 0, i32 0
  %290 = load i32, i32* %value208, align 4
  %291 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval209 = getelementptr inbounds %struct.tnode, %struct.tnode* %291, i32 0, i32 7
  store i32 %290, i32* %Lval209, align 4
  %292 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2210 = getelementptr inbounds %struct.tnode, %struct.tnode* %292, i32 0, i32 3
  %293 = load %struct.tnode*, %struct.tnode** %son2210, align 8
  %value211 = getelementptr inbounds %struct.tnode, %struct.tnode* %293, i32 0, i32 0
  %294 = load i32, i32* %value211, align 4
  %295 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval212 = getelementptr inbounds %struct.tnode, %struct.tnode* %295, i32 0, i32 8
  store i32 %294, i32* %Mval212, align 4
  %296 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1213 = getelementptr inbounds %struct.tnode, %struct.tnode* %296, i32 0, i32 2
  %297 = load %struct.tnode*, %struct.tnode** %son1213, align 8
  %value214 = getelementptr inbounds %struct.tnode, %struct.tnode* %297, i32 0, i32 0
  %298 = load i32, i32* %value214, align 4
  %299 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval215 = getelementptr inbounds %struct.tnode, %struct.tnode* %299, i32 0, i32 7
  store i32 %298, i32* %Lval215, align 4
  %300 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2216 = getelementptr inbounds %struct.tnode, %struct.tnode* %300, i32 0, i32 3
  %301 = load %struct.tnode*, %struct.tnode** %son2216, align 8
  %value217 = getelementptr inbounds %struct.tnode, %struct.tnode* %301, i32 0, i32 0
  %302 = load i32, i32* %value217, align 4
  %303 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval218 = getelementptr inbounds %struct.tnode, %struct.tnode* %303, i32 0, i32 8
  store i32 %302, i32* %Mval218, align 4
  %304 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval219 = getelementptr inbounds %struct.tnode, %struct.tnode* %304, i32 0, i32 8
  %305 = load i32, i32* %Mval219, align 4
  %306 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father220 = getelementptr inbounds %struct.tnode, %struct.tnode* %306, i32 0, i32 6
  %307 = load %struct.tnode*, %struct.tnode** %father220, align 8
  %Lval221 = getelementptr inbounds %struct.tnode, %struct.tnode* %307, i32 0, i32 7
  store i32 %305, i32* %Lval221, align 4
  %308 = load %struct.tnode*, %struct.tnode** %l, align 8
  %309 = bitcast %struct.tnode* %308 to i8*
  call void @free(i8* %309) #3
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.196, %if.end.195
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.end.145
  br label %if.end.363

if.else.224:                                      ; preds = %if.end.93
  %310 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father225 = getelementptr inbounds %struct.tnode, %struct.tnode* %310, i32 0, i32 6
  %311 = load %struct.tnode*, %struct.tnode** %father225, align 8
  %son2226 = getelementptr inbounds %struct.tnode, %struct.tnode* %311, i32 0, i32 3
  %312 = load %struct.tnode*, %struct.tnode** %son2226, align 8
  %313 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp227 = icmp eq %struct.tnode* %312, %313
  br i1 %cmp227, label %if.then.228, label %if.else.325

if.then.228:                                      ; preds = %if.else.224
  %314 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father229 = getelementptr inbounds %struct.tnode, %struct.tnode* %314, i32 0, i32 6
  %315 = load %struct.tnode*, %struct.tnode** %father229, align 8
  %nsons230 = getelementptr inbounds %struct.tnode, %struct.tnode* %315, i32 0, i32 1
  %316 = load i32, i32* %nsons230, align 4
  %cmp231 = icmp eq i32 %316, 2
  br i1 %cmp231, label %if.then.232, label %if.else.266

if.then.232:                                      ; preds = %if.then.228
  %317 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father233 = getelementptr inbounds %struct.tnode, %struct.tnode* %317, i32 0, i32 6
  %318 = load %struct.tnode*, %struct.tnode** %father233, align 8
  %son1234 = getelementptr inbounds %struct.tnode, %struct.tnode* %318, i32 0, i32 2
  %319 = load %struct.tnode*, %struct.tnode** %son1234, align 8
  store %struct.tnode* %319, %struct.tnode** %g, align 8
  %320 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons235 = getelementptr inbounds %struct.tnode, %struct.tnode* %320, i32 0, i32 1
  %321 = load i32, i32* %nsons235, align 4
  %cmp236 = icmp eq i32 %321, 2
  br i1 %cmp236, label %if.then.237, label %if.else.244

if.then.237:                                      ; preds = %if.then.232
  %322 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons238 = getelementptr inbounds %struct.tnode, %struct.tnode* %322, i32 0, i32 1
  store i32 3, i32* %nsons238, align 4
  %323 = load %struct.tnode*, %struct.tnode** %s, align 8
  %324 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3239 = getelementptr inbounds %struct.tnode, %struct.tnode* %324, i32 0, i32 4
  store %struct.tnode* %323, %struct.tnode** %son3239, align 8
  %325 = load %struct.tnode*, %struct.tnode** %g, align 8
  %326 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father240 = getelementptr inbounds %struct.tnode, %struct.tnode* %326, i32 0, i32 6
  store %struct.tnode* %325, %struct.tnode** %father240, align 8
  %327 = load %struct.tnode*, %struct.tnode** %l, align 8
  %328 = bitcast %struct.tnode* %327 to i8*
  call void @free(i8* %328) #3
  %329 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value241 = getelementptr inbounds %struct.tnode, %struct.tnode* %329, i32 0, i32 0
  %330 = load i32, i32* %value241, align 4
  %331 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father242 = getelementptr inbounds %struct.tnode, %struct.tnode* %331, i32 0, i32 6
  %332 = load %struct.tnode*, %struct.tnode** %father242, align 8
  %Lval243 = getelementptr inbounds %struct.tnode, %struct.tnode* %332, i32 0, i32 7
  store i32 %330, i32* %Lval243, align 4
  %333 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %334 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @tsubson(%struct.tnode** %333, %struct.tnode* %334)
  br label %if.end.265

if.else.244:                                      ; preds = %if.then.232
  %335 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons245 = getelementptr inbounds %struct.tnode, %struct.tnode* %335, i32 0, i32 1
  store i32 2, i32* %nsons245, align 4
  %336 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3246 = getelementptr inbounds %struct.tnode, %struct.tnode* %336, i32 0, i32 4
  %337 = load %struct.tnode*, %struct.tnode** %son3246, align 8
  %338 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1247 = getelementptr inbounds %struct.tnode, %struct.tnode* %338, i32 0, i32 2
  store %struct.tnode* %337, %struct.tnode** %son1247, align 8
  %339 = load %struct.tnode*, %struct.tnode** %s, align 8
  %340 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2248 = getelementptr inbounds %struct.tnode, %struct.tnode* %340, i32 0, i32 3
  store %struct.tnode* %339, %struct.tnode** %son2248, align 8
  %341 = load %struct.tnode*, %struct.tnode** %f, align 8
  %342 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1249 = getelementptr inbounds %struct.tnode, %struct.tnode* %342, i32 0, i32 2
  %343 = load %struct.tnode*, %struct.tnode** %son1249, align 8
  %father250 = getelementptr inbounds %struct.tnode, %struct.tnode* %343, i32 0, i32 6
  store %struct.tnode* %341, %struct.tnode** %father250, align 8
  %344 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3251 = getelementptr inbounds %struct.tnode, %struct.tnode* %344, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3251, align 8
  %345 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1252 = getelementptr inbounds %struct.tnode, %struct.tnode* %345, i32 0, i32 2
  %346 = load %struct.tnode*, %struct.tnode** %son1252, align 8
  %value253 = getelementptr inbounds %struct.tnode, %struct.tnode* %346, i32 0, i32 0
  %347 = load i32, i32* %value253, align 4
  %348 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval254 = getelementptr inbounds %struct.tnode, %struct.tnode* %348, i32 0, i32 7
  store i32 %347, i32* %Lval254, align 4
  %349 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value255 = getelementptr inbounds %struct.tnode, %struct.tnode* %349, i32 0, i32 0
  %350 = load i32, i32* %value255, align 4
  %351 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval256 = getelementptr inbounds %struct.tnode, %struct.tnode* %351, i32 0, i32 8
  store i32 %350, i32* %Mval256, align 4
  %352 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval257 = getelementptr inbounds %struct.tnode, %struct.tnode* %352, i32 0, i32 8
  %353 = load i32, i32* %Mval257, align 4
  %354 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father258 = getelementptr inbounds %struct.tnode, %struct.tnode* %354, i32 0, i32 6
  %355 = load %struct.tnode*, %struct.tnode** %father258, align 8
  %Lval259 = getelementptr inbounds %struct.tnode, %struct.tnode* %355, i32 0, i32 7
  store i32 %353, i32* %Lval259, align 4
  %356 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval260 = getelementptr inbounds %struct.tnode, %struct.tnode* %356, i32 0, i32 8
  %357 = load i32, i32* %Mval260, align 4
  %358 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father261 = getelementptr inbounds %struct.tnode, %struct.tnode* %358, i32 0, i32 6
  %359 = load %struct.tnode*, %struct.tnode** %father261, align 8
  %Mval262 = getelementptr inbounds %struct.tnode, %struct.tnode* %359, i32 0, i32 8
  store i32 %357, i32* %Mval262, align 4
  %360 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father263 = getelementptr inbounds %struct.tnode, %struct.tnode* %360, i32 0, i32 6
  %361 = load %struct.tnode*, %struct.tnode** %father263, align 8
  %362 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval264 = getelementptr inbounds %struct.tnode, %struct.tnode* %362, i32 0, i32 8
  %363 = load i32, i32* %Mval264, align 4
  call void @tpatch(%struct.tnode* %361, i32 %363)
  %364 = load %struct.tnode*, %struct.tnode** %l, align 8
  %365 = bitcast %struct.tnode* %364 to i8*
  call void @free(i8* %365) #3
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.244, %if.then.237
  br label %if.end.324

if.else.266:                                      ; preds = %if.then.228
  %366 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father267 = getelementptr inbounds %struct.tnode, %struct.tnode* %366, i32 0, i32 6
  %367 = load %struct.tnode*, %struct.tnode** %father267, align 8
  %son3268 = getelementptr inbounds %struct.tnode, %struct.tnode* %367, i32 0, i32 4
  %368 = load %struct.tnode*, %struct.tnode** %son3268, align 8
  store %struct.tnode* %368, %struct.tnode** %g, align 8
  %369 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons269 = getelementptr inbounds %struct.tnode, %struct.tnode* %369, i32 0, i32 1
  %370 = load i32, i32* %nsons269, align 4
  %cmp270 = icmp eq i32 %370, 2
  br i1 %cmp270, label %if.then.271, label %if.else.296

if.then.271:                                      ; preds = %if.else.266
  %371 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons272 = getelementptr inbounds %struct.tnode, %struct.tnode* %371, i32 0, i32 1
  store i32 3, i32* %nsons272, align 4
  %372 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2273 = getelementptr inbounds %struct.tnode, %struct.tnode* %372, i32 0, i32 3
  %373 = load %struct.tnode*, %struct.tnode** %son2273, align 8
  %374 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3274 = getelementptr inbounds %struct.tnode, %struct.tnode* %374, i32 0, i32 4
  store %struct.tnode* %373, %struct.tnode** %son3274, align 8
  %375 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1275 = getelementptr inbounds %struct.tnode, %struct.tnode* %375, i32 0, i32 2
  %376 = load %struct.tnode*, %struct.tnode** %son1275, align 8
  %377 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2276 = getelementptr inbounds %struct.tnode, %struct.tnode* %377, i32 0, i32 3
  store %struct.tnode* %376, %struct.tnode** %son2276, align 8
  %378 = load %struct.tnode*, %struct.tnode** %s, align 8
  %379 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1277 = getelementptr inbounds %struct.tnode, %struct.tnode* %379, i32 0, i32 2
  store %struct.tnode* %378, %struct.tnode** %son1277, align 8
  %380 = load %struct.tnode*, %struct.tnode** %g, align 8
  %381 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father278 = getelementptr inbounds %struct.tnode, %struct.tnode* %381, i32 0, i32 6
  store %struct.tnode* %380, %struct.tnode** %father278, align 8
  %382 = load %struct.tnode*, %struct.tnode** %l, align 8
  %383 = bitcast %struct.tnode* %382 to i8*
  call void @free(i8* %383) #3
  %384 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value279 = getelementptr inbounds %struct.tnode, %struct.tnode* %384, i32 0, i32 0
  %385 = load i32, i32* %value279, align 4
  %386 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval280 = getelementptr inbounds %struct.tnode, %struct.tnode* %386, i32 0, i32 7
  store i32 %385, i32* %Lval280, align 4
  %387 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2281 = getelementptr inbounds %struct.tnode, %struct.tnode* %387, i32 0, i32 3
  %388 = load %struct.tnode*, %struct.tnode** %son2281, align 8
  %value282 = getelementptr inbounds %struct.tnode, %struct.tnode* %388, i32 0, i32 0
  %389 = load i32, i32* %value282, align 4
  %390 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval283 = getelementptr inbounds %struct.tnode, %struct.tnode* %390, i32 0, i32 8
  store i32 %389, i32* %Mval283, align 4
  %391 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3284 = getelementptr inbounds %struct.tnode, %struct.tnode* %391, i32 0, i32 4
  %392 = load %struct.tnode*, %struct.tnode** %son3284, align 8
  %value285 = getelementptr inbounds %struct.tnode, %struct.tnode* %392, i32 0, i32 0
  %393 = load i32, i32* %value285, align 4
  %394 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father286 = getelementptr inbounds %struct.tnode, %struct.tnode* %394, i32 0, i32 6
  %395 = load %struct.tnode*, %struct.tnode** %father286, align 8
  %Mval287 = getelementptr inbounds %struct.tnode, %struct.tnode* %395, i32 0, i32 8
  store i32 %393, i32* %Mval287, align 4
  %396 = load %struct.tnode*, %struct.tnode** %f, align 8
  %397 = bitcast %struct.tnode* %396 to i8*
  call void @free(i8* %397) #3
  %398 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father288 = getelementptr inbounds %struct.tnode, %struct.tnode* %398, i32 0, i32 6
  %399 = load %struct.tnode*, %struct.tnode** %father288, align 8
  %son3289 = getelementptr inbounds %struct.tnode, %struct.tnode* %399, i32 0, i32 4
  %400 = load %struct.tnode*, %struct.tnode** %son3289, align 8
  %401 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father290 = getelementptr inbounds %struct.tnode, %struct.tnode* %401, i32 0, i32 6
  %402 = load %struct.tnode*, %struct.tnode** %father290, align 8
  %son2291 = getelementptr inbounds %struct.tnode, %struct.tnode* %402, i32 0, i32 3
  store %struct.tnode* %400, %struct.tnode** %son2291, align 8
  %403 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father292 = getelementptr inbounds %struct.tnode, %struct.tnode* %403, i32 0, i32 6
  %404 = load %struct.tnode*, %struct.tnode** %father292, align 8
  %son3293 = getelementptr inbounds %struct.tnode, %struct.tnode* %404, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3293, align 8
  %405 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father294 = getelementptr inbounds %struct.tnode, %struct.tnode* %405, i32 0, i32 6
  %406 = load %struct.tnode*, %struct.tnode** %father294, align 8
  %nsons295 = getelementptr inbounds %struct.tnode, %struct.tnode* %406, i32 0, i32 1
  store i32 2, i32* %nsons295, align 4
  br label %if.end.323

if.else.296:                                      ; preds = %if.else.266
  %407 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons297 = getelementptr inbounds %struct.tnode, %struct.tnode* %407, i32 0, i32 1
  store i32 2, i32* %nsons297, align 4
  %408 = load %struct.tnode*, %struct.tnode** %s, align 8
  %409 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1298 = getelementptr inbounds %struct.tnode, %struct.tnode* %409, i32 0, i32 2
  store %struct.tnode* %408, %struct.tnode** %son1298, align 8
  %410 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1299 = getelementptr inbounds %struct.tnode, %struct.tnode* %410, i32 0, i32 2
  %411 = load %struct.tnode*, %struct.tnode** %son1299, align 8
  %412 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2300 = getelementptr inbounds %struct.tnode, %struct.tnode* %412, i32 0, i32 3
  store %struct.tnode* %411, %struct.tnode** %son2300, align 8
  %413 = load %struct.tnode*, %struct.tnode** %f, align 8
  %414 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2301 = getelementptr inbounds %struct.tnode, %struct.tnode* %414, i32 0, i32 3
  %415 = load %struct.tnode*, %struct.tnode** %son2301, align 8
  %father302 = getelementptr inbounds %struct.tnode, %struct.tnode* %415, i32 0, i32 6
  store %struct.tnode* %413, %struct.tnode** %father302, align 8
  %416 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2303 = getelementptr inbounds %struct.tnode, %struct.tnode* %416, i32 0, i32 3
  %417 = load %struct.tnode*, %struct.tnode** %son2303, align 8
  %418 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1304 = getelementptr inbounds %struct.tnode, %struct.tnode* %418, i32 0, i32 2
  store %struct.tnode* %417, %struct.tnode** %son1304, align 8
  %419 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3305 = getelementptr inbounds %struct.tnode, %struct.tnode* %419, i32 0, i32 4
  %420 = load %struct.tnode*, %struct.tnode** %son3305, align 8
  %421 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2306 = getelementptr inbounds %struct.tnode, %struct.tnode* %421, i32 0, i32 3
  store %struct.tnode* %420, %struct.tnode** %son2306, align 8
  %422 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3307 = getelementptr inbounds %struct.tnode, %struct.tnode* %422, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3307, align 8
  %423 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1308 = getelementptr inbounds %struct.tnode, %struct.tnode* %423, i32 0, i32 2
  %424 = load %struct.tnode*, %struct.tnode** %son1308, align 8
  %value309 = getelementptr inbounds %struct.tnode, %struct.tnode* %424, i32 0, i32 0
  %425 = load i32, i32* %value309, align 4
  %426 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval310 = getelementptr inbounds %struct.tnode, %struct.tnode* %426, i32 0, i32 7
  store i32 %425, i32* %Lval310, align 4
  %427 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2311 = getelementptr inbounds %struct.tnode, %struct.tnode* %427, i32 0, i32 3
  %428 = load %struct.tnode*, %struct.tnode** %son2311, align 8
  %value312 = getelementptr inbounds %struct.tnode, %struct.tnode* %428, i32 0, i32 0
  %429 = load i32, i32* %value312, align 4
  %430 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval313 = getelementptr inbounds %struct.tnode, %struct.tnode* %430, i32 0, i32 8
  store i32 %429, i32* %Mval313, align 4
  %431 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1314 = getelementptr inbounds %struct.tnode, %struct.tnode* %431, i32 0, i32 2
  %432 = load %struct.tnode*, %struct.tnode** %son1314, align 8
  %value315 = getelementptr inbounds %struct.tnode, %struct.tnode* %432, i32 0, i32 0
  %433 = load i32, i32* %value315, align 4
  %434 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval316 = getelementptr inbounds %struct.tnode, %struct.tnode* %434, i32 0, i32 7
  store i32 %433, i32* %Lval316, align 4
  %435 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2317 = getelementptr inbounds %struct.tnode, %struct.tnode* %435, i32 0, i32 3
  %436 = load %struct.tnode*, %struct.tnode** %son2317, align 8
  %value318 = getelementptr inbounds %struct.tnode, %struct.tnode* %436, i32 0, i32 0
  %437 = load i32, i32* %value318, align 4
  %438 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval319 = getelementptr inbounds %struct.tnode, %struct.tnode* %438, i32 0, i32 8
  store i32 %437, i32* %Mval319, align 4
  %439 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval320 = getelementptr inbounds %struct.tnode, %struct.tnode* %439, i32 0, i32 8
  %440 = load i32, i32* %Mval320, align 4
  %441 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father321 = getelementptr inbounds %struct.tnode, %struct.tnode* %441, i32 0, i32 6
  %442 = load %struct.tnode*, %struct.tnode** %father321, align 8
  %Mval322 = getelementptr inbounds %struct.tnode, %struct.tnode* %442, i32 0, i32 8
  store i32 %440, i32* %Mval322, align 4
  %443 = load %struct.tnode*, %struct.tnode** %l, align 8
  %444 = bitcast %struct.tnode* %443 to i8*
  call void @free(i8* %444) #3
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.296, %if.then.271
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.265
  br label %if.end.362

if.else.325:                                      ; preds = %if.else.224
  %445 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father326 = getelementptr inbounds %struct.tnode, %struct.tnode* %445, i32 0, i32 6
  %446 = load %struct.tnode*, %struct.tnode** %father326, align 8
  %son2327 = getelementptr inbounds %struct.tnode, %struct.tnode* %446, i32 0, i32 3
  %447 = load %struct.tnode*, %struct.tnode** %son2327, align 8
  store %struct.tnode* %447, %struct.tnode** %g, align 8
  %448 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons328 = getelementptr inbounds %struct.tnode, %struct.tnode* %448, i32 0, i32 1
  %449 = load i32, i32* %nsons328, align 4
  %cmp329 = icmp eq i32 %449, 2
  br i1 %cmp329, label %if.then.330, label %if.else.343

if.then.330:                                      ; preds = %if.else.325
  %450 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons331 = getelementptr inbounds %struct.tnode, %struct.tnode* %450, i32 0, i32 1
  store i32 3, i32* %nsons331, align 4
  %451 = load %struct.tnode*, %struct.tnode** %s, align 8
  %452 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3332 = getelementptr inbounds %struct.tnode, %struct.tnode* %452, i32 0, i32 4
  store %struct.tnode* %451, %struct.tnode** %son3332, align 8
  %453 = load %struct.tnode*, %struct.tnode** %g, align 8
  %454 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father333 = getelementptr inbounds %struct.tnode, %struct.tnode* %454, i32 0, i32 6
  store %struct.tnode* %453, %struct.tnode** %father333, align 8
  %455 = load %struct.tnode*, %struct.tnode** %l, align 8
  %456 = bitcast %struct.tnode* %455 to i8*
  call void @free(i8* %456) #3
  %457 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value334 = getelementptr inbounds %struct.tnode, %struct.tnode* %457, i32 0, i32 0
  %458 = load i32, i32* %value334, align 4
  %459 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father335 = getelementptr inbounds %struct.tnode, %struct.tnode* %459, i32 0, i32 6
  %460 = load %struct.tnode*, %struct.tnode** %father335, align 8
  %Mval336 = getelementptr inbounds %struct.tnode, %struct.tnode* %460, i32 0, i32 8
  store i32 %458, i32* %Mval336, align 4
  %461 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father337 = getelementptr inbounds %struct.tnode, %struct.tnode* %461, i32 0, i32 6
  %462 = load %struct.tnode*, %struct.tnode** %father337, align 8
  %463 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value338 = getelementptr inbounds %struct.tnode, %struct.tnode* %463, i32 0, i32 0
  %464 = load i32, i32* %value338, align 4
  call void @tpatch(%struct.tnode* %462, i32 %464)
  %465 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father339 = getelementptr inbounds %struct.tnode, %struct.tnode* %465, i32 0, i32 6
  %466 = load %struct.tnode*, %struct.tnode** %father339, align 8
  %son3340 = getelementptr inbounds %struct.tnode, %struct.tnode* %466, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3340, align 8
  %467 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father341 = getelementptr inbounds %struct.tnode, %struct.tnode* %467, i32 0, i32 6
  %468 = load %struct.tnode*, %struct.tnode** %father341, align 8
  %nsons342 = getelementptr inbounds %struct.tnode, %struct.tnode* %468, i32 0, i32 1
  store i32 2, i32* %nsons342, align 4
  %469 = load %struct.tnode*, %struct.tnode** %f, align 8
  %470 = bitcast %struct.tnode* %469 to i8*
  call void @free(i8* %470) #3
  br label %if.end.361

if.else.343:                                      ; preds = %if.else.325
  %471 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons344 = getelementptr inbounds %struct.tnode, %struct.tnode* %471, i32 0, i32 1
  store i32 2, i32* %nsons344, align 4
  %472 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3345 = getelementptr inbounds %struct.tnode, %struct.tnode* %472, i32 0, i32 4
  %473 = load %struct.tnode*, %struct.tnode** %son3345, align 8
  %474 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1346 = getelementptr inbounds %struct.tnode, %struct.tnode* %474, i32 0, i32 2
  store %struct.tnode* %473, %struct.tnode** %son1346, align 8
  %475 = load %struct.tnode*, %struct.tnode** %s, align 8
  %476 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2347 = getelementptr inbounds %struct.tnode, %struct.tnode* %476, i32 0, i32 3
  store %struct.tnode* %475, %struct.tnode** %son2347, align 8
  %477 = load %struct.tnode*, %struct.tnode** %f, align 8
  %478 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1348 = getelementptr inbounds %struct.tnode, %struct.tnode* %478, i32 0, i32 2
  %479 = load %struct.tnode*, %struct.tnode** %son1348, align 8
  %father349 = getelementptr inbounds %struct.tnode, %struct.tnode* %479, i32 0, i32 6
  store %struct.tnode* %477, %struct.tnode** %father349, align 8
  %480 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3350 = getelementptr inbounds %struct.tnode, %struct.tnode* %480, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3350, align 8
  %481 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1351 = getelementptr inbounds %struct.tnode, %struct.tnode* %481, i32 0, i32 2
  %482 = load %struct.tnode*, %struct.tnode** %son1351, align 8
  %value352 = getelementptr inbounds %struct.tnode, %struct.tnode* %482, i32 0, i32 0
  %483 = load i32, i32* %value352, align 4
  %484 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval353 = getelementptr inbounds %struct.tnode, %struct.tnode* %484, i32 0, i32 7
  store i32 %483, i32* %Lval353, align 4
  %485 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value354 = getelementptr inbounds %struct.tnode, %struct.tnode* %485, i32 0, i32 0
  %486 = load i32, i32* %value354, align 4
  %487 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval355 = getelementptr inbounds %struct.tnode, %struct.tnode* %487, i32 0, i32 8
  store i32 %486, i32* %Mval355, align 4
  %488 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval356 = getelementptr inbounds %struct.tnode, %struct.tnode* %488, i32 0, i32 8
  %489 = load i32, i32* %Mval356, align 4
  %490 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father357 = getelementptr inbounds %struct.tnode, %struct.tnode* %490, i32 0, i32 6
  %491 = load %struct.tnode*, %struct.tnode** %father357, align 8
  %Mval358 = getelementptr inbounds %struct.tnode, %struct.tnode* %491, i32 0, i32 8
  store i32 %489, i32* %Mval358, align 4
  %492 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father359 = getelementptr inbounds %struct.tnode, %struct.tnode* %492, i32 0, i32 6
  %493 = load %struct.tnode*, %struct.tnode** %father359, align 8
  %494 = load %struct.tnode*, %struct.tnode** %s, align 8
  %value360 = getelementptr inbounds %struct.tnode, %struct.tnode* %494, i32 0, i32 0
  %495 = load i32, i32* %value360, align 4
  call void @tpatch(%struct.tnode* %493, i32 %495)
  %496 = load %struct.tnode*, %struct.tnode** %l, align 8
  %497 = bitcast %struct.tnode* %496 to i8*
  call void @free(i8* %497) #3
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.343, %if.then.330
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.324
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.end.223
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.end.80
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.end.59
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.then.30
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.then.24
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.19
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.else.16
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.end.15
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tmax(%struct.tnode** %root, %struct.tnode** %node, i32* %value, i32* %property) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %node.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32*, align 8
  %property.addr = alloca i32*, align 8
  %v = alloca %struct.tnode*, align 8
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store %struct.tnode** %node, %struct.tnode*** %node.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  store i32* %property, i32** %property.addr, align 8
  %0 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %1 = load %struct.tnode*, %struct.tnode** %0, align 8
  store %struct.tnode* %1, %struct.tnode** %v, align 8
  %2 = load %struct.tnode*, %struct.tnode** %v, align 8
  %cmp = icmp eq %struct.tnode* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* null, %struct.tnode** %3, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.8, %if.else
  %4 = load %struct.tnode*, %struct.tnode** %v, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 1
  %5 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %5, 3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %for.cond
  %6 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 4
  %7 = load %struct.tnode*, %struct.tnode** %son3, align 8
  store %struct.tnode* %7, %struct.tnode** %v, align 8
  br label %if.end.8

if.else.3:                                        ; preds = %for.cond
  %8 = load %struct.tnode*, %struct.tnode** %v, align 8
  %nsons4 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 1
  %9 = load i32, i32* %nsons4, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.3
  %10 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 3
  %11 = load %struct.tnode*, %struct.tnode** %son2, align 8
  store %struct.tnode* %11, %struct.tnode** %v, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else.3
  br label %for.end

if.end:                                           ; preds = %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.2
  br label %for.cond

for.end:                                          ; preds = %if.else.7
  %12 = load %struct.tnode*, %struct.tnode** %v, align 8
  %13 = load %struct.tnode**, %struct.tnode*** %node.addr, align 8
  store %struct.tnode* %12, %struct.tnode** %13, align 8
  %14 = load %struct.tnode*, %struct.tnode** %v, align 8
  %value9 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 0
  %15 = load i32, i32* %value9, align 4
  %16 = load i32*, i32** %value.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.tnode*, %struct.tnode** %v, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 9
  %18 = load %struct.plist*, %struct.plist** %plist, align 8
  %property10 = getelementptr inbounds %struct.plist, %struct.plist* %18, i32 0, i32 0
  %19 = load i32, i32* %property10, align 4
  %20 = load i32*, i32** %property.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ttrim(%struct.tnode** %root, i32 %threshold) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %threshold.addr = alloca i32, align 4
  %node = alloca %struct.tnode*, align 8
  %property = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.4, %entry
  %0 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  call void @tmax(%struct.tnode** %0, %struct.tnode** %node, i32* %value, i32* %property)
  %1 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp = icmp eq %struct.tnode* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  br label %for.end

if.else:                                          ; preds = %for.cond
  %2 = load i32, i32* %value, align 4
  %3 = load i32, i32* %threshold.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  br label %for.end

if.else.3:                                        ; preds = %if.else
  %4 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %5 = load i32, i32* %value, align 4
  %6 = load i32, i32* %property, align 4
  call void @tdelete(%struct.tnode** %4, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.else.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tdiscard(%struct.tnode** %root, i32 %count) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %count.addr = alloca i32, align 4
  %node = alloca %struct.tnode*, align 8
  %property = alloca i32, align 4
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  call void @tmax(%struct.tnode** %2, %struct.tnode** %node, i32* %value, i32* %property)
  %3 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp1 = icmp eq %struct.tnode* %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %4 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %5 = load i32, i32* %value, align 4
  %6 = load i32, i32* %property, align 4
  call void @tdelete(%struct.tnode** %4, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.tnode* @tsearch(i32 %val, %struct.tnode* %r) #0 {
entry:
  %retval = alloca %struct.tnode*, align 8
  %val.addr = alloca i32, align 4
  %r.addr = alloca %struct.tnode*, align 8
  store i32 %val, i32* %val.addr, align 4
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %0, i32 0, i32 2
  %1 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 1
  %2 = load i32, i32* %nsons, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  store %struct.tnode* %3, %struct.tnode** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %val.addr, align 4
  %5 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 7
  %6 = load i32, i32* %Lval, align 4
  %cmp1 = icmp sle i32 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %7 = load i32, i32* %val.addr, align 4
  %8 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son13 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 2
  %9 = load %struct.tnode*, %struct.tnode** %son13, align 8
  %call = call %struct.tnode* @tsearch(i32 %7, %struct.tnode* %9)
  store %struct.tnode* %call, %struct.tnode** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %10 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons5 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 1
  %11 = load i32, i32* %nsons5, align 4
  %cmp6 = icmp eq i32 %11, 2
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.4
  %12 = load i32, i32* %val.addr, align 4
  %13 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 8
  %14 = load i32, i32* %Mval, align 4
  %cmp7 = icmp sle i32 %12, %14
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %lor.lhs.false, %if.else.4
  %15 = load i32, i32* %val.addr, align 4
  %16 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %16, i32 0, i32 3
  %17 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %call9 = call %struct.tnode* @tsearch(i32 %15, %struct.tnode* %17)
  store %struct.tnode* %call9, %struct.tnode** %retval
  br label %return

if.else.10:                                       ; preds = %lor.lhs.false
  %18 = load i32, i32* %val.addr, align 4
  %19 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 4
  %20 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %call11 = call %struct.tnode* @tsearch(i32 %18, %struct.tnode* %20)
  store %struct.tnode* %call11, %struct.tnode** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.8, %if.then.2, %if.then
  %21 = load %struct.tnode*, %struct.tnode** %retval
  ret %struct.tnode* %21
}

; Function Attrs: nounwind uwtable
define void @taddson(%struct.tnode** %root, %struct.tnode* %r) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %r.addr = alloca %struct.tnode*, align 8
  %v = alloca %struct.tnode*, align 8
  %nr = alloca %struct.tnode*, align 8
  %f = alloca %struct.tnode*, align 8
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  %call = call noalias i8* @malloc(i64 64) #3
  %0 = bitcast i8* %call to %struct.tnode*
  store %struct.tnode* %0, %struct.tnode** %v, align 8
  %1 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 4
  %2 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %3 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 2
  store %struct.tnode* %2, %struct.tnode** %son1, align 8
  %4 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son4 = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 5
  %5 = load %struct.tnode*, %struct.tnode** %son4, align 8
  %6 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 3
  store %struct.tnode* %5, %struct.tnode** %son2, align 8
  %7 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son31 = getelementptr inbounds %struct.tnode, %struct.tnode* %7, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son31, align 8
  %8 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son42 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son42, align 8
  %9 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 6
  %10 = load %struct.tnode*, %struct.tnode** %father, align 8
  %11 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father3 = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 6
  store %struct.tnode* %10, %struct.tnode** %father3, align 8
  %12 = load %struct.tnode*, %struct.tnode** %v, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 1
  store i32 2, i32* %nsons, align 4
  %13 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons4 = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 1
  store i32 2, i32* %nsons4, align 4
  %14 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son35 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son35, align 8
  %15 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son46 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son46, align 8
  %16 = load %struct.tnode*, %struct.tnode** %v, align 8
  %17 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son17 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 2
  %18 = load %struct.tnode*, %struct.tnode** %son17, align 8
  %father8 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 6
  store %struct.tnode* %16, %struct.tnode** %father8, align 8
  %19 = load %struct.tnode*, %struct.tnode** %v, align 8
  %20 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son29 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 3
  %21 = load %struct.tnode*, %struct.tnode** %son29, align 8
  %father10 = getelementptr inbounds %struct.tnode, %struct.tnode* %21, i32 0, i32 6
  store %struct.tnode* %19, %struct.tnode** %father10, align 8
  %22 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son111 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 2
  %23 = load %struct.tnode*, %struct.tnode** %son111, align 8
  store %struct.tnode* %23, %struct.tnode** %f, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %24 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons12 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 1
  %25 = load i32, i32* %nsons12, align 4
  %cmp = icmp eq i32 %25, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son313 = getelementptr inbounds %struct.tnode, %struct.tnode* %26, i32 0, i32 4
  %27 = load %struct.tnode*, %struct.tnode** %son313, align 8
  store %struct.tnode* %27, %struct.tnode** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons14 = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 1
  %29 = load i32, i32* %nsons14, align 4
  %cmp15 = icmp eq i32 %29, 0
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %30 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 0
  %31 = load i32, i32* %value, align 4
  %32 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 7
  store i32 %31, i32* %Lval, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %33 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %33, i32 0, i32 8
  %34 = load i32, i32* %Mval, align 4
  %35 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Lval16 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 7
  store i32 %34, i32* %Lval16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %36 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son217 = getelementptr inbounds %struct.tnode, %struct.tnode* %36, i32 0, i32 3
  %37 = load %struct.tnode*, %struct.tnode** %son217, align 8
  store %struct.tnode* %37, %struct.tnode** %f, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.21, %if.end
  %38 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons19 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 1
  %39 = load i32, i32* %nsons19, align 4
  %cmp20 = icmp eq i32 %39, 3
  br i1 %cmp20, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %while.cond.18
  %40 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son322 = getelementptr inbounds %struct.tnode, %struct.tnode* %40, i32 0, i32 4
  %41 = load %struct.tnode*, %struct.tnode** %son322, align 8
  store %struct.tnode* %41, %struct.tnode** %f, align 8
  br label %while.cond.18

while.end.23:                                     ; preds = %while.cond.18
  %42 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons24 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 1
  %43 = load i32, i32* %nsons24, align 4
  %cmp25 = icmp eq i32 %43, 0
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %while.end.23
  %44 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value27 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 0
  %45 = load i32, i32* %value27, align 4
  %46 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval28 = getelementptr inbounds %struct.tnode, %struct.tnode* %46, i32 0, i32 8
  store i32 %45, i32* %Mval28, align 4
  br label %if.end.32

if.else.29:                                       ; preds = %while.end.23
  %47 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval30 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 8
  %48 = load i32, i32* %Mval30, align 4
  %49 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval31 = getelementptr inbounds %struct.tnode, %struct.tnode* %49, i32 0, i32 8
  store i32 %48, i32* %Mval31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  %50 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son133 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 2
  %51 = load %struct.tnode*, %struct.tnode** %son133, align 8
  store %struct.tnode* %51, %struct.tnode** %f, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.37, %if.end.32
  %52 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons35 = getelementptr inbounds %struct.tnode, %struct.tnode* %52, i32 0, i32 1
  %53 = load i32, i32* %nsons35, align 4
  %cmp36 = icmp eq i32 %53, 3
  br i1 %cmp36, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %while.cond.34
  %54 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son338 = getelementptr inbounds %struct.tnode, %struct.tnode* %54, i32 0, i32 4
  %55 = load %struct.tnode*, %struct.tnode** %son338, align 8
  store %struct.tnode* %55, %struct.tnode** %f, align 8
  br label %while.cond.34

while.end.39:                                     ; preds = %while.cond.34
  %56 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons40 = getelementptr inbounds %struct.tnode, %struct.tnode* %56, i32 0, i32 1
  %57 = load i32, i32* %nsons40, align 4
  %cmp41 = icmp eq i32 %57, 0
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %while.end.39
  %58 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value43 = getelementptr inbounds %struct.tnode, %struct.tnode* %58, i32 0, i32 0
  %59 = load i32, i32* %value43, align 4
  %60 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Lval44 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 7
  store i32 %59, i32* %Lval44, align 4
  br label %if.end.48

if.else.45:                                       ; preds = %while.end.39
  %61 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval46 = getelementptr inbounds %struct.tnode, %struct.tnode* %61, i32 0, i32 8
  %62 = load i32, i32* %Mval46, align 4
  %63 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Lval47 = getelementptr inbounds %struct.tnode, %struct.tnode* %63, i32 0, i32 7
  store i32 %62, i32* %Lval47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.42
  %64 = load %struct.tnode*, %struct.tnode** %v, align 8
  %son249 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 3
  %65 = load %struct.tnode*, %struct.tnode** %son249, align 8
  store %struct.tnode* %65, %struct.tnode** %f, align 8
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.53, %if.end.48
  %66 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons51 = getelementptr inbounds %struct.tnode, %struct.tnode* %66, i32 0, i32 1
  %67 = load i32, i32* %nsons51, align 4
  %cmp52 = icmp eq i32 %67, 3
  br i1 %cmp52, label %while.body.53, label %while.end.55

while.body.53:                                    ; preds = %while.cond.50
  %68 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son354 = getelementptr inbounds %struct.tnode, %struct.tnode* %68, i32 0, i32 4
  %69 = load %struct.tnode*, %struct.tnode** %son354, align 8
  store %struct.tnode* %69, %struct.tnode** %f, align 8
  br label %while.cond.50

while.end.55:                                     ; preds = %while.cond.50
  %70 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons56 = getelementptr inbounds %struct.tnode, %struct.tnode* %70, i32 0, i32 1
  %71 = load i32, i32* %nsons56, align 4
  %cmp57 = icmp eq i32 %71, 0
  br i1 %cmp57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %while.end.55
  %72 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value59 = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 0
  %73 = load i32, i32* %value59, align 4
  %74 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Mval60 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 8
  store i32 %73, i32* %Mval60, align 4
  br label %if.end.64

if.else.61:                                       ; preds = %while.end.55
  %75 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval62 = getelementptr inbounds %struct.tnode, %struct.tnode* %75, i32 0, i32 8
  %76 = load i32, i32* %Mval62, align 4
  %77 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Mval63 = getelementptr inbounds %struct.tnode, %struct.tnode* %77, i32 0, i32 8
  store i32 %76, i32* %Mval63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.58
  %78 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %father65 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 6
  %79 = load %struct.tnode*, %struct.tnode** %father65, align 8
  %cmp66 = icmp eq %struct.tnode* %79, null
  br i1 %cmp66, label %if.then.67, label %if.else.81

if.then.67:                                       ; preds = %if.end.64
  %call68 = call noalias i8* @malloc(i64 64) #3
  %80 = bitcast i8* %call68 to %struct.tnode*
  store %struct.tnode* %80, %struct.tnode** %nr, align 8
  %81 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %82 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son169 = getelementptr inbounds %struct.tnode, %struct.tnode* %82, i32 0, i32 2
  store %struct.tnode* %81, %struct.tnode** %son169, align 8
  %83 = load %struct.tnode*, %struct.tnode** %v, align 8
  %84 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son270 = getelementptr inbounds %struct.tnode, %struct.tnode* %84, i32 0, i32 3
  store %struct.tnode* %83, %struct.tnode** %son270, align 8
  %85 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son371 = getelementptr inbounds %struct.tnode, %struct.tnode* %85, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son371, align 8
  %86 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son472 = getelementptr inbounds %struct.tnode, %struct.tnode* %86, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son472, align 8
  %87 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %father73 = getelementptr inbounds %struct.tnode, %struct.tnode* %87, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %father73, align 8
  %88 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %nsons74 = getelementptr inbounds %struct.tnode, %struct.tnode* %88, i32 0, i32 1
  store i32 2, i32* %nsons74, align 4
  %89 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %90 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %father75 = getelementptr inbounds %struct.tnode, %struct.tnode* %90, i32 0, i32 6
  store %struct.tnode* %89, %struct.tnode** %father75, align 8
  %91 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %92 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father76 = getelementptr inbounds %struct.tnode, %struct.tnode* %92, i32 0, i32 6
  store %struct.tnode* %91, %struct.tnode** %father76, align 8
  %93 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval77 = getelementptr inbounds %struct.tnode, %struct.tnode* %93, i32 0, i32 8
  %94 = load i32, i32* %Mval77, align 4
  %95 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Lval78 = getelementptr inbounds %struct.tnode, %struct.tnode* %95, i32 0, i32 7
  store i32 %94, i32* %Lval78, align 4
  %96 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Mval79 = getelementptr inbounds %struct.tnode, %struct.tnode* %96, i32 0, i32 8
  %97 = load i32, i32* %Mval79, align 4
  %98 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Mval80 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 8
  store i32 %97, i32* %Mval80, align 4
  %99 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %100 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %99, %struct.tnode** %100, align 8
  br label %if.end.123

if.else.81:                                       ; preds = %if.end.64
  %101 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %father82 = getelementptr inbounds %struct.tnode, %struct.tnode* %101, i32 0, i32 6
  %102 = load %struct.tnode*, %struct.tnode** %father82, align 8
  store %struct.tnode* %102, %struct.tnode** %f, align 8
  %103 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons83 = getelementptr inbounds %struct.tnode, %struct.tnode* %103, i32 0, i32 1
  %104 = load i32, i32* %nsons83, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %nsons83, align 4
  %cmp84 = icmp eq i32 %inc, 4
  br i1 %cmp84, label %if.then.85, label %if.else.105

if.then.85:                                       ; preds = %if.else.81
  %105 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son186 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 2
  %106 = load %struct.tnode*, %struct.tnode** %son186, align 8
  %107 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp87 = icmp eq %struct.tnode* %106, %107
  br i1 %cmp87, label %if.then.88, label %if.else.94

if.then.88:                                       ; preds = %if.then.85
  %108 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son389 = getelementptr inbounds %struct.tnode, %struct.tnode* %108, i32 0, i32 4
  %109 = load %struct.tnode*, %struct.tnode** %son389, align 8
  %110 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son490 = getelementptr inbounds %struct.tnode, %struct.tnode* %110, i32 0, i32 5
  store %struct.tnode* %109, %struct.tnode** %son490, align 8
  %111 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son291 = getelementptr inbounds %struct.tnode, %struct.tnode* %111, i32 0, i32 3
  %112 = load %struct.tnode*, %struct.tnode** %son291, align 8
  %113 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son392 = getelementptr inbounds %struct.tnode, %struct.tnode* %113, i32 0, i32 4
  store %struct.tnode* %112, %struct.tnode** %son392, align 8
  %114 = load %struct.tnode*, %struct.tnode** %v, align 8
  %115 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son293 = getelementptr inbounds %struct.tnode, %struct.tnode* %115, i32 0, i32 3
  store %struct.tnode* %114, %struct.tnode** %son293, align 8
  br label %if.end.104

if.else.94:                                       ; preds = %if.then.85
  %116 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son295 = getelementptr inbounds %struct.tnode, %struct.tnode* %116, i32 0, i32 3
  %117 = load %struct.tnode*, %struct.tnode** %son295, align 8
  %118 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp96 = icmp eq %struct.tnode* %117, %118
  br i1 %cmp96, label %if.then.97, label %if.else.101

if.then.97:                                       ; preds = %if.else.94
  %119 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son398 = getelementptr inbounds %struct.tnode, %struct.tnode* %119, i32 0, i32 4
  %120 = load %struct.tnode*, %struct.tnode** %son398, align 8
  %121 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son499 = getelementptr inbounds %struct.tnode, %struct.tnode* %121, i32 0, i32 5
  store %struct.tnode* %120, %struct.tnode** %son499, align 8
  %122 = load %struct.tnode*, %struct.tnode** %v, align 8
  %123 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3100 = getelementptr inbounds %struct.tnode, %struct.tnode* %123, i32 0, i32 4
  store %struct.tnode* %122, %struct.tnode** %son3100, align 8
  br label %if.end.103

if.else.101:                                      ; preds = %if.else.94
  %124 = load %struct.tnode*, %struct.tnode** %v, align 8
  %125 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son4102 = getelementptr inbounds %struct.tnode, %struct.tnode* %125, i32 0, i32 5
  store %struct.tnode* %124, %struct.tnode** %son4102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.97
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.88
  %126 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %127 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @taddson(%struct.tnode** %126, %struct.tnode* %127)
  br label %if.end.122

if.else.105:                                      ; preds = %if.else.81
  %128 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1106 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 2
  %129 = load %struct.tnode*, %struct.tnode** %son1106, align 8
  %130 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp107 = icmp eq %struct.tnode* %129, %130
  br i1 %cmp107, label %if.then.108, label %if.else.116

if.then.108:                                      ; preds = %if.else.105
  %131 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2109 = getelementptr inbounds %struct.tnode, %struct.tnode* %131, i32 0, i32 3
  %132 = load %struct.tnode*, %struct.tnode** %son2109, align 8
  %133 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3110 = getelementptr inbounds %struct.tnode, %struct.tnode* %133, i32 0, i32 4
  store %struct.tnode* %132, %struct.tnode** %son3110, align 8
  %134 = load %struct.tnode*, %struct.tnode** %v, align 8
  %135 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2111 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 3
  store %struct.tnode* %134, %struct.tnode** %son2111, align 8
  %136 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval112 = getelementptr inbounds %struct.tnode, %struct.tnode* %136, i32 0, i32 8
  %137 = load i32, i32* %Mval112, align 4
  %138 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval113 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 7
  store i32 %137, i32* %Lval113, align 4
  %139 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Mval114 = getelementptr inbounds %struct.tnode, %struct.tnode* %139, i32 0, i32 8
  %140 = load i32, i32* %Mval114, align 4
  %141 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval115 = getelementptr inbounds %struct.tnode, %struct.tnode* %141, i32 0, i32 8
  store i32 %140, i32* %Mval115, align 4
  br label %if.end.121

if.else.116:                                      ; preds = %if.else.105
  %142 = load %struct.tnode*, %struct.tnode** %v, align 8
  %143 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3117 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 4
  store %struct.tnode* %142, %struct.tnode** %son3117, align 8
  %144 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval118 = getelementptr inbounds %struct.tnode, %struct.tnode* %144, i32 0, i32 8
  %145 = load i32, i32* %Mval118, align 4
  %146 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval119 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 8
  store i32 %145, i32* %Mval119, align 4
  %147 = load %struct.tnode*, %struct.tnode** %f, align 8
  %148 = load %struct.tnode*, %struct.tnode** %v, align 8
  %Mval120 = getelementptr inbounds %struct.tnode, %struct.tnode* %148, i32 0, i32 8
  %149 = load i32, i32* %Mval120, align 4
  call void @tpatch(%struct.tnode* %147, i32 %149)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.116, %if.then.108
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.104
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.67
  ret void
}

; Function Attrs: nounwind uwtable
define void @tpatch(%struct.tnode* %v, i32 %value) #0 {
entry:
  %v.addr = alloca %struct.tnode*, align 8
  %value.addr = alloca i32, align 4
  %f = alloca %struct.tnode*, align 8
  store %struct.tnode* %v, %struct.tnode** %v.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %0, i32 0, i32 6
  %1 = load %struct.tnode*, %struct.tnode** %father, align 8
  store %struct.tnode* %1, %struct.tnode** %f, align 8
  %2 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp = icmp ne %struct.tnode* %2, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 2
  %4 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %5 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %cmp1 = icmp eq %struct.tnode* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %value.addr, align 4
  %7 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %7, i32 0, i32 7
  store i32 %6, i32* %Lval, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %8 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 3
  %9 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %10 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %cmp3 = icmp eq %struct.tnode* %9, %10
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.else
  %11 = load i32, i32* %value.addr, align 4
  %12 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 8
  store i32 %11, i32* %Mval, align 4
  %13 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 4
  %14 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %cmp5 = icmp eq %struct.tnode* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %15 = load %struct.tnode*, %struct.tnode** %f, align 8
  %16 = load i32, i32* %value.addr, align 4
  call void @tpatch(%struct.tnode* %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.else
  %17 = load %struct.tnode*, %struct.tnode** %f, align 8
  %18 = load i32, i32* %value.addr, align 4
  call void @tpatch(%struct.tnode* %17, i32 %18)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @tinsert(%struct.tnode** %root, i32 %value, i32 %property) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32, align 4
  %property.addr = alloca i32, align 4
  %v = alloca %struct.tnode*, align 8
  %nr = alloca %struct.tnode*, align 8
  %f = alloca %struct.tnode*, align 8
  %node = alloca %struct.tnode*, align 8
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %property, i32* %property.addr, align 4
  %0 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %1 = load %struct.tnode*, %struct.tnode** %0, align 8
  %cmp = icmp eq %struct.tnode* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load i32, i32* %property.addr, align 4
  call void @makenode(%struct.tnode** %v, i32 %2, i32 %3)
  %4 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %father, align 8
  %5 = load %struct.tnode*, %struct.tnode** %v, align 8
  %6 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %5, %struct.tnode** %6, align 8
  br label %if.end.99

if.else:                                          ; preds = %entry
  %7 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %8 = load %struct.tnode*, %struct.tnode** %7, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 1
  %9 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.else.24

if.then.2:                                        ; preds = %if.else
  %10 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %11 = load %struct.tnode*, %struct.tnode** %10, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 0
  %12 = load i32, i32* %value3, align 4
  %13 = load i32, i32* %value.addr, align 4
  %cmp4 = icmp eq i32 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.then.2
  %14 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %15 = load %struct.tnode*, %struct.tnode** %14, align 8
  %16 = load i32, i32* %property.addr, align 4
  call void @addplist(%struct.tnode* %15, i32 %16)
  br label %if.end.23

if.else.6:                                        ; preds = %if.then.2
  %17 = load i32, i32* %value.addr, align 4
  %18 = load i32, i32* %property.addr, align 4
  call void @makenode(%struct.tnode** %v, i32 %17, i32 %18)
  %call = call noalias i8* @malloc(i64 64) #3
  %19 = bitcast i8* %call to %struct.tnode*
  store %struct.tnode* %19, %struct.tnode** %nr, align 8
  %20 = load i32, i32* %value.addr, align 4
  %21 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %22 = load %struct.tnode*, %struct.tnode** %21, align 8
  %value7 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 0
  %23 = load i32, i32* %value7, align 4
  %cmp8 = icmp sle i32 %20, %23
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.6
  %24 = load i32, i32* %value.addr, align 4
  %25 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %25, i32 0, i32 7
  store i32 %24, i32* %Lval, align 4
  %26 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %27 = load %struct.tnode*, %struct.tnode** %26, align 8
  %value10 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 0
  %28 = load i32, i32* %value10, align 4
  %29 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 8
  store i32 %28, i32* %Mval, align 4
  %30 = load %struct.tnode*, %struct.tnode** %v, align 8
  %31 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %31, i32 0, i32 2
  store %struct.tnode* %30, %struct.tnode** %son1, align 8
  %32 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %33 = load %struct.tnode*, %struct.tnode** %32, align 8
  %34 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %34, i32 0, i32 3
  store %struct.tnode* %33, %struct.tnode** %son2, align 8
  %35 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3, align 8
  %36 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son4 = getelementptr inbounds %struct.tnode, %struct.tnode* %36, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son4, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.6
  %37 = load i32, i32* %value.addr, align 4
  %38 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Mval12 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 8
  store i32 %37, i32* %Mval12, align 4
  %39 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %40 = load %struct.tnode*, %struct.tnode** %39, align 8
  %value13 = getelementptr inbounds %struct.tnode, %struct.tnode* %40, i32 0, i32 0
  %41 = load i32, i32* %value13, align 4
  %42 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %Lval14 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 7
  store i32 %41, i32* %Lval14, align 4
  %43 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %44 = load %struct.tnode*, %struct.tnode** %43, align 8
  %45 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son115 = getelementptr inbounds %struct.tnode, %struct.tnode* %45, i32 0, i32 2
  store %struct.tnode* %44, %struct.tnode** %son115, align 8
  %46 = load %struct.tnode*, %struct.tnode** %v, align 8
  %47 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son216 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 3
  store %struct.tnode* %46, %struct.tnode** %son216, align 8
  %48 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son317 = getelementptr inbounds %struct.tnode, %struct.tnode* %48, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son317, align 8
  %49 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %son418 = getelementptr inbounds %struct.tnode, %struct.tnode* %49, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son418, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.9
  %50 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %father19 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %father19, align 8
  %51 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %nsons20 = getelementptr inbounds %struct.tnode, %struct.tnode* %51, i32 0, i32 1
  store i32 2, i32* %nsons20, align 4
  %52 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %53 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %54 = load %struct.tnode*, %struct.tnode** %53, align 8
  %father21 = getelementptr inbounds %struct.tnode, %struct.tnode* %54, i32 0, i32 6
  store %struct.tnode* %52, %struct.tnode** %father21, align 8
  %55 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %56 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father22 = getelementptr inbounds %struct.tnode, %struct.tnode* %56, i32 0, i32 6
  store %struct.tnode* %55, %struct.tnode** %father22, align 8
  %57 = load %struct.tnode*, %struct.tnode** %nr, align 8
  %58 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %57, %struct.tnode** %58, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.5
  br label %if.end.98

if.else.24:                                       ; preds = %if.else
  %59 = load i32, i32* %value.addr, align 4
  %60 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %61 = load %struct.tnode*, %struct.tnode** %60, align 8
  %call25 = call %struct.tnode* @tsearch(i32 %59, %struct.tnode* %61)
  store %struct.tnode* %call25, %struct.tnode** %f, align 8
  %62 = load i32, i32* %value.addr, align 4
  %63 = load %struct.tnode*, %struct.tnode** %f, align 8
  %call26 = call %struct.tnode* @tfind(i32 %62, %struct.tnode* %63)
  store %struct.tnode* %call26, %struct.tnode** %node, align 8
  %64 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp27 = icmp ne %struct.tnode* %64, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else.24
  %65 = load %struct.tnode*, %struct.tnode** %node, align 8
  %66 = load i32, i32* %property.addr, align 4
  call void @addplist(%struct.tnode* %65, i32 %66)
  br label %if.end.97

if.else.29:                                       ; preds = %if.else.24
  %67 = load i32, i32* %value.addr, align 4
  %68 = load i32, i32* %property.addr, align 4
  call void @makenode(%struct.tnode** %v, i32 %67, i32 %68)
  %69 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons30 = getelementptr inbounds %struct.tnode, %struct.tnode* %69, i32 0, i32 1
  %70 = load i32, i32* %nsons30, align 4
  %cmp31 = icmp eq i32 %70, 2
  br i1 %cmp31, label %if.then.32, label %if.else.60

if.then.32:                                       ; preds = %if.else.29
  %71 = load i32, i32* %value.addr, align 4
  %72 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son133 = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 2
  %73 = load %struct.tnode*, %struct.tnode** %son133, align 8
  %value34 = getelementptr inbounds %struct.tnode, %struct.tnode* %73, i32 0, i32 0
  %74 = load i32, i32* %value34, align 4
  %cmp35 = icmp sle i32 %71, %74
  br i1 %cmp35, label %if.then.36, label %if.else.45

if.then.36:                                       ; preds = %if.then.32
  %75 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son237 = getelementptr inbounds %struct.tnode, %struct.tnode* %75, i32 0, i32 3
  %76 = load %struct.tnode*, %struct.tnode** %son237, align 8
  %77 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son338 = getelementptr inbounds %struct.tnode, %struct.tnode* %77, i32 0, i32 4
  store %struct.tnode* %76, %struct.tnode** %son338, align 8
  %78 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son139 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 2
  %79 = load %struct.tnode*, %struct.tnode** %son139, align 8
  %80 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son240 = getelementptr inbounds %struct.tnode, %struct.tnode* %80, i32 0, i32 3
  store %struct.tnode* %79, %struct.tnode** %son240, align 8
  %81 = load %struct.tnode*, %struct.tnode** %v, align 8
  %82 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son141 = getelementptr inbounds %struct.tnode, %struct.tnode* %82, i32 0, i32 2
  store %struct.tnode* %81, %struct.tnode** %son141, align 8
  %83 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval42 = getelementptr inbounds %struct.tnode, %struct.tnode* %83, i32 0, i32 7
  %84 = load i32, i32* %Lval42, align 4
  %85 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval43 = getelementptr inbounds %struct.tnode, %struct.tnode* %85, i32 0, i32 8
  store i32 %84, i32* %Mval43, align 4
  %86 = load i32, i32* %value.addr, align 4
  %87 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval44 = getelementptr inbounds %struct.tnode, %struct.tnode* %87, i32 0, i32 7
  store i32 %86, i32* %Lval44, align 4
  br label %if.end.57

if.else.45:                                       ; preds = %if.then.32
  %88 = load i32, i32* %value.addr, align 4
  %89 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son246 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 3
  %90 = load %struct.tnode*, %struct.tnode** %son246, align 8
  %value47 = getelementptr inbounds %struct.tnode, %struct.tnode* %90, i32 0, i32 0
  %91 = load i32, i32* %value47, align 4
  %cmp48 = icmp sle i32 %88, %91
  br i1 %cmp48, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %if.else.45
  %92 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son250 = getelementptr inbounds %struct.tnode, %struct.tnode* %92, i32 0, i32 3
  %93 = load %struct.tnode*, %struct.tnode** %son250, align 8
  %94 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son351 = getelementptr inbounds %struct.tnode, %struct.tnode* %94, i32 0, i32 4
  store %struct.tnode* %93, %struct.tnode** %son351, align 8
  %95 = load %struct.tnode*, %struct.tnode** %v, align 8
  %96 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son252 = getelementptr inbounds %struct.tnode, %struct.tnode* %96, i32 0, i32 3
  store %struct.tnode* %95, %struct.tnode** %son252, align 8
  %97 = load i32, i32* %value.addr, align 4
  %98 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval53 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 8
  store i32 %97, i32* %Mval53, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %if.else.45
  %99 = load %struct.tnode*, %struct.tnode** %v, align 8
  %100 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son355 = getelementptr inbounds %struct.tnode, %struct.tnode* %100, i32 0, i32 4
  store %struct.tnode* %99, %struct.tnode** %son355, align 8
  %101 = load %struct.tnode*, %struct.tnode** %f, align 8
  %102 = load i32, i32* %value.addr, align 4
  call void @tpatch(%struct.tnode* %101, i32 %102)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.36
  %103 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons58 = getelementptr inbounds %struct.tnode, %struct.tnode* %103, i32 0, i32 1
  store i32 3, i32* %nsons58, align 4
  %104 = load %struct.tnode*, %struct.tnode** %f, align 8
  %105 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father59 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 6
  store %struct.tnode* %104, %struct.tnode** %father59, align 8
  br label %if.end.96

if.else.60:                                       ; preds = %if.else.29
  %106 = load i32, i32* %value.addr, align 4
  %107 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son161 = getelementptr inbounds %struct.tnode, %struct.tnode* %107, i32 0, i32 2
  %108 = load %struct.tnode*, %struct.tnode** %son161, align 8
  %value62 = getelementptr inbounds %struct.tnode, %struct.tnode* %108, i32 0, i32 0
  %109 = load i32, i32* %value62, align 4
  %cmp63 = icmp sle i32 %106, %109
  br i1 %cmp63, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %if.else.60
  %110 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son365 = getelementptr inbounds %struct.tnode, %struct.tnode* %110, i32 0, i32 4
  %111 = load %struct.tnode*, %struct.tnode** %son365, align 8
  %112 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son466 = getelementptr inbounds %struct.tnode, %struct.tnode* %112, i32 0, i32 5
  store %struct.tnode* %111, %struct.tnode** %son466, align 8
  %113 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son267 = getelementptr inbounds %struct.tnode, %struct.tnode* %113, i32 0, i32 3
  %114 = load %struct.tnode*, %struct.tnode** %son267, align 8
  %115 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son368 = getelementptr inbounds %struct.tnode, %struct.tnode* %115, i32 0, i32 4
  store %struct.tnode* %114, %struct.tnode** %son368, align 8
  %116 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son169 = getelementptr inbounds %struct.tnode, %struct.tnode* %116, i32 0, i32 2
  %117 = load %struct.tnode*, %struct.tnode** %son169, align 8
  %118 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son270 = getelementptr inbounds %struct.tnode, %struct.tnode* %118, i32 0, i32 3
  store %struct.tnode* %117, %struct.tnode** %son270, align 8
  %119 = load %struct.tnode*, %struct.tnode** %v, align 8
  %120 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son171 = getelementptr inbounds %struct.tnode, %struct.tnode* %120, i32 0, i32 2
  store %struct.tnode* %119, %struct.tnode** %son171, align 8
  br label %if.end.94

if.else.72:                                       ; preds = %if.else.60
  %121 = load i32, i32* %value.addr, align 4
  %122 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son273 = getelementptr inbounds %struct.tnode, %struct.tnode* %122, i32 0, i32 3
  %123 = load %struct.tnode*, %struct.tnode** %son273, align 8
  %value74 = getelementptr inbounds %struct.tnode, %struct.tnode* %123, i32 0, i32 0
  %124 = load i32, i32* %value74, align 4
  %cmp75 = icmp sle i32 %121, %124
  br i1 %cmp75, label %if.then.76, label %if.else.82

if.then.76:                                       ; preds = %if.else.72
  %125 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son377 = getelementptr inbounds %struct.tnode, %struct.tnode* %125, i32 0, i32 4
  %126 = load %struct.tnode*, %struct.tnode** %son377, align 8
  %127 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son478 = getelementptr inbounds %struct.tnode, %struct.tnode* %127, i32 0, i32 5
  store %struct.tnode* %126, %struct.tnode** %son478, align 8
  %128 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son279 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 3
  %129 = load %struct.tnode*, %struct.tnode** %son279, align 8
  %130 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son380 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 4
  store %struct.tnode* %129, %struct.tnode** %son380, align 8
  %131 = load %struct.tnode*, %struct.tnode** %v, align 8
  %132 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son281 = getelementptr inbounds %struct.tnode, %struct.tnode* %132, i32 0, i32 3
  store %struct.tnode* %131, %struct.tnode** %son281, align 8
  br label %if.end.93

if.else.82:                                       ; preds = %if.else.72
  %133 = load i32, i32* %value.addr, align 4
  %134 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son383 = getelementptr inbounds %struct.tnode, %struct.tnode* %134, i32 0, i32 4
  %135 = load %struct.tnode*, %struct.tnode** %son383, align 8
  %value84 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 0
  %136 = load i32, i32* %value84, align 4
  %cmp85 = icmp sle i32 %133, %136
  br i1 %cmp85, label %if.then.86, label %if.else.90

if.then.86:                                       ; preds = %if.else.82
  %137 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son387 = getelementptr inbounds %struct.tnode, %struct.tnode* %137, i32 0, i32 4
  %138 = load %struct.tnode*, %struct.tnode** %son387, align 8
  %139 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son488 = getelementptr inbounds %struct.tnode, %struct.tnode* %139, i32 0, i32 5
  store %struct.tnode* %138, %struct.tnode** %son488, align 8
  %140 = load %struct.tnode*, %struct.tnode** %v, align 8
  %141 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son389 = getelementptr inbounds %struct.tnode, %struct.tnode* %141, i32 0, i32 4
  store %struct.tnode* %140, %struct.tnode** %son389, align 8
  br label %if.end.92

if.else.90:                                       ; preds = %if.else.82
  %142 = load %struct.tnode*, %struct.tnode** %v, align 8
  %143 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son491 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 5
  store %struct.tnode* %142, %struct.tnode** %son491, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.86
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.76
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.64
  %144 = load %struct.tnode*, %struct.tnode** %f, align 8
  %145 = load %struct.tnode*, %struct.tnode** %v, align 8
  %father95 = getelementptr inbounds %struct.tnode, %struct.tnode* %145, i32 0, i32 6
  store %struct.tnode* %144, %struct.tnode** %father95, align 8
  %146 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %147 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @taddson(%struct.tnode** %146, %struct.tnode* %147)
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %if.end.57
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.28
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.23
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @makenode(%struct.tnode** %v, i32 %value, i32 %property) #0 {
entry:
  %v.addr = alloca %struct.tnode**, align 8
  %value.addr = alloca i32, align 4
  %property.addr = alloca i32, align 4
  store %struct.tnode** %v, %struct.tnode*** %v.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %property, i32* %property.addr, align 4
  %call = call noalias i8* @malloc(i64 64) #3
  %0 = bitcast i8* %call to %struct.tnode*
  %1 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  store %struct.tnode* %0, %struct.tnode** %1, align 8
  %2 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %3 = load %struct.tnode*, %struct.tnode** %2, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 2
  store %struct.tnode* null, %struct.tnode** %son1, align 8
  %4 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %5 = load %struct.tnode*, %struct.tnode** %4, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 3
  store %struct.tnode* null, %struct.tnode** %son2, align 8
  %6 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %7 = load %struct.tnode*, %struct.tnode** %6, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %7, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3, align 8
  %8 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %9 = load %struct.tnode*, %struct.tnode** %8, align 8
  %son4 = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %son4, align 8
  %10 = load i32, i32* %value.addr, align 4
  %11 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %12 = load %struct.tnode*, %struct.tnode** %11, align 8
  %value1 = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 0
  store i32 %10, i32* %value1, align 4
  %13 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %14 = load %struct.tnode*, %struct.tnode** %13, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 1
  store i32 0, i32* %nsons, align 4
  %call2 = call noalias i8* @malloc(i64 16) #3
  %15 = bitcast i8* %call2 to %struct.plist*
  %16 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %17 = load %struct.tnode*, %struct.tnode** %16, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 9
  store %struct.plist* %15, %struct.plist** %plist, align 8
  %18 = load i32, i32* %property.addr, align 4
  %19 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %plist3 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 9
  %21 = load %struct.plist*, %struct.plist** %plist3, align 8
  %property4 = getelementptr inbounds %struct.plist, %struct.plist* %21, i32 0, i32 0
  store i32 %18, i32* %property4, align 4
  %22 = load %struct.tnode**, %struct.tnode*** %v.addr, align 8
  %23 = load %struct.tnode*, %struct.tnode** %22, align 8
  %plist5 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 9
  %24 = load %struct.plist*, %struct.plist** %plist5, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %24, i32 0, i32 1
  store %struct.plist* null, %struct.plist** %pnext, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @addplist(%struct.tnode* %v, i32 %property) #0 {
entry:
  %v.addr = alloca %struct.tnode*, align 8
  %property.addr = alloca i32, align 4
  %plptr = alloca %struct.plist*, align 8
  store %struct.tnode* %v, %struct.tnode** %v.addr, align 8
  store i32 %property, i32* %property.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.plist*
  store %struct.plist* %0, %struct.plist** %plptr, align 8
  %1 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 9
  %2 = load %struct.plist*, %struct.plist** %plist, align 8
  %3 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %3, i32 0, i32 1
  store %struct.plist* %2, %struct.plist** %pnext, align 8
  %4 = load %struct.plist*, %struct.plist** %plptr, align 8
  %5 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %plist1 = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 9
  store %struct.plist* %4, %struct.plist** %plist1, align 8
  %6 = load i32, i32* %property.addr, align 4
  %7 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %plist2 = getelementptr inbounds %struct.tnode, %struct.tnode* %7, i32 0, i32 9
  %8 = load %struct.plist*, %struct.plist** %plist2, align 8
  %property3 = getelementptr inbounds %struct.plist, %struct.plist* %8, i32 0, i32 0
  store i32 %6, i32* %property3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @tsubson(%struct.tnode** %root, %struct.tnode* %l) #0 {
entry:
  %root.addr = alloca %struct.tnode**, align 8
  %l.addr = alloca %struct.tnode*, align 8
  %f = alloca %struct.tnode*, align 8
  %s = alloca %struct.tnode*, align 8
  %g = alloca %struct.tnode*, align 8
  %LMval = alloca i32, align 4
  store %struct.tnode** %root, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %l, %struct.tnode** %l.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %father = getelementptr inbounds %struct.tnode, %struct.tnode* %0, i32 0, i32 6
  %1 = load %struct.tnode*, %struct.tnode** %father, align 8
  store %struct.tnode* %1, %struct.tnode** %f, align 8
  %2 = load %struct.tnode*, %struct.tnode** %f, align 8
  %3 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %4 = load %struct.tnode*, %struct.tnode** %3, align 8
  %cmp = icmp eq %struct.tnode* %2, %4
  br i1 %cmp, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %5 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %6 = load %struct.tnode*, %struct.tnode** %5, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 2
  %7 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %8 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %cmp1 = icmp eq %struct.tnode* %7, %8
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %10 = load %struct.tnode*, %struct.tnode** %9, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 3
  %11 = load %struct.tnode*, %struct.tnode** %son2, align 8
  store %struct.tnode* %11, %struct.tnode** %s, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %13 = load %struct.tnode*, %struct.tnode** %12, align 8
  %son13 = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 2
  %14 = load %struct.tnode*, %struct.tnode** %son13, align 8
  store %struct.tnode* %14, %struct.tnode** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %15 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father4 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %father4, align 8
  %16 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %17 = bitcast %struct.tnode* %16 to i8*
  call void @free(i8* %17) #3
  %18 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %19 = load %struct.tnode*, %struct.tnode** %18, align 8
  %20 = bitcast %struct.tnode* %19 to i8*
  call void @free(i8* %20) #3
  %21 = load %struct.tnode*, %struct.tnode** %s, align 8
  %22 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  store %struct.tnode* %21, %struct.tnode** %22, align 8
  br label %if.end.267

if.else.5:                                        ; preds = %entry
  %23 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son16 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 2
  %24 = load %struct.tnode*, %struct.tnode** %son16, align 8
  %25 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %cmp7 = icmp eq %struct.tnode* %24, %25
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.5
  %26 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son29 = getelementptr inbounds %struct.tnode, %struct.tnode* %26, i32 0, i32 3
  %27 = load %struct.tnode*, %struct.tnode** %son29, align 8
  store %struct.tnode* %27, %struct.tnode** %s, align 8
  %28 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 8
  %29 = load i32, i32* %Mval, align 4
  store i32 %29, i32* %LMval, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %if.else.5
  %30 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son111 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 2
  %31 = load %struct.tnode*, %struct.tnode** %son111, align 8
  store %struct.tnode* %31, %struct.tnode** %s, align 8
  %32 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 7
  %33 = load i32, i32* %Lval, align 4
  store i32 %33, i32* %LMval, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %34 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father13 = getelementptr inbounds %struct.tnode, %struct.tnode* %34, i32 0, i32 6
  %35 = load %struct.tnode*, %struct.tnode** %father13, align 8
  %son114 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 2
  %36 = load %struct.tnode*, %struct.tnode** %son114, align 8
  %37 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp15 = icmp eq %struct.tnode* %36, %37
  br i1 %cmp15, label %if.then.16, label %if.else.128

if.then.16:                                       ; preds = %if.end.12
  %38 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father17 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 6
  %39 = load %struct.tnode*, %struct.tnode** %father17, align 8
  %son218 = getelementptr inbounds %struct.tnode, %struct.tnode* %39, i32 0, i32 3
  %40 = load %struct.tnode*, %struct.tnode** %son218, align 8
  store %struct.tnode* %40, %struct.tnode** %g, align 8
  %41 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father19 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 6
  %42 = load %struct.tnode*, %struct.tnode** %father19, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 1
  %43 = load i32, i32* %nsons, align 4
  %cmp20 = icmp eq i32 %43, 2
  br i1 %cmp20, label %if.then.21, label %if.else.58

if.then.21:                                       ; preds = %if.then.16
  %44 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons22 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 1
  %45 = load i32, i32* %nsons22, align 4
  %cmp23 = icmp eq i32 %45, 2
  br i1 %cmp23, label %if.then.24, label %if.else.34

if.then.24:                                       ; preds = %if.then.21
  %46 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons25 = getelementptr inbounds %struct.tnode, %struct.tnode* %46, i32 0, i32 1
  store i32 3, i32* %nsons25, align 4
  %47 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son226 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 3
  %48 = load %struct.tnode*, %struct.tnode** %son226, align 8
  %49 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %49, i32 0, i32 4
  store %struct.tnode* %48, %struct.tnode** %son3, align 8
  %50 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son127 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 2
  %51 = load %struct.tnode*, %struct.tnode** %son127, align 8
  %52 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son228 = getelementptr inbounds %struct.tnode, %struct.tnode* %52, i32 0, i32 3
  store %struct.tnode* %51, %struct.tnode** %son228, align 8
  %53 = load %struct.tnode*, %struct.tnode** %s, align 8
  %54 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son129 = getelementptr inbounds %struct.tnode, %struct.tnode* %54, i32 0, i32 2
  store %struct.tnode* %53, %struct.tnode** %son129, align 8
  %55 = load %struct.tnode*, %struct.tnode** %g, align 8
  %56 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father30 = getelementptr inbounds %struct.tnode, %struct.tnode* %56, i32 0, i32 6
  store %struct.tnode* %55, %struct.tnode** %father30, align 8
  %57 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %58 = bitcast %struct.tnode* %57 to i8*
  call void @free(i8* %58) #3
  %59 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval31 = getelementptr inbounds %struct.tnode, %struct.tnode* %59, i32 0, i32 7
  %60 = load i32, i32* %Lval31, align 4
  %61 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval32 = getelementptr inbounds %struct.tnode, %struct.tnode* %61, i32 0, i32 8
  store i32 %60, i32* %Mval32, align 4
  %62 = load i32, i32* %LMval, align 4
  %63 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval33 = getelementptr inbounds %struct.tnode, %struct.tnode* %63, i32 0, i32 7
  store i32 %62, i32* %Lval33, align 4
  %64 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %65 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @tsubson(%struct.tnode** %64, %struct.tnode* %65)
  br label %if.end.57

if.else.34:                                       ; preds = %if.then.21
  %66 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons35 = getelementptr inbounds %struct.tnode, %struct.tnode* %66, i32 0, i32 1
  store i32 2, i32* %nsons35, align 4
  %67 = load %struct.tnode*, %struct.tnode** %s, align 8
  %68 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son136 = getelementptr inbounds %struct.tnode, %struct.tnode* %68, i32 0, i32 2
  store %struct.tnode* %67, %struct.tnode** %son136, align 8
  %69 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son137 = getelementptr inbounds %struct.tnode, %struct.tnode* %69, i32 0, i32 2
  %70 = load %struct.tnode*, %struct.tnode** %son137, align 8
  %71 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son238 = getelementptr inbounds %struct.tnode, %struct.tnode* %71, i32 0, i32 3
  store %struct.tnode* %70, %struct.tnode** %son238, align 8
  %72 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son239 = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 3
  %73 = load %struct.tnode*, %struct.tnode** %son239, align 8
  %74 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son140 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 2
  store %struct.tnode* %73, %struct.tnode** %son140, align 8
  %75 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son341 = getelementptr inbounds %struct.tnode, %struct.tnode* %75, i32 0, i32 4
  %76 = load %struct.tnode*, %struct.tnode** %son341, align 8
  %77 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son242 = getelementptr inbounds %struct.tnode, %struct.tnode* %77, i32 0, i32 3
  store %struct.tnode* %76, %struct.tnode** %son242, align 8
  %78 = load %struct.tnode*, %struct.tnode** %f, align 8
  %79 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son243 = getelementptr inbounds %struct.tnode, %struct.tnode* %79, i32 0, i32 3
  %80 = load %struct.tnode*, %struct.tnode** %son243, align 8
  %father44 = getelementptr inbounds %struct.tnode, %struct.tnode* %80, i32 0, i32 6
  store %struct.tnode* %78, %struct.tnode** %father44, align 8
  %81 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son345 = getelementptr inbounds %struct.tnode, %struct.tnode* %81, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son345, align 8
  %82 = load i32, i32* %LMval, align 4
  %83 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval46 = getelementptr inbounds %struct.tnode, %struct.tnode* %83, i32 0, i32 7
  store i32 %82, i32* %Lval46, align 4
  %84 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval47 = getelementptr inbounds %struct.tnode, %struct.tnode* %84, i32 0, i32 7
  %85 = load i32, i32* %Lval47, align 4
  %86 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval48 = getelementptr inbounds %struct.tnode, %struct.tnode* %86, i32 0, i32 8
  store i32 %85, i32* %Mval48, align 4
  %87 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval49 = getelementptr inbounds %struct.tnode, %struct.tnode* %87, i32 0, i32 8
  %88 = load i32, i32* %Mval49, align 4
  %89 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval50 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 7
  store i32 %88, i32* %Lval50, align 4
  %90 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father51 = getelementptr inbounds %struct.tnode, %struct.tnode* %90, i32 0, i32 6
  %91 = load %struct.tnode*, %struct.tnode** %father51, align 8
  %Mval52 = getelementptr inbounds %struct.tnode, %struct.tnode* %91, i32 0, i32 8
  %92 = load i32, i32* %Mval52, align 4
  %93 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval53 = getelementptr inbounds %struct.tnode, %struct.tnode* %93, i32 0, i32 8
  store i32 %92, i32* %Mval53, align 4
  %94 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval54 = getelementptr inbounds %struct.tnode, %struct.tnode* %94, i32 0, i32 8
  %95 = load i32, i32* %Mval54, align 4
  %96 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father55 = getelementptr inbounds %struct.tnode, %struct.tnode* %96, i32 0, i32 6
  %97 = load %struct.tnode*, %struct.tnode** %father55, align 8
  %Lval56 = getelementptr inbounds %struct.tnode, %struct.tnode* %97, i32 0, i32 7
  store i32 %95, i32* %Lval56, align 4
  %98 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %99 = bitcast %struct.tnode* %98 to i8*
  call void @free(i8* %99) #3
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.34, %if.then.24
  br label %if.end.127

if.else.58:                                       ; preds = %if.then.16
  %100 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons59 = getelementptr inbounds %struct.tnode, %struct.tnode* %100, i32 0, i32 1
  %101 = load i32, i32* %nsons59, align 4
  %cmp60 = icmp eq i32 %101, 2
  br i1 %cmp60, label %if.then.61, label %if.else.103

if.then.61:                                       ; preds = %if.else.58
  %102 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons62 = getelementptr inbounds %struct.tnode, %struct.tnode* %102, i32 0, i32 1
  store i32 3, i32* %nsons62, align 4
  %103 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son263 = getelementptr inbounds %struct.tnode, %struct.tnode* %103, i32 0, i32 3
  %104 = load %struct.tnode*, %struct.tnode** %son263, align 8
  %105 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son364 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 4
  store %struct.tnode* %104, %struct.tnode** %son364, align 8
  %106 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son165 = getelementptr inbounds %struct.tnode, %struct.tnode* %106, i32 0, i32 2
  %107 = load %struct.tnode*, %struct.tnode** %son165, align 8
  %108 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son266 = getelementptr inbounds %struct.tnode, %struct.tnode* %108, i32 0, i32 3
  store %struct.tnode* %107, %struct.tnode** %son266, align 8
  %109 = load %struct.tnode*, %struct.tnode** %s, align 8
  %110 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son167 = getelementptr inbounds %struct.tnode, %struct.tnode* %110, i32 0, i32 2
  store %struct.tnode* %109, %struct.tnode** %son167, align 8
  %111 = load %struct.tnode*, %struct.tnode** %g, align 8
  %112 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father68 = getelementptr inbounds %struct.tnode, %struct.tnode* %112, i32 0, i32 6
  store %struct.tnode* %111, %struct.tnode** %father68, align 8
  %113 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %114 = bitcast %struct.tnode* %113 to i8*
  call void @free(i8* %114) #3
  %115 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval69 = getelementptr inbounds %struct.tnode, %struct.tnode* %115, i32 0, i32 7
  %116 = load i32, i32* %Lval69, align 4
  %117 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval70 = getelementptr inbounds %struct.tnode, %struct.tnode* %117, i32 0, i32 8
  store i32 %116, i32* %Mval70, align 4
  %118 = load i32, i32* %LMval, align 4
  %119 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval71 = getelementptr inbounds %struct.tnode, %struct.tnode* %119, i32 0, i32 7
  store i32 %118, i32* %Lval71, align 4
  %120 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father72 = getelementptr inbounds %struct.tnode, %struct.tnode* %120, i32 0, i32 6
  %121 = load %struct.tnode*, %struct.tnode** %father72, align 8
  %son273 = getelementptr inbounds %struct.tnode, %struct.tnode* %121, i32 0, i32 3
  %122 = load %struct.tnode*, %struct.tnode** %son273, align 8
  %123 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father74 = getelementptr inbounds %struct.tnode, %struct.tnode* %123, i32 0, i32 6
  %124 = load %struct.tnode*, %struct.tnode** %father74, align 8
  %son175 = getelementptr inbounds %struct.tnode, %struct.tnode* %124, i32 0, i32 2
  store %struct.tnode* %122, %struct.tnode** %son175, align 8
  %125 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father76 = getelementptr inbounds %struct.tnode, %struct.tnode* %125, i32 0, i32 6
  %126 = load %struct.tnode*, %struct.tnode** %father76, align 8
  %son377 = getelementptr inbounds %struct.tnode, %struct.tnode* %126, i32 0, i32 4
  %127 = load %struct.tnode*, %struct.tnode** %son377, align 8
  %128 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father78 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 6
  %129 = load %struct.tnode*, %struct.tnode** %father78, align 8
  %son279 = getelementptr inbounds %struct.tnode, %struct.tnode* %129, i32 0, i32 3
  store %struct.tnode* %127, %struct.tnode** %son279, align 8
  %130 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father80 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 6
  %131 = load %struct.tnode*, %struct.tnode** %father80, align 8
  %son381 = getelementptr inbounds %struct.tnode, %struct.tnode* %131, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son381, align 8
  %132 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father82 = getelementptr inbounds %struct.tnode, %struct.tnode* %132, i32 0, i32 6
  %133 = load %struct.tnode*, %struct.tnode** %father82, align 8
  %nsons83 = getelementptr inbounds %struct.tnode, %struct.tnode* %133, i32 0, i32 1
  store i32 2, i32* %nsons83, align 4
  %134 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father84 = getelementptr inbounds %struct.tnode, %struct.tnode* %134, i32 0, i32 6
  %135 = load %struct.tnode*, %struct.tnode** %father84, align 8
  %Mval85 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 8
  %136 = load i32, i32* %Mval85, align 4
  %137 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father86 = getelementptr inbounds %struct.tnode, %struct.tnode* %137, i32 0, i32 6
  %138 = load %struct.tnode*, %struct.tnode** %father86, align 8
  %Lval87 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 7
  store i32 %136, i32* %Lval87, align 4
  %139 = load %struct.tnode*, %struct.tnode** %f, align 8
  %140 = bitcast %struct.tnode* %139 to i8*
  call void @free(i8* %140) #3
  %141 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father88 = getelementptr inbounds %struct.tnode, %struct.tnode* %141, i32 0, i32 6
  %142 = load %struct.tnode*, %struct.tnode** %father88, align 8
  %son289 = getelementptr inbounds %struct.tnode, %struct.tnode* %142, i32 0, i32 3
  %143 = load %struct.tnode*, %struct.tnode** %son289, align 8
  store %struct.tnode* %143, %struct.tnode** %f, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.61
  %144 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons90 = getelementptr inbounds %struct.tnode, %struct.tnode* %144, i32 0, i32 1
  %145 = load i32, i32* %nsons90, align 4
  %cmp91 = icmp eq i32 %145, 3
  br i1 %cmp91, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %146 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son392 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 4
  %147 = load %struct.tnode*, %struct.tnode** %son392, align 8
  store %struct.tnode* %147, %struct.tnode** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %148 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons93 = getelementptr inbounds %struct.tnode, %struct.tnode* %148, i32 0, i32 1
  %149 = load i32, i32* %nsons93, align 4
  %cmp94 = icmp eq i32 %149, 0
  br i1 %cmp94, label %if.then.95, label %if.else.98

if.then.95:                                       ; preds = %while.end
  %150 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value = getelementptr inbounds %struct.tnode, %struct.tnode* %150, i32 0, i32 0
  %151 = load i32, i32* %value, align 4
  %152 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father96 = getelementptr inbounds %struct.tnode, %struct.tnode* %152, i32 0, i32 6
  %153 = load %struct.tnode*, %struct.tnode** %father96, align 8
  %Mval97 = getelementptr inbounds %struct.tnode, %struct.tnode* %153, i32 0, i32 8
  store i32 %151, i32* %Mval97, align 4
  br label %if.end.102

if.else.98:                                       ; preds = %while.end
  %154 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval99 = getelementptr inbounds %struct.tnode, %struct.tnode* %154, i32 0, i32 8
  %155 = load i32, i32* %Mval99, align 4
  %156 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father100 = getelementptr inbounds %struct.tnode, %struct.tnode* %156, i32 0, i32 6
  %157 = load %struct.tnode*, %struct.tnode** %father100, align 8
  %Mval101 = getelementptr inbounds %struct.tnode, %struct.tnode* %157, i32 0, i32 8
  store i32 %155, i32* %Mval101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.98, %if.then.95
  br label %if.end.126

if.else.103:                                      ; preds = %if.else.58
  %158 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons104 = getelementptr inbounds %struct.tnode, %struct.tnode* %158, i32 0, i32 1
  store i32 2, i32* %nsons104, align 4
  %159 = load %struct.tnode*, %struct.tnode** %s, align 8
  %160 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1105 = getelementptr inbounds %struct.tnode, %struct.tnode* %160, i32 0, i32 2
  store %struct.tnode* %159, %struct.tnode** %son1105, align 8
  %161 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1106 = getelementptr inbounds %struct.tnode, %struct.tnode* %161, i32 0, i32 2
  %162 = load %struct.tnode*, %struct.tnode** %son1106, align 8
  %163 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2107 = getelementptr inbounds %struct.tnode, %struct.tnode* %163, i32 0, i32 3
  store %struct.tnode* %162, %struct.tnode** %son2107, align 8
  %164 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2108 = getelementptr inbounds %struct.tnode, %struct.tnode* %164, i32 0, i32 3
  %165 = load %struct.tnode*, %struct.tnode** %son2108, align 8
  %166 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1109 = getelementptr inbounds %struct.tnode, %struct.tnode* %166, i32 0, i32 2
  store %struct.tnode* %165, %struct.tnode** %son1109, align 8
  %167 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3110 = getelementptr inbounds %struct.tnode, %struct.tnode* %167, i32 0, i32 4
  %168 = load %struct.tnode*, %struct.tnode** %son3110, align 8
  %169 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2111 = getelementptr inbounds %struct.tnode, %struct.tnode* %169, i32 0, i32 3
  store %struct.tnode* %168, %struct.tnode** %son2111, align 8
  %170 = load %struct.tnode*, %struct.tnode** %f, align 8
  %171 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2112 = getelementptr inbounds %struct.tnode, %struct.tnode* %171, i32 0, i32 3
  %172 = load %struct.tnode*, %struct.tnode** %son2112, align 8
  %father113 = getelementptr inbounds %struct.tnode, %struct.tnode* %172, i32 0, i32 6
  store %struct.tnode* %170, %struct.tnode** %father113, align 8
  %173 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3114 = getelementptr inbounds %struct.tnode, %struct.tnode* %173, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3114, align 8
  %174 = load i32, i32* %LMval, align 4
  %175 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval115 = getelementptr inbounds %struct.tnode, %struct.tnode* %175, i32 0, i32 7
  store i32 %174, i32* %Lval115, align 4
  %176 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval116 = getelementptr inbounds %struct.tnode, %struct.tnode* %176, i32 0, i32 7
  %177 = load i32, i32* %Lval116, align 4
  %178 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval117 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 8
  store i32 %177, i32* %Mval117, align 4
  %179 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval118 = getelementptr inbounds %struct.tnode, %struct.tnode* %179, i32 0, i32 8
  %180 = load i32, i32* %Mval118, align 4
  %181 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval119 = getelementptr inbounds %struct.tnode, %struct.tnode* %181, i32 0, i32 7
  store i32 %180, i32* %Lval119, align 4
  %182 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father120 = getelementptr inbounds %struct.tnode, %struct.tnode* %182, i32 0, i32 6
  %183 = load %struct.tnode*, %struct.tnode** %father120, align 8
  %Mval121 = getelementptr inbounds %struct.tnode, %struct.tnode* %183, i32 0, i32 8
  %184 = load i32, i32* %Mval121, align 4
  %185 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval122 = getelementptr inbounds %struct.tnode, %struct.tnode* %185, i32 0, i32 8
  store i32 %184, i32* %Mval122, align 4
  %186 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval123 = getelementptr inbounds %struct.tnode, %struct.tnode* %186, i32 0, i32 8
  %187 = load i32, i32* %Mval123, align 4
  %188 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father124 = getelementptr inbounds %struct.tnode, %struct.tnode* %188, i32 0, i32 6
  %189 = load %struct.tnode*, %struct.tnode** %father124, align 8
  %Lval125 = getelementptr inbounds %struct.tnode, %struct.tnode* %189, i32 0, i32 7
  store i32 %187, i32* %Lval125, align 4
  %190 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %191 = bitcast %struct.tnode* %190 to i8*
  call void @free(i8* %191) #3
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.103, %if.end.102
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.57
  br label %if.end.266

if.else.128:                                      ; preds = %if.end.12
  %192 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father129 = getelementptr inbounds %struct.tnode, %struct.tnode* %192, i32 0, i32 6
  %193 = load %struct.tnode*, %struct.tnode** %father129, align 8
  %son2130 = getelementptr inbounds %struct.tnode, %struct.tnode* %193, i32 0, i32 3
  %194 = load %struct.tnode*, %struct.tnode** %son2130, align 8
  %195 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp131 = icmp eq %struct.tnode* %194, %195
  br i1 %cmp131, label %if.then.132, label %if.else.232

if.then.132:                                      ; preds = %if.else.128
  %196 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father133 = getelementptr inbounds %struct.tnode, %struct.tnode* %196, i32 0, i32 6
  %197 = load %struct.tnode*, %struct.tnode** %father133, align 8
  %nsons134 = getelementptr inbounds %struct.tnode, %struct.tnode* %197, i32 0, i32 1
  %198 = load i32, i32* %nsons134, align 4
  %cmp135 = icmp eq i32 %198, 2
  br i1 %cmp135, label %if.then.136, label %if.else.167

if.then.136:                                      ; preds = %if.then.132
  %199 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father137 = getelementptr inbounds %struct.tnode, %struct.tnode* %199, i32 0, i32 6
  %200 = load %struct.tnode*, %struct.tnode** %father137, align 8
  %son1138 = getelementptr inbounds %struct.tnode, %struct.tnode* %200, i32 0, i32 2
  %201 = load %struct.tnode*, %struct.tnode** %son1138, align 8
  store %struct.tnode* %201, %struct.tnode** %g, align 8
  %202 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons139 = getelementptr inbounds %struct.tnode, %struct.tnode* %202, i32 0, i32 1
  %203 = load i32, i32* %nsons139, align 4
  %cmp140 = icmp eq i32 %203, 2
  br i1 %cmp140, label %if.then.141, label %if.else.147

if.then.141:                                      ; preds = %if.then.136
  %204 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons142 = getelementptr inbounds %struct.tnode, %struct.tnode* %204, i32 0, i32 1
  store i32 3, i32* %nsons142, align 4
  %205 = load %struct.tnode*, %struct.tnode** %s, align 8
  %206 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3143 = getelementptr inbounds %struct.tnode, %struct.tnode* %206, i32 0, i32 4
  store %struct.tnode* %205, %struct.tnode** %son3143, align 8
  %207 = load %struct.tnode*, %struct.tnode** %g, align 8
  %208 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father144 = getelementptr inbounds %struct.tnode, %struct.tnode* %208, i32 0, i32 6
  store %struct.tnode* %207, %struct.tnode** %father144, align 8
  %209 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %210 = bitcast %struct.tnode* %209 to i8*
  call void @free(i8* %210) #3
  %211 = load i32, i32* %LMval, align 4
  %212 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father145 = getelementptr inbounds %struct.tnode, %struct.tnode* %212, i32 0, i32 6
  %213 = load %struct.tnode*, %struct.tnode** %father145, align 8
  %Lval146 = getelementptr inbounds %struct.tnode, %struct.tnode* %213, i32 0, i32 7
  store i32 %211, i32* %Lval146, align 4
  %214 = load %struct.tnode**, %struct.tnode*** %root.addr, align 8
  %215 = load %struct.tnode*, %struct.tnode** %f, align 8
  call void @tsubson(%struct.tnode** %214, %struct.tnode* %215)
  br label %if.end.166

if.else.147:                                      ; preds = %if.then.136
  %216 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons148 = getelementptr inbounds %struct.tnode, %struct.tnode* %216, i32 0, i32 1
  store i32 2, i32* %nsons148, align 4
  %217 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3149 = getelementptr inbounds %struct.tnode, %struct.tnode* %217, i32 0, i32 4
  %218 = load %struct.tnode*, %struct.tnode** %son3149, align 8
  %219 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1150 = getelementptr inbounds %struct.tnode, %struct.tnode* %219, i32 0, i32 2
  store %struct.tnode* %218, %struct.tnode** %son1150, align 8
  %220 = load %struct.tnode*, %struct.tnode** %s, align 8
  %221 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2151 = getelementptr inbounds %struct.tnode, %struct.tnode* %221, i32 0, i32 3
  store %struct.tnode* %220, %struct.tnode** %son2151, align 8
  %222 = load %struct.tnode*, %struct.tnode** %f, align 8
  %223 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1152 = getelementptr inbounds %struct.tnode, %struct.tnode* %223, i32 0, i32 2
  %224 = load %struct.tnode*, %struct.tnode** %son1152, align 8
  %father153 = getelementptr inbounds %struct.tnode, %struct.tnode* %224, i32 0, i32 6
  store %struct.tnode* %222, %struct.tnode** %father153, align 8
  %225 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3154 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3154, align 8
  %226 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father155 = getelementptr inbounds %struct.tnode, %struct.tnode* %226, i32 0, i32 6
  %227 = load %struct.tnode*, %struct.tnode** %father155, align 8
  %Lval156 = getelementptr inbounds %struct.tnode, %struct.tnode* %227, i32 0, i32 7
  %228 = load i32, i32* %Lval156, align 4
  %229 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval157 = getelementptr inbounds %struct.tnode, %struct.tnode* %229, i32 0, i32 7
  store i32 %228, i32* %Lval157, align 4
  %230 = load i32, i32* %LMval, align 4
  %231 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval158 = getelementptr inbounds %struct.tnode, %struct.tnode* %231, i32 0, i32 8
  store i32 %230, i32* %Mval158, align 4
  %232 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval159 = getelementptr inbounds %struct.tnode, %struct.tnode* %232, i32 0, i32 8
  %233 = load i32, i32* %Mval159, align 4
  %234 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father160 = getelementptr inbounds %struct.tnode, %struct.tnode* %234, i32 0, i32 6
  %235 = load %struct.tnode*, %struct.tnode** %father160, align 8
  %Lval161 = getelementptr inbounds %struct.tnode, %struct.tnode* %235, i32 0, i32 7
  store i32 %233, i32* %Lval161, align 4
  %236 = load i32, i32* %LMval, align 4
  %237 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father162 = getelementptr inbounds %struct.tnode, %struct.tnode* %237, i32 0, i32 6
  %238 = load %struct.tnode*, %struct.tnode** %father162, align 8
  %Mval163 = getelementptr inbounds %struct.tnode, %struct.tnode* %238, i32 0, i32 8
  store i32 %236, i32* %Mval163, align 4
  %239 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father164 = getelementptr inbounds %struct.tnode, %struct.tnode* %239, i32 0, i32 6
  %240 = load %struct.tnode*, %struct.tnode** %father164, align 8
  %241 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval165 = getelementptr inbounds %struct.tnode, %struct.tnode* %241, i32 0, i32 8
  %242 = load i32, i32* %Mval165, align 4
  call void @tpatch(%struct.tnode* %240, i32 %242)
  %243 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %244 = bitcast %struct.tnode* %243 to i8*
  call void @free(i8* %244) #3
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.147, %if.then.141
  br label %if.end.231

if.else.167:                                      ; preds = %if.then.132
  %245 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father168 = getelementptr inbounds %struct.tnode, %struct.tnode* %245, i32 0, i32 6
  %246 = load %struct.tnode*, %struct.tnode** %father168, align 8
  %son3169 = getelementptr inbounds %struct.tnode, %struct.tnode* %246, i32 0, i32 4
  %247 = load %struct.tnode*, %struct.tnode** %son3169, align 8
  store %struct.tnode* %247, %struct.tnode** %g, align 8
  %248 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons170 = getelementptr inbounds %struct.tnode, %struct.tnode* %248, i32 0, i32 1
  %249 = load i32, i32* %nsons170, align 4
  %cmp171 = icmp eq i32 %249, 2
  br i1 %cmp171, label %if.then.172, label %if.else.194

if.then.172:                                      ; preds = %if.else.167
  %250 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons173 = getelementptr inbounds %struct.tnode, %struct.tnode* %250, i32 0, i32 1
  store i32 3, i32* %nsons173, align 4
  %251 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2174 = getelementptr inbounds %struct.tnode, %struct.tnode* %251, i32 0, i32 3
  %252 = load %struct.tnode*, %struct.tnode** %son2174, align 8
  %253 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3175 = getelementptr inbounds %struct.tnode, %struct.tnode* %253, i32 0, i32 4
  store %struct.tnode* %252, %struct.tnode** %son3175, align 8
  %254 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1176 = getelementptr inbounds %struct.tnode, %struct.tnode* %254, i32 0, i32 2
  %255 = load %struct.tnode*, %struct.tnode** %son1176, align 8
  %256 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2177 = getelementptr inbounds %struct.tnode, %struct.tnode* %256, i32 0, i32 3
  store %struct.tnode* %255, %struct.tnode** %son2177, align 8
  %257 = load %struct.tnode*, %struct.tnode** %s, align 8
  %258 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1178 = getelementptr inbounds %struct.tnode, %struct.tnode* %258, i32 0, i32 2
  store %struct.tnode* %257, %struct.tnode** %son1178, align 8
  %259 = load %struct.tnode*, %struct.tnode** %g, align 8
  %260 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father179 = getelementptr inbounds %struct.tnode, %struct.tnode* %260, i32 0, i32 6
  store %struct.tnode* %259, %struct.tnode** %father179, align 8
  %261 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %262 = bitcast %struct.tnode* %261 to i8*
  call void @free(i8* %262) #3
  %263 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval180 = getelementptr inbounds %struct.tnode, %struct.tnode* %263, i32 0, i32 8
  %264 = load i32, i32* %Mval180, align 4
  %265 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father181 = getelementptr inbounds %struct.tnode, %struct.tnode* %265, i32 0, i32 6
  %266 = load %struct.tnode*, %struct.tnode** %father181, align 8
  %Mval182 = getelementptr inbounds %struct.tnode, %struct.tnode* %266, i32 0, i32 8
  store i32 %264, i32* %Mval182, align 4
  %267 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval183 = getelementptr inbounds %struct.tnode, %struct.tnode* %267, i32 0, i32 7
  %268 = load i32, i32* %Lval183, align 4
  %269 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval184 = getelementptr inbounds %struct.tnode, %struct.tnode* %269, i32 0, i32 8
  store i32 %268, i32* %Mval184, align 4
  %270 = load i32, i32* %LMval, align 4
  %271 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval185 = getelementptr inbounds %struct.tnode, %struct.tnode* %271, i32 0, i32 7
  store i32 %270, i32* %Lval185, align 4
  %272 = load %struct.tnode*, %struct.tnode** %f, align 8
  %273 = bitcast %struct.tnode* %272 to i8*
  call void @free(i8* %273) #3
  %274 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father186 = getelementptr inbounds %struct.tnode, %struct.tnode* %274, i32 0, i32 6
  %275 = load %struct.tnode*, %struct.tnode** %father186, align 8
  %son3187 = getelementptr inbounds %struct.tnode, %struct.tnode* %275, i32 0, i32 4
  %276 = load %struct.tnode*, %struct.tnode** %son3187, align 8
  %277 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father188 = getelementptr inbounds %struct.tnode, %struct.tnode* %277, i32 0, i32 6
  %278 = load %struct.tnode*, %struct.tnode** %father188, align 8
  %son2189 = getelementptr inbounds %struct.tnode, %struct.tnode* %278, i32 0, i32 3
  store %struct.tnode* %276, %struct.tnode** %son2189, align 8
  %279 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father190 = getelementptr inbounds %struct.tnode, %struct.tnode* %279, i32 0, i32 6
  %280 = load %struct.tnode*, %struct.tnode** %father190, align 8
  %son3191 = getelementptr inbounds %struct.tnode, %struct.tnode* %280, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3191, align 8
  %281 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father192 = getelementptr inbounds %struct.tnode, %struct.tnode* %281, i32 0, i32 6
  %282 = load %struct.tnode*, %struct.tnode** %father192, align 8
  %nsons193 = getelementptr inbounds %struct.tnode, %struct.tnode* %282, i32 0, i32 1
  store i32 2, i32* %nsons193, align 4
  br label %if.end.230

if.else.194:                                      ; preds = %if.else.167
  %283 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons195 = getelementptr inbounds %struct.tnode, %struct.tnode* %283, i32 0, i32 1
  store i32 2, i32* %nsons195, align 4
  %284 = load %struct.tnode*, %struct.tnode** %s, align 8
  %285 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1196 = getelementptr inbounds %struct.tnode, %struct.tnode* %285, i32 0, i32 2
  store %struct.tnode* %284, %struct.tnode** %son1196, align 8
  %286 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1197 = getelementptr inbounds %struct.tnode, %struct.tnode* %286, i32 0, i32 2
  %287 = load %struct.tnode*, %struct.tnode** %son1197, align 8
  %288 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2198 = getelementptr inbounds %struct.tnode, %struct.tnode* %288, i32 0, i32 3
  store %struct.tnode* %287, %struct.tnode** %son2198, align 8
  %289 = load %struct.tnode*, %struct.tnode** %f, align 8
  %290 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2199 = getelementptr inbounds %struct.tnode, %struct.tnode* %290, i32 0, i32 3
  %291 = load %struct.tnode*, %struct.tnode** %son2199, align 8
  %father200 = getelementptr inbounds %struct.tnode, %struct.tnode* %291, i32 0, i32 6
  store %struct.tnode* %289, %struct.tnode** %father200, align 8
  %292 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2201 = getelementptr inbounds %struct.tnode, %struct.tnode* %292, i32 0, i32 3
  %293 = load %struct.tnode*, %struct.tnode** %son2201, align 8
  %294 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son1202 = getelementptr inbounds %struct.tnode, %struct.tnode* %294, i32 0, i32 2
  store %struct.tnode* %293, %struct.tnode** %son1202, align 8
  %295 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3203 = getelementptr inbounds %struct.tnode, %struct.tnode* %295, i32 0, i32 4
  %296 = load %struct.tnode*, %struct.tnode** %son3203, align 8
  %297 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2204 = getelementptr inbounds %struct.tnode, %struct.tnode* %297, i32 0, i32 3
  store %struct.tnode* %296, %struct.tnode** %son2204, align 8
  %298 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3205 = getelementptr inbounds %struct.tnode, %struct.tnode* %298, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3205, align 8
  %299 = load i32, i32* %LMval, align 4
  %300 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval206 = getelementptr inbounds %struct.tnode, %struct.tnode* %300, i32 0, i32 7
  store i32 %299, i32* %Lval206, align 4
  %301 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval207 = getelementptr inbounds %struct.tnode, %struct.tnode* %301, i32 0, i32 7
  %302 = load i32, i32* %Lval207, align 4
  %303 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval208 = getelementptr inbounds %struct.tnode, %struct.tnode* %303, i32 0, i32 8
  store i32 %302, i32* %Mval208, align 4
  %304 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval209 = getelementptr inbounds %struct.tnode, %struct.tnode* %304, i32 0, i32 8
  %305 = load i32, i32* %Mval209, align 4
  %306 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Lval210 = getelementptr inbounds %struct.tnode, %struct.tnode* %306, i32 0, i32 7
  store i32 %305, i32* %Lval210, align 4
  %307 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval211 = getelementptr inbounds %struct.tnode, %struct.tnode* %307, i32 0, i32 8
  %308 = load i32, i32* %Mval211, align 4
  %309 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father212 = getelementptr inbounds %struct.tnode, %struct.tnode* %309, i32 0, i32 6
  %310 = load %struct.tnode*, %struct.tnode** %father212, align 8
  %Mval213 = getelementptr inbounds %struct.tnode, %struct.tnode* %310, i32 0, i32 8
  store i32 %308, i32* %Mval213, align 4
  %311 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son2214 = getelementptr inbounds %struct.tnode, %struct.tnode* %311, i32 0, i32 3
  %312 = load %struct.tnode*, %struct.tnode** %son2214, align 8
  store %struct.tnode* %312, %struct.tnode** %f, align 8
  br label %while.cond.215

while.cond.215:                                   ; preds = %while.body.218, %if.else.194
  %313 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons216 = getelementptr inbounds %struct.tnode, %struct.tnode* %313, i32 0, i32 1
  %314 = load i32, i32* %nsons216, align 4
  %cmp217 = icmp eq i32 %314, 3
  br i1 %cmp217, label %while.body.218, label %while.end.220

while.body.218:                                   ; preds = %while.cond.215
  %315 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son3219 = getelementptr inbounds %struct.tnode, %struct.tnode* %315, i32 0, i32 4
  %316 = load %struct.tnode*, %struct.tnode** %son3219, align 8
  store %struct.tnode* %316, %struct.tnode** %f, align 8
  br label %while.cond.215

while.end.220:                                    ; preds = %while.cond.215
  %317 = load %struct.tnode*, %struct.tnode** %f, align 8
  %nsons221 = getelementptr inbounds %struct.tnode, %struct.tnode* %317, i32 0, i32 1
  %318 = load i32, i32* %nsons221, align 4
  %cmp222 = icmp eq i32 %318, 0
  br i1 %cmp222, label %if.then.223, label %if.else.226

if.then.223:                                      ; preds = %while.end.220
  %319 = load %struct.tnode*, %struct.tnode** %f, align 8
  %value224 = getelementptr inbounds %struct.tnode, %struct.tnode* %319, i32 0, i32 0
  %320 = load i32, i32* %value224, align 4
  %321 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval225 = getelementptr inbounds %struct.tnode, %struct.tnode* %321, i32 0, i32 8
  store i32 %320, i32* %Mval225, align 4
  br label %if.end.229

if.else.226:                                      ; preds = %while.end.220
  %322 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval227 = getelementptr inbounds %struct.tnode, %struct.tnode* %322, i32 0, i32 8
  %323 = load i32, i32* %Mval227, align 4
  %324 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval228 = getelementptr inbounds %struct.tnode, %struct.tnode* %324, i32 0, i32 8
  store i32 %323, i32* %Mval228, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.223
  %325 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %326 = bitcast %struct.tnode* %325 to i8*
  call void @free(i8* %326) #3
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.172
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.166
  br label %if.end.265

if.else.232:                                      ; preds = %if.else.128
  %327 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father233 = getelementptr inbounds %struct.tnode, %struct.tnode* %327, i32 0, i32 6
  %328 = load %struct.tnode*, %struct.tnode** %father233, align 8
  %son2234 = getelementptr inbounds %struct.tnode, %struct.tnode* %328, i32 0, i32 3
  %329 = load %struct.tnode*, %struct.tnode** %son2234, align 8
  store %struct.tnode* %329, %struct.tnode** %g, align 8
  %330 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons235 = getelementptr inbounds %struct.tnode, %struct.tnode* %330, i32 0, i32 1
  %331 = load i32, i32* %nsons235, align 4
  %cmp236 = icmp eq i32 %331, 2
  br i1 %cmp236, label %if.then.237, label %if.else.248

if.then.237:                                      ; preds = %if.else.232
  %332 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons238 = getelementptr inbounds %struct.tnode, %struct.tnode* %332, i32 0, i32 1
  store i32 3, i32* %nsons238, align 4
  %333 = load %struct.tnode*, %struct.tnode** %s, align 8
  %334 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3239 = getelementptr inbounds %struct.tnode, %struct.tnode* %334, i32 0, i32 4
  store %struct.tnode* %333, %struct.tnode** %son3239, align 8
  %335 = load %struct.tnode*, %struct.tnode** %g, align 8
  %336 = load %struct.tnode*, %struct.tnode** %s, align 8
  %father240 = getelementptr inbounds %struct.tnode, %struct.tnode* %336, i32 0, i32 6
  store %struct.tnode* %335, %struct.tnode** %father240, align 8
  %337 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %338 = bitcast %struct.tnode* %337 to i8*
  call void @free(i8* %338) #3
  %339 = load i32, i32* %LMval, align 4
  %340 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father241 = getelementptr inbounds %struct.tnode, %struct.tnode* %340, i32 0, i32 6
  %341 = load %struct.tnode*, %struct.tnode** %father241, align 8
  %Mval242 = getelementptr inbounds %struct.tnode, %struct.tnode* %341, i32 0, i32 8
  store i32 %339, i32* %Mval242, align 4
  %342 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father243 = getelementptr inbounds %struct.tnode, %struct.tnode* %342, i32 0, i32 6
  %343 = load %struct.tnode*, %struct.tnode** %father243, align 8
  %344 = load i32, i32* %LMval, align 4
  call void @tpatch(%struct.tnode* %343, i32 %344)
  %345 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father244 = getelementptr inbounds %struct.tnode, %struct.tnode* %345, i32 0, i32 6
  %346 = load %struct.tnode*, %struct.tnode** %father244, align 8
  %son3245 = getelementptr inbounds %struct.tnode, %struct.tnode* %346, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3245, align 8
  %347 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father246 = getelementptr inbounds %struct.tnode, %struct.tnode* %347, i32 0, i32 6
  %348 = load %struct.tnode*, %struct.tnode** %father246, align 8
  %nsons247 = getelementptr inbounds %struct.tnode, %struct.tnode* %348, i32 0, i32 1
  store i32 2, i32* %nsons247, align 4
  %349 = load %struct.tnode*, %struct.tnode** %f, align 8
  %350 = bitcast %struct.tnode* %349 to i8*
  call void @free(i8* %350) #3
  br label %if.end.264

if.else.248:                                      ; preds = %if.else.232
  %351 = load %struct.tnode*, %struct.tnode** %g, align 8
  %nsons249 = getelementptr inbounds %struct.tnode, %struct.tnode* %351, i32 0, i32 1
  store i32 2, i32* %nsons249, align 4
  %352 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3250 = getelementptr inbounds %struct.tnode, %struct.tnode* %352, i32 0, i32 4
  %353 = load %struct.tnode*, %struct.tnode** %son3250, align 8
  %354 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1251 = getelementptr inbounds %struct.tnode, %struct.tnode* %354, i32 0, i32 2
  store %struct.tnode* %353, %struct.tnode** %son1251, align 8
  %355 = load %struct.tnode*, %struct.tnode** %s, align 8
  %356 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son2252 = getelementptr inbounds %struct.tnode, %struct.tnode* %356, i32 0, i32 3
  store %struct.tnode* %355, %struct.tnode** %son2252, align 8
  %357 = load %struct.tnode*, %struct.tnode** %f, align 8
  %358 = load %struct.tnode*, %struct.tnode** %f, align 8
  %son1253 = getelementptr inbounds %struct.tnode, %struct.tnode* %358, i32 0, i32 2
  %359 = load %struct.tnode*, %struct.tnode** %son1253, align 8
  %father254 = getelementptr inbounds %struct.tnode, %struct.tnode* %359, i32 0, i32 6
  store %struct.tnode* %357, %struct.tnode** %father254, align 8
  %360 = load %struct.tnode*, %struct.tnode** %g, align 8
  %son3255 = getelementptr inbounds %struct.tnode, %struct.tnode* %360, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %son3255, align 8
  %361 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father256 = getelementptr inbounds %struct.tnode, %struct.tnode* %361, i32 0, i32 6
  %362 = load %struct.tnode*, %struct.tnode** %father256, align 8
  %Mval257 = getelementptr inbounds %struct.tnode, %struct.tnode* %362, i32 0, i32 8
  %363 = load i32, i32* %Mval257, align 4
  %364 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Lval258 = getelementptr inbounds %struct.tnode, %struct.tnode* %364, i32 0, i32 7
  store i32 %363, i32* %Lval258, align 4
  %365 = load i32, i32* %LMval, align 4
  %366 = load %struct.tnode*, %struct.tnode** %f, align 8
  %Mval259 = getelementptr inbounds %struct.tnode, %struct.tnode* %366, i32 0, i32 8
  store i32 %365, i32* %Mval259, align 4
  %367 = load %struct.tnode*, %struct.tnode** %g, align 8
  %Mval260 = getelementptr inbounds %struct.tnode, %struct.tnode* %367, i32 0, i32 8
  %368 = load i32, i32* %Mval260, align 4
  %369 = load %struct.tnode*, %struct.tnode** %g, align 8
  %father261 = getelementptr inbounds %struct.tnode, %struct.tnode* %369, i32 0, i32 6
  %370 = load %struct.tnode*, %struct.tnode** %father261, align 8
  %Mval262 = getelementptr inbounds %struct.tnode, %struct.tnode* %370, i32 0, i32 8
  store i32 %368, i32* %Mval262, align 4
  %371 = load %struct.tnode*, %struct.tnode** %f, align 8
  %father263 = getelementptr inbounds %struct.tnode, %struct.tnode* %371, i32 0, i32 6
  %372 = load %struct.tnode*, %struct.tnode** %father263, align 8
  %373 = load i32, i32* %LMval, align 4
  call void @tpatch(%struct.tnode* %372, i32 %373)
  %374 = load %struct.tnode*, %struct.tnode** %l.addr, align 8
  %375 = bitcast %struct.tnode* %374 to i8*
  call void @free(i8* %375) #3
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.248, %if.then.237
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.231
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.end.127
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.tnode* @tdsearch(i32 %value, %struct.tnode* %r) #0 {
entry:
  %retval = alloca %struct.tnode*, align 8
  %value.addr = alloca i32, align 4
  %r.addr = alloca %struct.tnode*, align 8
  store i32 %value, i32* %value.addr, align 4
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp = icmp eq %struct.tnode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.tnode* null, %struct.tnode** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 1
  %2 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  store %struct.tnode* %3, %struct.tnode** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %4 = load i32, i32* %value.addr, align 4
  %5 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Lval = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 7
  %6 = load i32, i32* %Lval, align 4
  %cmp4 = icmp sle i32 %4, %6
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  %7 = load i32, i32* %value.addr, align 4
  %8 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 2
  %9 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %call = call %struct.tnode* @tdsearch(i32 %7, %struct.tnode* %9)
  store %struct.tnode* %call, %struct.tnode** %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %10 = load i32, i32* %value.addr, align 4
  %11 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %Mval = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 8
  %12 = load i32, i32* %Mval, align 4
  %cmp7 = icmp sle i32 %10, %12
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.6
  %13 = load i32, i32* %value.addr, align 4
  %14 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 3
  %15 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %call9 = call %struct.tnode* @tdsearch(i32 %13, %struct.tnode* %15)
  store %struct.tnode* %call9, %struct.tnode** %retval
  br label %return

if.else.10:                                       ; preds = %if.else.6
  %16 = load i32, i32* %value.addr, align 4
  %17 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 4
  %18 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %call11 = call %struct.tnode* @tdsearch(i32 %16, %struct.tnode* %18)
  store %struct.tnode* %call11, %struct.tnode** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.8, %if.then.5, %if.then.2, %if.then
  %19 = load %struct.tnode*, %struct.tnode** %retval
  ret %struct.tnode* %19
}

; Function Attrs: nounwind uwtable
define %struct.tnode* @tfind(i32 %value, %struct.tnode* %r) #0 {
entry:
  %retval = alloca %struct.tnode*, align 8
  %value.addr = alloca i32, align 4
  %r.addr = alloca %struct.tnode*, align 8
  store i32 %value, i32* %value.addr, align 4
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  %0 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son1 = getelementptr inbounds %struct.tnode, %struct.tnode* %0, i32 0, i32 2
  %1 = load %struct.tnode*, %struct.tnode** %son1, align 8
  %value1 = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 0
  %2 = load i32, i32* %value1, align 4
  %3 = load i32, i32* %value.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son12 = getelementptr inbounds %struct.tnode, %struct.tnode* %4, i32 0, i32 2
  %5 = load %struct.tnode*, %struct.tnode** %son12, align 8
  store %struct.tnode* %5, %struct.tnode** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son2 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 3
  %7 = load %struct.tnode*, %struct.tnode** %son2, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %7, i32 0, i32 0
  %8 = load i32, i32* %value3, align 4
  %9 = load i32, i32* %value.addr, align 4
  %cmp4 = icmp eq i32 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %10 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son26 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 3
  %11 = load %struct.tnode*, %struct.tnode** %son26, align 8
  store %struct.tnode* %11, %struct.tnode** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %12 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 1
  %13 = load i32, i32* %nsons, align 4
  %cmp8 = icmp eq i32 %13, 3
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.else.7
  %14 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son3 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 4
  %15 = load %struct.tnode*, %struct.tnode** %son3, align 8
  %value10 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 0
  %16 = load i32, i32* %value10, align 4
  %17 = load i32, i32* %value.addr, align 4
  %cmp11 = icmp eq i32 %16, %17
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %18 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %son313 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 4
  %19 = load %struct.tnode*, %struct.tnode** %son313, align 8
  store %struct.tnode* %19, %struct.tnode** %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.else.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  store %struct.tnode* null, %struct.tnode** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.12, %if.then.5, %if.then
  %20 = load %struct.tnode*, %struct.tnode** %retval
  ret %struct.tnode* %20
}

; Function Attrs: nounwind uwtable
define %struct.plist* @pfind(%struct.tnode* %v, i32 %property, %struct.plist** %prevptr) #0 {
entry:
  %retval = alloca %struct.plist*, align 8
  %v.addr = alloca %struct.tnode*, align 8
  %property.addr = alloca i32, align 4
  %prevptr.addr = alloca %struct.plist**, align 8
  %plptr = alloca %struct.plist*, align 8
  store %struct.tnode* %v, %struct.tnode** %v.addr, align 8
  store i32 %property, i32* %property.addr, align 4
  store %struct.plist** %prevptr, %struct.plist*** %prevptr.addr, align 8
  %0 = load %struct.plist**, %struct.plist*** %prevptr.addr, align 8
  store %struct.plist* null, %struct.plist** %0, align 8
  %1 = load %struct.tnode*, %struct.tnode** %v.addr, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 9
  %2 = load %struct.plist*, %struct.plist** %plist, align 8
  store %struct.plist* %2, %struct.plist** %plptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.plist*, %struct.plist** %plptr, align 8
  %cmp = icmp ne %struct.plist* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.plist*, %struct.plist** %plptr, align 8
  %property1 = getelementptr inbounds %struct.plist, %struct.plist* %4, i32 0, i32 0
  %5 = load i32, i32* %property1, align 4
  %6 = load i32, i32* %property.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.plist*, %struct.plist** %plptr, align 8
  store %struct.plist* %7, %struct.plist** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load %struct.plist*, %struct.plist** %plptr, align 8
  %9 = load %struct.plist**, %struct.plist*** %prevptr.addr, align 8
  store %struct.plist* %8, %struct.plist** %9, align 8
  %10 = load %struct.plist*, %struct.plist** %plptr, align 8
  %pnext = getelementptr inbounds %struct.plist, %struct.plist* %10, i32 0, i32 1
  %11 = load %struct.plist*, %struct.plist** %pnext, align 8
  store %struct.plist* %11, %struct.plist** %plptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.plist* null, %struct.plist** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %struct.plist*, %struct.plist** %retval
  ret %struct.plist* %12
}

; Function Attrs: nounwind uwtable
define i32 @tprop(%struct.tnode* %r, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.tnode*, align 8
  %value.addr = alloca i32, align 4
  %v = alloca %struct.tnode*, align 8
  %f = alloca %struct.tnode*, align 8
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp = icmp eq %struct.tnode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 1
  %2 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 0
  %4 = load i32, i32* %value3, align 4
  %5 = load i32, i32* %value.addr, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 9
  %7 = load %struct.plist*, %struct.plist** %plist, align 8
  %property = getelementptr inbounds %struct.plist, %struct.plist* %7, i32 0, i32 0
  %8 = load i32, i32* %property, align 4
  store i32 %8, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %9 = load i32, i32* %value.addr, align 4
  %10 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %call = call %struct.tnode* @tsearch(i32 %9, %struct.tnode* %10)
  store %struct.tnode* %call, %struct.tnode** %f, align 8
  %11 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp8 = icmp eq %struct.tnode* %11, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  store i32 -1, i32* %retval
  br label %return

if.else.10:                                       ; preds = %if.else.7
  %12 = load i32, i32* %value.addr, align 4
  %13 = load %struct.tnode*, %struct.tnode** %f, align 8
  %call11 = call %struct.tnode* @tfind(i32 %12, %struct.tnode* %13)
  store %struct.tnode* %call11, %struct.tnode** %v, align 8
  %14 = load %struct.tnode*, %struct.tnode** %v, align 8
  %cmp12 = icmp eq %struct.tnode* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store i32 -1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.10
  %15 = load %struct.tnode*, %struct.tnode** %v, align 8
  %plist15 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 9
  %16 = load %struct.plist*, %struct.plist** %plist15, align 8
  %property16 = getelementptr inbounds %struct.plist, %struct.plist* %16, i32 0, i32 0
  %17 = load i32, i32* %property16, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %if.then.9, %if.else.6, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct.plist* @tplist(%struct.tnode* %r, i32 %value) #0 {
entry:
  %retval = alloca %struct.plist*, align 8
  %r.addr = alloca %struct.tnode*, align 8
  %value.addr = alloca i32, align 4
  %v = alloca %struct.tnode*, align 8
  %f = alloca %struct.tnode*, align 8
  store %struct.tnode* %r, %struct.tnode** %r.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %cmp = icmp eq %struct.tnode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.plist* null, %struct.plist** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %nsons = getelementptr inbounds %struct.tnode, %struct.tnode* %1, i32 0, i32 1
  %2 = load i32, i32* %nsons, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %value3 = getelementptr inbounds %struct.tnode, %struct.tnode* %3, i32 0, i32 0
  %4 = load i32, i32* %value3, align 4
  %5 = load i32, i32* %value.addr, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.then.2
  %6 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %plist = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 9
  %7 = load %struct.plist*, %struct.plist** %plist, align 8
  store %struct.plist* %7, %struct.plist** %retval
  br label %return

if.else.6:                                        ; preds = %if.then.2
  store %struct.plist* null, %struct.plist** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %8 = load i32, i32* %value.addr, align 4
  %9 = load %struct.tnode*, %struct.tnode** %r.addr, align 8
  %call = call %struct.tnode* @tsearch(i32 %8, %struct.tnode* %9)
  store %struct.tnode* %call, %struct.tnode** %f, align 8
  %10 = load %struct.tnode*, %struct.tnode** %f, align 8
  %cmp8 = icmp eq %struct.tnode* %10, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  store %struct.plist* null, %struct.plist** %retval
  br label %return

if.else.10:                                       ; preds = %if.else.7
  %11 = load i32, i32* %value.addr, align 4
  %12 = load %struct.tnode*, %struct.tnode** %f, align 8
  %call11 = call %struct.tnode* @tfind(i32 %11, %struct.tnode* %12)
  store %struct.tnode* %call11, %struct.tnode** %v, align 8
  %13 = load %struct.tnode*, %struct.tnode** %v, align 8
  %cmp12 = icmp eq %struct.tnode* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store %struct.plist* null, %struct.plist** %retval
  br label %return

if.else.14:                                       ; preds = %if.else.10
  %14 = load %struct.tnode*, %struct.tnode** %v, align 8
  %plist15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 9
  %15 = load %struct.plist*, %struct.plist** %plist15, align 8
  store %struct.plist* %15, %struct.plist** %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.13, %if.then.9, %if.else.6, %if.then.5, %if.then
  %16 = load %struct.plist*, %struct.plist** %retval
  ret %struct.plist* %16
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
