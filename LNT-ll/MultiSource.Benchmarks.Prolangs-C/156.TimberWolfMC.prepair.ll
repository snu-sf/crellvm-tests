; ModuleID = './MultiSource.Benchmarks.Prolangs-C/156.TimberWolfMC.prepair.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pnodeArray = external global %struct.pnode*, align 8
@numnodes = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @prepair(i32 %numpnodes) #0 {
entry:
  %numpnodes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lptr = alloca %struct.list2*, align 8
  %l2ptr = alloca %struct.list2*, align 8
  store i32 %numpnodes, i32* %numpnodes.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %numpnodes.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.pnode, %struct.pnode* %3, i64 %idxprom
  %eptr = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx, i32 0, i32 0
  store i32 0, i32* %eptr, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* @numnodes, align 4
  %6 = load i32, i32* %numpnodes.addr, align 4
  %add = add nsw i32 %5, %6
  %cmp2 = icmp sle i32 %4, %add
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.pnode, %struct.pnode* %9, i64 %idxprom5
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx6, i32 0, i32 1
  %10 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  %arrayidx7 = getelementptr inbounds %struct.nnode, %struct.nnode* %10, i64 %idxprom4
  %temp = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx7, i32 0, i32 0
  store i32 0, i32* %temp, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx10 = getelementptr inbounds %struct.pnode, %struct.pnode* %13, i64 %idxprom9
  %nodeList11 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx10, i32 0, i32 1
  %14 = load %struct.nnode*, %struct.nnode** %nodeList11, align 8
  %arrayidx12 = getelementptr inbounds %struct.nnode, %struct.nnode* %14, i64 %idxprom8
  %distance = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx12, i32 0, i32 1
  store i32 0, i32* %distance, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx15 = getelementptr inbounds %struct.pnode, %struct.pnode* %17, i64 %idxprom14
  %nodeList16 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx15, i32 0, i32 1
  %18 = load %struct.nnode*, %struct.nnode** %nodeList16, align 8
  %arrayidx17 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %idxprom13
  %from = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx17, i32 0, i32 2
  store i16 0, i16* %from, align 2
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx20 = getelementptr inbounds %struct.pnode, %struct.pnode* %21, i64 %idxprom19
  %nodeList21 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx20, i32 0, i32 1
  %22 = load %struct.nnode*, %struct.nnode** %nodeList21, align 8
  %arrayidx22 = getelementptr inbounds %struct.nnode, %struct.nnode* %22, i64 %idxprom18
  %from2 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx22, i32 0, i32 3
  store i16 0, i16* %from2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.pnode, %struct.pnode* %25, i64 %idxprom23
  %equiv = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx24, i32 0, i32 2
  %26 = load %struct.list2*, %struct.list2** %equiv, align 8
  store %struct.list2* %26, %struct.list2** %lptr, align 8
  %cmp25 = icmp ne %struct.list2* %26, null
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %27 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next = getelementptr inbounds %struct.list2, %struct.list2* %27, i32 0, i32 1
  %28 = load %struct.list2*, %struct.list2** %next, align 8
  store %struct.list2* %28, %struct.list2** %l2ptr, align 8
  %29 = load %struct.list2*, %struct.list2** %lptr, align 8
  %30 = bitcast %struct.list2* %29 to i8*
  call void @free(i8* %30) #2
  %31 = load %struct.list2*, %struct.list2** %l2ptr, align 8
  store %struct.list2* %31, %struct.list2** %lptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp26 = icmp ne %struct.list2* %32, null
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx28 = getelementptr inbounds %struct.pnode, %struct.pnode* %34, i64 %idxprom27
  %equiv29 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx28, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %equiv29, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %35 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
