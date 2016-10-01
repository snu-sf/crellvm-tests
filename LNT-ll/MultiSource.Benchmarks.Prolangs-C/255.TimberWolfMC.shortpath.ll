; ModuleID = './MultiSource.Benchmarks.Prolangs-C/255.TimberWolfMC.shortpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@numnodes = external global i32, align 4
@pnodeArray = external global %struct.pnode*, align 8
@gnodeArray = external global %struct.gnode**, align 8

; Function Attrs: nounwind uwtable
define void @shortpath(i32 %numpnodes) #0 {
entry:
  %numpnodes.addr = alloca i32, align 4
  %root = alloca %struct.tnode*, align 8
  %dumnode = alloca %struct.tnode*, align 8
  %nptr = alloca %struct.nnode*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pnode = alloca i32, align 4
  %node = alloca i32, align 4
  %D = alloca i32, align 4
  %nextnode = alloca i32, align 4
  %distance = alloca i32, align 4
  store i32 %numpnodes, i32* %numpnodes.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numpnodes.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @numnodes, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %pnode, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.pnode, %struct.pnode* %5, i64 %idxprom
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx, i32 0, i32 1
  %6 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %6, %struct.nnode** %nptr, align 8
  store %struct.tnode* null, %struct.tnode** %root, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* @numnodes, align 4
  %9 = load i32, i32* %numpnodes.addr, align 4
  %add2 = add nsw i32 %8, %9
  %cmp3 = icmp sle i32 %7, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %pnode, align 4
  %cmp5 = icmp eq i32 %10, %11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %12 = load i32, i32* %j, align 4
  call void @tinsert(%struct.tnode** %root, i32 0, i32 %12)
  %13 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx7 = getelementptr inbounds %struct.nnode, %struct.nnode* %14, i64 %idxprom6
  %distance8 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx7, i32 0, i32 1
  store i32 0, i32* %distance8, align 4
  %15 = load i32, i32* %pnode, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx10 = getelementptr inbounds %struct.nnode, %struct.nnode* %16, i64 %idxprom9
  %from = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx10, i32 0, i32 2
  store i16 0, i16* %from, align 2
  br label %for.inc

if.end:                                           ; preds = %for.body.4
  %17 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx12 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %idxprom11
  %distance13 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx12, i32 0, i32 1
  store i32 1000000000, i32* %distance13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.end.43, %for.end
  call void @tpop(%struct.tnode** %root, %struct.tnode** %dumnode, i32* %D, i32* %nextnode)
  %20 = load %struct.tnode*, %struct.tnode** %dumnode, align 8
  %cmp15 = icmp eq %struct.tnode* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond.14
  br label %for.end.44

if.end.17:                                        ; preds = %for.cond.14
  %21 = load i32, i32* %nextnode, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.gnode*, %struct.gnode** %22, i64 %idxprom18
  %23 = load %struct.gnode*, %struct.gnode** %arrayidx19, align 8
  store %struct.gnode* %23, %struct.gnode** %gptr, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.42, %if.end.17
  %24 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp21 = icmp ne %struct.gnode* %24, null
  br i1 %cmp21, label %for.body.22, label %for.end.43

for.body.22:                                      ; preds = %for.cond.20
  %25 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %25, i32 0, i32 2
  %26 = load i32, i32* %length, align 4
  store i32 %26, i32* %distance, align 4
  %27 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node23 = getelementptr inbounds %struct.gnode, %struct.gnode* %27, i32 0, i32 0
  %28 = load i32, i32* %node23, align 4
  store i32 %28, i32* %node, align 4
  %29 = load i32, i32* %node, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx25 = getelementptr inbounds %struct.nnode, %struct.nnode* %30, i64 %idxprom24
  %distance26 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx25, i32 0, i32 1
  %31 = load i32, i32* %distance26, align 4
  %32 = load i32, i32* %D, align 4
  %33 = load i32, i32* %distance, align 4
  %add27 = add nsw i32 %32, %33
  %cmp28 = icmp sgt i32 %31, %add27
  br i1 %cmp28, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %for.body.22
  %34 = load i32, i32* %node, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx31 = getelementptr inbounds %struct.nnode, %struct.nnode* %35, i64 %idxprom30
  %distance32 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx31, i32 0, i32 1
  %36 = load i32, i32* %distance32, align 4
  %37 = load i32, i32* %node, align 4
  call void @tdelete(%struct.tnode** %root, i32 %36, i32 %37)
  %38 = load i32, i32* %D, align 4
  %39 = load i32, i32* %distance, align 4
  %add33 = add nsw i32 %38, %39
  %40 = load i32, i32* %node, align 4
  call void @tinsert(%struct.tnode** %root, i32 %add33, i32 %40)
  %41 = load i32, i32* %D, align 4
  %42 = load i32, i32* %distance, align 4
  %add34 = add nsw i32 %41, %42
  %43 = load i32, i32* %node, align 4
  %idxprom35 = sext i32 %43 to i64
  %44 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx36 = getelementptr inbounds %struct.nnode, %struct.nnode* %44, i64 %idxprom35
  %distance37 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx36, i32 0, i32 1
  store i32 %add34, i32* %distance37, align 4
  %45 = load i32, i32* %nextnode, align 4
  %conv = trunc i32 %45 to i16
  %46 = load i32, i32* %node, align 4
  %idxprom38 = sext i32 %46 to i64
  %47 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx39 = getelementptr inbounds %struct.nnode, %struct.nnode* %47, i64 %idxprom38
  %from40 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx39, i32 0, i32 2
  store i16 %conv, i16* %from40, align 2
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.29, %for.body.22
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %48 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %48, i32 0, i32 7
  %49 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %49, %struct.gnode** %gptr, align 8
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  br label %for.cond.14

for.end.44:                                       ; preds = %if.then.16
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %50 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  ret void
}

declare void @tinsert(%struct.tnode**, i32, i32) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #1

declare void @tdelete(%struct.tnode**, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
