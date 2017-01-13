; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/5.SMG2000.struct_stencil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %dim, i32 %size, [3 x i32]* %shape) #0 {
entry:
  %dim.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %shape.addr = alloca [3 x i32]*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %abs_offset = alloca i32, align 4
  %max_offset = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %dim, i32* %dim.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store [3 x i32]* %shape, [3 x i32]** %shape.addr, align 8
  %call = call i8* @hypre_MAlloc(i32 24)
  %0 = bitcast i8* %call to %struct.hypre_StructStencil_struct*
  store %struct.hypre_StructStencil_struct* %0, %struct.hypre_StructStencil_struct** %stencil, align 8
  %1 = load [3 x i32]*, [3 x i32]** %shape.addr, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape1 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 0
  store [3 x i32]* %1, [3 x i32]** %shape1, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size2 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %4, i32 0, i32 1
  store i32 %3, i32* %size2, align 4
  %5 = load i32, i32* %dim.addr, align 4
  %6 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim3 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %6, i32 0, i32 3
  store i32 %5, i32* %dim3, align 4
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %7, i32 0, i32 4
  store i32 1, i32* %ref_count, align 4
  store i32 0, i32* %max_offset, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %d, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %d, align 4
  %cmp5 = icmp slt i32 %10, 3
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %d, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %s, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load [3 x i32]*, [3 x i32]** %shape.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx8, align 4
  store i32 %14, i32* %abs_offset, align 4
  %15 = load i32, i32* %abs_offset, align 4
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.6
  %16 = load i32, i32* %abs_offset, align 4
  %sub = sub nsw i32 0, %16
  br label %cond.end

cond.false:                                       ; preds = %for.body.6
  %17 = load i32, i32* %abs_offset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* %abs_offset, align 4
  %18 = load i32, i32* %abs_offset, align 4
  %19 = load i32, i32* %max_offset, align 4
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %20 = load i32, i32* %max_offset, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %21 = load i32, i32* %abs_offset, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %20, %cond.true.11 ], [ %21, %cond.false.12 ]
  store i32 %cond14, i32* %max_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.13
  %22 = load i32, i32* %d, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %23 = load i32, i32* %s, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %s, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %24 = load i32, i32* %max_offset, align 4
  %25 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %max_offset18 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %25, i32 0, i32 2
  store i32 %24, i32* %max_offset18, align 4
  %26 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  ret %struct.hypre_StructStencil_struct* %26
}

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_StructStencil_struct* @hypre_StructStencilRef(%struct.hypre_StructStencil_struct* %stencil) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %ref_count, align 4
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  ret %struct.hypre_StructStencil_struct* %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %stencil) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %tobool = icmp ne %struct.hypre_StructStencil_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %ref_count1 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %ref_count1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %5, i32 0, i32 0
  %6 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @hypre_Free(i8* %7)
  %8 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape3 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %8, i32 0, i32 0
  store [3 x i32]* null, [3 x i32]** %shape3, align 8
  %9 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %10 = bitcast %struct.hypre_StructStencil_struct* %9 to i8*
  call void @hypre_Free(i8* %10)
  store %struct.hypre_StructStencil_struct* null, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %11 = load i32, i32* %ierr, align 4
  ret i32 %11
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructStencilElementRank(%struct.hypre_StructStencil_struct* %stencil, i32* %stencil_element) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_element.addr = alloca i32*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %rank = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store i32* %stencil_element, i32** %stencil_element.addr, align 8
  store i32 -1, i32* %rank, align 4
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %0, i32 0, i32 0
  %1 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %1, [3 x i32]** %stencil_shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %7 = load i32, i32* %arrayidx1, align 4
  %8 = load i32*, i32** %stencil_element.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5, i32 0, i64 1
  %12 = load i32, i32* %arrayidx6, align 4
  %13 = load i32*, i32** %stencil_element.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 1
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %12, %14
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 2
  %17 = load i32, i32* %arrayidx12, align 4
  %18 = load i32*, i32** %stencil_element.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %17, %19
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %rank, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i32, i32* %rank, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructStencilSymmetrize(%struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %symm_stencil_ptr, i32** %symm_elements_ptr) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %symm_stencil_ptr.addr = alloca %struct.hypre_StructStencil_struct**, align 8
  %symm_elements_ptr.addr = alloca i32**, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %symm_stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %symm_stencil_shape = alloca [3 x i32]*, align 8
  %symm_stencil_size = alloca i32, align 4
  %symm_elements = alloca i32*, align 8
  %no_symmetric_stencil_element = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store %struct.hypre_StructStencil_struct** %symm_stencil_ptr, %struct.hypre_StructStencil_struct*** %symm_stencil_ptr.addr, align 8
  store i32** %symm_elements_ptr, i32*** %symm_elements_ptr.addr, align 8
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %0, i32 0, i32 0
  %1 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %1, [3 x i32]** %stencil_shape, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  store i32 %3, i32* %stencil_size, align 4
  store i32 0, i32* %ierr, align 4
  %4 = load i32, i32* %stencil_size, align 4
  %mul = mul nsw i32 2, %4
  %call = call i8* @hypre_CAlloc(i32 %mul, i32 12)
  %5 = bitcast i8* %call to [3 x i32]*
  store [3 x i32]* %5, [3 x i32]** %symm_stencil_shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %stencil_size, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %10 = load i32, i32* %arrayidx1, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3, i32 0, i64 0
  store i32 %10, i32* %arrayidx4, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 1
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 1
  store i32 %15, i32* %arrayidx10, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 2
  %20 = load i32, i32* %arrayidx13, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i32 0, i64 2
  store i32 %20, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %stencil_size, align 4
  %mul17 = mul nsw i32 2, %24
  %call18 = call i8* @hypre_CAlloc(i32 %mul17, i32 4)
  %25 = bitcast i8* %call18 to i32*
  store i32* %25, i32** %symm_elements, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.25, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %stencil_size, align 4
  %mul20 = mul nsw i32 2, %27
  %cmp21 = icmp slt i32 %26, %mul20
  br i1 %cmp21, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i32*, i32** %symm_elements, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  store i32 -1, i32* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %30 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  %31 = load i32, i32* %stencil_size, align 4
  store i32 %31, i32* %symm_stencil_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.91, %for.end.27
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %stencil_size, align 4
  %cmp29 = icmp slt i32 %32, %33
  br i1 %cmp29, label %for.body.30, label %for.end.93

for.body.30:                                      ; preds = %for.cond.28
  %34 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load i32*, i32** %symm_elements, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %36 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp slt i32 %36, 0
  br i1 %cmp33, label %if.then, label %if.end.90

if.then:                                          ; preds = %for.body.30
  store i32 1, i32* %no_symmetric_stencil_element, align 4
  %37 = load i32, i32* %i, align 4
  store i32 %37, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.67, %if.then
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %stencil_size, align 4
  %cmp35 = icmp slt i32 %38, %39
  br i1 %cmp35, label %for.body.36, label %for.end.69

for.body.36:                                      ; preds = %for.cond.34
  %40 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 0
  %42 = load i32, i32* %arrayidx39, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %43 to i64
  %44 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx41, i32 0, i64 0
  %45 = load i32, i32* %arrayidx42, align 4
  %sub = sub nsw i32 0, %45
  %cmp43 = icmp eq i32 %42, %sub
  br i1 %cmp43, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %for.body.36
  %46 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 1
  %48 = load i32, i32* %arrayidx46, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %50, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 1
  %51 = load i32, i32* %arrayidx49, align 4
  %sub50 = sub nsw i32 0, %51
  %cmp51 = icmp eq i32 %48, %sub50
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.66

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %52 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %52 to i64
  %53 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %53, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx54, i32 0, i64 2
  %54 = load i32, i32* %arrayidx55, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %55 to i64
  %56 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %56, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx57, i32 0, i64 2
  %57 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 0, %57
  %cmp60 = icmp eq i32 %54, %sub59
  br i1 %cmp60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %land.lhs.true.52
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %j, align 4
  %cmp62 = icmp ne i32 %58, %59
  br i1 %cmp62, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %if.then.61
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load i32*, i32** %symm_elements, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %62, i64 %idxprom64
  store i32 %60, i32* %arrayidx65, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.63, %if.then.61
  store i32 0, i32* %no_symmetric_stencil_element, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.end, %land.lhs.true.52, %land.lhs.true, %for.body.36
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %63 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %63, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.34

for.end.69:                                       ; preds = %for.cond.34
  %64 = load i32, i32* %no_symmetric_stencil_element, align 4
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.70, label %if.end.89

if.then.70:                                       ; preds = %for.end.69
  store i32 0, i32* %d, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.83, %if.then.70
  %65 = load i32, i32* %d, align 4
  %cmp72 = icmp slt i32 %65, 3
  br i1 %cmp72, label %for.body.73, label %for.end.85

for.body.73:                                      ; preds = %for.cond.71
  %66 = load i32, i32* %d, align 4
  %idxprom74 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %67 to i64
  %68 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %68, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx76, i32 0, i64 %idxprom74
  %69 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 0, %69
  %70 = load i32, i32* %d, align 4
  %idxprom79 = sext i32 %70 to i64
  %71 = load i32, i32* %symm_stencil_size, align 4
  %idxprom80 = sext i32 %71 to i64
  %72 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx81, i32 0, i64 %idxprom79
  store i32 %sub78, i32* %arrayidx82, align 4
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.73
  %73 = load i32, i32* %d, align 4
  %inc84 = add nsw i32 %73, 1
  store i32 %inc84, i32* %d, align 4
  br label %for.cond.71

for.end.85:                                       ; preds = %for.cond.71
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %symm_stencil_size, align 4
  %idxprom86 = sext i32 %75 to i64
  %76 = load i32*, i32** %symm_elements, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %76, i64 %idxprom86
  store i32 %74, i32* %arrayidx87, align 4
  %77 = load i32, i32* %symm_stencil_size, align 4
  %inc88 = add nsw i32 %77, 1
  store i32 %inc88, i32* %symm_stencil_size, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.85, %for.end.69
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.body.30
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %78 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %78, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.28

for.end.93:                                       ; preds = %for.cond.28
  %79 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %79, i32 0, i32 3
  %80 = load i32, i32* %dim, align 4
  %81 = load i32, i32* %symm_stencil_size, align 4
  %82 = load [3 x i32]*, [3 x i32]** %symm_stencil_shape, align 8
  %call94 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %80, i32 %81, [3 x i32]* %82)
  store %struct.hypre_StructStencil_struct* %call94, %struct.hypre_StructStencil_struct** %symm_stencil, align 8
  %83 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %symm_stencil, align 8
  %84 = load %struct.hypre_StructStencil_struct**, %struct.hypre_StructStencil_struct*** %symm_stencil_ptr.addr, align 8
  store %struct.hypre_StructStencil_struct* %83, %struct.hypre_StructStencil_struct** %84, align 8
  %85 = load i32*, i32** %symm_elements, align 8
  %86 = load i32**, i32*** %symm_elements_ptr.addr, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32, i32* %ierr, align 4
  ret i32 %87
}

declare i8* @hypre_CAlloc(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
