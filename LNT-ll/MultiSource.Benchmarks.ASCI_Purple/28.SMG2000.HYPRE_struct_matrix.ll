; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/28.SMG2000.HYPRE_struct_matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixCreate(i32 %comm, %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructMatrix_struct** %matrix) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct**, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store %struct.hypre_StructMatrix_struct** %matrix, %struct.hypre_StructMatrix_struct*** %matrix.addr, align 8
  %0 = load i32, i32* %comm.addr, align 4
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %call = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32 %0, %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructStencil_struct* %2)
  %3 = load %struct.hypre_StructMatrix_struct**, %struct.hypre_StructMatrix_struct*** %matrix.addr, align 8
  store %struct.hypre_StructMatrix_struct* %call, %struct.hypre_StructMatrix_struct** %3, align 8
  ret i32 0
}

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixInitialize(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %call = call i32 @hypre_StructMatrixInitialize(%struct.hypre_StructMatrix_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructMatrixInitialize(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixSetValues(%struct.hypre_StructMatrix_struct* %matrix, i32* %grid_index, i32 %num_stencil_indices, i32* %stencil_indices, double* %values) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %grid_index.addr = alloca i32*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %new_grid_index = alloca [3 x i32], align 4
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %grid_index, i32** %grid_index.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 %idxprom4
  store i32 %6, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %d, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i32 0
  %10 = load i32, i32* %num_stencil_indices.addr, align 4
  %11 = load i32*, i32** %stencil_indices.addr, align 8
  %12 = load double*, double** %values.addr, align 8
  %call = call i32 @hypre_StructMatrixSetValues(%struct.hypre_StructMatrix_struct* %9, i32* %arraydecay, i32 %10, i32* %11, double* %12, i32 0)
  store i32 %call, i32* %ierr, align 4
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

declare i32 @hypre_StructMatrixSetValues(%struct.hypre_StructMatrix_struct*, i32*, i32, i32*, double*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %matrix, i32* %ilower, i32* %iupper, i32 %num_stencil_indices, i32* %stencil_indices, double* %values) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %ilower.addr = alloca i32*, align 8
  %iupper.addr = alloca i32*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %new_ilower = alloca [3 x i32], align 4
  %new_iupper = alloca [3 x i32], align 4
  %new_value_box = alloca %struct.hypre_Box_struct*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %ilower, i32** %ilower.addr, align 8
  store i32* %iupper, i32** %iupper.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %ilower.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 %idxprom7
  store i32 %6, i32* %arrayidx8, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32*, i32** %iupper.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 %idxprom11
  store i32 %10, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %d, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %new_value_box, align 8
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i32 0
  %call14 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %13, i32* %arraydecay, i32* %arraydecay13)
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %16 = load i32, i32* %num_stencil_indices.addr, align 4
  %17 = load i32*, i32** %stencil_indices.addr, align 8
  %18 = load double*, double** %values.addr, align 8
  %call15 = call i32 @hypre_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %14, %struct.hypre_Box_struct* %15, i32 %16, i32* %17, double* %18, i32 0)
  store i32 %call15, i32* %ierr, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %call16 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %19)
  %20 = load i32, i32* %ierr, align 4
  ret i32 %20
}

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct*, %struct.hypre_Box_struct*, i32, i32*, double*, i32) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixAddToValues(%struct.hypre_StructMatrix_struct* %matrix, i32* %grid_index, i32 %num_stencil_indices, i32* %stencil_indices, double* %values) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %grid_index.addr = alloca i32*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %new_grid_index = alloca [3 x i32], align 4
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %grid_index, i32** %grid_index.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %grid_index.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i64 %idxprom4
  store i32 %6, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %d, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_grid_index, i32 0, i32 0
  %10 = load i32, i32* %num_stencil_indices.addr, align 4
  %11 = load i32*, i32** %stencil_indices.addr, align 8
  %12 = load double*, double** %values.addr, align 8
  %call = call i32 @hypre_StructMatrixSetValues(%struct.hypre_StructMatrix_struct* %9, i32* %arraydecay, i32 %10, i32* %11, double* %12, i32 1)
  store i32 %call, i32* %ierr, align 4
  %13 = load i32, i32* %ierr, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixAddToBoxValues(%struct.hypre_StructMatrix_struct* %matrix, i32* %ilower, i32* %iupper, i32 %num_stencil_indices, i32* %stencil_indices, double* %values) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %ilower.addr = alloca i32*, align 8
  %iupper.addr = alloca i32*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %values.addr = alloca double*, align 8
  %new_ilower = alloca [3 x i32], align 4
  %new_iupper = alloca [3 x i32], align 4
  %new_value_box = alloca %struct.hypre_Box_struct*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %ilower, i32** %ilower.addr, align 8
  store i32* %iupper, i32** %iupper.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  store double* %values, double** %values.addr, align 8
  store i32 0, i32* %ierr, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 2
  store i32 0, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 1
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %dim, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %ilower.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %d, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i64 %idxprom7
  store i32 %6, i32* %arrayidx8, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32*, i32** %iupper.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i64 %idxprom11
  store i32 %10, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %d, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %new_value_box, align 8
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %new_ilower, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %new_iupper, i32 0, i32 0
  %call14 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %13, i32* %arraydecay, i32* %arraydecay13)
  %14 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %16 = load i32, i32* %num_stencil_indices.addr, align 4
  %17 = load i32*, i32** %stencil_indices.addr, align 8
  %18 = load double*, double** %values.addr, align 8
  %call15 = call i32 @hypre_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %14, %struct.hypre_Box_struct* %15, i32 %16, i32* %17, double* %18, i32 1)
  store i32 %call15, i32* %ierr, align 4
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_value_box, align 8
  %call16 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %19)
  %20 = load i32, i32* %ierr, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %matrix) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %call = call i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %0)
  ret i32 %call
}

declare i32 @hypre_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %matrix, i32* %num_ghost) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %num_ghost.addr = alloca i32*, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32* %num_ghost, i32** %num_ghost.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %1 = load i32*, i32** %num_ghost.addr, align 8
  %call = call i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %0, i32* %1)
  ret i32 %call
}

declare i32 @hypre_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixGetGrid(%struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructGrid_struct** %grid) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %grid.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store %struct.hypre_StructGrid_struct** %grid, %struct.hypre_StructGrid_struct*** %grid.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 1
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  %2 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %1, %struct.hypre_StructGrid_struct** %2, align 8
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixSetSymmetric(%struct.hypre_StructMatrix_struct* %matrix, i32 %symmetric) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %symmetric.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 %symmetric, i32* %symmetric.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %symmetric.addr, align 4
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symmetric1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1, i32 0, i32 10
  store i32 %0, i32* %symmetric1, align 4
  %2 = load i32, i32* %ierr, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_StructMatrixPrint(i8* %filename, %struct.hypre_StructMatrix_struct* %matrix, i32 %all) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %all.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 %all, i32* %all.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %2 = load i32, i32* %all.addr, align 4
  %call = call i32 @hypre_StructMatrixPrint(i8* %0, %struct.hypre_StructMatrix_struct* %1, i32 %2)
  ret i32 %call
}

declare i32 @hypre_StructMatrixPrint(i8*, %struct.hypre_StructMatrix_struct*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
