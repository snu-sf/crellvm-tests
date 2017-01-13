; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/12.SMG2000.HYPRE_struct_stencil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructStencilCreate(i32 %dim, i32 %size, %struct.hypre_StructStencil_struct** %stencil) #0 {
entry:
  %dim.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %stencil.addr = alloca %struct.hypre_StructStencil_struct**, align 8
  %shape = alloca [3 x i32]*, align 8
  store i32 %dim, i32* %dim.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store %struct.hypre_StructStencil_struct** %stencil, %struct.hypre_StructStencil_struct*** %stencil.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 %0, i32 12)
  %1 = bitcast i8* %call to [3 x i32]*
  store [3 x i32]* %1, [3 x i32]** %shape, align 8
  %2 = load i32, i32* %dim.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %4 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %call1 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %2, i32 %3, [3 x i32]* %4)
  %5 = load %struct.hypre_StructStencil_struct**, %struct.hypre_StructStencil_struct*** %stencil.addr, align 8
  store %struct.hypre_StructStencil_struct* %call1, %struct.hypre_StructStencil_struct** %5, align 8
  ret i32 0
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructStencilSetElement(%struct.hypre_StructStencil_struct* %stencil, i32 %element_index, i32* %offset) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %element_index.addr = alloca i32, align 4
  %offset.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %shape = alloca [3 x i32]*, align 8
  %d = alloca i32, align 4
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store i32 %element_index, i32* %element_index.addr, align 4
  store i32* %offset, i32** %offset.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape1 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %0, i32 0, i32 0
  %1 = load [3 x i32]*, [3 x i32]** %shape1, align 8
  store [3 x i32]* %1, [3 x i32]** %shape, align 8
  %2 = load i32, i32* %element_index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %4 = load i32, i32* %element_index.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 1
  store i32 0, i32* %arrayidx5, align 4
  %6 = load i32, i32* %element_index.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 2
  store i32 0, i32* %arrayidx8, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %d, align 4
  %9 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %9, i32 0, i32 3
  %10 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %d, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32*, i32** %offset.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  %14 = load i32, i32* %d, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %element_index.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load [3 x i32]*, [3 x i32]** %shape, align 8
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  store i32 %13, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %d, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %ierr, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructStencilDestroy(%struct.hypre_StructStencil_struct* %stencil) #0 {
entry:
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %0 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %call = call i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
