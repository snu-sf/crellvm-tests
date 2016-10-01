; ModuleID = './MultiSource.Benchmarks.Prolangs-C/210.TimberWolfMC.grepair.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@numnodes = external global i32, align 4
@maxpnode = external global i32, align 4
@gnodeArray = external global %struct.gnode**, align 8

; Function Attrs: nounwind uwtable
define void @grepair() #0 {
entry:
  %gptr = alloca %struct.gnode*, align 8
  %g2ptr = alloca %struct.gnode*, align 8
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numnodes, align 4
  %2 = load i32, i32* @maxpnode, align 4
  %add = add nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.gnode*, %struct.gnode** %4, i64 %idxprom
  %5 = load %struct.gnode*, %struct.gnode** %arrayidx, align 8
  store %struct.gnode* %5, %struct.gnode** %gptr, align 8
  %6 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp1 = icmp eq %struct.gnode* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @numnodes, align 4
  %cmp2 = icmp sle i32 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.else.30

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node = getelementptr inbounds %struct.gnode, %struct.gnode* %9, i32 0, i32 0
  %10 = load i32, i32* %node, align 4
  %11 = load i32, i32* @numnodes, align 4
  %cmp4 = icmp sle i32 %10, %11
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  br label %for.inc

if.else:                                          ; preds = %if.then.3
  br label %for.cond.6

for.cond.6:                                       ; preds = %if.end.19, %if.else
  %12 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp7 = icmp ne %struct.gnode* %12, null
  br i1 %cmp7, label %if.then.8, label %if.else.16

if.then.8:                                        ; preds = %for.cond.6
  %13 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %13, i32 0, i32 7
  %14 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %14, %struct.gnode** %g2ptr, align 8
  %15 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node9 = getelementptr inbounds %struct.gnode, %struct.gnode* %15, i32 0, i32 0
  %16 = load i32, i32* %node9, align 4
  %17 = load i32, i32* @numnodes, align 4
  %cmp10 = icmp sgt i32 %16, %17
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.8
  %18 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %19 = bitcast %struct.gnode* %18 to i8*
  call void @free(i8* %19) #2
  %20 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  store %struct.gnode* %20, %struct.gnode** %gptr, align 8
  br label %if.end.15

if.else.12:                                       ; preds = %if.then.8
  %21 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx14 = getelementptr inbounds %struct.gnode*, %struct.gnode** %23, i64 %idxprom13
  store %struct.gnode* %21, %struct.gnode** %arrayidx14, align 8
  br label %for.end

if.end.15:                                        ; preds = %if.then.11
  br label %if.end.19

if.else.16:                                       ; preds = %for.cond.6
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.gnode*, %struct.gnode** %25, i64 %idxprom17
  store %struct.gnode* null, %struct.gnode** %arrayidx18, align 8
  br label %for.end

if.end.19:                                        ; preds = %if.end.15
  br label %for.cond.6

for.end:                                          ; preds = %if.else.16, %if.else.12
  br label %if.end.20

if.end.20:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.gnode*, %struct.gnode** %27, i64 %idxprom21
  %28 = load %struct.gnode*, %struct.gnode** %arrayidx22, align 8
  store %struct.gnode* %28, %struct.gnode** %gptr, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %if.end.26, %if.end.20
  %29 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp24 = icmp eq %struct.gnode* %29, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.cond.23
  br label %for.end.29

if.end.26:                                        ; preds = %for.cond.23
  %30 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %ilength = getelementptr inbounds %struct.gnode, %struct.gnode* %30, i32 0, i32 1
  %31 = load i32, i32* %ilength, align 4
  %32 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %32, i32 0, i32 2
  store i32 %31, i32* %length, align 4
  %33 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %ilength27 = getelementptr inbounds %struct.gnode, %struct.gnode* %33, i32 0, i32 1
  %34 = load i32, i32* %ilength27, align 4
  %35 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %35, i32 0, i32 3
  store i32 %34, i32* %cost, align 4
  %36 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next28 = getelementptr inbounds %struct.gnode, %struct.gnode* %36, i32 0, i32 7
  %37 = load %struct.gnode*, %struct.gnode** %next28, align 8
  store %struct.gnode* %37, %struct.gnode** %gptr, align 8
  br label %for.cond.23

for.end.29:                                       ; preds = %if.then.25
  br label %if.end.35

if.else.30:                                       ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.30
  %38 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp31 = icmp ne %struct.gnode* %38, null
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next32 = getelementptr inbounds %struct.gnode, %struct.gnode* %39, i32 0, i32 7
  %40 = load %struct.gnode*, %struct.gnode** %next32, align 8
  store %struct.gnode* %40, %struct.gnode** %g2ptr, align 8
  %41 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %42 = bitcast %struct.gnode* %41 to i8*
  call void @free(i8* %42) #2
  %43 = load %struct.gnode*, %struct.gnode** %g2ptr, align 8
  store %struct.gnode* %43, %struct.gnode** %gptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.gnode*, %struct.gnode** %45, i64 %idxprom33
  store %struct.gnode* null, %struct.gnode** %arrayidx34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %while.end, %for.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.35, %if.then.5, %if.then
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
