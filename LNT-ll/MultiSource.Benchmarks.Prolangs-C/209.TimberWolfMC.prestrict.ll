; ModuleID = './MultiSource.Benchmarks.Prolangs-C/209.TimberWolfMC.prestrict.bc'
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
@pnodeAlength = external global i32, align 4
@gnodeArray = external global %struct.gnode**, align 8

; Function Attrs: nounwind uwtable
define i32 @prestrict(i16* %ptr, i32 %p, i32 %source, i32 %target) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i16*, align 8
  %p.addr = alloca i32, align 4
  %source.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %rootx = alloca %struct.tnode*, align 8
  %dumnode = alloca %struct.tnode*, align 8
  %nptr = alloca %struct.nnode*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %snode = alloca i32, align 4
  %node = alloca i32, align 4
  %D = alloca i32, align 4
  %nextnode = alloca i32, align 4
  %distance = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %extraD = alloca i32, align 4
  %flag = alloca i32, align 4
  store i16* %ptr, i16** %ptr.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %source, i32* %source.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** %ptr.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %snode, align 4
  %3 = load i32, i32* %source.addr, align 4
  %4 = load i32, i32* @numnodes, align 4
  %sub = sub nsw i32 %3, %4
  %idxprom1 = sext i32 %sub to i64
  %5 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx2 = getelementptr inbounds %struct.pnode, %struct.pnode* %5, i64 %idxprom1
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx2, i32 0, i32 1
  %6 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %6, %struct.nnode** %nptr, align 8
  store %struct.tnode* null, %struct.tnode** %rootx, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* @numnodes, align 4
  %9 = load i32, i32* @pnodeAlength, align 4
  %add = add nsw i32 %8, %9
  %cmp = icmp sle i32 %7, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %snode, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  call void @tinsert(%struct.tnode** %rootx, i32 0, i32 %12)
  %13 = load i32, i32* %snode, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx7 = getelementptr inbounds %struct.nnode, %struct.nnode* %14, i64 %idxprom6
  %temp = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx7, i32 0, i32 0
  store i32 0, i32* %temp, align 4
  %15 = load i32, i32* %snode, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx9 = getelementptr inbounds %struct.nnode, %struct.nnode* %16, i64 %idxprom8
  %from2 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx9, i32 0, i32 3
  store i16 0, i16* %from2, align 2
  br label %for.inc

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx11 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %idxprom10
  %temp12 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx11, i32 0, i32 0
  store i32 1000000000, i32* %temp12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %flag, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.end.62, %for.end
  call void @tpop(%struct.tnode** %rootx, %struct.tnode** %dumnode, i32* %D, i32* %nextnode)
  %20 = load %struct.tnode*, %struct.tnode** %dumnode, align 8
  %cmp14 = icmp eq %struct.tnode* %20, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond.13
  br label %for.end.63

if.end.17:                                        ; preds = %for.cond.13
  %21 = load i32, i32* %nextnode, align 4
  %22 = load i32, i32* %target.addr, align 4
  %cmp18 = icmp eq i32 %21, %22
  br i1 %cmp18, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %flag, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %if.end.25, %if.then.20
  call void @tpop(%struct.tnode** %rootx, %struct.tnode** %dumnode, i32* %D, i32* %nextnode)
  %23 = load %struct.tnode*, %struct.tnode** %dumnode, align 8
  %cmp22 = icmp eq %struct.tnode* %23, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.cond.21
  br label %for.end.26

if.end.25:                                        ; preds = %for.cond.21
  br label %for.cond.21

for.end.26:                                       ; preds = %if.then.24
  br label %for.end.63

if.end.27:                                        ; preds = %if.end.17
  %24 = load i32, i32* %nextnode, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx29 = getelementptr inbounds %struct.gnode*, %struct.gnode** %25, i64 %idxprom28
  %26 = load %struct.gnode*, %struct.gnode** %arrayidx29, align 8
  store %struct.gnode* %26, %struct.gnode** %gptr, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.61, %if.end.27
  %27 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp31 = icmp ne %struct.gnode* %27, null
  br i1 %cmp31, label %for.body.33, label %for.end.62

for.body.33:                                      ; preds = %for.cond.30
  %28 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %inactive = getelementptr inbounds %struct.gnode, %struct.gnode* %28, i32 0, i32 5
  %29 = load i32, i32* %inactive, align 4
  %cmp34 = icmp eq i32 %29, 1
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.33
  %30 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %30, i32 0, i32 6
  %31 = load i32, i32* %einactive, align 4
  %cmp36 = icmp eq i32 %31, 1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %for.body.33
  br label %for.inc.61

if.end.39:                                        ; preds = %lor.lhs.false
  %32 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %32, i32 0, i32 3
  %33 = load i32, i32* %cost, align 4
  store i32 %33, i32* %distance, align 4
  %34 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node40 = getelementptr inbounds %struct.gnode, %struct.gnode* %34, i32 0, i32 0
  %35 = load i32, i32* %node40, align 4
  store i32 %35, i32* %node, align 4
  %36 = load i32, i32* %node, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx42 = getelementptr inbounds %struct.nnode, %struct.nnode* %37, i64 %idxprom41
  %temp43 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx42, i32 0, i32 0
  %38 = load i32, i32* %temp43, align 4
  %39 = load i32, i32* %D, align 4
  %40 = load i32, i32* %distance, align 4
  %add44 = add nsw i32 %39, %40
  %cmp45 = icmp sgt i32 %38, %add44
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %if.end.39
  %41 = load i32, i32* %node, align 4
  %idxprom48 = sext i32 %41 to i64
  %42 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx49 = getelementptr inbounds %struct.nnode, %struct.nnode* %42, i64 %idxprom48
  %temp50 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx49, i32 0, i32 0
  %43 = load i32, i32* %temp50, align 4
  %44 = load i32, i32* %node, align 4
  call void @tdelete(%struct.tnode** %rootx, i32 %43, i32 %44)
  %45 = load i32, i32* %D, align 4
  %46 = load i32, i32* %distance, align 4
  %add51 = add nsw i32 %45, %46
  %47 = load i32, i32* %node, align 4
  call void @tinsert(%struct.tnode** %rootx, i32 %add51, i32 %47)
  %48 = load i32, i32* %D, align 4
  %49 = load i32, i32* %distance, align 4
  %add52 = add nsw i32 %48, %49
  %50 = load i32, i32* %node, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx54 = getelementptr inbounds %struct.nnode, %struct.nnode* %51, i64 %idxprom53
  %temp55 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx54, i32 0, i32 0
  store i32 %add52, i32* %temp55, align 4
  %52 = load i32, i32* %nextnode, align 4
  %conv56 = trunc i32 %52 to i16
  %53 = load i32, i32* %node, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx58 = getelementptr inbounds %struct.nnode, %struct.nnode* %54, i64 %idxprom57
  %from259 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx58, i32 0, i32 3
  store i16 %conv56, i16* %from259, align 2
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.47, %if.end.39
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60, %if.then.38
  %55 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %55, i32 0, i32 7
  %56 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %56, %struct.gnode** %gptr, align 8
  br label %for.cond.30

for.end.62:                                       ; preds = %for.cond.30
  br label %for.cond.13

for.end.63:                                       ; preds = %for.end.26, %if.then.16
  %57 = load i32, i32* %flag, align 4
  %cmp64 = icmp eq i32 %57, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.end.63
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %for.end.63
  store i32 0, i32* %extraD, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.91, %if.end.67
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %p.addr, align 4
  %cmp69 = icmp slt i32 %58, %59
  br i1 %cmp69, label %for.body.71, label %for.end.93

for.body.71:                                      ; preds = %for.cond.68
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load i16*, i16** %ptr.addr, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %61, i64 %idxprom72
  %62 = load i16, i16* %arrayidx73, align 2
  %conv74 = sext i16 %62 to i32
  store i32 %conv74, i32* %node1, align 4
  %63 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %63, 1
  %idxprom76 = sext i32 %add75 to i64
  %64 = load i16*, i16** %ptr.addr, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %64, i64 %idxprom76
  %65 = load i16, i16* %arrayidx77, align 2
  %conv78 = sext i16 %65 to i32
  store i32 %conv78, i32* %node2, align 4
  %66 = load i32, i32* %node1, align 4
  %idxprom79 = sext i32 %66 to i64
  %67 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.gnode*, %struct.gnode** %67, i64 %idxprom79
  %68 = load %struct.gnode*, %struct.gnode** %arrayidx80, align 8
  store %struct.gnode* %68, %struct.gnode** %gptr1, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %if.end.88, %for.body.71
  %69 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node82 = getelementptr inbounds %struct.gnode, %struct.gnode* %69, i32 0, i32 0
  %70 = load i32, i32* %node82, align 4
  %71 = load i32, i32* %node2, align 4
  %cmp83 = icmp eq i32 %70, %71
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %for.cond.81
  %72 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %cost86 = getelementptr inbounds %struct.gnode, %struct.gnode* %72, i32 0, i32 3
  %73 = load i32, i32* %cost86, align 4
  %74 = load i32, i32* %extraD, align 4
  %add87 = add nsw i32 %74, %73
  store i32 %add87, i32* %extraD, align 4
  br label %for.end.90

if.end.88:                                        ; preds = %for.cond.81
  %75 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next89 = getelementptr inbounds %struct.gnode, %struct.gnode* %75, i32 0, i32 7
  %76 = load %struct.gnode*, %struct.gnode** %next89, align 8
  store %struct.gnode* %76, %struct.gnode** %gptr1, align 8
  br label %for.cond.81

for.end.90:                                       ; preds = %if.then.85
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %77 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %77, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.68

for.end.93:                                       ; preds = %for.cond.68
  %78 = load i32, i32* %extraD, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %for.end.93, %if.then.66
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare void @tinsert(%struct.tnode**, i32, i32) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #1

declare void @tdelete(%struct.tnode**, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
