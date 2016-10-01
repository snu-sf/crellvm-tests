; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/53.SMG2000.struct_matrix_mask.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }

; Function Attrs: nounwind uwtable
define %struct.hypre_StructMatrix_struct* @hypre_StructMatrixCreateMask(%struct.hypre_StructMatrix_struct* %matrix, i32 %num_stencil_indices, i32* %stencil_indices) #0 {
entry:
  %matrix.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %num_stencil_indices.addr = alloca i32, align 4
  %stencil_indices.addr = alloca i32*, align 8
  %mask = alloca %struct.hypre_StructMatrix_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %mask_stencil_shape = alloca [3 x i32]*, align 8
  %mask_stencil_size = alloca i32, align 4
  %data_space = alloca %struct.hypre_BoxArray_struct*, align 8
  %data_indices = alloca i32**, align 8
  %mask_data_indices = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.hypre_StructMatrix_struct* %matrix, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  store i32 %num_stencil_indices, i32* %num_stencil_indices.addr, align 4
  store i32* %stencil_indices, i32** %stencil_indices.addr, align 8
  %0 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %stencil1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %0, i32 0, i32 3
  %1 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil1, align 8
  store %struct.hypre_StructStencil_struct* %1, %struct.hypre_StructStencil_struct** %stencil, align 8
  %2 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %2, i32 0, i32 0
  %3 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %3, [3 x i32]** %stencil_shape, align 8
  %4 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  store i32 %5, i32* %stencil_size, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 136)
  %6 = bitcast i8* %call to %struct.hypre_StructMatrix_struct*
  store %struct.hypre_StructMatrix_struct* %6, %struct.hypre_StructMatrix_struct** %mask, align 8
  %7 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %comm, align 4
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %comm2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 0
  store i32 %8, i32* %comm2, align 4
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %10, i32 0, i32 1
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %12 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %grid3 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %12, i32 0, i32 1
  %call4 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %11, %struct.hypre_StructGrid_struct** %grid3)
  %13 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %user_stencil = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %13, i32 0, i32 2
  %14 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %user_stencil, align 8
  %call5 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilRef(%struct.hypre_StructStencil_struct* %14)
  %15 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %user_stencil6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %15, i32 0, i32 2
  store %struct.hypre_StructStencil_struct* %call5, %struct.hypre_StructStencil_struct** %user_stencil6, align 8
  %16 = load i32, i32* %num_stencil_indices.addr, align 4
  store i32 %16, i32* %mask_stencil_size, align 4
  %17 = load i32, i32* %num_stencil_indices.addr, align 4
  %call7 = call i8* @hypre_CAlloc(i32 %17, i32 12)
  %18 = bitcast i8* %call7 to [3 x i32]*
  store [3 x i32]* %18, [3 x i32]** %mask_stencil_shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %num_stencil_indices.addr, align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4
  %idxprom8 = sext i32 %23 to i64
  %24 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 0
  %25 = load i32, i32* %arrayidx10, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load [3 x i32]*, [3 x i32]** %mask_stencil_shape, align 8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 0
  store i32 %25, i32* %arrayidx13, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  %30 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17, i32 0, i64 1
  %32 = load i32, i32* %arrayidx18, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %33 to i64
  %34 = load [3 x i32]*, [3 x i32]** %mask_stencil_shape, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 1
  store i32 %32, i32* %arrayidx21, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %36, i64 %idxprom22
  %37 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %38, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx25, i32 0, i64 2
  %39 = load i32, i32* %arrayidx26, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %40 to i64
  %41 = load [3 x i32]*, [3 x i32]** %mask_stencil_shape, align 8
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i32 0, i64 2
  store i32 %39, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %dim = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %43, i32 0, i32 3
  %44 = load i32, i32* %dim, align 4
  %45 = load i32, i32* %mask_stencil_size, align 4
  %46 = load [3 x i32]*, [3 x i32]** %mask_stencil_shape, align 8
  %call30 = call %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32 %44, i32 %45, [3 x i32]* %46)
  %47 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %stencil31 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %47, i32 0, i32 3
  store %struct.hypre_StructStencil_struct* %call30, %struct.hypre_StructStencil_struct** %stencil31, align 8
  %48 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_values = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %48, i32 0, i32 4
  %49 = load i32, i32* %num_values, align 4
  %50 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %num_values32 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %50, i32 0, i32 4
  store i32 %49, i32* %num_values32, align 4
  %51 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space33 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %51, i32 0, i32 5
  %52 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space33, align 8
  %call34 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %52)
  %53 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %data_space35 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %53, i32 0, i32 5
  store %struct.hypre_BoxArray_struct* %call34, %struct.hypre_BoxArray_struct** %data_space35, align 8
  %54 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %54, i32 0, i32 6
  %55 = load double*, double** %data, align 8
  %56 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %data36 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %56, i32 0, i32 6
  store double* %55, double** %data36, align 8
  %57 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %data_alloced = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %57, i32 0, i32 7
  store i32 0, i32* %data_alloced, align 4
  %58 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_size = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %58, i32 0, i32 8
  %59 = load i32, i32* %data_size, align 4
  %60 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %data_size37 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %60, i32 0, i32 8
  store i32 %59, i32* %data_size37, align 4
  %61 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_space38 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %61, i32 0, i32 5
  %62 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space38, align 8
  store %struct.hypre_BoxArray_struct* %62, %struct.hypre_BoxArray_struct** %data_space, align 8
  %63 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %data_indices39 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %63, i32 0, i32 9
  %64 = load i32**, i32*** %data_indices39, align 8
  store i32** %64, i32*** %data_indices, align 8
  %65 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size40 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %65, i32 0, i32 1
  %66 = load i32, i32* %size40, align 4
  %call41 = call i8* @hypre_CAlloc(i32 %66, i32 8)
  %67 = bitcast i8* %call41 to i32**
  store i32** %67, i32*** %mask_data_indices, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.67, %for.end
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %size43 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %69, i32 0, i32 1
  %70 = load i32, i32* %size43, align 4
  %cmp44 = icmp slt i32 %68, %70
  br i1 %cmp44, label %for.body.45, label %for.end.69

for.body.45:                                      ; preds = %for.cond.42
  %71 = load i32, i32* %num_stencil_indices.addr, align 4
  %conv = sext i32 %71 to i64
  %mul = mul i64 4, %conv
  %conv46 = trunc i64 %mul to i32
  %call47 = call i8* @hypre_MAlloc(i32 %conv46)
  %72 = bitcast i8* %call47 to i32*
  %73 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %73 to i64
  %74 = load i32**, i32*** %mask_data_indices, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %74, i64 %idxprom48
  store i32* %72, i32** %arrayidx49, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.64, %for.body.45
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %num_stencil_indices.addr, align 4
  %cmp51 = icmp slt i32 %75, %76
  br i1 %cmp51, label %for.body.53, label %for.end.66

for.body.53:                                      ; preds = %for.cond.50
  %77 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %77 to i64
  %78 = load i32*, i32** %stencil_indices.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %78, i64 %idxprom54
  %79 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %80 to i64
  %81 = load i32**, i32*** %data_indices, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %81, i64 %idxprom57
  %82 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %82, i64 %idxprom56
  %83 = load i32, i32* %arrayidx59, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %85 to i64
  %86 = load i32**, i32*** %mask_data_indices, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %86, i64 %idxprom61
  %87 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %87, i64 %idxprom60
  store i32 %83, i32* %arrayidx63, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.53
  %88 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %88, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond.50

for.end.66:                                       ; preds = %for.cond.50
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %89 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %89, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.42

for.end.69:                                       ; preds = %for.cond.42
  %90 = load i32**, i32*** %mask_data_indices, align 8
  %91 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %data_indices70 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %91, i32 0, i32 9
  store i32** %90, i32*** %data_indices70, align 8
  %92 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symmetric = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %92, i32 0, i32 10
  %93 = load i32, i32* %symmetric, align 4
  %94 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %symmetric71 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %94, i32 0, i32 10
  store i32 %93, i32* %symmetric71, align 4
  %95 = load i32, i32* %stencil_size, align 4
  %conv72 = sext i32 %95 to i64
  %mul73 = mul i64 4, %conv72
  %conv74 = trunc i64 %mul73 to i32
  %call75 = call i8* @hypre_MAlloc(i32 %conv74)
  %96 = bitcast i8* %call75 to i32*
  %97 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %symm_elements = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %97, i32 0, i32 11
  store i32* %96, i32** %symm_elements, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.86, %for.end.69
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %stencil_size, align 4
  %cmp77 = icmp slt i32 %98, %99
  br i1 %cmp77, label %for.body.79, label %for.end.88

for.body.79:                                      ; preds = %for.cond.76
  %100 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %100 to i64
  %101 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %symm_elements81 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %101, i32 0, i32 11
  %102 = load i32*, i32** %symm_elements81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %102, i64 %idxprom80
  %103 = load i32, i32* %arrayidx82, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %104 to i64
  %105 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %symm_elements84 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %105, i32 0, i32 11
  %106 = load i32*, i32** %symm_elements84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %106, i64 %idxprom83
  store i32 %103, i32* %arrayidx85, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.79
  %107 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %107, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.76

for.end.88:                                       ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.98, %for.end.88
  %108 = load i32, i32* %i, align 4
  %cmp90 = icmp slt i32 %108, 6
  br i1 %cmp90, label %for.body.92, label %for.end.100

for.body.92:                                      ; preds = %for.cond.89
  %109 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %109 to i64
  %110 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %matrix.addr, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %110, i32 0, i32 12
  %arrayidx94 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i64 %idxprom93
  %111 = load i32, i32* %arrayidx94, align 4
  %112 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %112 to i64
  %113 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %num_ghost96 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %113, i32 0, i32 12
  %arrayidx97 = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost96, i32 0, i64 %idxprom95
  store i32 %111, i32* %arrayidx97, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.92
  %114 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %114, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.89

for.end.100:                                      ; preds = %for.cond.89
  %115 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %grid101 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %115, i32 0, i32 1
  %116 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid101, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %116, i32 0, i32 8
  %117 = load i32, i32* %global_size, align 4
  %118 = load i32, i32* %mask_stencil_size, align 4
  %mul102 = mul nsw i32 %117, %118
  %119 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %global_size103 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %119, i32 0, i32 13
  store i32 %mul102, i32* %global_size103, align 4
  %120 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %comm_pkg = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %120, i32 0, i32 14
  store %struct.hypre_CommPkg_struct* null, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %121 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %121, i32 0, i32 15
  store i32 1, i32* %ref_count, align 4
  %122 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %mask, align 8
  ret %struct.hypre_StructMatrix_struct* %122
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #1

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilRef(%struct.hypre_StructStencil_struct*) #1

declare %struct.hypre_StructStencil_struct* @hypre_StructStencilCreate(i32, i32, [3 x i32]*) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct*) #1

declare i8* @hypre_MAlloc(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
