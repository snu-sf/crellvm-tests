; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/18.SMG2000.box_alloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.box_memory = type { %union.box_memory*, [16 x i8] }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }

@s_at_a_time = internal global i32 1000, align 4
@s_finalize = internal global %union.box_memory* null, align 8
@s_free = internal global %union.box_memory* null, align 8
@s_count = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxInitializeMemory(i32 %at_a_time) #0 {
entry:
  %at_a_time.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %at_a_time, i32* %at_a_time.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %at_a_time.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %at_a_time.addr, align 4
  store i32 %1, i32* @s_at_a_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ierr, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxFinalizeMemory() #0 {
entry:
  %ierr = alloca i32, align 4
  %byebye = alloca %union.box_memory*, align 8
  store i32 0, i32* %ierr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.box_memory*, %union.box_memory** @s_finalize, align 8
  %tobool = icmp ne %union.box_memory* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.box_memory*, %union.box_memory** @s_finalize, align 8
  store %union.box_memory* %1, %union.box_memory** %byebye, align 8
  %2 = load %union.box_memory*, %union.box_memory** @s_finalize, align 8
  %d_next = bitcast %union.box_memory* %2 to %union.box_memory**
  %3 = load %union.box_memory*, %union.box_memory** %d_next, align 8
  store %union.box_memory* %3, %union.box_memory** @s_finalize, align 8
  %4 = load %union.box_memory*, %union.box_memory** %byebye, align 8
  %5 = bitcast %union.box_memory* %4 to i8*
  call void @hypre_Free(i8* %5)
  store %union.box_memory* null, %union.box_memory** %byebye, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.box_memory* null, %union.box_memory** @s_finalize, align 8
  store %union.box_memory* null, %union.box_memory** @s_free, align 8
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_Box_struct* @hypre_BoxAlloc() #0 {
entry:
  %ptr = alloca %union.box_memory*, align 8
  store %union.box_memory* null, %union.box_memory** %ptr, align 8
  %0 = load %union.box_memory*, %union.box_memory** @s_free, align 8
  %tobool = icmp ne %union.box_memory* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @hypre_AllocateBoxBlock()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.box_memory*, %union.box_memory** @s_free, align 8
  store %union.box_memory* %1, %union.box_memory** %ptr, align 8
  %2 = load %union.box_memory*, %union.box_memory** @s_free, align 8
  %d_next = bitcast %union.box_memory* %2 to %union.box_memory**
  %3 = load %union.box_memory*, %union.box_memory** %d_next, align 8
  store %union.box_memory* %3, %union.box_memory** @s_free, align 8
  %4 = load i32, i32* @s_count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @s_count, align 4
  %5 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %d_box = bitcast %union.box_memory* %5 to %struct.hypre_Box_struct*
  ret %struct.hypre_Box_struct* %d_box
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxFree(%struct.hypre_Box_struct* %box) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %ierr = alloca i32, align 4
  %ptr = alloca %union.box_memory*, align 8
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %1 = bitcast %struct.hypre_Box_struct* %0 to %union.box_memory*
  store %union.box_memory* %1, %union.box_memory** %ptr, align 8
  %2 = load %union.box_memory*, %union.box_memory** @s_free, align 8
  %3 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %d_next = bitcast %union.box_memory* %3 to %union.box_memory**
  store %union.box_memory* %2, %union.box_memory** %d_next, align 8
  %4 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  store %union.box_memory* %4, %union.box_memory** @s_free, align 8
  %5 = load i32, i32* @s_count, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @s_count, align 4
  %6 = load i32, i32* @s_count, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @hypre_BoxFinalizeMemory()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @hypre_AllocateBoxBlock() #0 {
entry:
  %ierr = alloca i32, align 4
  %ptr = alloca %union.box_memory*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* @s_at_a_time, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 24, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv1)
  %1 = bitcast i8* %call to %union.box_memory*
  store %union.box_memory* %1, %union.box_memory** %ptr, align 8
  %2 = load %union.box_memory*, %union.box_memory** @s_finalize, align 8
  %3 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %arrayidx = getelementptr inbounds %union.box_memory, %union.box_memory* %3, i64 0
  %d_next = bitcast %union.box_memory* %arrayidx to %union.box_memory**
  store %union.box_memory* %2, %union.box_memory** %d_next, align 8
  %4 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %arrayidx2 = getelementptr inbounds %union.box_memory, %union.box_memory* %4, i64 0
  store %union.box_memory* %arrayidx2, %union.box_memory** @s_finalize, align 8
  %5 = load i32, i32* @s_at_a_time, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %union.box_memory*, %union.box_memory** @s_free, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %arrayidx4 = getelementptr inbounds %union.box_memory, %union.box_memory* %9, i64 %idxprom
  %d_next5 = bitcast %union.box_memory* %arrayidx4 to %union.box_memory**
  store %union.box_memory* %7, %union.box_memory** %d_next5, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %union.box_memory*, %union.box_memory** %ptr, align 8
  %arrayidx7 = getelementptr inbounds %union.box_memory, %union.box_memory* %11, i64 %idxprom6
  store %union.box_memory* %arrayidx7, %union.box_memory** @s_free, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

declare i8* @hypre_MAlloc(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
