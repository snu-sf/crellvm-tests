; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/9.SMG2000.project.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %box, i32* %index, i32* %stride) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %hl = alloca i32, align 4
  %hu = alloca i32, align 4
  %kl = alloca i32, align 4
  %ku = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %d, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %i, align 4
  %4 = load i32, i32* %d, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %stride.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %s, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %hl, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %13, %14
  store i32 %sub7, i32* %hu, align 4
  %15 = load i32, i32* %hl, align 4
  %cmp8 = icmp sle i32 %15, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %hl, align 4
  %17 = load i32, i32* %s, align 4
  %div = sdiv i32 %16, %17
  store i32 %div, i32* %kl, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %hl, align 4
  %19 = load i32, i32* %s, align 4
  %sub9 = sub nsw i32 %19, 1
  %add = add nsw i32 %18, %sub9
  %20 = load i32, i32* %s, align 4
  %div10 = sdiv i32 %add, %20
  store i32 %div10, i32* %kl, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %hu, align 4
  %cmp11 = icmp sge i32 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end
  %22 = load i32, i32* %hu, align 4
  %23 = load i32, i32* %s, align 4
  %div13 = sdiv i32 %22, %23
  store i32 %div13, i32* %ku, align 4
  br label %if.end.18

if.else.14:                                       ; preds = %if.end
  %24 = load i32, i32* %hu, align 4
  %25 = load i32, i32* %s, align 4
  %sub15 = sub nsw i32 %25, 1
  %sub16 = sub nsw i32 %24, %sub15
  %26 = load i32, i32* %s, align 4
  %div17 = sdiv i32 %sub16, %26
  store i32 %div17, i32* %ku, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.14, %if.then.12
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %kl, align 4
  %29 = load i32, i32* %s, align 4
  %mul = mul nsw i32 %28, %29
  %add19 = add nsw i32 %27, %mul
  %30 = load i32, i32* %d, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 %idxprom20
  store i32 %add19, i32* %arrayidx22, align 4
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %ku, align 4
  %34 = load i32, i32* %s, align 4
  %mul23 = mul nsw i32 %33, %34
  %add24 = add nsw i32 %32, %mul23
  %35 = load i32, i32* %d, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imax26, i32 0, i64 %idxprom25
  store i32 %add24, i32* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %37 = load i32, i32* %d, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %ierr, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %box_array, i32* %index, i32* %stride) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %7 = load i32*, i32** %index.addr, align 8
  %8 = load i32*, i32** %stride.addr, align 8
  %call = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %6, i32* %7, i32* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %ierr, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %box_array_array, i32* %index, i32* %stride) #0 {
entry:
  %box_array_array.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxArrayArray_struct* %box_array_array, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %5, i64 %idxprom
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  store %struct.hypre_BoxArray_struct* %6, %struct.hypre_BoxArray_struct** %box_array, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %11, i32 0, i32 0
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i64 %idxprom5
  store %struct.hypre_Box_struct* %arrayidx6, %struct.hypre_Box_struct** %box, align 8
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %14 = load i32*, i32** %index.addr, align 8
  %15 = load i32*, i32** %stride.addr, align 8
  %call = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %13, i32* %14, i32* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %18 = load i32, i32* %ierr, align 4
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
