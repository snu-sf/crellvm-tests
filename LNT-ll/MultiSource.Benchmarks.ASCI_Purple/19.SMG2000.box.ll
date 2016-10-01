; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/19.SMG2000.box.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }

; Function Attrs: nounwind uwtable
define %struct.hypre_Box_struct* @hypre_BoxCreate() #0 {
entry:
  %box = alloca %struct.hypre_Box_struct*, align 8
  %call = call i8* @hypre_MAlloc(i32 24)
  %0 = bitcast i8* %call to %struct.hypre_Box_struct*
  store %struct.hypre_Box_struct* %0, %struct.hypre_Box_struct** %box, align 8
  %1 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  ret %struct.hypre_Box_struct* %1
}

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %box, i32* %imin, i32* %imax) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %imin.addr = alloca i32*, align 8
  %imax.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32* %imin, i32** %imin.addr, align 8
  store i32* %imax, i32** %imax.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32*, i32** %imin.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin1 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1, i32 0, i64 0
  store i32 %1, i32* %arrayidx2, align 4
  %3 = load i32*, i32** %imin.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx3, align 4
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4, i32 0, i64 1
  store i32 %4, i32* %arrayidx5, align 4
  %6 = load i32*, i32** %imin.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %6, i64 2
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin7 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin7, i32 0, i64 2
  store i32 %7, i32* %arrayidx8, align 4
  %9 = load i32*, i32** %imax.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imax10, i32 0, i64 0
  store i32 %10, i32* %arrayidx11, align 4
  %12 = load i32*, i32** %imax.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx12, align 4
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imax13, i32 0, i64 1
  store i32 %13, i32* %arrayidx14, align 4
  %15 = load i32*, i32** %imax.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %15, i64 2
  %16 = load i32, i32* %arrayidx15, align 4
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 2
  store i32 %16, i32* %arrayidx17, align 4
  %18 = load i32, i32* %ierr, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @hypre_MAlloc(i32 16)
  %0 = bitcast i8* %call to %struct.hypre_BoxArray_struct*
  store %struct.hypre_BoxArray_struct* %0, %struct.hypre_BoxArray_struct** %box_array, align 8
  %1 = load i32, i32* %size.addr, align 4
  %call1 = call i8* @hypre_CAlloc(i32 %1, i32 24)
  %2 = bitcast i8* %call1 to %struct.hypre_Box_struct*
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %3, i32 0, i32 0
  store %struct.hypre_Box_struct* %2, %struct.hypre_Box_struct** %boxes, align 8
  %4 = load i32, i32* %size.addr, align 4
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %5, i32 0, i32 1
  store i32 %4, i32* %size2, align 4
  %6 = load i32, i32* %size.addr, align 4
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %alloc_size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 2
  store i32 %6, i32* %alloc_size, align 4
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  ret %struct.hypre_BoxArray_struct* %8
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %box_array, i32 %size) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %size.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %alloc_size = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %alloc_size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %alloc_size1, align 4
  store i32 %1, i32* %alloc_size, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %alloc_size, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %4, 10
  store i32 %add, i32* %alloc_size, align 4
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %5, i32 0, i32 0
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %7 = bitcast %struct.hypre_Box_struct* %6 to i8*
  %8 = load i32, i32* %alloc_size, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 24, %conv
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @hypre_ReAlloc(i8* %7, i32 %conv2)
  %9 = bitcast i8* %call to %struct.hypre_Box_struct*
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  store %struct.hypre_Box_struct* %9, %struct.hypre_Box_struct** %boxes3, align 8
  %11 = load i32, i32* %alloc_size, align 4
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %alloc_size4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 2
  store i32 %11, i32* %alloc_size4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %size.addr, align 4
  %14 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %14, i32 0, i32 1
  store i32 %13, i32* %size5, align 4
  %15 = load i32, i32* %ierr, align 4
  ret i32 %15
}

declare i8* @hypre_ReAlloc(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %box_array_array = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 16)
  %0 = bitcast i8* %call to %struct.hypre_BoxArrayArray_struct*
  store %struct.hypre_BoxArrayArray_struct* %0, %struct.hypre_BoxArrayArray_struct** %box_array_array, align 8
  %1 = load i32, i32* %size.addr, align 4
  %call1 = call i8* @hypre_CAlloc(i32 %1, i32 8)
  %2 = bitcast i8* %call1 to %struct.hypre_BoxArray_struct**
  %3 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %3, i32 0, i32 0
  store %struct.hypre_BoxArray_struct** %2, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array, align 8
  %box_arrays3 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays3, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %8, i64 %idxprom
  store %struct.hypre_BoxArray_struct* %call2, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %size.addr, align 4
  %11 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array, align 8
  %size4 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %11, i32 0, i32 1
  store i32 %10, i32* %size4, align 4
  %12 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array, align 8
  ret %struct.hypre_BoxArrayArray_struct* %12
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %box) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %tobool = icmp ne %struct.hypre_Box_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %2 = bitcast %struct.hypre_Box_struct* %1 to i8*
  call void @hypre_Free(i8* %2)
  store %struct.hypre_Box_struct* null, %struct.hypre_Box_struct** %box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %box_array) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %tobool = icmp ne %struct.hypre_BoxArray_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %1, i32 0, i32 0
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %3 = bitcast %struct.hypre_Box_struct* %2 to i8*
  call void @hypre_Free(i8* %3)
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 0
  store %struct.hypre_Box_struct* null, %struct.hypre_Box_struct** %boxes1, align 8
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %6 = bitcast %struct.hypre_BoxArray_struct* %5 to i8*
  call void @hypre_Free(i8* %6)
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %box_array_array) #0 {
entry:
  %box_array_array.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_BoxArrayArray_struct* %box_array_array, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %tobool = icmp ne %struct.hypre_BoxArrayArray_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %5, i32 0, i32 0
  %6 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %6, i64 %idxprom
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  %call = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %box_arrays1 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %9, i32 0, i32 0
  %10 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays1, align 8
  %11 = bitcast %struct.hypre_BoxArray_struct** %10 to i8*
  call void @hypre_Free(i8* %11)
  %12 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %box_arrays2 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %12, i32 0, i32 0
  store %struct.hypre_BoxArray_struct** null, %struct.hypre_BoxArray_struct*** %box_arrays2, align 8
  %13 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %14 = bitcast %struct.hypre_BoxArrayArray_struct* %13 to i8*
  call void @hypre_Free(i8* %14)
  store %struct.hypre_BoxArrayArray_struct* null, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load i32, i32* %ierr, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct* %box) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %new_box = alloca %struct.hypre_Box_struct*, align 8
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %new_box, align 8
  %0 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin1 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1, i32 0, i64 0
  store i32 %1, i32* %arrayidx2, align 4
  %3 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3, i32 0, i64 1
  %4 = load i32, i32* %arrayidx4, align 4
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5, i32 0, i64 1
  store i32 %4, i32* %arrayidx6, align 4
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin7 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin7, i32 0, i64 2
  %7 = load i32, i32* %arrayidx8, align 4
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 2
  store i32 %7, i32* %arrayidx10, align 4
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %10 = load i32, i32* %arrayidx11, align 4
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imax12, i32 0, i64 0
  store i32 %10, i32* %arrayidx13, align 4
  %12 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imax14, i32 0, i64 1
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 1
  store i32 %13, i32* %arrayidx17, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imax18, i32 0, i64 2
  %16 = load i32, i32* %arrayidx19, align 4
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imax20, i32 0, i64 2
  store i32 %16, i32* %arrayidx21, align 4
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  ret %struct.hypre_Box_struct* %18
}

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %box_array) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %new_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %1)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 0
  %7 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %7, i64 %idxprom
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i64 %idxprom3
  %imin6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imin6, i32 0, i64 0
  store i32 %8, i32* %arrayidx7, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes9 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 0
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes9, align 8
  %arrayidx10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i64 %idxprom8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %15 = load i32, i32* %arrayidx12, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %17, i32 0, i32 0
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i64 %idxprom13
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  store i32 %15, i32* %arrayidx17, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %20, i32 0, i32 0
  %21 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %21, i64 %idxprom18
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 2
  %22 = load i32, i32* %arrayidx22, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes24 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %24, i32 0, i32 0
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes24, align 8
  %arrayidx25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i64 %idxprom23
  %imin26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imin26, i32 0, i64 2
  store i32 %22, i32* %arrayidx27, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes29 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %27, i32 0, i32 0
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes29, align 8
  %arrayidx30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i64 %idxprom28
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx30, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %29 = load i32, i32* %arrayidx31, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes33 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %31, i32 0, i32 0
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i64 %idxprom32
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx34, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 0
  store i32 %29, i32* %arrayidx36, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes38 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes38, align 8
  %arrayidx39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom37
  %imax40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx39, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imax40, i32 0, i64 1
  %36 = load i32, i32* %arrayidx41, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes43 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %38, i32 0, i32 0
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes43, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i64 %idxprom42
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx44, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 1
  store i32 %36, i32* %arrayidx46, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %40 to i64
  %41 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes48 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %41, i32 0, i32 0
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes48, align 8
  %arrayidx49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i64 %idxprom47
  %imax50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx49, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imax50, i32 0, i64 2
  %43 = load i32, i32* %arrayidx51, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  %boxes53 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %45, i32 0, i32 0
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes53, align 8
  %arrayidx54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i64 %idxprom52
  %imax55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx54, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imax55, i32 0, i64 2
  store i32 %43, i32* %arrayidx56, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_array, align 8
  ret %struct.hypre_BoxArray_struct* %48
}

; Function Attrs: nounwind uwtable
define %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayDuplicate(%struct.hypre_BoxArrayArray_struct* %box_array_array) #0 {
entry:
  %box_array_array.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %new_box_array_array = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %new_box_arrays = alloca %struct.hypre_BoxArray_struct**, align 8
  %new_size = alloca i32, align 4
  %box_arrays = alloca %struct.hypre_BoxArray_struct**, align 8
  %i = alloca i32, align 4
  store %struct.hypre_BoxArrayArray_struct* %box_array_array, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %0 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  store i32 %1, i32* %new_size, align 4
  %2 = load i32, i32* %new_size, align 4
  %call = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %2)
  store %struct.hypre_BoxArrayArray_struct* %call, %struct.hypre_BoxArrayArray_struct** %new_box_array_array, align 8
  %3 = load i32, i32* %new_size, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %new_box_array_array, align 8
  %box_arrays1 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %4, i32 0, i32 0
  %5 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays1, align 8
  store %struct.hypre_BoxArray_struct** %5, %struct.hypre_BoxArray_struct*** %new_box_arrays, align 8
  %6 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_array_array.addr, align 8
  %box_arrays2 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %6, i32 0, i32 0
  %7 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays2, align 8
  store %struct.hypre_BoxArray_struct** %7, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %new_size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %11, i64 %idxprom
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %new_box_arrays, align 8
  %arrayidx4 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %14, i64 %idxprom3
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx4, align 8
  %call5 = call i32 @hypre_AppendBoxArray(%struct.hypre_BoxArray_struct* %12, %struct.hypre_BoxArray_struct* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %17 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %new_box_array_array, align 8
  ret %struct.hypre_BoxArrayArray_struct* %17
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AppendBoxArray(%struct.hypre_BoxArray_struct* %box_array_0, %struct.hypre_BoxArray_struct* %box_array_1) #0 {
entry:
  %box_array_0.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %box_array_1.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  %size = alloca i32, align 4
  %size_0 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array_0, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  store %struct.hypre_BoxArray_struct* %box_array_1, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %size2 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size2, align 4
  store i32 %3, i32* %size_0, align 4
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %size_0, align 4
  %add = add nsw i32 %5, %6
  %call = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %4, i32 %add)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size_0, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 0
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i64 %idxprom
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %12 = load i32, i32* %arrayidx3, align 4
  %13 = load i32, i32* %size, align 4
  %14 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %13, %14
  %idxprom5 = sext i32 %add4 to i64
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes6 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i64 %idxprom5
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 0
  store i32 %12, i32* %arrayidx9, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %18, i32 0, i32 0
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i64 %idxprom10
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 1
  %20 = load i32, i32* %arrayidx14, align 4
  %21 = load i32, i32* %size, align 4
  %22 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %21, %22
  %idxprom16 = sext i32 %add15 to i64
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes17 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 0
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes17, align 8
  %arrayidx18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i64 %idxprom16
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  store i32 %20, i32* %arrayidx20, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes22 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes22, align 8
  %arrayidx23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom21
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 2
  %28 = load i32, i32* %arrayidx25, align 4
  %29 = load i32, i32* %size, align 4
  %30 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %29, %30
  %idxprom27 = sext i32 %add26 to i64
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes28 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %31, i32 0, i32 0
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes28, align 8
  %arrayidx29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i64 %idxprom27
  %imin30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx29, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imin30, i32 0, i64 2
  store i32 %28, i32* %arrayidx31, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes33 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom32
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %36 = load i32, i32* %arrayidx35, align 4
  %37 = load i32, i32* %size, align 4
  %38 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %37, %38
  %idxprom37 = sext i32 %add36 to i64
  %39 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes38 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %39, i32 0, i32 0
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes38, align 8
  %arrayidx39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i64 %idxprom37
  %imax40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx39, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imax40, i32 0, i64 0
  store i32 %36, i32* %arrayidx41, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes43 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %42, i32 0, i32 0
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes43, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i64 %idxprom42
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx44, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 1
  %44 = load i32, i32* %arrayidx46, align 4
  %45 = load i32, i32* %size, align 4
  %46 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %45, %46
  %idxprom48 = sext i32 %add47 to i64
  %47 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes49 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %47, i32 0, i32 0
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes49, align 8
  %arrayidx50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i64 %idxprom48
  %imax51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %imax51, i32 0, i64 1
  store i32 %44, i32* %arrayidx52, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_0.addr, align 8
  %boxes54 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %50, i32 0, i32 0
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes54, align 8
  %arrayidx55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i64 %idxprom53
  %imax56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx55, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imax56, i32 0, i64 2
  %52 = load i32, i32* %arrayidx57, align 4
  %53 = load i32, i32* %size, align 4
  %54 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %53, %54
  %idxprom59 = sext i32 %add58 to i64
  %55 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array_1.addr, align 8
  %boxes60 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %55, i32 0, i32 0
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes60, align 8
  %arrayidx61 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i64 %idxprom59
  %imax62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx61, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imax62, i32 0, i64 2
  store i32 %52, i32* %arrayidx63, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %ierr, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AppendBox(%struct.hypre_Box_struct* %box, %struct.hypre_BoxArray_struct* %box_array) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size1 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %3 = load i32, i32* %size, align 4
  %add = add nsw i32 %3, 1
  %call = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %2, i32 %add)
  %4 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %size, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx2 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i64 %idxprom
  %imin3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3, i32 0, i64 0
  store i32 %5, i32* %arrayidx4, align 4
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5, i32 0, i64 1
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %size, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom7
  %imin10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imin10, i32 0, i64 1
  store i32 %10, i32* %arrayidx11, align 4
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imin12, i32 0, i64 2
  %15 = load i32, i32* %arrayidx13, align 4
  %16 = load i32, i32* %size, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %17, i32 0, i32 0
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes15, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i64 %idxprom14
  %imin17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imin17, i32 0, i64 2
  store i32 %15, i32* %arrayidx18, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %21 = load i32, i32* %size, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes21 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom20
  %imax23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax23, i32 0, i64 0
  store i32 %20, i32* %arrayidx24, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imax25, i32 0, i64 1
  %25 = load i32, i32* %arrayidx26, align 4
  %26 = load i32, i32* %size, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes28 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %27, i32 0, i32 0
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes28, align 8
  %arrayidx29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i64 %idxprom27
  %imax30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax30, i32 0, i64 1
  store i32 %25, i32* %arrayidx31, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imax32, i32 0, i64 2
  %30 = load i32, i32* %arrayidx33, align 4
  %31 = load i32, i32* %size, align 4
  %idxprom34 = sext i32 %31 to i64
  %32 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes35 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %32, i32 0, i32 0
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes35, align 8
  %arrayidx36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i64 %idxprom34
  %imax37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imax37, i32 0, i64 2
  store i32 %30, i32* %arrayidx38, align 4
  %34 = load i32, i32* %ierr, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @hypre_DeleteBox(%struct.hypre_BoxArray_struct* %box_array, i32 %index) #0 {
entry:
  %box_array.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %index.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_BoxArray_struct* %box_array, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %index.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %5, i32 0, i32 0
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %6, i64 %idxprom
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %7 = load i32, i32* %arrayidx1, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %9, i32 0, i32 0
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes3, align 8
  %arrayidx4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i64 %idxprom2
  %imin5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5, i32 0, i64 0
  store i32 %7, i32* %arrayidx6, align 4
  %11 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %11, 1
  %idxprom8 = sext i32 %add7 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes9 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes9, align 8
  %arrayidx10 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %14 = load i32, i32* %arrayidx12, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i64 %idxprom13
  %imin16 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imin16, i32 0, i64 1
  store i32 %14, i32* %arrayidx17, align 4
  %18 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes20 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %19, i32 0, i32 0
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes20, align 8
  %arrayidx21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i64 %idxprom19
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 2
  %21 = load i32, i32* %arrayidx23, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes25 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 0
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes25, align 8
  %arrayidx26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i64 %idxprom24
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 2
  store i32 %21, i32* %arrayidx28, align 4
  %25 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %25, 1
  %idxprom30 = sext i32 %add29 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes31 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes31, align 8
  %arrayidx32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom30
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %28 = load i32, i32* %arrayidx33, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes35 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %30, i32 0, i32 0
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes35, align 8
  %arrayidx36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i64 %idxprom34
  %imax37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imax37, i32 0, i64 0
  store i32 %28, i32* %arrayidx38, align 4
  %32 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %32, 1
  %idxprom40 = sext i32 %add39 to i64
  %33 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes41 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %33, i32 0, i32 0
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i64 %idxprom40
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 1
  %35 = load i32, i32* %arrayidx44, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes46 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %37, i32 0, i32 0
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i64 %idxprom45
  %imax48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imax48, i32 0, i64 1
  store i32 %35, i32* %arrayidx49, align 4
  %39 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %39, 1
  %idxprom51 = sext i32 %add50 to i64
  %40 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes52 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %40, i32 0, i32 0
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes52, align 8
  %arrayidx53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i64 %idxprom51
  %imax54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx53, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imax54, i32 0, i64 2
  %42 = load i32, i32* %arrayidx55, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %43 to i64
  %44 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %boxes57 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %44, i32 0, i32 0
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes57, align 8
  %arrayidx58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i64 %idxprom56
  %imax59 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx58, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %imax59, i32 0, i64 2
  store i32 %42, i32* %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array.addr, align 8
  %size61 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %47, i32 0, i32 1
  %48 = load i32, i32* %size61, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %size61, align 4
  %49 = load i32, i32* %ierr, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %box, i32* %size) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %size.addr = alloca i32*, align 8
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  %0 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  %add = add nsw i32 %sub, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax2 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin4 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %6, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4, i32 0, i64 0
  %7 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %5, %7
  %add7 = add nsw i32 %sub6, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add7, %cond.true ], [ 0, %cond.false ]
  %8 = load i32*, i32** %size.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %cond, i32* %arrayidx8, align 4
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imax9, i32 0, i64 1
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin11, i32 0, i64 1
  %12 = load i32, i32* %arrayidx12, align 4
  %sub13 = sub nsw i32 %10, %12
  %add14 = add nsw i32 %sub13, 1
  %cmp15 = icmp slt i32 0, %add14
  br i1 %cmp15, label %cond.true.16, label %cond.false.23

cond.true.16:                                     ; preds = %cond.end
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 1
  %14 = load i32, i32* %arrayidx18, align 4
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  %16 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %14, %16
  %add22 = add nsw i32 %sub21, 1
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.16
  %cond25 = phi i32 [ %add22, %cond.true.16 ], [ 0, %cond.false.23 ]
  %17 = load i32*, i32** %size.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %cond25, i32* %arrayidx26, align 4
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imax27, i32 0, i64 2
  %19 = load i32, i32* %arrayidx28, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 2
  %21 = load i32, i32* %arrayidx30, align 4
  %sub31 = sub nsw i32 %19, %21
  %add32 = add nsw i32 %sub31, 1
  %cmp33 = icmp slt i32 0, %add32
  br i1 %cmp33, label %cond.true.34, label %cond.false.41

cond.true.34:                                     ; preds = %cond.end.24
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 2
  %23 = load i32, i32* %arrayidx36, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 2
  %25 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %23, %25
  %add40 = add nsw i32 %sub39, 1
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end.24
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.34
  %cond43 = phi i32 [ %add40, %cond.true.34 ], [ 0, %cond.false.41 ]
  %26 = load i32*, i32** %size.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %cond43, i32* %arrayidx44, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %box, i32* %stride, i32* %size) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %stride.addr = alloca i32*, align 8
  %size.addr = alloca i32*, align 8
  %d = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %d, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %d, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %5, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %3, %6
  %add = add nsw i32 %sub, 1
  %cmp3 = icmp slt i32 0, %add
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax5 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load i32, i32* %d, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %11, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx9, align 4
  %sub10 = sub nsw i32 %9, %12
  %add11 = add nsw i32 %sub10, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %s, align 4
  %13 = load i32, i32* %s, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load i32, i32* %s, align 4
  %sub13 = sub nsw i32 %14, 1
  %15 = load i32, i32* %d, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32*, i32** %stride.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %div = sdiv i32 %sub13, %17
  %add16 = add nsw i32 %div, 1
  store i32 %add16, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %18 = load i32, i32* %s, align 4
  %19 = load i32, i32* %d, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32*, i32** %size.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  store i32 %18, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %d, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_IModPeriod(i32 %i, i32 %period) #0 {
entry:
  %i.addr = alloca i32, align 4
  %period.addr = alloca i32, align 4
  %i_mod_p = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %period, i32* %period.addr, align 4
  %0 = load i32, i32* %period.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  store i32 %1, i32* %i_mod_p, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %period.addr, align 4
  %cmp1 = icmp sge i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %i.addr, align 4
  %5 = load i32, i32* %period.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %i_mod_p, align 4
  br label %if.end.9

if.else.3:                                        ; preds = %if.else
  %6 = load i32, i32* %i.addr, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else.3
  %7 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 0, %7
  %8 = load i32, i32* %period.addr, align 4
  %div = sdiv i32 %sub, %8
  %add = add nsw i32 %div, 1
  %9 = load i32, i32* %period.addr, align 4
  %mul = mul nsw i32 %add, %9
  store i32 %mul, i32* %shift, align 4
  %10 = load i32, i32* %i.addr, align 4
  %11 = load i32, i32* %shift, align 4
  %add6 = add nsw i32 %10, %11
  %12 = load i32, i32* %period.addr, align 4
  %rem7 = srem i32 %add6, %12
  store i32 %rem7, i32* %i_mod_p, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.else.3
  %13 = load i32, i32* %i.addr, align 4
  store i32 %13, i32* %i_mod_p, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %14 = load i32, i32* %i_mod_p, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @hypre_IModPeriodX(i32* %index, i32* %periodic) #0 {
entry:
  %index.addr = alloca i32*, align 8
  %periodic.addr = alloca i32*, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  %0 = load i32*, i32** %index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %periodic.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %call = call i32 @hypre_IModPeriod(i32 %1, i32 %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_IModPeriodY(i32* %index, i32* %periodic) #0 {
entry:
  %index.addr = alloca i32*, align 8
  %periodic.addr = alloca i32*, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  %0 = load i32*, i32** %index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %periodic.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %call = call i32 @hypre_IModPeriod(i32 %1, i32 %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @hypre_IModPeriodZ(i32* %index, i32* %periodic) #0 {
entry:
  %index.addr = alloca i32*, align 8
  %periodic.addr = alloca i32*, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  %0 = load i32*, i32** %index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %periodic.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 2
  %3 = load i32, i32* %arrayidx1, align 4
  %call = call i32 @hypre_IModPeriod(i32 %1, i32 %3)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
