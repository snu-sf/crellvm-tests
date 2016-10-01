; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/1.SMG2000.point_relax.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_PointRelaxData = type { i32, double, i32, i32, i32, double, i32, i32*, i32*, [3 x i32]*, [3 x i32]**, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, i32, %struct.hypre_ComputePkg_struct**, i32, i32, i32 }
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
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"PointRelax\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_PointRelaxCreate(i32 %comm) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %stride = alloca [3 x i32], align 4
  %indices = alloca [1 x [3 x i32]], align 4
  store i32 %comm, i32* %comm.addr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 144)
  %0 = bitcast i8* %call to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %0, %struct.hypre_PointRelaxData** %relax_data, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %comm1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %call2 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 18
  store i32 %call2, i32* %time_index, align 4
  %4 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %tol = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %4, i32 0, i32 1
  store double 1.000000e-06, double* %tol, align 8
  %5 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %max_iter = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %5, i32 0, i32 2
  store i32 1000, i32* %max_iter, align 4
  %6 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %rel_change = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %6, i32 0, i32 3
  store i32 0, i32* %rel_change, align 4
  %7 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %zero_guess = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %7, i32 0, i32 4
  store i32 0, i32* %zero_guess, align 4
  %8 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %weight = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %8, i32 0, i32 5
  store double 1.000000e+00, double* %weight, align 8
  %9 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %9, i32 0, i32 6
  store i32 0, i32* %num_pointsets, align 4
  %10 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %10, i32 0, i32 7
  store i32* null, i32** %pointset_sizes, align 8
  %11 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %11, i32 0, i32 8
  store i32* null, i32** %pointset_ranks, align 8
  %12 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %12, i32 0, i32 9
  store [3 x i32]* null, [3 x i32]** %pointset_strides, align 8
  %13 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %13, i32 0, i32 10
  store [3 x i32]** null, [3 x i32]*** %pointset_indices, align 8
  %14 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %14, i32 0, i32 14
  store %struct.hypre_StructVector_struct* null, %struct.hypre_StructVector_struct** %t, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 1
  store i32 1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i64 2
  store i32 1, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [1 x [3 x i32]], [1 x [3 x i32]]* %indices, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [1 x [3 x i32]], [1 x [3 x i32]]* %indices, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [1 x [3 x i32]], [1 x [3 x i32]]* %indices, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 2
  store i32 0, i32* %arrayidx10, align 4
  %15 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %16 = bitcast %struct.hypre_PointRelaxData* %15 to i8*
  %call11 = call i32 @hypre_PointRelaxSetNumPointsets(i8* %16, i32 1)
  %17 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %18 = bitcast %struct.hypre_PointRelaxData* %17 to i8*
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %stride, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [1 x [3 x i32]], [1 x [3 x i32]]* %indices, i32 0, i32 0
  %call13 = call i32 @hypre_PointRelaxSetPointset(i8* %18, i32 0, i32 1, i32* %arraydecay, [3 x i32]* %arraydecay12)
  %19 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %20 = bitcast %struct.hypre_PointRelaxData* %19 to i8*
  ret i8* %20
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetNumPointsets(i8* %relax_vdata, i32 %num_pointsets) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %num_pointsets.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %num_pointsets, i32* %num_pointsets.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 6
  %4 = load i32, i32* %num_pointsets1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %6, i32 0, i32 10
  %7 = load [3 x i32]**, [3 x i32]*** %pointset_indices, align 8
  %arrayidx = getelementptr inbounds [3 x i32]*, [3 x i32]** %7, i64 %idxprom
  %8 = load [3 x i32]*, [3 x i32]** %arrayidx, align 8
  %9 = bitcast [3 x i32]* %8 to i8*
  call void @hypre_Free(i8* %9)
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices3 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %11, i32 0, i32 10
  %12 = load [3 x i32]**, [3 x i32]*** %pointset_indices3, align 8
  %arrayidx4 = getelementptr inbounds [3 x i32]*, [3 x i32]** %12, i64 %idxprom2
  store [3 x i32]* null, [3 x i32]** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %14, i32 0, i32 7
  %15 = load i32*, i32** %pointset_sizes, align 8
  %16 = bitcast i32* %15 to i8*
  call void @hypre_Free(i8* %16)
  %17 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes5 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %17, i32 0, i32 7
  store i32* null, i32** %pointset_sizes5, align 8
  %18 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %18, i32 0, i32 8
  %19 = load i32*, i32** %pointset_ranks, align 8
  %20 = bitcast i32* %19 to i8*
  call void @hypre_Free(i8* %20)
  %21 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks6 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %21, i32 0, i32 8
  store i32* null, i32** %pointset_ranks6, align 8
  %22 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %22, i32 0, i32 9
  %23 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %24 = bitcast [3 x i32]* %23 to i8*
  call void @hypre_Free(i8* %24)
  %25 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides7 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %25, i32 0, i32 9
  store [3 x i32]* null, [3 x i32]** %pointset_strides7, align 8
  %26 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices8 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %26, i32 0, i32 10
  %27 = load [3 x i32]**, [3 x i32]*** %pointset_indices8, align 8
  %28 = bitcast [3 x i32]** %27 to i8*
  call void @hypre_Free(i8* %28)
  %29 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices9 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %29, i32 0, i32 10
  store [3 x i32]** null, [3 x i32]*** %pointset_indices9, align 8
  %30 = load i32, i32* %num_pointsets.addr, align 4
  %31 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets10 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %31, i32 0, i32 6
  store i32 %30, i32* %num_pointsets10, align 4
  %32 = load i32, i32* %num_pointsets.addr, align 4
  %conv = sext i32 %32 to i64
  %mul = mul i64 4, %conv
  %conv11 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv11)
  %33 = bitcast i8* %call to i32*
  %34 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes12 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %34, i32 0, i32 7
  store i32* %33, i32** %pointset_sizes12, align 8
  %35 = load i32, i32* %num_pointsets.addr, align 4
  %conv13 = sext i32 %35 to i64
  %mul14 = mul i64 4, %conv13
  %conv15 = trunc i64 %mul14 to i32
  %call16 = call i8* @hypre_MAlloc(i32 %conv15)
  %36 = bitcast i8* %call16 to i32*
  %37 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks17 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %37, i32 0, i32 8
  store i32* %36, i32** %pointset_ranks17, align 8
  %38 = load i32, i32* %num_pointsets.addr, align 4
  %conv18 = sext i32 %38 to i64
  %mul19 = mul i64 12, %conv18
  %conv20 = trunc i64 %mul19 to i32
  %call21 = call i8* @hypre_MAlloc(i32 %conv20)
  %39 = bitcast i8* %call21 to [3 x i32]*
  %40 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides22 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %40, i32 0, i32 9
  store [3 x i32]* %39, [3 x i32]** %pointset_strides22, align 8
  %41 = load i32, i32* %num_pointsets.addr, align 4
  %conv23 = sext i32 %41 to i64
  %mul24 = mul i64 8, %conv23
  %conv25 = trunc i64 %mul24 to i32
  %call26 = call i8* @hypre_MAlloc(i32 %conv25)
  %42 = bitcast i8* %call26 to [3 x i32]**
  %43 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices27 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %43, i32 0, i32 10
  store [3 x i32]** %42, [3 x i32]*** %pointset_indices27, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.41, %for.end
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %num_pointsets.addr, align 4
  %cmp29 = icmp slt i32 %44, %45
  br i1 %cmp29, label %for.body.31, label %for.end.43

for.body.31:                                      ; preds = %for.cond.28
  %46 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes33 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %47, i32 0, i32 7
  %48 = load i32*, i32** %pointset_sizes33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %48, i64 %idxprom32
  store i32 0, i32* %arrayidx34, align 4
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %50 to i64
  %51 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks36 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %51, i32 0, i32 8
  %52 = load i32*, i32** %pointset_ranks36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %52, i64 %idxprom35
  store i32 %49, i32* %arrayidx37, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices39 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %54, i32 0, i32 10
  %55 = load [3 x i32]**, [3 x i32]*** %pointset_indices39, align 8
  %arrayidx40 = getelementptr inbounds [3 x i32]*, [3 x i32]** %55, i64 %idxprom38
  store [3 x i32]* null, [3 x i32]** %arrayidx40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.31
  %56 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %56, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.28

for.end.43:                                       ; preds = %for.cond.28
  %57 = load i32, i32* %ierr, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetPointset(i8* %relax_vdata, i32 %pointset, i32 %pointset_size, i32* %pointset_stride, [3 x i32]* %pointset_indices) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %pointset.addr = alloca i32, align 4
  %pointset_size.addr = alloca i32, align 4
  %pointset_stride.addr = alloca i32*, align 8
  %pointset_indices.addr = alloca [3 x i32]*, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %pointset, i32* %pointset.addr, align 4
  store i32 %pointset_size, i32* %pointset_size.addr, align 4
  store i32* %pointset_stride, i32** %pointset_stride.addr, align 8
  store [3 x i32]* %pointset_indices, [3 x i32]** %pointset_indices.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %pointset.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 10
  %4 = load [3 x i32]**, [3 x i32]*** %pointset_indices1, align 8
  %arrayidx = getelementptr inbounds [3 x i32]*, [3 x i32]** %4, i64 %idxprom
  %5 = load [3 x i32]*, [3 x i32]** %arrayidx, align 8
  %6 = bitcast [3 x i32]* %5 to i8*
  call void @hypre_Free(i8* %6)
  %7 = load i32, i32* %pointset.addr, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices3 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %8, i32 0, i32 10
  %9 = load [3 x i32]**, [3 x i32]*** %pointset_indices3, align 8
  %arrayidx4 = getelementptr inbounds [3 x i32]*, [3 x i32]** %9, i64 %idxprom2
  store [3 x i32]* null, [3 x i32]** %arrayidx4, align 8
  %10 = load i32, i32* %pointset_size.addr, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 12, %conv
  %conv5 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv5)
  %11 = bitcast i8* %call to [3 x i32]*
  %12 = load i32, i32* %pointset.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices7 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %13, i32 0, i32 10
  %14 = load [3 x i32]**, [3 x i32]*** %pointset_indices7, align 8
  %arrayidx8 = getelementptr inbounds [3 x i32]*, [3 x i32]** %14, i64 %idxprom6
  store [3 x i32]* %11, [3 x i32]** %arrayidx8, align 8
  %15 = load i32, i32* %pointset_size.addr, align 4
  %16 = load i32, i32* %pointset.addr, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %17, i32 0, i32 7
  %18 = load i32*, i32** %pointset_sizes, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  store i32 %15, i32* %arrayidx10, align 4
  %19 = load i32*, i32** %pointset_stride.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx11, align 4
  %21 = load i32, i32* %pointset.addr, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %22, i32 0, i32 9
  %23 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx13, i32 0, i64 0
  store i32 %20, i32* %arrayidx14, align 4
  %24 = load i32*, i32** %pointset_stride.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 1
  %25 = load i32, i32* %arrayidx15, align 4
  %26 = load i32, i32* %pointset.addr, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides17 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %27, i32 0, i32 9
  %28 = load [3 x i32]*, [3 x i32]** %pointset_strides17, align 8
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 %idxprom16
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  store i32 %25, i32* %arrayidx19, align 4
  %29 = load i32*, i32** %pointset_stride.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32, i32* %arrayidx20, align 4
  %31 = load i32, i32* %pointset.addr, align 4
  %idxprom21 = sext i32 %31 to i64
  %32 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides22 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %32, i32 0, i32 9
  %33 = load [3 x i32]*, [3 x i32]** %pointset_strides22, align 8
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %33, i64 %idxprom21
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i64 2
  store i32 %30, i32* %arrayidx24, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %pointset_size.addr, align 4
  %cmp = icmp slt i32 %34, %35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load [3 x i32]*, [3 x i32]** %pointset_indices.addr, align 8
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %37, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 0
  %38 = load i32, i32* %arrayidx28, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load i32, i32* %pointset.addr, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices31 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %41, i32 0, i32 10
  %42 = load [3 x i32]**, [3 x i32]*** %pointset_indices31, align 8
  %arrayidx32 = getelementptr inbounds [3 x i32]*, [3 x i32]** %42, i64 %idxprom30
  %43 = load [3 x i32]*, [3 x i32]** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i64 %idxprom29
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 0
  store i32 %38, i32* %arrayidx34, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load [3 x i32]*, [3 x i32]** %pointset_indices.addr, align 8
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx36, i32 0, i64 1
  %46 = load i32, i32* %arrayidx37, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = load i32, i32* %pointset.addr, align 4
  %idxprom39 = sext i32 %48 to i64
  %49 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices40 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %49, i32 0, i32 10
  %50 = load [3 x i32]**, [3 x i32]*** %pointset_indices40, align 8
  %arrayidx41 = getelementptr inbounds [3 x i32]*, [3 x i32]** %50, i64 %idxprom39
  %51 = load [3 x i32]*, [3 x i32]** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %51, i64 %idxprom38
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i32 0, i64 1
  store i32 %46, i32* %arrayidx43, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load [3 x i32]*, [3 x i32]** %pointset_indices.addr, align 8
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %53, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 2
  %54 = load i32, i32* %arrayidx46, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %55 to i64
  %56 = load i32, i32* %pointset.addr, align 4
  %idxprom48 = sext i32 %56 to i64
  %57 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices49 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %57, i32 0, i32 10
  %58 = load [3 x i32]**, [3 x i32]*** %pointset_indices49, align 8
  %arrayidx50 = getelementptr inbounds [3 x i32]*, [3 x i32]** %58, i64 %idxprom48
  %59 = load [3 x i32]*, [3 x i32]** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 %idxprom47
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 2
  store i32 %54, i32* %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32, i32* %ierr, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxDestroy(i8* %relax_vdata) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %tobool = icmp ne %struct.hypre_PointRelaxData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %4, i32 0, i32 6
  %5 = load i32, i32* %num_pointsets, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %7, i32 0, i32 10
  %8 = load [3 x i32]**, [3 x i32]*** %pointset_indices, align 8
  %arrayidx = getelementptr inbounds [3 x i32]*, [3 x i32]** %8, i64 %idxprom
  %9 = load [3 x i32]*, [3 x i32]** %arrayidx, align 8
  %10 = bitcast [3 x i32]* %9 to i8*
  call void @hypre_Free(i8* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices2 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %12, i32 0, i32 10
  %13 = load [3 x i32]**, [3 x i32]*** %pointset_indices2, align 8
  %arrayidx3 = getelementptr inbounds [3 x i32]*, [3 x i32]** %13, i64 %idxprom1
  store [3 x i32]* null, [3 x i32]** %arrayidx3, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %compute_pkgs = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %15, i32 0, i32 16
  %16 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %16, i64 %idxprom4
  %17 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx5, align 8
  %call = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %19, i32 0, i32 7
  %20 = load i32*, i32** %pointset_sizes, align 8
  %21 = bitcast i32* %20 to i8*
  call void @hypre_Free(i8* %21)
  %22 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes6 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %22, i32 0, i32 7
  store i32* null, i32** %pointset_sizes6, align 8
  %23 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %23, i32 0, i32 8
  %24 = load i32*, i32** %pointset_ranks, align 8
  %25 = bitcast i32* %24 to i8*
  call void @hypre_Free(i8* %25)
  %26 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks7 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %26, i32 0, i32 8
  store i32* null, i32** %pointset_ranks7, align 8
  %27 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %27, i32 0, i32 9
  %28 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %29 = bitcast [3 x i32]* %28 to i8*
  call void @hypre_Free(i8* %29)
  %30 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides8 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %30, i32 0, i32 9
  store [3 x i32]* null, [3 x i32]** %pointset_strides8, align 8
  %31 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices9 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %31, i32 0, i32 10
  %32 = load [3 x i32]**, [3 x i32]*** %pointset_indices9, align 8
  %33 = bitcast [3 x i32]** %32 to i8*
  call void @hypre_Free(i8* %33)
  %34 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices10 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %34, i32 0, i32 10
  store [3 x i32]** null, [3 x i32]*** %pointset_indices10, align 8
  %35 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %A = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %35, i32 0, i32 11
  %36 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call11 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %36)
  %37 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %b = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %37, i32 0, i32 12
  %38 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call12 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %38)
  %39 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %x = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %39, i32 0, i32 13
  %40 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call13 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %40)
  %41 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %compute_pkgs14 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %41, i32 0, i32 16
  %42 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs14, align 8
  %43 = bitcast %struct.hypre_ComputePkg_struct** %42 to i8*
  call void @hypre_Free(i8* %43)
  %44 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %compute_pkgs15 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %44, i32 0, i32 16
  store %struct.hypre_ComputePkg_struct** null, %struct.hypre_ComputePkg_struct*** %compute_pkgs15, align 8
  %45 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %45, i32 0, i32 14
  %46 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %call16 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %46)
  %47 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %47, i32 0, i32 18
  %48 = load i32, i32* %time_index, align 4
  %call17 = call i32 @hypre_FinalizeTiming(i32 %48)
  %49 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %50 = bitcast %struct.hypre_PointRelaxData* %49 to i8*
  call void @hypre_Free(i8* %50)
  store %struct.hypre_PointRelaxData* null, %struct.hypre_PointRelaxData** %relax_data, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %51 = load i32, i32* %ierr, align 4
  ret i32 %51
}

declare void @hypre_Free(i8*) #1

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #1

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetup(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %num_pointsets = alloca i32, align 4
  %pointset_sizes = alloca i32*, align 8
  %pointset_strides = alloca [3 x i32]*, align 8
  %pointset_indices = alloca [3 x i32]**, align 8
  %t = alloca %struct.hypre_StructVector_struct*, align 8
  %diag_rank = alloca i32, align 4
  %compute_pkgs = alloca %struct.hypre_ComputePkg_struct**, align 8
  %unit_stride = alloca [3 x i32], align 4
  %diag_index = alloca [3 x i32], align 4
  %stride = alloca i32*, align 8
  %index = alloca i32*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %orig_indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %orig_dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %box_aa_size = alloca i32, align 4
  %box_a_size = alloca i32, align 4
  %new_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %new_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %new_box = alloca %struct.hypre_Box_struct*, align 8
  %scale = alloca double, align 8
  %frac = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %m = alloca i32, align 4
  %compute_i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %2, i32 0, i32 6
  %3 = load i32, i32* %num_pointsets1, align 4
  store i32 %3, i32* %num_pointsets, align 4
  %4 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_sizes2 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %4, i32 0, i32 7
  %5 = load i32*, i32** %pointset_sizes2, align 8
  store i32* %5, i32** %pointset_sizes, align 8
  %6 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides3 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %6, i32 0, i32 9
  %7 = load [3 x i32]*, [3 x i32]** %pointset_strides3, align 8
  store [3 x i32]* %7, [3 x i32]** %pointset_strides, align 8
  %8 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_indices4 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %8, i32 0, i32 10
  %9 = load [3 x i32]**, [3 x i32]*** %pointset_indices4, align 8
  store [3 x i32]** %9, [3 x i32]*** %pointset_indices, align 8
  store i32 0, i32* %ierr, align 4
  %10 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t5 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %10, i32 0, i32 14
  %11 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t5, align 8
  %cmp = icmp eq %struct.hypre_StructVector_struct* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %comm, align 4
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %grid6 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 1
  %15 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid6, align 8
  %call = call %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32 %13, %struct.hypre_StructGrid_struct* %15)
  store %struct.hypre_StructVector_struct* %call, %struct.hypre_StructVector_struct** %t, align 8
  %16 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %num_ghost = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 7
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %num_ghost, i32 0, i32 0
  %call7 = call i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct* %16, i32* %arraydecay)
  %18 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %call8 = call i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct* %18)
  %19 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %call9 = call i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct* %19)
  %20 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %21 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t10 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %21, i32 0, i32 14
  store %struct.hypre_StructVector_struct* %20, %struct.hypre_StructVector_struct** %t10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid11 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %22, i32 0, i32 1
  %23 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid11, align 8
  store %struct.hypre_StructGrid_struct* %23, %struct.hypre_StructGrid_struct** %grid, align 8
  %24 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil12 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %24, i32 0, i32 3
  %25 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil12, align 8
  store %struct.hypre_StructStencil_struct* %25, %struct.hypre_StructStencil_struct** %stencil, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %diag_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %diag_index, i32 0, i64 1
  store i32 0, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %diag_index, i32 0, i64 2
  store i32 0, i32* %arrayidx14, align 4
  %26 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %arraydecay15 = getelementptr inbounds [3 x i32], [3 x i32]* %diag_index, i32 0, i32 0
  %call16 = call i32 @hypre_StructStencilElementRank(%struct.hypre_StructStencil_struct* %26, i32* %arraydecay15)
  store i32 %call16, i32* %diag_rank, align 4
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx19, align 4
  %27 = load i32, i32* %num_pointsets, align 4
  %call20 = call i8* @hypre_CAlloc(i32 %27, i32 8)
  %28 = bitcast i8* %call20 to %struct.hypre_ComputePkg_struct**
  store %struct.hypre_ComputePkg_struct** %28, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.103, %if.end
  %29 = load i32, i32* %p, align 4
  %30 = load i32, i32* %num_pointsets, align 4
  %cmp21 = icmp slt i32 %29, %30
  br i1 %cmp21, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %31 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %32 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call22 = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %31, %struct.hypre_StructStencil_struct* %32, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %orig_indt_boxes, %struct.hypre_BoxArrayArray_struct** %orig_dept_boxes)
  %33 = load i32, i32* %p, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 %idxprom
  %arraydecay24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i32 0
  store i32* %arraydecay24, i32** %stride, align 8
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.93, %for.body
  %35 = load i32, i32* %compute_i, align 4
  %cmp26 = icmp slt i32 %35, 2
  br i1 %cmp26, label %for.body.27, label %for.end.95

for.body.27:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %compute_i, align 4
  switch i32 %36, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.body.27
  %37 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %orig_indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %37, %struct.hypre_BoxArrayArray_struct** %box_aa, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body.27
  %38 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %orig_dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %38, %struct.hypre_BoxArrayArray_struct** %box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.27, %sw.bb.28, %sw.bb
  %39 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_aa, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %size, align 4
  store i32 %40, i32* %box_aa_size, align 4
  %41 = load i32, i32* %box_aa_size, align 4
  %call29 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %41)
  store %struct.hypre_BoxArrayArray_struct* %call29, %struct.hypre_BoxArrayArray_struct** %new_box_aa, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.87, %sw.epilog
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %box_aa_size, align 4
  %cmp31 = icmp slt i32 %42, %43
  br i1 %cmp31, label %for.body.32, label %for.end.89

for.body.32:                                      ; preds = %for.cond.30
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %45, i32 0, i32 0
  %46 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx34 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %46, i64 %idxprom33
  %47 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx34, align 8
  store %struct.hypre_BoxArray_struct* %47, %struct.hypre_BoxArray_struct** %box_a, align 8
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_a, align 8
  %size35 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %48, i32 0, i32 1
  %49 = load i32, i32* %size35, align 4
  store i32 %49, i32* %box_a_size, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %50 to i64
  %51 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %new_box_aa, align 8
  %box_arrays37 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %51, i32 0, i32 0
  %52 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays37, align 8
  %arrayidx38 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %52, i64 %idxprom36
  %53 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx38, align 8
  store %struct.hypre_BoxArray_struct* %53, %struct.hypre_BoxArray_struct** %new_box_a, align 8
  %54 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_a, align 8
  %55 = load i32, i32* %box_a_size, align 4
  %56 = load i32, i32* %p, align 4
  %idxprom39 = sext i32 %56 to i64
  %57 = load i32*, i32** %pointset_sizes, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %57, i64 %idxprom39
  %58 = load i32, i32* %arrayidx40, align 4
  %mul = mul nsw i32 %55, %58
  %call41 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %54, i32 %mul)
  store i32 0, i32* %k, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.84, %for.body.32
  %59 = load i32, i32* %m, align 4
  %60 = load i32, i32* %p, align 4
  %idxprom43 = sext i32 %60 to i64
  %61 = load i32*, i32** %pointset_sizes, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %61, i64 %idxprom43
  %62 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp slt i32 %59, %62
  br i1 %cmp45, label %for.body.46, label %for.end.86

for.body.46:                                      ; preds = %for.cond.42
  %63 = load i32, i32* %m, align 4
  %idxprom47 = sext i32 %63 to i64
  %64 = load i32, i32* %p, align 4
  %idxprom48 = sext i32 %64 to i64
  %65 = load [3 x i32]**, [3 x i32]*** %pointset_indices, align 8
  %arrayidx49 = getelementptr inbounds [3 x i32]*, [3 x i32]** %65, i64 %idxprom48
  %66 = load [3 x i32]*, [3 x i32]** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %66, i64 %idxprom47
  %arraydecay51 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx50, i32 0, i32 0
  store i32* %arraydecay51, i32** %index, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %for.body.46
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %box_a_size, align 4
  %cmp53 = icmp slt i32 %67, %68
  br i1 %cmp53, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.52
  %69 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %69 to i64
  %70 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_a, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %70, i32 0, i32 0
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i64 %idxprom55
  store %struct.hypre_Box_struct* %arrayidx56, %struct.hypre_Box_struct** %box, align 8
  %72 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %72 to i64
  %73 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_box_a, align 8
  %boxes58 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %73, i32 0, i32 0
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes58, align 8
  %arrayidx59 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i64 %idxprom57
  store %struct.hypre_Box_struct* %arrayidx59, %struct.hypre_Box_struct** %new_box, align 8
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %76 = load i32, i32* %arrayidx60, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin61 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %imin61, i32 0, i64 0
  store i32 %76, i32* %arrayidx62, align 4
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 1
  %79 = load i32, i32* %arrayidx64, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imin65, i32 0, i64 1
  store i32 %79, i32* %arrayidx66, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 2
  %82 = load i32, i32* %arrayidx68, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imin69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %imin69, i32 0, i64 2
  store i32 %82, i32* %arrayidx70, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %85 = load i32, i32* %arrayidx71, align 4
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imax72, i32 0, i64 0
  store i32 %85, i32* %arrayidx73, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i64 1
  %88 = load i32, i32* %arrayidx75, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 1
  store i32 %88, i32* %arrayidx77, align 4
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imax78, i32 0, i64 2
  %91 = load i32, i32* %arrayidx79, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %imax80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imax80, i32 0, i64 2
  store i32 %91, i32* %arrayidx81, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %new_box, align 8
  %94 = load i32*, i32** %index, align 8
  %95 = load i32*, i32** %stride, align 8
  %call82 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %93, i32* %94, i32* %95)
  %96 = load i32, i32* %k, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.54
  %97 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %97, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end
  %98 = load i32, i32* %m, align 4
  %inc85 = add nsw i32 %98, 1
  store i32 %inc85, i32* %m, align 4
  br label %for.cond.42

for.end.86:                                       ; preds = %for.cond.42
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %99 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %99, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.30

for.end.89:                                       ; preds = %for.cond.30
  %100 = load i32, i32* %compute_i, align 4
  switch i32 %100, label %sw.epilog.92 [
    i32 0, label %sw.bb.90
    i32 1, label %sw.bb.91
  ]

sw.bb.90:                                         ; preds = %for.end.89
  %101 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %new_box_aa, align 8
  store %struct.hypre_BoxArrayArray_struct* %101, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  br label %sw.epilog.92

sw.bb.91:                                         ; preds = %for.end.89
  %102 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %new_box_aa, align 8
  store %struct.hypre_BoxArrayArray_struct* %102, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  br label %sw.epilog.92

sw.epilog.92:                                     ; preds = %for.end.89, %sw.bb.91, %sw.bb.90
  br label %for.inc.93

for.inc.93:                                       ; preds = %sw.epilog.92
  %103 = load i32, i32* %compute_i, align 4
  %inc94 = add nsw i32 %103, 1
  store i32 %inc94, i32* %compute_i, align 4
  br label %for.cond.25

for.end.95:                                       ; preds = %for.cond.25
  %104 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %105 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay96 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay97 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %106 = load i32**, i32*** %send_processes, align 8
  %107 = load i32**, i32*** %recv_processes, align 8
  %108 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %109 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %110 = load i32*, i32** %stride, align 8
  %111 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %112 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %112, i32 0, i32 2
  %113 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %114 = load i32, i32* %p, align 4
  %idxprom98 = sext i32 %114 to i64
  %115 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  %arrayidx99 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %115, i64 %idxprom98
  %call100 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %104, %struct.hypre_BoxArrayArray_struct* %105, i32* %arraydecay96, i32* %arraydecay97, i32** %106, i32** %107, %struct.hypre_BoxArrayArray_struct* %108, %struct.hypre_BoxArrayArray_struct* %109, i32* %110, %struct.hypre_StructGrid_struct* %111, %struct.hypre_BoxArray_struct* %113, i32 1, %struct.hypre_ComputePkg_struct** %arrayidx99)
  %116 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %orig_indt_boxes, align 8
  %call101 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %116)
  %117 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %orig_dept_boxes, align 8
  %call102 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %117)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.95
  %118 = load i32, i32* %p, align 4
  %inc104 = add nsw i32 %118, 1
  store i32 %inc104, i32* %p, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %119 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call106 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %119)
  %120 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %A107 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %120, i32 0, i32 11
  store %struct.hypre_StructMatrix_struct* %call106, %struct.hypre_StructMatrix_struct** %A107, align 8
  %121 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call108 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %121)
  %122 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %x109 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %122, i32 0, i32 13
  store %struct.hypre_StructVector_struct* %call108, %struct.hypre_StructVector_struct** %x109, align 8
  %123 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call110 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %123)
  %124 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %b111 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %124, i32 0, i32 12
  store %struct.hypre_StructVector_struct* %call110, %struct.hypre_StructVector_struct** %b111, align 8
  %125 = load i32, i32* %diag_rank, align 4
  %126 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %diag_rank112 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %126, i32 0, i32 15
  store i32 %125, i32* %diag_rank112, align 4
  %127 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  %128 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %compute_pkgs113 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %128, i32 0, i32 16
  store %struct.hypre_ComputePkg_struct** %127, %struct.hypre_ComputePkg_struct*** %compute_pkgs113, align 8
  store double 0.000000e+00, double* %scale, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.127, %for.end.105
  %129 = load i32, i32* %p, align 4
  %130 = load i32, i32* %num_pointsets, align 4
  %cmp115 = icmp slt i32 %129, %130
  br i1 %cmp115, label %for.body.116, label %for.end.129

for.body.116:                                     ; preds = %for.cond.114
  %131 = load i32, i32* %p, align 4
  %idxprom117 = sext i32 %131 to i64
  %132 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %132, i64 %idxprom117
  %arraydecay119 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx118, i32 0, i32 0
  store i32* %arraydecay119, i32** %stride, align 8
  %133 = load i32*, i32** %stride, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %133, i64 0
  %134 = load i32, i32* %arrayidx120, align 4
  store i32 %134, i32* %frac, align 4
  %135 = load i32*, i32** %stride, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %135, i64 1
  %136 = load i32, i32* %arrayidx121, align 4
  %137 = load i32, i32* %frac, align 4
  %mul122 = mul nsw i32 %137, %136
  store i32 %mul122, i32* %frac, align 4
  %138 = load i32*, i32** %stride, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %138, i64 2
  %139 = load i32, i32* %arrayidx123, align 4
  %140 = load i32, i32* %frac, align 4
  %mul124 = mul nsw i32 %140, %139
  store i32 %mul124, i32* %frac, align 4
  %141 = load i32, i32* %p, align 4
  %idxprom125 = sext i32 %141 to i64
  %142 = load i32*, i32** %pointset_sizes, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %142, i64 %idxprom125
  %143 = load i32, i32* %arrayidx126, align 4
  %144 = load i32, i32* %frac, align 4
  %div = sdiv i32 %143, %144
  %conv = sitofp i32 %div to double
  %145 = load double, double* %scale, align 8
  %add = fadd double %145, %conv
  store double %add, double* %scale, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.116
  %146 = load i32, i32* %p, align 4
  %inc128 = add nsw i32 %146, 1
  store i32 %inc128, i32* %p, align 4
  br label %for.cond.114

for.end.129:                                      ; preds = %for.cond.114
  %147 = load double, double* %scale, align 8
  %148 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %148, i32 0, i32 13
  %149 = load i32, i32* %global_size, align 4
  %150 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %global_size130 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %150, i32 0, i32 8
  %151 = load i32, i32* %global_size130, align 4
  %add131 = add nsw i32 %149, %151
  %conv132 = sitofp i32 %add131 to double
  %mul133 = fmul double %147, %conv132
  %conv134 = fptosi double %mul133 to i32
  %152 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %flops = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %152, i32 0, i32 19
  store i32 %conv134, i32* %flops, align 4
  %153 = load i32, i32* %ierr, align 4
  ret i32 %153
}

declare %struct.hypre_StructVector_struct* @hypre_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*) #1

declare i32 @hypre_StructVectorSetNumGhost(%struct.hypre_StructVector_struct*, i32*) #1

declare i32 @hypre_StructVectorInitialize(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructVectorAssemble(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructStencilElementRank(%struct.hypre_StructStencil_struct*, i32*) #1

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32) #1

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

declare i32 @hypre_ProjectBox(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

declare i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct*) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelax(i8* %relax_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %relax_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %max_iter = alloca i32, align 4
  %zero_guess = alloca i32, align 4
  %weight = alloca double, align 8
  %num_pointsets = alloca i32, align 4
  %pointset_ranks = alloca i32*, align 8
  %pointset_strides = alloca [3 x i32]*, align 8
  %t = alloca %struct.hypre_StructVector_struct*, align 8
  %diag_rank = alloca i32, align 4
  %compute_pkgs = alloca %struct.hypre_ComputePkg_struct**, align 8
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %A_data_box = alloca %struct.hypre_Box_struct*, align 8
  %b_data_box = alloca %struct.hypre_Box_struct*, align 8
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %t_data_box = alloca %struct.hypre_Box_struct*, align 8
  %Ai = alloca i32, align 4
  %bi = alloca i32, align 4
  %xi = alloca i32, align 4
  %ti = alloca i32, align 4
  %Ap = alloca double*, align 8
  %bp = alloca double*, align 8
  %xp = alloca double*, align 8
  %tp = alloca double*, align 8
  %stride = alloca i32*, align 8
  %start = alloca i32*, align 8
  %loop_size = alloca [3 x i32], align 4
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %iter = alloca i32, align 4
  %p = alloca i32, align 4
  %compute_i = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %si = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %pointset = alloca i32, align 4
  %ierr = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__nx = alloca i32, align 4
  %hypre__ny = alloca i32, align 4
  %hypre__nz = alloca i32, align 4
  %hypre__mx = alloca i32, align 4
  %hypre__my = alloca i32, align 4
  %hypre__mz = alloca i32, align 4
  %hypre__dir = alloca i32, align 4
  %hypre__max = alloca i32, align 4
  %hypre__div = alloca i32, align 4
  %hypre__mod = alloca i32, align 4
  %hypre__block = alloca i32, align 4
  %hypre__num_blocks = alloca i32, align 4
  %hypre__i1start604 = alloca i32, align 4
  %hypre__i2start657 = alloca i32, align 4
  %hypre__sx1710 = alloca i32, align 4
  %hypre__sy1712 = alloca i32, align 4
  %hypre__sz1733 = alloca i32, align 4
  %hypre__sx2773 = alloca i32, align 4
  %hypre__sy2775 = alloca i32, align 4
  %hypre__sz2796 = alloca i32, align 4
  %hypre__nx836 = alloca i32, align 4
  %hypre__ny838 = alloca i32, align 4
  %hypre__nz840 = alloca i32, align 4
  %hypre__mx842 = alloca i32, align 4
  %hypre__my843 = alloca i32, align 4
  %hypre__mz844 = alloca i32, align 4
  %hypre__dir845 = alloca i32, align 4
  %hypre__max846 = alloca i32, align 4
  %hypre__div847 = alloca i32, align 4
  %hypre__mod848 = alloca i32, align 4
  %hypre__block849 = alloca i32, align 4
  %hypre__num_blocks850 = alloca i32, align 4
  %hypre__i1start1053 = alloca i32, align 4
  %hypre__i2start1106 = alloca i32, align 4
  %hypre__i3start1159 = alloca i32, align 4
  %hypre__sx11212 = alloca i32, align 4
  %hypre__sy11214 = alloca i32, align 4
  %hypre__sz11235 = alloca i32, align 4
  %hypre__sx21275 = alloca i32, align 4
  %hypre__sy21277 = alloca i32, align 4
  %hypre__sz21298 = alloca i32, align 4
  %hypre__sx31338 = alloca i32, align 4
  %hypre__sy31340 = alloca i32, align 4
  %hypre__sz31361 = alloca i32, align 4
  %hypre__nx1401 = alloca i32, align 4
  %hypre__ny1403 = alloca i32, align 4
  %hypre__nz1405 = alloca i32, align 4
  %hypre__mx1407 = alloca i32, align 4
  %hypre__my1408 = alloca i32, align 4
  %hypre__mz1409 = alloca i32, align 4
  %hypre__dir1410 = alloca i32, align 4
  %hypre__max1411 = alloca i32, align 4
  %hypre__div1412 = alloca i32, align 4
  %hypre__mod1413 = alloca i32, align 4
  %hypre__block1414 = alloca i32, align 4
  %hypre__num_blocks1415 = alloca i32, align 4
  %hypre__i1start1575 = alloca i32, align 4
  %hypre__i2start1628 = alloca i32, align 4
  %hypre__sx11681 = alloca i32, align 4
  %hypre__sy11683 = alloca i32, align 4
  %hypre__sz11704 = alloca i32, align 4
  %hypre__sx21744 = alloca i32, align 4
  %hypre__sy21746 = alloca i32, align 4
  %hypre__sz21767 = alloca i32, align 4
  %hypre__nx1807 = alloca i32, align 4
  %hypre__ny1809 = alloca i32, align 4
  %hypre__nz1811 = alloca i32, align 4
  %hypre__mx1813 = alloca i32, align 4
  %hypre__my1814 = alloca i32, align 4
  %hypre__mz1815 = alloca i32, align 4
  %hypre__dir1816 = alloca i32, align 4
  %hypre__max1817 = alloca i32, align 4
  %hypre__div1818 = alloca i32, align 4
  %hypre__mod1819 = alloca i32, align 4
  %hypre__block1820 = alloca i32, align 4
  %hypre__num_blocks1821 = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  %2 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %2, i32 0, i32 2
  %3 = load i32, i32* %max_iter1, align 4
  store i32 %3, i32* %max_iter, align 4
  %4 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %zero_guess2 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %4, i32 0, i32 4
  %5 = load i32, i32* %zero_guess2, align 4
  store i32 %5, i32* %zero_guess, align 4
  %6 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %weight3 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %6, i32 0, i32 5
  %7 = load double, double* %weight3, align 8
  store double %7, double* %weight, align 8
  %8 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_pointsets4 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %8, i32 0, i32 6
  %9 = load i32, i32* %num_pointsets4, align 4
  store i32 %9, i32* %num_pointsets, align 4
  %10 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks5 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %10, i32 0, i32 8
  %11 = load i32*, i32** %pointset_ranks5, align 8
  store i32* %11, i32** %pointset_ranks, align 8
  %12 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_strides6 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %12, i32 0, i32 9
  %13 = load [3 x i32]*, [3 x i32]** %pointset_strides6, align 8
  store [3 x i32]* %13, [3 x i32]** %pointset_strides, align 8
  %14 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t7 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %14, i32 0, i32 14
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t7, align 8
  store %struct.hypre_StructVector_struct* %15, %struct.hypre_StructVector_struct** %t, align 8
  %16 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %diag_rank8 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %16, i32 0, i32 15
  %17 = load i32, i32* %diag_rank8, align 4
  store i32 %17, i32* %diag_rank, align 4
  %18 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %compute_pkgs9 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %18, i32 0, i32 16
  %19 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs9, align 8
  store %struct.hypre_ComputePkg_struct** %19, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  store i32 0, i32* %ierr, align 4
  %20 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %20, i32 0, i32 18
  %21 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %21)
  %22 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %A10 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %22, i32 0, i32 11
  %23 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A10, align 8
  %call11 = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %23)
  %24 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %b12 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %24, i32 0, i32 12
  %25 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b12, align 8
  %call13 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %25)
  %26 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %x14 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %26, i32 0, i32 13
  %27 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x14, align 8
  %call15 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %27)
  %28 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call16 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %28)
  %29 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %A17 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %29, i32 0, i32 11
  store %struct.hypre_StructMatrix_struct* %call16, %struct.hypre_StructMatrix_struct** %A17, align 8
  %30 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call18 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %30)
  %31 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %x19 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %31, i32 0, i32 13
  store %struct.hypre_StructVector_struct* %call18, %struct.hypre_StructVector_struct** %x19, align 8
  %32 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call20 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %32)
  %33 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %b21 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %33, i32 0, i32 12
  store %struct.hypre_StructVector_struct* %call20, %struct.hypre_StructVector_struct** %b21, align 8
  %34 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_iterations = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %34, i32 0, i32 17
  store i32 0, i32* %num_iterations, align 4
  %35 = load i32, i32* %max_iter, align 4
  %cmp = icmp eq i32 %35, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %36 = load i32, i32* %zero_guess, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %37 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call23 = call i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct* %37, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %38 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %time_index24 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %38, i32 0, i32 18
  %39 = load i32, i32* %time_index24, align 4
  %call25 = call i32 @hypre_EndTiming(i32 %39)
  %40 = load i32, i32* %ierr, align 4
  store i32 %40, i32* %retval
  br label %return

if.end.26:                                        ; preds = %entry
  %41 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil27 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %41, i32 0, i32 3
  %42 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil27, align 8
  store %struct.hypre_StructStencil_struct* %42, %struct.hypre_StructStencil_struct** %stencil, align 8
  %43 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %43, i32 0, i32 0
  %44 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %44, [3 x i32]** %stencil_shape, align 8
  %45 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %45, i32 0, i32 1
  %46 = load i32, i32* %size, align 4
  store i32 %46, i32* %stencil_size, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %iter, align 4
  %47 = load i32, i32* %zero_guess, align 4
  %tobool28 = icmp ne i32 %47, 0
  br i1 %tobool28, label %if.then.29, label %if.end.533

if.then.29:                                       ; preds = %if.end.26
  %48 = load i32, i32* %p, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load i32*, i32** %pointset_ranks, align 8
  %arrayidx = getelementptr inbounds i32, i32* %49, i64 %idxprom
  %50 = load i32, i32* %arrayidx, align 4
  store i32 %50, i32* %pointset, align 4
  %51 = load i32, i32* %pointset, align 4
  %idxprom30 = sext i32 %51 to i64
  %52 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  %arrayidx31 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %52, i64 %idxprom30
  %53 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx31, align 8
  store %struct.hypre_ComputePkg_struct* %53, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %54 = load i32, i32* %pointset, align 4
  %idxprom32 = sext i32 %54 to i64
  %55 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %55, i64 %idxprom32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i32 0
  store i32* %arraydecay, i32** %stride, align 8
  store i32 0, i32* %compute_i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.522, %if.then.29
  %56 = load i32, i32* %compute_i, align 4
  %cmp34 = icmp slt i32 %56, 2
  br i1 %cmp34, label %for.body, label %for.end.524

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %compute_i, align 4
  switch i32 %57, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %for.body
  %58 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %58, i32 0, i32 1
  %59 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %59, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body
  %60 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %60, i32 0, i32 2
  %61 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %61, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.35, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.519, %sw.epilog
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size37 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %63, i32 0, i32 1
  %64 = load i32, i32* %size37, align 4
  %cmp38 = icmp slt i32 %62, %64
  br i1 %cmp38, label %for.body.39, label %for.end.521

for.body.39:                                      ; preds = %for.cond.36
  %65 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %65 to i64
  %66 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %66, i32 0, i32 0
  %67 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx41 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %67, i64 %idxprom40
  %68 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx41, align 8
  store %struct.hypre_BoxArray_struct* %68, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %69 to i64
  %70 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %70, i32 0, i32 5
  %71 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %71, i32 0, i32 0
  %72 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %72, i64 %idxprom42
  store %struct.hypre_Box_struct* %arrayidx43, %struct.hypre_Box_struct** %A_data_box, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %73 to i64
  %74 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_space45 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %74, i32 0, i32 2
  %75 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space45, align 8
  %boxes46 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %75, i32 0, i32 0
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i64 %idxprom44
  store %struct.hypre_Box_struct* %arrayidx47, %struct.hypre_Box_struct** %b_data_box, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %77 to i64
  %78 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space49 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %78, i32 0, i32 2
  %79 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space49, align 8
  %boxes50 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %79, i32 0, i32 0
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes50, align 8
  %arrayidx51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i64 %idxprom48
  store %struct.hypre_Box_struct* %arrayidx51, %struct.hypre_Box_struct** %x_data_box, align 8
  %81 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %81, i32 0, i32 6
  %82 = load double*, double** %data, align 8
  %83 = load i32, i32* %diag_rank, align 4
  %idxprom52 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %84 to i64
  %85 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %85, i32 0, i32 9
  %86 = load i32**, i32*** %data_indices, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %86, i64 %idxprom53
  %87 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %87, i64 %idxprom52
  %88 = load i32, i32* %arrayidx55, align 4
  %idx.ext = sext i32 %88 to i64
  %add.ptr = getelementptr inbounds double, double* %82, i64 %idx.ext
  store double* %add.ptr, double** %Ap, align 8
  %89 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data56 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %89, i32 0, i32 3
  %90 = load double*, double** %data56, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %91 to i64
  %92 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_indices58 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %92, i32 0, i32 6
  %93 = load i32*, i32** %data_indices58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %93, i64 %idxprom57
  %94 = load i32, i32* %arrayidx59, align 4
  %idx.ext60 = sext i32 %94 to i64
  %add.ptr61 = getelementptr inbounds double, double* %90, i64 %idx.ext60
  store double* %add.ptr61, double** %bp, align 8
  %95 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data62 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %95, i32 0, i32 3
  %96 = load double*, double** %data62, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %97 to i64
  %98 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices64 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %98, i32 0, i32 6
  %99 = load i32*, i32** %data_indices64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %99, i64 %idxprom63
  %100 = load i32, i32* %arrayidx65, align 4
  %idx.ext66 = sext i32 %100 to i64
  %add.ptr67 = getelementptr inbounds double, double* %96, i64 %idx.ext66
  store double* %add.ptr67, double** %xp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.516, %for.body.39
  %101 = load i32, i32* %j, align 4
  %102 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size69 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %102, i32 0, i32 1
  %103 = load i32, i32* %size69, align 4
  %cmp70 = icmp slt i32 %101, %103
  br i1 %cmp70, label %for.body.71, label %for.end.518

for.body.71:                                      ; preds = %for.cond.68
  %104 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %104 to i64
  %105 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes73 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %105, i32 0, i32 0
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i64 %idxprom72
  store %struct.hypre_Box_struct* %arrayidx74, %struct.hypre_Box_struct** %compute_box, align 8
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay75, i32** %start, align 8
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %109 = load i32*, i32** %stride, align 8
  %arraydecay76 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call77 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %108, i32* %109, i32* %arraydecay76)
  %110 = load i32*, i32** %start, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx78, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin79 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %imin79, i32 0, i64 0
  %113 = load i32, i32* %arrayidx80, align 4
  %sub = sub nsw i32 %111, %113
  %114 = load i32*, i32** %start, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %114, i64 1
  %115 = load i32, i32* %arrayidx81, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imin82, i32 0, i64 1
  %117 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %115, %117
  %118 = load i32*, i32** %start, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %118, i64 2
  %119 = load i32, i32* %arrayidx85, align 4
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 2
  %121 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %119, %121
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %123 = load i32, i32* %arrayidx89, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imin90, i32 0, i64 1
  %125 = load i32, i32* %arrayidx91, align 4
  %sub92 = sub nsw i32 %123, %125
  %add = add nsw i32 %sub92, 1
  %cmp93 = icmp slt i32 0, %add
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.71
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imax94, i32 0, i64 1
  %127 = load i32, i32* %arrayidx95, align 4
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imin96, i32 0, i64 1
  %129 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %127, %129
  %add99 = add nsw i32 %sub98, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add99, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub88, %cond
  %add100 = add nsw i32 %sub84, %mul
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imax101, i32 0, i64 0
  %131 = load i32, i32* %arrayidx102, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin103 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %imin103, i32 0, i64 0
  %133 = load i32, i32* %arrayidx104, align 4
  %sub105 = sub nsw i32 %131, %133
  %add106 = add nsw i32 %sub105, 1
  %cmp107 = icmp slt i32 0, %add106
  br i1 %cmp107, label %cond.true.108, label %cond.false.115

cond.true.108:                                    ; preds = %cond.end
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imax109, i32 0, i64 0
  %135 = load i32, i32* %arrayidx110, align 4
  %136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %136, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imin111, i32 0, i64 0
  %137 = load i32, i32* %arrayidx112, align 4
  %sub113 = sub nsw i32 %135, %137
  %add114 = add nsw i32 %sub113, 1
  br label %cond.end.116

cond.false.115:                                   ; preds = %cond.end
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.108
  %cond117 = phi i32 [ %add114, %cond.true.108 ], [ 0, %cond.false.115 ]
  %mul118 = mul nsw i32 %add100, %cond117
  %add119 = add nsw i32 %sub, %mul118
  store i32 %add119, i32* %hypre__i1start, align 4
  %138 = load i32*, i32** %start, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %138, i64 0
  %139 = load i32, i32* %arrayidx120, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imin121, i32 0, i64 0
  %141 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %139, %141
  %142 = load i32*, i32** %start, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %142, i64 1
  %143 = load i32, i32* %arrayidx124, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imin125, i32 0, i64 1
  %145 = load i32, i32* %arrayidx126, align 4
  %sub127 = sub nsw i32 %143, %145
  %146 = load i32*, i32** %start, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %146, i64 2
  %147 = load i32, i32* %arrayidx128, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imin129, i32 0, i64 2
  %149 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %147, %149
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %imax132, i32 0, i64 1
  %151 = load i32, i32* %arrayidx133, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 1
  %153 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %151, %153
  %add137 = add nsw i32 %sub136, 1
  %cmp138 = icmp slt i32 0, %add137
  br i1 %cmp138, label %cond.true.139, label %cond.false.146

cond.true.139:                                    ; preds = %cond.end.116
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %imax140, i32 0, i64 1
  %155 = load i32, i32* %arrayidx141, align 4
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 1
  %157 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %155, %157
  %add145 = add nsw i32 %sub144, 1
  br label %cond.end.147

cond.false.146:                                   ; preds = %cond.end.116
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.139
  %cond148 = phi i32 [ %add145, %cond.true.139 ], [ 0, %cond.false.146 ]
  %mul149 = mul nsw i32 %sub131, %cond148
  %add150 = add nsw i32 %sub127, %mul149
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax151 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %imax151, i32 0, i64 0
  %159 = load i32, i32* %arrayidx152, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imin153, i32 0, i64 0
  %161 = load i32, i32* %arrayidx154, align 4
  %sub155 = sub nsw i32 %159, %161
  %add156 = add nsw i32 %sub155, 1
  %cmp157 = icmp slt i32 0, %add156
  br i1 %cmp157, label %cond.true.158, label %cond.false.165

cond.true.158:                                    ; preds = %cond.end.147
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax159 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [3 x i32], [3 x i32]* %imax159, i32 0, i64 0
  %163 = load i32, i32* %arrayidx160, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imin161, i32 0, i64 0
  %165 = load i32, i32* %arrayidx162, align 4
  %sub163 = sub nsw i32 %163, %165
  %add164 = add nsw i32 %sub163, 1
  br label %cond.end.166

cond.false.165:                                   ; preds = %cond.end.147
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.158
  %cond167 = phi i32 [ %add164, %cond.true.158 ], [ 0, %cond.false.165 ]
  %mul168 = mul nsw i32 %add150, %cond167
  %add169 = add nsw i32 %sub123, %mul168
  store i32 %add169, i32* %hypre__i2start, align 4
  %166 = load i32*, i32** %start, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %166, i64 0
  %167 = load i32, i32* %arrayidx170, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imin171, i32 0, i64 0
  %169 = load i32, i32* %arrayidx172, align 4
  %sub173 = sub nsw i32 %167, %169
  %170 = load i32*, i32** %start, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %170, i64 1
  %171 = load i32, i32* %arrayidx174, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imin175, i32 0, i64 1
  %173 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %171, %173
  %174 = load i32*, i32** %start, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %174, i64 2
  %175 = load i32, i32* %arrayidx178, align 4
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imin179, i32 0, i64 2
  %177 = load i32, i32* %arrayidx180, align 4
  %sub181 = sub nsw i32 %175, %177
  %178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %178, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imax182, i32 0, i64 1
  %179 = load i32, i32* %arrayidx183, align 4
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin184 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %180, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [3 x i32], [3 x i32]* %imin184, i32 0, i64 1
  %181 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %179, %181
  %add187 = add nsw i32 %sub186, 1
  %cmp188 = icmp slt i32 0, %add187
  br i1 %cmp188, label %cond.true.189, label %cond.false.196

cond.true.189:                                    ; preds = %cond.end.166
  %182 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %182, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %imax190, i32 0, i64 1
  %183 = load i32, i32* %arrayidx191, align 4
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %184, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %imin192, i32 0, i64 1
  %185 = load i32, i32* %arrayidx193, align 4
  %sub194 = sub nsw i32 %183, %185
  %add195 = add nsw i32 %sub194, 1
  br label %cond.end.197

cond.false.196:                                   ; preds = %cond.end.166
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.189
  %cond198 = phi i32 [ %add195, %cond.true.189 ], [ 0, %cond.false.196 ]
  %mul199 = mul nsw i32 %sub181, %cond198
  %add200 = add nsw i32 %sub177, %mul199
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 0
  %187 = load i32, i32* %arrayidx202, align 4
  %188 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %188, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin203, i32 0, i64 0
  %189 = load i32, i32* %arrayidx204, align 4
  %sub205 = sub nsw i32 %187, %189
  %add206 = add nsw i32 %sub205, 1
  %cmp207 = icmp slt i32 0, %add206
  br i1 %cmp207, label %cond.true.208, label %cond.false.215

cond.true.208:                                    ; preds = %cond.end.197
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imax209, i32 0, i64 0
  %191 = load i32, i32* %arrayidx210, align 4
  %192 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %192, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imin211, i32 0, i64 0
  %193 = load i32, i32* %arrayidx212, align 4
  %sub213 = sub nsw i32 %191, %193
  %add214 = add nsw i32 %sub213, 1
  br label %cond.end.216

cond.false.215:                                   ; preds = %cond.end.197
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.208
  %cond217 = phi i32 [ %add214, %cond.true.208 ], [ 0, %cond.false.215 ]
  %mul218 = mul nsw i32 %add200, %cond217
  %add219 = add nsw i32 %sub173, %mul218
  store i32 %add219, i32* %hypre__i3start, align 4
  %194 = load i32*, i32** %stride, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %194, i64 0
  %195 = load i32, i32* %arrayidx220, align 4
  store i32 %195, i32* %hypre__sx1, align 4
  %196 = load i32*, i32** %stride, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %196, i64 1
  %197 = load i32, i32* %arrayidx221, align 4
  %198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %198, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imax222, i32 0, i64 0
  %199 = load i32, i32* %arrayidx223, align 4
  %200 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin224 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %200, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [3 x i32], [3 x i32]* %imin224, i32 0, i64 0
  %201 = load i32, i32* %arrayidx225, align 4
  %sub226 = sub nsw i32 %199, %201
  %add227 = add nsw i32 %sub226, 1
  %cmp228 = icmp slt i32 0, %add227
  br i1 %cmp228, label %cond.true.229, label %cond.false.236

cond.true.229:                                    ; preds = %cond.end.216
  %202 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %202, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %imax230, i32 0, i64 0
  %203 = load i32, i32* %arrayidx231, align 4
  %204 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %204, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %imin232, i32 0, i64 0
  %205 = load i32, i32* %arrayidx233, align 4
  %sub234 = sub nsw i32 %203, %205
  %add235 = add nsw i32 %sub234, 1
  br label %cond.end.237

cond.false.236:                                   ; preds = %cond.end.216
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.236, %cond.true.229
  %cond238 = phi i32 [ %add235, %cond.true.229 ], [ 0, %cond.false.236 ]
  %mul239 = mul nsw i32 %197, %cond238
  store i32 %mul239, i32* %hypre__sy1, align 4
  %206 = load i32*, i32** %stride, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %206, i64 2
  %207 = load i32, i32* %arrayidx240, align 4
  %208 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax241 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %208, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [3 x i32], [3 x i32]* %imax241, i32 0, i64 0
  %209 = load i32, i32* %arrayidx242, align 4
  %210 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin243 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %210, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %imin243, i32 0, i64 0
  %211 = load i32, i32* %arrayidx244, align 4
  %sub245 = sub nsw i32 %209, %211
  %add246 = add nsw i32 %sub245, 1
  %cmp247 = icmp slt i32 0, %add246
  br i1 %cmp247, label %cond.true.248, label %cond.false.255

cond.true.248:                                    ; preds = %cond.end.237
  %212 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax249 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %212, i32 0, i32 1
  %arrayidx250 = getelementptr inbounds [3 x i32], [3 x i32]* %imax249, i32 0, i64 0
  %213 = load i32, i32* %arrayidx250, align 4
  %214 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %214, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %imin251, i32 0, i64 0
  %215 = load i32, i32* %arrayidx252, align 4
  %sub253 = sub nsw i32 %213, %215
  %add254 = add nsw i32 %sub253, 1
  br label %cond.end.256

cond.false.255:                                   ; preds = %cond.end.237
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.255, %cond.true.248
  %cond257 = phi i32 [ %add254, %cond.true.248 ], [ 0, %cond.false.255 ]
  %mul258 = mul nsw i32 %207, %cond257
  %216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %216, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %imax259, i32 0, i64 1
  %217 = load i32, i32* %arrayidx260, align 4
  %218 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin261 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %218, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [3 x i32], [3 x i32]* %imin261, i32 0, i64 1
  %219 = load i32, i32* %arrayidx262, align 4
  %sub263 = sub nsw i32 %217, %219
  %add264 = add nsw i32 %sub263, 1
  %cmp265 = icmp slt i32 0, %add264
  br i1 %cmp265, label %cond.true.266, label %cond.false.273

cond.true.266:                                    ; preds = %cond.end.256
  %220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax267 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %220, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [3 x i32], [3 x i32]* %imax267, i32 0, i64 1
  %221 = load i32, i32* %arrayidx268, align 4
  %222 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %222, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %imin269, i32 0, i64 1
  %223 = load i32, i32* %arrayidx270, align 4
  %sub271 = sub nsw i32 %221, %223
  %add272 = add nsw i32 %sub271, 1
  br label %cond.end.274

cond.false.273:                                   ; preds = %cond.end.256
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.266
  %cond275 = phi i32 [ %add272, %cond.true.266 ], [ 0, %cond.false.273 ]
  %mul276 = mul nsw i32 %mul258, %cond275
  store i32 %mul276, i32* %hypre__sz1, align 4
  %224 = load i32*, i32** %stride, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %224, i64 0
  %225 = load i32, i32* %arrayidx277, align 4
  store i32 %225, i32* %hypre__sx2, align 4
  %226 = load i32*, i32** %stride, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %226, i64 1
  %227 = load i32, i32* %arrayidx278, align 4
  %228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %228, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imax279, i32 0, i64 0
  %229 = load i32, i32* %arrayidx280, align 4
  %230 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin281 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %230, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [3 x i32], [3 x i32]* %imin281, i32 0, i64 0
  %231 = load i32, i32* %arrayidx282, align 4
  %sub283 = sub nsw i32 %229, %231
  %add284 = add nsw i32 %sub283, 1
  %cmp285 = icmp slt i32 0, %add284
  br i1 %cmp285, label %cond.true.286, label %cond.false.293

cond.true.286:                                    ; preds = %cond.end.274
  %232 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %232, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imax287, i32 0, i64 0
  %233 = load i32, i32* %arrayidx288, align 4
  %234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %234, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %imin289, i32 0, i64 0
  %235 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %233, %235
  %add292 = add nsw i32 %sub291, 1
  br label %cond.end.294

cond.false.293:                                   ; preds = %cond.end.274
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.293, %cond.true.286
  %cond295 = phi i32 [ %add292, %cond.true.286 ], [ 0, %cond.false.293 ]
  %mul296 = mul nsw i32 %227, %cond295
  store i32 %mul296, i32* %hypre__sy2, align 4
  %236 = load i32*, i32** %stride, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %236, i64 2
  %237 = load i32, i32* %arrayidx297, align 4
  %238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax298 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %238, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [3 x i32], [3 x i32]* %imax298, i32 0, i64 0
  %239 = load i32, i32* %arrayidx299, align 4
  %240 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %240, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x i32], [3 x i32]* %imin300, i32 0, i64 0
  %241 = load i32, i32* %arrayidx301, align 4
  %sub302 = sub nsw i32 %239, %241
  %add303 = add nsw i32 %sub302, 1
  %cmp304 = icmp slt i32 0, %add303
  br i1 %cmp304, label %cond.true.305, label %cond.false.312

cond.true.305:                                    ; preds = %cond.end.294
  %242 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax306 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %242, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [3 x i32], [3 x i32]* %imax306, i32 0, i64 0
  %243 = load i32, i32* %arrayidx307, align 4
  %244 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %244, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [3 x i32], [3 x i32]* %imin308, i32 0, i64 0
  %245 = load i32, i32* %arrayidx309, align 4
  %sub310 = sub nsw i32 %243, %245
  %add311 = add nsw i32 %sub310, 1
  br label %cond.end.313

cond.false.312:                                   ; preds = %cond.end.294
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.312, %cond.true.305
  %cond314 = phi i32 [ %add311, %cond.true.305 ], [ 0, %cond.false.312 ]
  %mul315 = mul nsw i32 %237, %cond314
  %246 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax316 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %246, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %imax316, i32 0, i64 1
  %247 = load i32, i32* %arrayidx317, align 4
  %248 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin318 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %248, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [3 x i32], [3 x i32]* %imin318, i32 0, i64 1
  %249 = load i32, i32* %arrayidx319, align 4
  %sub320 = sub nsw i32 %247, %249
  %add321 = add nsw i32 %sub320, 1
  %cmp322 = icmp slt i32 0, %add321
  br i1 %cmp322, label %cond.true.323, label %cond.false.330

cond.true.323:                                    ; preds = %cond.end.313
  %250 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax324 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %250, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [3 x i32], [3 x i32]* %imax324, i32 0, i64 1
  %251 = load i32, i32* %arrayidx325, align 4
  %252 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %252, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %imin326, i32 0, i64 1
  %253 = load i32, i32* %arrayidx327, align 4
  %sub328 = sub nsw i32 %251, %253
  %add329 = add nsw i32 %sub328, 1
  br label %cond.end.331

cond.false.330:                                   ; preds = %cond.end.313
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.323
  %cond332 = phi i32 [ %add329, %cond.true.323 ], [ 0, %cond.false.330 ]
  %mul333 = mul nsw i32 %mul315, %cond332
  store i32 %mul333, i32* %hypre__sz2, align 4
  %254 = load i32*, i32** %stride, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %254, i64 0
  %255 = load i32, i32* %arrayidx334, align 4
  store i32 %255, i32* %hypre__sx3, align 4
  %256 = load i32*, i32** %stride, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %256, i64 1
  %257 = load i32, i32* %arrayidx335, align 4
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax336 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %258, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [3 x i32], [3 x i32]* %imax336, i32 0, i64 0
  %259 = load i32, i32* %arrayidx337, align 4
  %260 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin338 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %260, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [3 x i32], [3 x i32]* %imin338, i32 0, i64 0
  %261 = load i32, i32* %arrayidx339, align 4
  %sub340 = sub nsw i32 %259, %261
  %add341 = add nsw i32 %sub340, 1
  %cmp342 = icmp slt i32 0, %add341
  br i1 %cmp342, label %cond.true.343, label %cond.false.350

cond.true.343:                                    ; preds = %cond.end.331
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %imax344, i32 0, i64 0
  %263 = load i32, i32* %arrayidx345, align 4
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %imin346, i32 0, i64 0
  %265 = load i32, i32* %arrayidx347, align 4
  %sub348 = sub nsw i32 %263, %265
  %add349 = add nsw i32 %sub348, 1
  br label %cond.end.351

cond.false.350:                                   ; preds = %cond.end.331
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.false.350, %cond.true.343
  %cond352 = phi i32 [ %add349, %cond.true.343 ], [ 0, %cond.false.350 ]
  %mul353 = mul nsw i32 %257, %cond352
  store i32 %mul353, i32* %hypre__sy3, align 4
  %266 = load i32*, i32** %stride, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %266, i64 2
  %267 = load i32, i32* %arrayidx354, align 4
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax355 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [3 x i32], [3 x i32]* %imax355, i32 0, i64 0
  %269 = load i32, i32* %arrayidx356, align 4
  %270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin357 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %270, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [3 x i32], [3 x i32]* %imin357, i32 0, i64 0
  %271 = load i32, i32* %arrayidx358, align 4
  %sub359 = sub nsw i32 %269, %271
  %add360 = add nsw i32 %sub359, 1
  %cmp361 = icmp slt i32 0, %add360
  br i1 %cmp361, label %cond.true.362, label %cond.false.369

cond.true.362:                                    ; preds = %cond.end.351
  %272 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax363 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %272, i32 0, i32 1
  %arrayidx364 = getelementptr inbounds [3 x i32], [3 x i32]* %imax363, i32 0, i64 0
  %273 = load i32, i32* %arrayidx364, align 4
  %274 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin365 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %274, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [3 x i32], [3 x i32]* %imin365, i32 0, i64 0
  %275 = load i32, i32* %arrayidx366, align 4
  %sub367 = sub nsw i32 %273, %275
  %add368 = add nsw i32 %sub367, 1
  br label %cond.end.370

cond.false.369:                                   ; preds = %cond.end.351
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.369, %cond.true.362
  %cond371 = phi i32 [ %add368, %cond.true.362 ], [ 0, %cond.false.369 ]
  %mul372 = mul nsw i32 %267, %cond371
  %276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax373 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %276, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %imax373, i32 0, i64 1
  %277 = load i32, i32* %arrayidx374, align 4
  %278 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin375 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %278, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [3 x i32], [3 x i32]* %imin375, i32 0, i64 1
  %279 = load i32, i32* %arrayidx376, align 4
  %sub377 = sub nsw i32 %277, %279
  %add378 = add nsw i32 %sub377, 1
  %cmp379 = icmp slt i32 0, %add378
  br i1 %cmp379, label %cond.true.380, label %cond.false.387

cond.true.380:                                    ; preds = %cond.end.370
  %280 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax381 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %280, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [3 x i32], [3 x i32]* %imax381, i32 0, i64 1
  %281 = load i32, i32* %arrayidx382, align 4
  %282 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin383 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %282, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %imin383, i32 0, i64 1
  %283 = load i32, i32* %arrayidx384, align 4
  %sub385 = sub nsw i32 %281, %283
  %add386 = add nsw i32 %sub385, 1
  br label %cond.end.388

cond.false.387:                                   ; preds = %cond.end.370
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.387, %cond.true.380
  %cond389 = phi i32 [ %add386, %cond.true.380 ], [ 0, %cond.false.387 ]
  %mul390 = mul nsw i32 %mul372, %cond389
  store i32 %mul390, i32* %hypre__sz3, align 4
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %284 = load i32, i32* %arrayidx391, align 4
  store i32 %284, i32* %hypre__nx, align 4
  %arrayidx392 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %285 = load i32, i32* %arrayidx392, align 4
  store i32 %285, i32* %hypre__ny, align 4
  %arrayidx393 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %286 = load i32, i32* %arrayidx393, align 4
  store i32 %286, i32* %hypre__nz, align 4
  %287 = load i32, i32* %hypre__nx, align 4
  store i32 %287, i32* %hypre__mx, align 4
  %288 = load i32, i32* %hypre__ny, align 4
  store i32 %288, i32* %hypre__my, align 4
  %289 = load i32, i32* %hypre__nz, align 4
  store i32 %289, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %290 = load i32, i32* %hypre__nx, align 4
  store i32 %290, i32* %hypre__max, align 4
  %291 = load i32, i32* %hypre__ny, align 4
  %292 = load i32, i32* %hypre__max, align 4
  %cmp394 = icmp sgt i32 %291, %292
  br i1 %cmp394, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %cond.end.388
  store i32 1, i32* %hypre__dir, align 4
  %293 = load i32, i32* %hypre__ny, align 4
  store i32 %293, i32* %hypre__max, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %cond.end.388
  %294 = load i32, i32* %hypre__nz, align 4
  %295 = load i32, i32* %hypre__max, align 4
  %cmp397 = icmp sgt i32 %294, %295
  br i1 %cmp397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.end.396
  store i32 2, i32* %hypre__dir, align 4
  %296 = load i32, i32* %hypre__nz, align 4
  store i32 %296, i32* %hypre__max, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %if.end.396
  store i32 1, i32* %hypre__num_blocks, align 4
  %297 = load i32, i32* %hypre__max, align 4
  %298 = load i32, i32* %hypre__num_blocks, align 4
  %cmp400 = icmp slt i32 %297, %298
  br i1 %cmp400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.end.399
  %299 = load i32, i32* %hypre__max, align 4
  store i32 %299, i32* %hypre__num_blocks, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %if.end.399
  %300 = load i32, i32* %hypre__num_blocks, align 4
  %cmp403 = icmp sgt i32 %300, 0
  br i1 %cmp403, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %if.end.402
  %301 = load i32, i32* %hypre__max, align 4
  %302 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %301, %302
  store i32 %div, i32* %hypre__div, align 4
  %303 = load i32, i32* %hypre__max, align 4
  %304 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %303, %304
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.404, %if.end.402
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.406

for.cond.406:                                     ; preds = %for.inc.513, %if.end.405
  %305 = load i32, i32* %hypre__block, align 4
  %306 = load i32, i32* %hypre__num_blocks, align 4
  %cmp407 = icmp slt i32 %305, %306
  br i1 %cmp407, label %for.body.408, label %for.end.515

for.body.408:                                     ; preds = %for.cond.406
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %307 = load i32, i32* %hypre__mx, align 4
  store i32 %307, i32* %hypre__nx, align 4
  %308 = load i32, i32* %hypre__my, align 4
  store i32 %308, i32* %hypre__ny, align 4
  %309 = load i32, i32* %hypre__mz, align 4
  store i32 %309, i32* %hypre__nz, align 4
  %310 = load i32, i32* %hypre__num_blocks, align 4
  %cmp409 = icmp sgt i32 %310, 1
  br i1 %cmp409, label %if.then.410, label %if.end.451

if.then.410:                                      ; preds = %for.body.408
  %311 = load i32, i32* %hypre__dir, align 4
  %cmp411 = icmp eq i32 %311, 0
  br i1 %cmp411, label %if.then.412, label %if.else

if.then.412:                                      ; preds = %if.then.410
  %312 = load i32, i32* %hypre__block, align 4
  %313 = load i32, i32* %hypre__div, align 4
  %mul413 = mul nsw i32 %312, %313
  %314 = load i32, i32* %hypre__mod, align 4
  %315 = load i32, i32* %hypre__block, align 4
  %cmp414 = icmp slt i32 %314, %315
  br i1 %cmp414, label %cond.true.415, label %cond.false.416

cond.true.415:                                    ; preds = %if.then.412
  %316 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.417

cond.false.416:                                   ; preds = %if.then.412
  %317 = load i32, i32* %hypre__block, align 4
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.416, %cond.true.415
  %cond418 = phi i32 [ %316, %cond.true.415 ], [ %317, %cond.false.416 ]
  %add419 = add nsw i32 %mul413, %cond418
  store i32 %add419, i32* %loopi, align 4
  %318 = load i32, i32* %hypre__div, align 4
  %319 = load i32, i32* %hypre__mod, align 4
  %320 = load i32, i32* %hypre__block, align 4
  %cmp420 = icmp sgt i32 %319, %320
  %cond421 = select i1 %cmp420, i32 1, i32 0
  %add422 = add nsw i32 %318, %cond421
  store i32 %add422, i32* %hypre__nx, align 4
  br label %if.end.450

if.else:                                          ; preds = %if.then.410
  %321 = load i32, i32* %hypre__dir, align 4
  %cmp423 = icmp eq i32 %321, 1
  br i1 %cmp423, label %if.then.424, label %if.else.435

if.then.424:                                      ; preds = %if.else
  %322 = load i32, i32* %hypre__block, align 4
  %323 = load i32, i32* %hypre__div, align 4
  %mul425 = mul nsw i32 %322, %323
  %324 = load i32, i32* %hypre__mod, align 4
  %325 = load i32, i32* %hypre__block, align 4
  %cmp426 = icmp slt i32 %324, %325
  br i1 %cmp426, label %cond.true.427, label %cond.false.428

cond.true.427:                                    ; preds = %if.then.424
  %326 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.429

cond.false.428:                                   ; preds = %if.then.424
  %327 = load i32, i32* %hypre__block, align 4
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.428, %cond.true.427
  %cond430 = phi i32 [ %326, %cond.true.427 ], [ %327, %cond.false.428 ]
  %add431 = add nsw i32 %mul425, %cond430
  store i32 %add431, i32* %loopj, align 4
  %328 = load i32, i32* %hypre__div, align 4
  %329 = load i32, i32* %hypre__mod, align 4
  %330 = load i32, i32* %hypre__block, align 4
  %cmp432 = icmp sgt i32 %329, %330
  %cond433 = select i1 %cmp432, i32 1, i32 0
  %add434 = add nsw i32 %328, %cond433
  store i32 %add434, i32* %hypre__ny, align 4
  br label %if.end.449

if.else.435:                                      ; preds = %if.else
  %331 = load i32, i32* %hypre__dir, align 4
  %cmp436 = icmp eq i32 %331, 2
  br i1 %cmp436, label %if.then.437, label %if.end.448

if.then.437:                                      ; preds = %if.else.435
  %332 = load i32, i32* %hypre__block, align 4
  %333 = load i32, i32* %hypre__div, align 4
  %mul438 = mul nsw i32 %332, %333
  %334 = load i32, i32* %hypre__mod, align 4
  %335 = load i32, i32* %hypre__block, align 4
  %cmp439 = icmp slt i32 %334, %335
  br i1 %cmp439, label %cond.true.440, label %cond.false.441

cond.true.440:                                    ; preds = %if.then.437
  %336 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.442

cond.false.441:                                   ; preds = %if.then.437
  %337 = load i32, i32* %hypre__block, align 4
  br label %cond.end.442

cond.end.442:                                     ; preds = %cond.false.441, %cond.true.440
  %cond443 = phi i32 [ %336, %cond.true.440 ], [ %337, %cond.false.441 ]
  %add444 = add nsw i32 %mul438, %cond443
  store i32 %add444, i32* %loopk, align 4
  %338 = load i32, i32* %hypre__div, align 4
  %339 = load i32, i32* %hypre__mod, align 4
  %340 = load i32, i32* %hypre__block, align 4
  %cmp445 = icmp sgt i32 %339, %340
  %cond446 = select i1 %cmp445, i32 1, i32 0
  %add447 = add nsw i32 %338, %cond446
  store i32 %add447, i32* %hypre__nz, align 4
  br label %if.end.448

if.end.448:                                       ; preds = %cond.end.442, %if.else.435
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %cond.end.429
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %cond.end.417
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %for.body.408
  %341 = load i32, i32* %hypre__i1start, align 4
  %342 = load i32, i32* %loopi, align 4
  %343 = load i32, i32* %hypre__sx1, align 4
  %mul452 = mul nsw i32 %342, %343
  %add453 = add nsw i32 %341, %mul452
  %344 = load i32, i32* %loopj, align 4
  %345 = load i32, i32* %hypre__sy1, align 4
  %mul454 = mul nsw i32 %344, %345
  %add455 = add nsw i32 %add453, %mul454
  %346 = load i32, i32* %loopk, align 4
  %347 = load i32, i32* %hypre__sz1, align 4
  %mul456 = mul nsw i32 %346, %347
  %add457 = add nsw i32 %add455, %mul456
  store i32 %add457, i32* %Ai, align 4
  %348 = load i32, i32* %hypre__i2start, align 4
  %349 = load i32, i32* %loopi, align 4
  %350 = load i32, i32* %hypre__sx2, align 4
  %mul458 = mul nsw i32 %349, %350
  %add459 = add nsw i32 %348, %mul458
  %351 = load i32, i32* %loopj, align 4
  %352 = load i32, i32* %hypre__sy2, align 4
  %mul460 = mul nsw i32 %351, %352
  %add461 = add nsw i32 %add459, %mul460
  %353 = load i32, i32* %loopk, align 4
  %354 = load i32, i32* %hypre__sz2, align 4
  %mul462 = mul nsw i32 %353, %354
  %add463 = add nsw i32 %add461, %mul462
  store i32 %add463, i32* %bi, align 4
  %355 = load i32, i32* %hypre__i3start, align 4
  %356 = load i32, i32* %loopi, align 4
  %357 = load i32, i32* %hypre__sx3, align 4
  %mul464 = mul nsw i32 %356, %357
  %add465 = add nsw i32 %355, %mul464
  %358 = load i32, i32* %loopj, align 4
  %359 = load i32, i32* %hypre__sy3, align 4
  %mul466 = mul nsw i32 %358, %359
  %add467 = add nsw i32 %add465, %mul466
  %360 = load i32, i32* %loopk, align 4
  %361 = load i32, i32* %hypre__sz3, align 4
  %mul468 = mul nsw i32 %360, %361
  %add469 = add nsw i32 %add467, %mul468
  store i32 %add469, i32* %xi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.470

for.cond.470:                                     ; preds = %for.inc.510, %if.end.451
  %362 = load i32, i32* %loopk, align 4
  %363 = load i32, i32* %hypre__nz, align 4
  %cmp471 = icmp slt i32 %362, %363
  br i1 %cmp471, label %for.body.472, label %for.end.512

for.body.472:                                     ; preds = %for.cond.470
  store i32 0, i32* %loopj, align 4
  br label %for.cond.473

for.cond.473:                                     ; preds = %for.inc.498, %for.body.472
  %364 = load i32, i32* %loopj, align 4
  %365 = load i32, i32* %hypre__ny, align 4
  %cmp474 = icmp slt i32 %364, %365
  br i1 %cmp474, label %for.body.475, label %for.end.500

for.body.475:                                     ; preds = %for.cond.473
  store i32 0, i32* %loopi, align 4
  br label %for.cond.476

for.cond.476:                                     ; preds = %for.inc, %for.body.475
  %366 = load i32, i32* %loopi, align 4
  %367 = load i32, i32* %hypre__nx, align 4
  %cmp477 = icmp slt i32 %366, %367
  br i1 %cmp477, label %for.body.478, label %for.end

for.body.478:                                     ; preds = %for.cond.476
  %368 = load i32, i32* %bi, align 4
  %idxprom479 = sext i32 %368 to i64
  %369 = load double*, double** %bp, align 8
  %arrayidx480 = getelementptr inbounds double, double* %369, i64 %idxprom479
  %370 = load double, double* %arrayidx480, align 8
  %371 = load i32, i32* %Ai, align 4
  %idxprom481 = sext i32 %371 to i64
  %372 = load double*, double** %Ap, align 8
  %arrayidx482 = getelementptr inbounds double, double* %372, i64 %idxprom481
  %373 = load double, double* %arrayidx482, align 8
  %div483 = fdiv double %370, %373
  %374 = load i32, i32* %xi, align 4
  %idxprom484 = sext i32 %374 to i64
  %375 = load double*, double** %xp, align 8
  %arrayidx485 = getelementptr inbounds double, double* %375, i64 %idxprom484
  store double %div483, double* %arrayidx485, align 8
  %376 = load i32, i32* %hypre__sx1, align 4
  %377 = load i32, i32* %Ai, align 4
  %add486 = add nsw i32 %377, %376
  store i32 %add486, i32* %Ai, align 4
  %378 = load i32, i32* %hypre__sx2, align 4
  %379 = load i32, i32* %bi, align 4
  %add487 = add nsw i32 %379, %378
  store i32 %add487, i32* %bi, align 4
  %380 = load i32, i32* %hypre__sx3, align 4
  %381 = load i32, i32* %xi, align 4
  %add488 = add nsw i32 %381, %380
  store i32 %add488, i32* %xi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.478
  %382 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %382, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.476

for.end:                                          ; preds = %for.cond.476
  %383 = load i32, i32* %hypre__sy1, align 4
  %384 = load i32, i32* %hypre__nx, align 4
  %385 = load i32, i32* %hypre__sx1, align 4
  %mul489 = mul nsw i32 %384, %385
  %sub490 = sub nsw i32 %383, %mul489
  %386 = load i32, i32* %Ai, align 4
  %add491 = add nsw i32 %386, %sub490
  store i32 %add491, i32* %Ai, align 4
  %387 = load i32, i32* %hypre__sy2, align 4
  %388 = load i32, i32* %hypre__nx, align 4
  %389 = load i32, i32* %hypre__sx2, align 4
  %mul492 = mul nsw i32 %388, %389
  %sub493 = sub nsw i32 %387, %mul492
  %390 = load i32, i32* %bi, align 4
  %add494 = add nsw i32 %390, %sub493
  store i32 %add494, i32* %bi, align 4
  %391 = load i32, i32* %hypre__sy3, align 4
  %392 = load i32, i32* %hypre__nx, align 4
  %393 = load i32, i32* %hypre__sx3, align 4
  %mul495 = mul nsw i32 %392, %393
  %sub496 = sub nsw i32 %391, %mul495
  %394 = load i32, i32* %xi, align 4
  %add497 = add nsw i32 %394, %sub496
  store i32 %add497, i32* %xi, align 4
  br label %for.inc.498

for.inc.498:                                      ; preds = %for.end
  %395 = load i32, i32* %loopj, align 4
  %inc499 = add nsw i32 %395, 1
  store i32 %inc499, i32* %loopj, align 4
  br label %for.cond.473

for.end.500:                                      ; preds = %for.cond.473
  %396 = load i32, i32* %hypre__sz1, align 4
  %397 = load i32, i32* %hypre__ny, align 4
  %398 = load i32, i32* %hypre__sy1, align 4
  %mul501 = mul nsw i32 %397, %398
  %sub502 = sub nsw i32 %396, %mul501
  %399 = load i32, i32* %Ai, align 4
  %add503 = add nsw i32 %399, %sub502
  store i32 %add503, i32* %Ai, align 4
  %400 = load i32, i32* %hypre__sz2, align 4
  %401 = load i32, i32* %hypre__ny, align 4
  %402 = load i32, i32* %hypre__sy2, align 4
  %mul504 = mul nsw i32 %401, %402
  %sub505 = sub nsw i32 %400, %mul504
  %403 = load i32, i32* %bi, align 4
  %add506 = add nsw i32 %403, %sub505
  store i32 %add506, i32* %bi, align 4
  %404 = load i32, i32* %hypre__sz3, align 4
  %405 = load i32, i32* %hypre__ny, align 4
  %406 = load i32, i32* %hypre__sy3, align 4
  %mul507 = mul nsw i32 %405, %406
  %sub508 = sub nsw i32 %404, %mul507
  %407 = load i32, i32* %xi, align 4
  %add509 = add nsw i32 %407, %sub508
  store i32 %add509, i32* %xi, align 4
  br label %for.inc.510

for.inc.510:                                      ; preds = %for.end.500
  %408 = load i32, i32* %loopk, align 4
  %inc511 = add nsw i32 %408, 1
  store i32 %inc511, i32* %loopk, align 4
  br label %for.cond.470

for.end.512:                                      ; preds = %for.cond.470
  br label %for.inc.513

for.inc.513:                                      ; preds = %for.end.512
  %409 = load i32, i32* %hypre__block, align 4
  %inc514 = add nsw i32 %409, 1
  store i32 %inc514, i32* %hypre__block, align 4
  br label %for.cond.406

for.end.515:                                      ; preds = %for.cond.406
  br label %for.inc.516

for.inc.516:                                      ; preds = %for.end.515
  %410 = load i32, i32* %j, align 4
  %inc517 = add nsw i32 %410, 1
  store i32 %inc517, i32* %j, align 4
  br label %for.cond.68

for.end.518:                                      ; preds = %for.cond.68
  br label %for.inc.519

for.inc.519:                                      ; preds = %for.end.518
  %411 = load i32, i32* %i, align 4
  %inc520 = add nsw i32 %411, 1
  store i32 %inc520, i32* %i, align 4
  br label %for.cond.36

for.end.521:                                      ; preds = %for.cond.36
  br label %for.inc.522

for.inc.522:                                      ; preds = %for.end.521
  %412 = load i32, i32* %compute_i, align 4
  %inc523 = add nsw i32 %412, 1
  store i32 %inc523, i32* %compute_i, align 4
  br label %for.cond

for.end.524:                                      ; preds = %for.cond
  %413 = load double, double* %weight, align 8
  %cmp525 = fcmp une double %413, 1.000000e+00
  br i1 %cmp525, label %if.then.526, label %if.end.528

if.then.526:                                      ; preds = %for.end.524
  %414 = load double, double* %weight, align 8
  %415 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call527 = call i32 @hypre_StructScale(double %414, %struct.hypre_StructVector_struct* %415)
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.526, %for.end.524
  %416 = load i32, i32* %p, align 4
  %add529 = add nsw i32 %416, 1
  %417 = load i32, i32* %num_pointsets, align 4
  %rem530 = srem i32 %add529, %417
  store i32 %rem530, i32* %p, align 4
  %418 = load i32, i32* %iter, align 4
  %419 = load i32, i32* %p, align 4
  %cmp531 = icmp eq i32 %419, 0
  %conv = zext i1 %cmp531 to i32
  %add532 = add nsw i32 %418, %conv
  store i32 %add532, i32* %iter, align 4
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.528, %if.end.26
  br label %while.cond

while.cond:                                       ; preds = %if.end.1970, %if.end.533
  %420 = load i32, i32* %iter, align 4
  %421 = load i32, i32* %max_iter, align 4
  %cmp534 = icmp slt i32 %420, %421
  br i1 %cmp534, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %422 = load i32, i32* %p, align 4
  %idxprom536 = sext i32 %422 to i64
  %423 = load i32*, i32** %pointset_ranks, align 8
  %arrayidx537 = getelementptr inbounds i32, i32* %423, i64 %idxprom536
  %424 = load i32, i32* %arrayidx537, align 4
  store i32 %424, i32* %pointset, align 4
  %425 = load i32, i32* %pointset, align 4
  %idxprom538 = sext i32 %425 to i64
  %426 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkgs, align 8
  %arrayidx539 = getelementptr inbounds %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %426, i64 %idxprom538
  %427 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %arrayidx539, align 8
  store %struct.hypre_ComputePkg_struct* %427, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %428 = load i32, i32* %pointset, align 4
  %idxprom540 = sext i32 %428 to i64
  %429 = load [3 x i32]*, [3 x i32]** %pointset_strides, align 8
  %arrayidx541 = getelementptr inbounds [3 x i32], [3 x i32]* %429, i64 %idxprom540
  %arraydecay542 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx541, i32 0, i32 0
  store i32* %arraydecay542, i32** %stride, align 8
  %430 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %431 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %call543 = call i32 @hypre_StructCopy(%struct.hypre_StructVector_struct* %430, %struct.hypre_StructVector_struct* %431)
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.544

for.cond.544:                                     ; preds = %for.inc.1959, %while.body
  %432 = load i32, i32* %compute_i, align 4
  %cmp545 = icmp slt i32 %432, 2
  br i1 %cmp545, label %for.body.547, label %for.end.1961

for.body.547:                                     ; preds = %for.cond.544
  %433 = load i32, i32* %compute_i, align 4
  switch i32 %433, label %sw.epilog.555 [
    i32 0, label %sw.bb.548
    i32 1, label %sw.bb.552
  ]

sw.bb.548:                                        ; preds = %for.body.547
  %434 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data549 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %434, i32 0, i32 3
  %435 = load double*, double** %data549, align 8
  store double* %435, double** %xp, align 8
  %436 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %437 = load double*, double** %xp, align 8
  %call550 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %436, double* %437, %struct.hypre_CommHandle_struct** %comm_handle)
  %438 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes551 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %438, i32 0, i32 1
  %439 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes551, align 8
  store %struct.hypre_BoxArrayArray_struct* %439, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog.555

sw.bb.552:                                        ; preds = %for.body.547
  %440 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call553 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %440)
  %441 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes554 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %441, i32 0, i32 2
  %442 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes554, align 8
  store %struct.hypre_BoxArrayArray_struct* %442, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog.555

sw.epilog.555:                                    ; preds = %for.body.547, %sw.bb.552, %sw.bb.548
  store i32 0, i32* %i, align 4
  br label %for.cond.556

for.cond.556:                                     ; preds = %for.inc.1956, %sw.epilog.555
  %443 = load i32, i32* %i, align 4
  %444 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size557 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %444, i32 0, i32 1
  %445 = load i32, i32* %size557, align 4
  %cmp558 = icmp slt i32 %443, %445
  br i1 %cmp558, label %for.body.560, label %for.end.1958

for.body.560:                                     ; preds = %for.cond.556
  %446 = load i32, i32* %i, align 4
  %idxprom561 = sext i32 %446 to i64
  %447 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays562 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %447, i32 0, i32 0
  %448 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays562, align 8
  %arrayidx563 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %448, i64 %idxprom561
  %449 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx563, align 8
  store %struct.hypre_BoxArray_struct* %449, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %450 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %450 to i64
  %451 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space565 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %451, i32 0, i32 5
  %452 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space565, align 8
  %boxes566 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %452, i32 0, i32 0
  %453 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes566, align 8
  %arrayidx567 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %453, i64 %idxprom564
  store %struct.hypre_Box_struct* %arrayidx567, %struct.hypre_Box_struct** %A_data_box, align 8
  %454 = load i32, i32* %i, align 4
  %idxprom568 = sext i32 %454 to i64
  %455 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_space569 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %455, i32 0, i32 2
  %456 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space569, align 8
  %boxes570 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %456, i32 0, i32 0
  %457 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes570, align 8
  %arrayidx571 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %457, i64 %idxprom568
  store %struct.hypre_Box_struct* %arrayidx571, %struct.hypre_Box_struct** %b_data_box, align 8
  %458 = load i32, i32* %i, align 4
  %idxprom572 = sext i32 %458 to i64
  %459 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space573 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %459, i32 0, i32 2
  %460 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space573, align 8
  %boxes574 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %460, i32 0, i32 0
  %461 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes574, align 8
  %arrayidx575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %461, i64 %idxprom572
  store %struct.hypre_Box_struct* %arrayidx575, %struct.hypre_Box_struct** %x_data_box, align 8
  %462 = load i32, i32* %i, align 4
  %idxprom576 = sext i32 %462 to i64
  %463 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %data_space577 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %463, i32 0, i32 2
  %464 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space577, align 8
  %boxes578 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %464, i32 0, i32 0
  %465 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes578, align 8
  %arrayidx579 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %465, i64 %idxprom576
  store %struct.hypre_Box_struct* %arrayidx579, %struct.hypre_Box_struct** %t_data_box, align 8
  %466 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data580 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %466, i32 0, i32 3
  %467 = load double*, double** %data580, align 8
  %468 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %468 to i64
  %469 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_indices582 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %469, i32 0, i32 6
  %470 = load i32*, i32** %data_indices582, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %470, i64 %idxprom581
  %471 = load i32, i32* %arrayidx583, align 4
  %idx.ext584 = sext i32 %471 to i64
  %add.ptr585 = getelementptr inbounds double, double* %467, i64 %idx.ext584
  store double* %add.ptr585, double** %bp, align 8
  %472 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %data586 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %472, i32 0, i32 3
  %473 = load double*, double** %data586, align 8
  %474 = load i32, i32* %i, align 4
  %idxprom587 = sext i32 %474 to i64
  %475 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %data_indices588 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %475, i32 0, i32 6
  %476 = load i32*, i32** %data_indices588, align 8
  %arrayidx589 = getelementptr inbounds i32, i32* %476, i64 %idxprom587
  %477 = load i32, i32* %arrayidx589, align 4
  %idx.ext590 = sext i32 %477 to i64
  %add.ptr591 = getelementptr inbounds double, double* %473, i64 %idx.ext590
  store double* %add.ptr591, double** %tp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.592

for.cond.592:                                     ; preds = %for.inc.1953, %for.body.560
  %478 = load i32, i32* %j, align 4
  %479 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size593 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %479, i32 0, i32 1
  %480 = load i32, i32* %size593, align 4
  %cmp594 = icmp slt i32 %478, %480
  br i1 %cmp594, label %for.body.596, label %for.end.1955

for.body.596:                                     ; preds = %for.cond.592
  %481 = load i32, i32* %j, align 4
  %idxprom597 = sext i32 %481 to i64
  %482 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes598 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %482, i32 0, i32 0
  %483 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes598, align 8
  %arrayidx599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %483, i64 %idxprom597
  store %struct.hypre_Box_struct* %arrayidx599, %struct.hypre_Box_struct** %compute_box, align 8
  %484 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin600 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %484, i32 0, i32 0
  %arraydecay601 = getelementptr inbounds [3 x i32], [3 x i32]* %imin600, i32 0, i32 0
  store i32* %arraydecay601, i32** %start, align 8
  %485 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %486 = load i32*, i32** %stride, align 8
  %arraydecay602 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call603 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %485, i32* %486, i32* %arraydecay602)
  %487 = load i32*, i32** %start, align 8
  %arrayidx605 = getelementptr inbounds i32, i32* %487, i64 0
  %488 = load i32, i32* %arrayidx605, align 4
  %489 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %489, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x i32], [3 x i32]* %imin606, i32 0, i64 0
  %490 = load i32, i32* %arrayidx607, align 4
  %sub608 = sub nsw i32 %488, %490
  %491 = load i32*, i32** %start, align 8
  %arrayidx609 = getelementptr inbounds i32, i32* %491, i64 1
  %492 = load i32, i32* %arrayidx609, align 4
  %493 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin610 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %493, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [3 x i32], [3 x i32]* %imin610, i32 0, i64 1
  %494 = load i32, i32* %arrayidx611, align 4
  %sub612 = sub nsw i32 %492, %494
  %495 = load i32*, i32** %start, align 8
  %arrayidx613 = getelementptr inbounds i32, i32* %495, i64 2
  %496 = load i32, i32* %arrayidx613, align 4
  %497 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %497, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [3 x i32], [3 x i32]* %imin614, i32 0, i64 2
  %498 = load i32, i32* %arrayidx615, align 4
  %sub616 = sub nsw i32 %496, %498
  %499 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax617 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %499, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [3 x i32], [3 x i32]* %imax617, i32 0, i64 1
  %500 = load i32, i32* %arrayidx618, align 4
  %501 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin619 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %501, i32 0, i32 0
  %arrayidx620 = getelementptr inbounds [3 x i32], [3 x i32]* %imin619, i32 0, i64 1
  %502 = load i32, i32* %arrayidx620, align 4
  %sub621 = sub nsw i32 %500, %502
  %add622 = add nsw i32 %sub621, 1
  %cmp623 = icmp slt i32 0, %add622
  br i1 %cmp623, label %cond.true.625, label %cond.false.632

cond.true.625:                                    ; preds = %for.body.596
  %503 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax626 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %503, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [3 x i32], [3 x i32]* %imax626, i32 0, i64 1
  %504 = load i32, i32* %arrayidx627, align 4
  %505 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin628 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %505, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [3 x i32], [3 x i32]* %imin628, i32 0, i64 1
  %506 = load i32, i32* %arrayidx629, align 4
  %sub630 = sub nsw i32 %504, %506
  %add631 = add nsw i32 %sub630, 1
  br label %cond.end.633

cond.false.632:                                   ; preds = %for.body.596
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.632, %cond.true.625
  %cond634 = phi i32 [ %add631, %cond.true.625 ], [ 0, %cond.false.632 ]
  %mul635 = mul nsw i32 %sub616, %cond634
  %add636 = add nsw i32 %sub612, %mul635
  %507 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax637 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %507, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [3 x i32], [3 x i32]* %imax637, i32 0, i64 0
  %508 = load i32, i32* %arrayidx638, align 4
  %509 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin639 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %509, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [3 x i32], [3 x i32]* %imin639, i32 0, i64 0
  %510 = load i32, i32* %arrayidx640, align 4
  %sub641 = sub nsw i32 %508, %510
  %add642 = add nsw i32 %sub641, 1
  %cmp643 = icmp slt i32 0, %add642
  br i1 %cmp643, label %cond.true.645, label %cond.false.652

cond.true.645:                                    ; preds = %cond.end.633
  %511 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %511, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [3 x i32], [3 x i32]* %imax646, i32 0, i64 0
  %512 = load i32, i32* %arrayidx647, align 4
  %513 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin648 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %513, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [3 x i32], [3 x i32]* %imin648, i32 0, i64 0
  %514 = load i32, i32* %arrayidx649, align 4
  %sub650 = sub nsw i32 %512, %514
  %add651 = add nsw i32 %sub650, 1
  br label %cond.end.653

cond.false.652:                                   ; preds = %cond.end.633
  br label %cond.end.653

cond.end.653:                                     ; preds = %cond.false.652, %cond.true.645
  %cond654 = phi i32 [ %add651, %cond.true.645 ], [ 0, %cond.false.652 ]
  %mul655 = mul nsw i32 %add636, %cond654
  %add656 = add nsw i32 %sub608, %mul655
  store i32 %add656, i32* %hypre__i1start604, align 4
  %515 = load i32*, i32** %start, align 8
  %arrayidx658 = getelementptr inbounds i32, i32* %515, i64 0
  %516 = load i32, i32* %arrayidx658, align 4
  %517 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin659 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %517, i32 0, i32 0
  %arrayidx660 = getelementptr inbounds [3 x i32], [3 x i32]* %imin659, i32 0, i64 0
  %518 = load i32, i32* %arrayidx660, align 4
  %sub661 = sub nsw i32 %516, %518
  %519 = load i32*, i32** %start, align 8
  %arrayidx662 = getelementptr inbounds i32, i32* %519, i64 1
  %520 = load i32, i32* %arrayidx662, align 4
  %521 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin663 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %521, i32 0, i32 0
  %arrayidx664 = getelementptr inbounds [3 x i32], [3 x i32]* %imin663, i32 0, i64 1
  %522 = load i32, i32* %arrayidx664, align 4
  %sub665 = sub nsw i32 %520, %522
  %523 = load i32*, i32** %start, align 8
  %arrayidx666 = getelementptr inbounds i32, i32* %523, i64 2
  %524 = load i32, i32* %arrayidx666, align 4
  %525 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin667 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %525, i32 0, i32 0
  %arrayidx668 = getelementptr inbounds [3 x i32], [3 x i32]* %imin667, i32 0, i64 2
  %526 = load i32, i32* %arrayidx668, align 4
  %sub669 = sub nsw i32 %524, %526
  %527 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax670 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %527, i32 0, i32 1
  %arrayidx671 = getelementptr inbounds [3 x i32], [3 x i32]* %imax670, i32 0, i64 1
  %528 = load i32, i32* %arrayidx671, align 4
  %529 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %529, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [3 x i32], [3 x i32]* %imin672, i32 0, i64 1
  %530 = load i32, i32* %arrayidx673, align 4
  %sub674 = sub nsw i32 %528, %530
  %add675 = add nsw i32 %sub674, 1
  %cmp676 = icmp slt i32 0, %add675
  br i1 %cmp676, label %cond.true.678, label %cond.false.685

cond.true.678:                                    ; preds = %cond.end.653
  %531 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax679 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %531, i32 0, i32 1
  %arrayidx680 = getelementptr inbounds [3 x i32], [3 x i32]* %imax679, i32 0, i64 1
  %532 = load i32, i32* %arrayidx680, align 4
  %533 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin681 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %533, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [3 x i32], [3 x i32]* %imin681, i32 0, i64 1
  %534 = load i32, i32* %arrayidx682, align 4
  %sub683 = sub nsw i32 %532, %534
  %add684 = add nsw i32 %sub683, 1
  br label %cond.end.686

cond.false.685:                                   ; preds = %cond.end.653
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.685, %cond.true.678
  %cond687 = phi i32 [ %add684, %cond.true.678 ], [ 0, %cond.false.685 ]
  %mul688 = mul nsw i32 %sub669, %cond687
  %add689 = add nsw i32 %sub665, %mul688
  %535 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax690 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %535, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [3 x i32], [3 x i32]* %imax690, i32 0, i64 0
  %536 = load i32, i32* %arrayidx691, align 4
  %537 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin692 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %537, i32 0, i32 0
  %arrayidx693 = getelementptr inbounds [3 x i32], [3 x i32]* %imin692, i32 0, i64 0
  %538 = load i32, i32* %arrayidx693, align 4
  %sub694 = sub nsw i32 %536, %538
  %add695 = add nsw i32 %sub694, 1
  %cmp696 = icmp slt i32 0, %add695
  br i1 %cmp696, label %cond.true.698, label %cond.false.705

cond.true.698:                                    ; preds = %cond.end.686
  %539 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax699 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %539, i32 0, i32 1
  %arrayidx700 = getelementptr inbounds [3 x i32], [3 x i32]* %imax699, i32 0, i64 0
  %540 = load i32, i32* %arrayidx700, align 4
  %541 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin701 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %541, i32 0, i32 0
  %arrayidx702 = getelementptr inbounds [3 x i32], [3 x i32]* %imin701, i32 0, i64 0
  %542 = load i32, i32* %arrayidx702, align 4
  %sub703 = sub nsw i32 %540, %542
  %add704 = add nsw i32 %sub703, 1
  br label %cond.end.706

cond.false.705:                                   ; preds = %cond.end.686
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.705, %cond.true.698
  %cond707 = phi i32 [ %add704, %cond.true.698 ], [ 0, %cond.false.705 ]
  %mul708 = mul nsw i32 %add689, %cond707
  %add709 = add nsw i32 %sub661, %mul708
  store i32 %add709, i32* %hypre__i2start657, align 4
  %543 = load i32*, i32** %stride, align 8
  %arrayidx711 = getelementptr inbounds i32, i32* %543, i64 0
  %544 = load i32, i32* %arrayidx711, align 4
  store i32 %544, i32* %hypre__sx1710, align 4
  %545 = load i32*, i32** %stride, align 8
  %arrayidx713 = getelementptr inbounds i32, i32* %545, i64 1
  %546 = load i32, i32* %arrayidx713, align 4
  %547 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax714 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %547, i32 0, i32 1
  %arrayidx715 = getelementptr inbounds [3 x i32], [3 x i32]* %imax714, i32 0, i64 0
  %548 = load i32, i32* %arrayidx715, align 4
  %549 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin716 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %549, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [3 x i32], [3 x i32]* %imin716, i32 0, i64 0
  %550 = load i32, i32* %arrayidx717, align 4
  %sub718 = sub nsw i32 %548, %550
  %add719 = add nsw i32 %sub718, 1
  %cmp720 = icmp slt i32 0, %add719
  br i1 %cmp720, label %cond.true.722, label %cond.false.729

cond.true.722:                                    ; preds = %cond.end.706
  %551 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax723 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %551, i32 0, i32 1
  %arrayidx724 = getelementptr inbounds [3 x i32], [3 x i32]* %imax723, i32 0, i64 0
  %552 = load i32, i32* %arrayidx724, align 4
  %553 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin725 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %553, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [3 x i32], [3 x i32]* %imin725, i32 0, i64 0
  %554 = load i32, i32* %arrayidx726, align 4
  %sub727 = sub nsw i32 %552, %554
  %add728 = add nsw i32 %sub727, 1
  br label %cond.end.730

cond.false.729:                                   ; preds = %cond.end.706
  br label %cond.end.730

cond.end.730:                                     ; preds = %cond.false.729, %cond.true.722
  %cond731 = phi i32 [ %add728, %cond.true.722 ], [ 0, %cond.false.729 ]
  %mul732 = mul nsw i32 %546, %cond731
  store i32 %mul732, i32* %hypre__sy1712, align 4
  %555 = load i32*, i32** %stride, align 8
  %arrayidx734 = getelementptr inbounds i32, i32* %555, i64 2
  %556 = load i32, i32* %arrayidx734, align 4
  %557 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax735 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %557, i32 0, i32 1
  %arrayidx736 = getelementptr inbounds [3 x i32], [3 x i32]* %imax735, i32 0, i64 0
  %558 = load i32, i32* %arrayidx736, align 4
  %559 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin737 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %559, i32 0, i32 0
  %arrayidx738 = getelementptr inbounds [3 x i32], [3 x i32]* %imin737, i32 0, i64 0
  %560 = load i32, i32* %arrayidx738, align 4
  %sub739 = sub nsw i32 %558, %560
  %add740 = add nsw i32 %sub739, 1
  %cmp741 = icmp slt i32 0, %add740
  br i1 %cmp741, label %cond.true.743, label %cond.false.750

cond.true.743:                                    ; preds = %cond.end.730
  %561 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax744 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %561, i32 0, i32 1
  %arrayidx745 = getelementptr inbounds [3 x i32], [3 x i32]* %imax744, i32 0, i64 0
  %562 = load i32, i32* %arrayidx745, align 4
  %563 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin746 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %563, i32 0, i32 0
  %arrayidx747 = getelementptr inbounds [3 x i32], [3 x i32]* %imin746, i32 0, i64 0
  %564 = load i32, i32* %arrayidx747, align 4
  %sub748 = sub nsw i32 %562, %564
  %add749 = add nsw i32 %sub748, 1
  br label %cond.end.751

cond.false.750:                                   ; preds = %cond.end.730
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.750, %cond.true.743
  %cond752 = phi i32 [ %add749, %cond.true.743 ], [ 0, %cond.false.750 ]
  %mul753 = mul nsw i32 %556, %cond752
  %565 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax754 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %565, i32 0, i32 1
  %arrayidx755 = getelementptr inbounds [3 x i32], [3 x i32]* %imax754, i32 0, i64 1
  %566 = load i32, i32* %arrayidx755, align 4
  %567 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin756 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %567, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [3 x i32], [3 x i32]* %imin756, i32 0, i64 1
  %568 = load i32, i32* %arrayidx757, align 4
  %sub758 = sub nsw i32 %566, %568
  %add759 = add nsw i32 %sub758, 1
  %cmp760 = icmp slt i32 0, %add759
  br i1 %cmp760, label %cond.true.762, label %cond.false.769

cond.true.762:                                    ; preds = %cond.end.751
  %569 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax763 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %569, i32 0, i32 1
  %arrayidx764 = getelementptr inbounds [3 x i32], [3 x i32]* %imax763, i32 0, i64 1
  %570 = load i32, i32* %arrayidx764, align 4
  %571 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin765 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %571, i32 0, i32 0
  %arrayidx766 = getelementptr inbounds [3 x i32], [3 x i32]* %imin765, i32 0, i64 1
  %572 = load i32, i32* %arrayidx766, align 4
  %sub767 = sub nsw i32 %570, %572
  %add768 = add nsw i32 %sub767, 1
  br label %cond.end.770

cond.false.769:                                   ; preds = %cond.end.751
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.false.769, %cond.true.762
  %cond771 = phi i32 [ %add768, %cond.true.762 ], [ 0, %cond.false.769 ]
  %mul772 = mul nsw i32 %mul753, %cond771
  store i32 %mul772, i32* %hypre__sz1733, align 4
  %573 = load i32*, i32** %stride, align 8
  %arrayidx774 = getelementptr inbounds i32, i32* %573, i64 0
  %574 = load i32, i32* %arrayidx774, align 4
  store i32 %574, i32* %hypre__sx2773, align 4
  %575 = load i32*, i32** %stride, align 8
  %arrayidx776 = getelementptr inbounds i32, i32* %575, i64 1
  %576 = load i32, i32* %arrayidx776, align 4
  %577 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax777 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %577, i32 0, i32 1
  %arrayidx778 = getelementptr inbounds [3 x i32], [3 x i32]* %imax777, i32 0, i64 0
  %578 = load i32, i32* %arrayidx778, align 4
  %579 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin779 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %579, i32 0, i32 0
  %arrayidx780 = getelementptr inbounds [3 x i32], [3 x i32]* %imin779, i32 0, i64 0
  %580 = load i32, i32* %arrayidx780, align 4
  %sub781 = sub nsw i32 %578, %580
  %add782 = add nsw i32 %sub781, 1
  %cmp783 = icmp slt i32 0, %add782
  br i1 %cmp783, label %cond.true.785, label %cond.false.792

cond.true.785:                                    ; preds = %cond.end.770
  %581 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax786 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %581, i32 0, i32 1
  %arrayidx787 = getelementptr inbounds [3 x i32], [3 x i32]* %imax786, i32 0, i64 0
  %582 = load i32, i32* %arrayidx787, align 4
  %583 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin788 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %583, i32 0, i32 0
  %arrayidx789 = getelementptr inbounds [3 x i32], [3 x i32]* %imin788, i32 0, i64 0
  %584 = load i32, i32* %arrayidx789, align 4
  %sub790 = sub nsw i32 %582, %584
  %add791 = add nsw i32 %sub790, 1
  br label %cond.end.793

cond.false.792:                                   ; preds = %cond.end.770
  br label %cond.end.793

cond.end.793:                                     ; preds = %cond.false.792, %cond.true.785
  %cond794 = phi i32 [ %add791, %cond.true.785 ], [ 0, %cond.false.792 ]
  %mul795 = mul nsw i32 %576, %cond794
  store i32 %mul795, i32* %hypre__sy2775, align 4
  %585 = load i32*, i32** %stride, align 8
  %arrayidx797 = getelementptr inbounds i32, i32* %585, i64 2
  %586 = load i32, i32* %arrayidx797, align 4
  %587 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax798 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %587, i32 0, i32 1
  %arrayidx799 = getelementptr inbounds [3 x i32], [3 x i32]* %imax798, i32 0, i64 0
  %588 = load i32, i32* %arrayidx799, align 4
  %589 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin800 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %589, i32 0, i32 0
  %arrayidx801 = getelementptr inbounds [3 x i32], [3 x i32]* %imin800, i32 0, i64 0
  %590 = load i32, i32* %arrayidx801, align 4
  %sub802 = sub nsw i32 %588, %590
  %add803 = add nsw i32 %sub802, 1
  %cmp804 = icmp slt i32 0, %add803
  br i1 %cmp804, label %cond.true.806, label %cond.false.813

cond.true.806:                                    ; preds = %cond.end.793
  %591 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax807 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %591, i32 0, i32 1
  %arrayidx808 = getelementptr inbounds [3 x i32], [3 x i32]* %imax807, i32 0, i64 0
  %592 = load i32, i32* %arrayidx808, align 4
  %593 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin809 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %593, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [3 x i32], [3 x i32]* %imin809, i32 0, i64 0
  %594 = load i32, i32* %arrayidx810, align 4
  %sub811 = sub nsw i32 %592, %594
  %add812 = add nsw i32 %sub811, 1
  br label %cond.end.814

cond.false.813:                                   ; preds = %cond.end.793
  br label %cond.end.814

cond.end.814:                                     ; preds = %cond.false.813, %cond.true.806
  %cond815 = phi i32 [ %add812, %cond.true.806 ], [ 0, %cond.false.813 ]
  %mul816 = mul nsw i32 %586, %cond815
  %595 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax817 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %595, i32 0, i32 1
  %arrayidx818 = getelementptr inbounds [3 x i32], [3 x i32]* %imax817, i32 0, i64 1
  %596 = load i32, i32* %arrayidx818, align 4
  %597 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin819 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %597, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [3 x i32], [3 x i32]* %imin819, i32 0, i64 1
  %598 = load i32, i32* %arrayidx820, align 4
  %sub821 = sub nsw i32 %596, %598
  %add822 = add nsw i32 %sub821, 1
  %cmp823 = icmp slt i32 0, %add822
  br i1 %cmp823, label %cond.true.825, label %cond.false.832

cond.true.825:                                    ; preds = %cond.end.814
  %599 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax826 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %599, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [3 x i32], [3 x i32]* %imax826, i32 0, i64 1
  %600 = load i32, i32* %arrayidx827, align 4
  %601 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin828 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %601, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [3 x i32], [3 x i32]* %imin828, i32 0, i64 1
  %602 = load i32, i32* %arrayidx829, align 4
  %sub830 = sub nsw i32 %600, %602
  %add831 = add nsw i32 %sub830, 1
  br label %cond.end.833

cond.false.832:                                   ; preds = %cond.end.814
  br label %cond.end.833

cond.end.833:                                     ; preds = %cond.false.832, %cond.true.825
  %cond834 = phi i32 [ %add831, %cond.true.825 ], [ 0, %cond.false.832 ]
  %mul835 = mul nsw i32 %mul816, %cond834
  store i32 %mul835, i32* %hypre__sz2796, align 4
  %arrayidx837 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %603 = load i32, i32* %arrayidx837, align 4
  store i32 %603, i32* %hypre__nx836, align 4
  %arrayidx839 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %604 = load i32, i32* %arrayidx839, align 4
  store i32 %604, i32* %hypre__ny838, align 4
  %arrayidx841 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %605 = load i32, i32* %arrayidx841, align 4
  store i32 %605, i32* %hypre__nz840, align 4
  %606 = load i32, i32* %hypre__nx836, align 4
  store i32 %606, i32* %hypre__mx842, align 4
  %607 = load i32, i32* %hypre__ny838, align 4
  store i32 %607, i32* %hypre__my843, align 4
  %608 = load i32, i32* %hypre__nz840, align 4
  store i32 %608, i32* %hypre__mz844, align 4
  store i32 0, i32* %hypre__dir845, align 4
  %609 = load i32, i32* %hypre__nx836, align 4
  store i32 %609, i32* %hypre__max846, align 4
  %610 = load i32, i32* %hypre__ny838, align 4
  %611 = load i32, i32* %hypre__max846, align 4
  %cmp851 = icmp sgt i32 %610, %611
  br i1 %cmp851, label %if.then.853, label %if.end.854

if.then.853:                                      ; preds = %cond.end.833
  store i32 1, i32* %hypre__dir845, align 4
  %612 = load i32, i32* %hypre__ny838, align 4
  store i32 %612, i32* %hypre__max846, align 4
  br label %if.end.854

if.end.854:                                       ; preds = %if.then.853, %cond.end.833
  %613 = load i32, i32* %hypre__nz840, align 4
  %614 = load i32, i32* %hypre__max846, align 4
  %cmp855 = icmp sgt i32 %613, %614
  br i1 %cmp855, label %if.then.857, label %if.end.858

if.then.857:                                      ; preds = %if.end.854
  store i32 2, i32* %hypre__dir845, align 4
  %615 = load i32, i32* %hypre__nz840, align 4
  store i32 %615, i32* %hypre__max846, align 4
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.857, %if.end.854
  store i32 1, i32* %hypre__num_blocks850, align 4
  %616 = load i32, i32* %hypre__max846, align 4
  %617 = load i32, i32* %hypre__num_blocks850, align 4
  %cmp859 = icmp slt i32 %616, %617
  br i1 %cmp859, label %if.then.861, label %if.end.862

if.then.861:                                      ; preds = %if.end.858
  %618 = load i32, i32* %hypre__max846, align 4
  store i32 %618, i32* %hypre__num_blocks850, align 4
  br label %if.end.862

if.end.862:                                       ; preds = %if.then.861, %if.end.858
  %619 = load i32, i32* %hypre__num_blocks850, align 4
  %cmp863 = icmp sgt i32 %619, 0
  br i1 %cmp863, label %if.then.865, label %if.end.868

if.then.865:                                      ; preds = %if.end.862
  %620 = load i32, i32* %hypre__max846, align 4
  %621 = load i32, i32* %hypre__num_blocks850, align 4
  %div866 = sdiv i32 %620, %621
  store i32 %div866, i32* %hypre__div847, align 4
  %622 = load i32, i32* %hypre__max846, align 4
  %623 = load i32, i32* %hypre__num_blocks850, align 4
  %rem867 = srem i32 %622, %623
  store i32 %rem867, i32* %hypre__mod848, align 4
  br label %if.end.868

if.end.868:                                       ; preds = %if.then.865, %if.end.862
  store i32 0, i32* %hypre__block849, align 4
  br label %for.cond.869

for.cond.869:                                     ; preds = %for.inc.978, %if.end.868
  %624 = load i32, i32* %hypre__block849, align 4
  %625 = load i32, i32* %hypre__num_blocks850, align 4
  %cmp870 = icmp slt i32 %624, %625
  br i1 %cmp870, label %for.body.872, label %for.end.980

for.body.872:                                     ; preds = %for.cond.869
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %626 = load i32, i32* %hypre__mx842, align 4
  store i32 %626, i32* %hypre__nx836, align 4
  %627 = load i32, i32* %hypre__my843, align 4
  store i32 %627, i32* %hypre__ny838, align 4
  %628 = load i32, i32* %hypre__mz844, align 4
  store i32 %628, i32* %hypre__nz840, align 4
  %629 = load i32, i32* %hypre__num_blocks850, align 4
  %cmp873 = icmp sgt i32 %629, 1
  br i1 %cmp873, label %if.then.875, label %if.end.926

if.then.875:                                      ; preds = %for.body.872
  %630 = load i32, i32* %hypre__dir845, align 4
  %cmp876 = icmp eq i32 %630, 0
  br i1 %cmp876, label %if.then.878, label %if.else.891

if.then.878:                                      ; preds = %if.then.875
  %631 = load i32, i32* %hypre__block849, align 4
  %632 = load i32, i32* %hypre__div847, align 4
  %mul879 = mul nsw i32 %631, %632
  %633 = load i32, i32* %hypre__mod848, align 4
  %634 = load i32, i32* %hypre__block849, align 4
  %cmp880 = icmp slt i32 %633, %634
  br i1 %cmp880, label %cond.true.882, label %cond.false.883

cond.true.882:                                    ; preds = %if.then.878
  %635 = load i32, i32* %hypre__mod848, align 4
  br label %cond.end.884

cond.false.883:                                   ; preds = %if.then.878
  %636 = load i32, i32* %hypre__block849, align 4
  br label %cond.end.884

cond.end.884:                                     ; preds = %cond.false.883, %cond.true.882
  %cond885 = phi i32 [ %635, %cond.true.882 ], [ %636, %cond.false.883 ]
  %add886 = add nsw i32 %mul879, %cond885
  store i32 %add886, i32* %loopi, align 4
  %637 = load i32, i32* %hypre__div847, align 4
  %638 = load i32, i32* %hypre__mod848, align 4
  %639 = load i32, i32* %hypre__block849, align 4
  %cmp887 = icmp sgt i32 %638, %639
  %cond889 = select i1 %cmp887, i32 1, i32 0
  %add890 = add nsw i32 %637, %cond889
  store i32 %add890, i32* %hypre__nx836, align 4
  br label %if.end.925

if.else.891:                                      ; preds = %if.then.875
  %640 = load i32, i32* %hypre__dir845, align 4
  %cmp892 = icmp eq i32 %640, 1
  br i1 %cmp892, label %if.then.894, label %if.else.907

if.then.894:                                      ; preds = %if.else.891
  %641 = load i32, i32* %hypre__block849, align 4
  %642 = load i32, i32* %hypre__div847, align 4
  %mul895 = mul nsw i32 %641, %642
  %643 = load i32, i32* %hypre__mod848, align 4
  %644 = load i32, i32* %hypre__block849, align 4
  %cmp896 = icmp slt i32 %643, %644
  br i1 %cmp896, label %cond.true.898, label %cond.false.899

cond.true.898:                                    ; preds = %if.then.894
  %645 = load i32, i32* %hypre__mod848, align 4
  br label %cond.end.900

cond.false.899:                                   ; preds = %if.then.894
  %646 = load i32, i32* %hypre__block849, align 4
  br label %cond.end.900

cond.end.900:                                     ; preds = %cond.false.899, %cond.true.898
  %cond901 = phi i32 [ %645, %cond.true.898 ], [ %646, %cond.false.899 ]
  %add902 = add nsw i32 %mul895, %cond901
  store i32 %add902, i32* %loopj, align 4
  %647 = load i32, i32* %hypre__div847, align 4
  %648 = load i32, i32* %hypre__mod848, align 4
  %649 = load i32, i32* %hypre__block849, align 4
  %cmp903 = icmp sgt i32 %648, %649
  %cond905 = select i1 %cmp903, i32 1, i32 0
  %add906 = add nsw i32 %647, %cond905
  store i32 %add906, i32* %hypre__ny838, align 4
  br label %if.end.924

if.else.907:                                      ; preds = %if.else.891
  %650 = load i32, i32* %hypre__dir845, align 4
  %cmp908 = icmp eq i32 %650, 2
  br i1 %cmp908, label %if.then.910, label %if.end.923

if.then.910:                                      ; preds = %if.else.907
  %651 = load i32, i32* %hypre__block849, align 4
  %652 = load i32, i32* %hypre__div847, align 4
  %mul911 = mul nsw i32 %651, %652
  %653 = load i32, i32* %hypre__mod848, align 4
  %654 = load i32, i32* %hypre__block849, align 4
  %cmp912 = icmp slt i32 %653, %654
  br i1 %cmp912, label %cond.true.914, label %cond.false.915

cond.true.914:                                    ; preds = %if.then.910
  %655 = load i32, i32* %hypre__mod848, align 4
  br label %cond.end.916

cond.false.915:                                   ; preds = %if.then.910
  %656 = load i32, i32* %hypre__block849, align 4
  br label %cond.end.916

cond.end.916:                                     ; preds = %cond.false.915, %cond.true.914
  %cond917 = phi i32 [ %655, %cond.true.914 ], [ %656, %cond.false.915 ]
  %add918 = add nsw i32 %mul911, %cond917
  store i32 %add918, i32* %loopk, align 4
  %657 = load i32, i32* %hypre__div847, align 4
  %658 = load i32, i32* %hypre__mod848, align 4
  %659 = load i32, i32* %hypre__block849, align 4
  %cmp919 = icmp sgt i32 %658, %659
  %cond921 = select i1 %cmp919, i32 1, i32 0
  %add922 = add nsw i32 %657, %cond921
  store i32 %add922, i32* %hypre__nz840, align 4
  br label %if.end.923

if.end.923:                                       ; preds = %cond.end.916, %if.else.907
  br label %if.end.924

if.end.924:                                       ; preds = %if.end.923, %cond.end.900
  br label %if.end.925

if.end.925:                                       ; preds = %if.end.924, %cond.end.884
  br label %if.end.926

if.end.926:                                       ; preds = %if.end.925, %for.body.872
  %660 = load i32, i32* %hypre__i1start604, align 4
  %661 = load i32, i32* %loopi, align 4
  %662 = load i32, i32* %hypre__sx1710, align 4
  %mul927 = mul nsw i32 %661, %662
  %add928 = add nsw i32 %660, %mul927
  %663 = load i32, i32* %loopj, align 4
  %664 = load i32, i32* %hypre__sy1712, align 4
  %mul929 = mul nsw i32 %663, %664
  %add930 = add nsw i32 %add928, %mul929
  %665 = load i32, i32* %loopk, align 4
  %666 = load i32, i32* %hypre__sz1733, align 4
  %mul931 = mul nsw i32 %665, %666
  %add932 = add nsw i32 %add930, %mul931
  store i32 %add932, i32* %bi, align 4
  %667 = load i32, i32* %hypre__i2start657, align 4
  %668 = load i32, i32* %loopi, align 4
  %669 = load i32, i32* %hypre__sx2773, align 4
  %mul933 = mul nsw i32 %668, %669
  %add934 = add nsw i32 %667, %mul933
  %670 = load i32, i32* %loopj, align 4
  %671 = load i32, i32* %hypre__sy2775, align 4
  %mul935 = mul nsw i32 %670, %671
  %add936 = add nsw i32 %add934, %mul935
  %672 = load i32, i32* %loopk, align 4
  %673 = load i32, i32* %hypre__sz2796, align 4
  %mul937 = mul nsw i32 %672, %673
  %add938 = add nsw i32 %add936, %mul937
  store i32 %add938, i32* %ti, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.939

for.cond.939:                                     ; preds = %for.inc.975, %if.end.926
  %674 = load i32, i32* %loopk, align 4
  %675 = load i32, i32* %hypre__nz840, align 4
  %cmp940 = icmp slt i32 %674, %675
  br i1 %cmp940, label %for.body.942, label %for.end.977

for.body.942:                                     ; preds = %for.cond.939
  store i32 0, i32* %loopj, align 4
  br label %for.cond.943

for.cond.943:                                     ; preds = %for.inc.966, %for.body.942
  %676 = load i32, i32* %loopj, align 4
  %677 = load i32, i32* %hypre__ny838, align 4
  %cmp944 = icmp slt i32 %676, %677
  br i1 %cmp944, label %for.body.946, label %for.end.968

for.body.946:                                     ; preds = %for.cond.943
  store i32 0, i32* %loopi, align 4
  br label %for.cond.947

for.cond.947:                                     ; preds = %for.inc.957, %for.body.946
  %678 = load i32, i32* %loopi, align 4
  %679 = load i32, i32* %hypre__nx836, align 4
  %cmp948 = icmp slt i32 %678, %679
  br i1 %cmp948, label %for.body.950, label %for.end.959

for.body.950:                                     ; preds = %for.cond.947
  %680 = load i32, i32* %bi, align 4
  %idxprom951 = sext i32 %680 to i64
  %681 = load double*, double** %bp, align 8
  %arrayidx952 = getelementptr inbounds double, double* %681, i64 %idxprom951
  %682 = load double, double* %arrayidx952, align 8
  %683 = load i32, i32* %ti, align 4
  %idxprom953 = sext i32 %683 to i64
  %684 = load double*, double** %tp, align 8
  %arrayidx954 = getelementptr inbounds double, double* %684, i64 %idxprom953
  store double %682, double* %arrayidx954, align 8
  %685 = load i32, i32* %hypre__sx1710, align 4
  %686 = load i32, i32* %bi, align 4
  %add955 = add nsw i32 %686, %685
  store i32 %add955, i32* %bi, align 4
  %687 = load i32, i32* %hypre__sx2773, align 4
  %688 = load i32, i32* %ti, align 4
  %add956 = add nsw i32 %688, %687
  store i32 %add956, i32* %ti, align 4
  br label %for.inc.957

for.inc.957:                                      ; preds = %for.body.950
  %689 = load i32, i32* %loopi, align 4
  %inc958 = add nsw i32 %689, 1
  store i32 %inc958, i32* %loopi, align 4
  br label %for.cond.947

for.end.959:                                      ; preds = %for.cond.947
  %690 = load i32, i32* %hypre__sy1712, align 4
  %691 = load i32, i32* %hypre__nx836, align 4
  %692 = load i32, i32* %hypre__sx1710, align 4
  %mul960 = mul nsw i32 %691, %692
  %sub961 = sub nsw i32 %690, %mul960
  %693 = load i32, i32* %bi, align 4
  %add962 = add nsw i32 %693, %sub961
  store i32 %add962, i32* %bi, align 4
  %694 = load i32, i32* %hypre__sy2775, align 4
  %695 = load i32, i32* %hypre__nx836, align 4
  %696 = load i32, i32* %hypre__sx2773, align 4
  %mul963 = mul nsw i32 %695, %696
  %sub964 = sub nsw i32 %694, %mul963
  %697 = load i32, i32* %ti, align 4
  %add965 = add nsw i32 %697, %sub964
  store i32 %add965, i32* %ti, align 4
  br label %for.inc.966

for.inc.966:                                      ; preds = %for.end.959
  %698 = load i32, i32* %loopj, align 4
  %inc967 = add nsw i32 %698, 1
  store i32 %inc967, i32* %loopj, align 4
  br label %for.cond.943

for.end.968:                                      ; preds = %for.cond.943
  %699 = load i32, i32* %hypre__sz1733, align 4
  %700 = load i32, i32* %hypre__ny838, align 4
  %701 = load i32, i32* %hypre__sy1712, align 4
  %mul969 = mul nsw i32 %700, %701
  %sub970 = sub nsw i32 %699, %mul969
  %702 = load i32, i32* %bi, align 4
  %add971 = add nsw i32 %702, %sub970
  store i32 %add971, i32* %bi, align 4
  %703 = load i32, i32* %hypre__sz2796, align 4
  %704 = load i32, i32* %hypre__ny838, align 4
  %705 = load i32, i32* %hypre__sy2775, align 4
  %mul972 = mul nsw i32 %704, %705
  %sub973 = sub nsw i32 %703, %mul972
  %706 = load i32, i32* %ti, align 4
  %add974 = add nsw i32 %706, %sub973
  store i32 %add974, i32* %ti, align 4
  br label %for.inc.975

for.inc.975:                                      ; preds = %for.end.968
  %707 = load i32, i32* %loopk, align 4
  %inc976 = add nsw i32 %707, 1
  store i32 %inc976, i32* %loopk, align 4
  br label %for.cond.939

for.end.977:                                      ; preds = %for.cond.939
  br label %for.inc.978

for.inc.978:                                      ; preds = %for.end.977
  %708 = load i32, i32* %hypre__block849, align 4
  %inc979 = add nsw i32 %708, 1
  store i32 %inc979, i32* %hypre__block849, align 4
  br label %for.cond.869

for.end.980:                                      ; preds = %for.cond.869
  store i32 0, i32* %si, align 4
  br label %for.cond.981

for.cond.981:                                     ; preds = %for.inc.1564, %for.end.980
  %709 = load i32, i32* %si, align 4
  %710 = load i32, i32* %stencil_size, align 4
  %cmp982 = icmp slt i32 %709, %710
  br i1 %cmp982, label %for.body.984, label %for.end.1566

for.body.984:                                     ; preds = %for.cond.981
  %711 = load i32, i32* %si, align 4
  %712 = load i32, i32* %diag_rank, align 4
  %cmp985 = icmp ne i32 %711, %712
  br i1 %cmp985, label %if.then.987, label %if.end.1563

if.then.987:                                      ; preds = %for.body.984
  %713 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data988 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %713, i32 0, i32 6
  %714 = load double*, double** %data988, align 8
  %715 = load i32, i32* %si, align 4
  %idxprom989 = sext i32 %715 to i64
  %716 = load i32, i32* %i, align 4
  %idxprom990 = sext i32 %716 to i64
  %717 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices991 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %717, i32 0, i32 9
  %718 = load i32**, i32*** %data_indices991, align 8
  %arrayidx992 = getelementptr inbounds i32*, i32** %718, i64 %idxprom990
  %719 = load i32*, i32** %arrayidx992, align 8
  %arrayidx993 = getelementptr inbounds i32, i32* %719, i64 %idxprom989
  %720 = load i32, i32* %arrayidx993, align 4
  %idx.ext994 = sext i32 %720 to i64
  %add.ptr995 = getelementptr inbounds double, double* %714, i64 %idx.ext994
  store double* %add.ptr995, double** %Ap, align 8
  %721 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data996 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %721, i32 0, i32 3
  %722 = load double*, double** %data996, align 8
  %723 = load i32, i32* %i, align 4
  %idxprom997 = sext i32 %723 to i64
  %724 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices998 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %724, i32 0, i32 6
  %725 = load i32*, i32** %data_indices998, align 8
  %arrayidx999 = getelementptr inbounds i32, i32* %725, i64 %idxprom997
  %726 = load i32, i32* %arrayidx999, align 4
  %idx.ext1000 = sext i32 %726 to i64
  %add.ptr1001 = getelementptr inbounds double, double* %722, i64 %idx.ext1000
  %727 = load i32, i32* %si, align 4
  %idxprom1002 = sext i32 %727 to i64
  %728 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1003 = getelementptr inbounds [3 x i32], [3 x i32]* %728, i64 %idxprom1002
  %arrayidx1004 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1003, i32 0, i64 0
  %729 = load i32, i32* %arrayidx1004, align 4
  %730 = load i32, i32* %si, align 4
  %idxprom1005 = sext i32 %730 to i64
  %731 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1006 = getelementptr inbounds [3 x i32], [3 x i32]* %731, i64 %idxprom1005
  %arrayidx1007 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1006, i32 0, i64 1
  %732 = load i32, i32* %arrayidx1007, align 4
  %733 = load i32, i32* %si, align 4
  %idxprom1008 = sext i32 %733 to i64
  %734 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1009 = getelementptr inbounds [3 x i32], [3 x i32]* %734, i64 %idxprom1008
  %arrayidx1010 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1009, i32 0, i64 2
  %735 = load i32, i32* %arrayidx1010, align 4
  %736 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1011 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %736, i32 0, i32 1
  %arrayidx1012 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1011, i32 0, i64 1
  %737 = load i32, i32* %arrayidx1012, align 4
  %738 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1013 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %738, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1013, i32 0, i64 1
  %739 = load i32, i32* %arrayidx1014, align 4
  %sub1015 = sub nsw i32 %737, %739
  %add1016 = add nsw i32 %sub1015, 1
  %cmp1017 = icmp slt i32 0, %add1016
  br i1 %cmp1017, label %cond.true.1019, label %cond.false.1026

cond.true.1019:                                   ; preds = %if.then.987
  %740 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1020 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %740, i32 0, i32 1
  %arrayidx1021 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1020, i32 0, i64 1
  %741 = load i32, i32* %arrayidx1021, align 4
  %742 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1022 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %742, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1022, i32 0, i64 1
  %743 = load i32, i32* %arrayidx1023, align 4
  %sub1024 = sub nsw i32 %741, %743
  %add1025 = add nsw i32 %sub1024, 1
  br label %cond.end.1027

cond.false.1026:                                  ; preds = %if.then.987
  br label %cond.end.1027

cond.end.1027:                                    ; preds = %cond.false.1026, %cond.true.1019
  %cond1028 = phi i32 [ %add1025, %cond.true.1019 ], [ 0, %cond.false.1026 ]
  %mul1029 = mul nsw i32 %735, %cond1028
  %add1030 = add nsw i32 %732, %mul1029
  %744 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1031 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %744, i32 0, i32 1
  %arrayidx1032 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1031, i32 0, i64 0
  %745 = load i32, i32* %arrayidx1032, align 4
  %746 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1033 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %746, i32 0, i32 0
  %arrayidx1034 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1033, i32 0, i64 0
  %747 = load i32, i32* %arrayidx1034, align 4
  %sub1035 = sub nsw i32 %745, %747
  %add1036 = add nsw i32 %sub1035, 1
  %cmp1037 = icmp slt i32 0, %add1036
  br i1 %cmp1037, label %cond.true.1039, label %cond.false.1046

cond.true.1039:                                   ; preds = %cond.end.1027
  %748 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1040 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %748, i32 0, i32 1
  %arrayidx1041 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1040, i32 0, i64 0
  %749 = load i32, i32* %arrayidx1041, align 4
  %750 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1042 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %750, i32 0, i32 0
  %arrayidx1043 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1042, i32 0, i64 0
  %751 = load i32, i32* %arrayidx1043, align 4
  %sub1044 = sub nsw i32 %749, %751
  %add1045 = add nsw i32 %sub1044, 1
  br label %cond.end.1047

cond.false.1046:                                  ; preds = %cond.end.1027
  br label %cond.end.1047

cond.end.1047:                                    ; preds = %cond.false.1046, %cond.true.1039
  %cond1048 = phi i32 [ %add1045, %cond.true.1039 ], [ 0, %cond.false.1046 ]
  %mul1049 = mul nsw i32 %add1030, %cond1048
  %add1050 = add nsw i32 %729, %mul1049
  %idx.ext1051 = sext i32 %add1050 to i64
  %add.ptr1052 = getelementptr inbounds double, double* %add.ptr1001, i64 %idx.ext1051
  store double* %add.ptr1052, double** %xp, align 8
  %752 = load i32*, i32** %start, align 8
  %arrayidx1054 = getelementptr inbounds i32, i32* %752, i64 0
  %753 = load i32, i32* %arrayidx1054, align 4
  %754 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1055 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %754, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1055, i32 0, i64 0
  %755 = load i32, i32* %arrayidx1056, align 4
  %sub1057 = sub nsw i32 %753, %755
  %756 = load i32*, i32** %start, align 8
  %arrayidx1058 = getelementptr inbounds i32, i32* %756, i64 1
  %757 = load i32, i32* %arrayidx1058, align 4
  %758 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1059 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %758, i32 0, i32 0
  %arrayidx1060 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1059, i32 0, i64 1
  %759 = load i32, i32* %arrayidx1060, align 4
  %sub1061 = sub nsw i32 %757, %759
  %760 = load i32*, i32** %start, align 8
  %arrayidx1062 = getelementptr inbounds i32, i32* %760, i64 2
  %761 = load i32, i32* %arrayidx1062, align 4
  %762 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1063 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %762, i32 0, i32 0
  %arrayidx1064 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1063, i32 0, i64 2
  %763 = load i32, i32* %arrayidx1064, align 4
  %sub1065 = sub nsw i32 %761, %763
  %764 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1066 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %764, i32 0, i32 1
  %arrayidx1067 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1066, i32 0, i64 1
  %765 = load i32, i32* %arrayidx1067, align 4
  %766 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1068 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %766, i32 0, i32 0
  %arrayidx1069 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1068, i32 0, i64 1
  %767 = load i32, i32* %arrayidx1069, align 4
  %sub1070 = sub nsw i32 %765, %767
  %add1071 = add nsw i32 %sub1070, 1
  %cmp1072 = icmp slt i32 0, %add1071
  br i1 %cmp1072, label %cond.true.1074, label %cond.false.1081

cond.true.1074:                                   ; preds = %cond.end.1047
  %768 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1075 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %768, i32 0, i32 1
  %arrayidx1076 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1075, i32 0, i64 1
  %769 = load i32, i32* %arrayidx1076, align 4
  %770 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1077 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %770, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1077, i32 0, i64 1
  %771 = load i32, i32* %arrayidx1078, align 4
  %sub1079 = sub nsw i32 %769, %771
  %add1080 = add nsw i32 %sub1079, 1
  br label %cond.end.1082

cond.false.1081:                                  ; preds = %cond.end.1047
  br label %cond.end.1082

cond.end.1082:                                    ; preds = %cond.false.1081, %cond.true.1074
  %cond1083 = phi i32 [ %add1080, %cond.true.1074 ], [ 0, %cond.false.1081 ]
  %mul1084 = mul nsw i32 %sub1065, %cond1083
  %add1085 = add nsw i32 %sub1061, %mul1084
  %772 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1086 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %772, i32 0, i32 1
  %arrayidx1087 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1086, i32 0, i64 0
  %773 = load i32, i32* %arrayidx1087, align 4
  %774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1088 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %774, i32 0, i32 0
  %arrayidx1089 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1088, i32 0, i64 0
  %775 = load i32, i32* %arrayidx1089, align 4
  %sub1090 = sub nsw i32 %773, %775
  %add1091 = add nsw i32 %sub1090, 1
  %cmp1092 = icmp slt i32 0, %add1091
  br i1 %cmp1092, label %cond.true.1094, label %cond.false.1101

cond.true.1094:                                   ; preds = %cond.end.1082
  %776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1095 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %776, i32 0, i32 1
  %arrayidx1096 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1095, i32 0, i64 0
  %777 = load i32, i32* %arrayidx1096, align 4
  %778 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1097 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %778, i32 0, i32 0
  %arrayidx1098 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1097, i32 0, i64 0
  %779 = load i32, i32* %arrayidx1098, align 4
  %sub1099 = sub nsw i32 %777, %779
  %add1100 = add nsw i32 %sub1099, 1
  br label %cond.end.1102

cond.false.1101:                                  ; preds = %cond.end.1082
  br label %cond.end.1102

cond.end.1102:                                    ; preds = %cond.false.1101, %cond.true.1094
  %cond1103 = phi i32 [ %add1100, %cond.true.1094 ], [ 0, %cond.false.1101 ]
  %mul1104 = mul nsw i32 %add1085, %cond1103
  %add1105 = add nsw i32 %sub1057, %mul1104
  store i32 %add1105, i32* %hypre__i1start1053, align 4
  %780 = load i32*, i32** %start, align 8
  %arrayidx1107 = getelementptr inbounds i32, i32* %780, i64 0
  %781 = load i32, i32* %arrayidx1107, align 4
  %782 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %782, i32 0, i32 0
  %arrayidx1109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1108, i32 0, i64 0
  %783 = load i32, i32* %arrayidx1109, align 4
  %sub1110 = sub nsw i32 %781, %783
  %784 = load i32*, i32** %start, align 8
  %arrayidx1111 = getelementptr inbounds i32, i32* %784, i64 1
  %785 = load i32, i32* %arrayidx1111, align 4
  %786 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %786, i32 0, i32 0
  %arrayidx1113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1112, i32 0, i64 1
  %787 = load i32, i32* %arrayidx1113, align 4
  %sub1114 = sub nsw i32 %785, %787
  %788 = load i32*, i32** %start, align 8
  %arrayidx1115 = getelementptr inbounds i32, i32* %788, i64 2
  %789 = load i32, i32* %arrayidx1115, align 4
  %790 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %790, i32 0, i32 0
  %arrayidx1117 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1116, i32 0, i64 2
  %791 = load i32, i32* %arrayidx1117, align 4
  %sub1118 = sub nsw i32 %789, %791
  %792 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %792, i32 0, i32 1
  %arrayidx1120 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1119, i32 0, i64 1
  %793 = load i32, i32* %arrayidx1120, align 4
  %794 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %794, i32 0, i32 0
  %arrayidx1122 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1121, i32 0, i64 1
  %795 = load i32, i32* %arrayidx1122, align 4
  %sub1123 = sub nsw i32 %793, %795
  %add1124 = add nsw i32 %sub1123, 1
  %cmp1125 = icmp slt i32 0, %add1124
  br i1 %cmp1125, label %cond.true.1127, label %cond.false.1134

cond.true.1127:                                   ; preds = %cond.end.1102
  %796 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %796, i32 0, i32 1
  %arrayidx1129 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1128, i32 0, i64 1
  %797 = load i32, i32* %arrayidx1129, align 4
  %798 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %798, i32 0, i32 0
  %arrayidx1131 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1130, i32 0, i64 1
  %799 = load i32, i32* %arrayidx1131, align 4
  %sub1132 = sub nsw i32 %797, %799
  %add1133 = add nsw i32 %sub1132, 1
  br label %cond.end.1135

cond.false.1134:                                  ; preds = %cond.end.1102
  br label %cond.end.1135

cond.end.1135:                                    ; preds = %cond.false.1134, %cond.true.1127
  %cond1136 = phi i32 [ %add1133, %cond.true.1127 ], [ 0, %cond.false.1134 ]
  %mul1137 = mul nsw i32 %sub1118, %cond1136
  %add1138 = add nsw i32 %sub1114, %mul1137
  %800 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1139 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %800, i32 0, i32 1
  %arrayidx1140 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1139, i32 0, i64 0
  %801 = load i32, i32* %arrayidx1140, align 4
  %802 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1141 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %802, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1141, i32 0, i64 0
  %803 = load i32, i32* %arrayidx1142, align 4
  %sub1143 = sub nsw i32 %801, %803
  %add1144 = add nsw i32 %sub1143, 1
  %cmp1145 = icmp slt i32 0, %add1144
  br i1 %cmp1145, label %cond.true.1147, label %cond.false.1154

cond.true.1147:                                   ; preds = %cond.end.1135
  %804 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %804, i32 0, i32 1
  %arrayidx1149 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1148, i32 0, i64 0
  %805 = load i32, i32* %arrayidx1149, align 4
  %806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %806, i32 0, i32 0
  %arrayidx1151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1150, i32 0, i64 0
  %807 = load i32, i32* %arrayidx1151, align 4
  %sub1152 = sub nsw i32 %805, %807
  %add1153 = add nsw i32 %sub1152, 1
  br label %cond.end.1155

cond.false.1154:                                  ; preds = %cond.end.1135
  br label %cond.end.1155

cond.end.1155:                                    ; preds = %cond.false.1154, %cond.true.1147
  %cond1156 = phi i32 [ %add1153, %cond.true.1147 ], [ 0, %cond.false.1154 ]
  %mul1157 = mul nsw i32 %add1138, %cond1156
  %add1158 = add nsw i32 %sub1110, %mul1157
  store i32 %add1158, i32* %hypre__i2start1106, align 4
  %808 = load i32*, i32** %start, align 8
  %arrayidx1160 = getelementptr inbounds i32, i32* %808, i64 0
  %809 = load i32, i32* %arrayidx1160, align 4
  %810 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %810, i32 0, i32 0
  %arrayidx1162 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1161, i32 0, i64 0
  %811 = load i32, i32* %arrayidx1162, align 4
  %sub1163 = sub nsw i32 %809, %811
  %812 = load i32*, i32** %start, align 8
  %arrayidx1164 = getelementptr inbounds i32, i32* %812, i64 1
  %813 = load i32, i32* %arrayidx1164, align 4
  %814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1165 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %814, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1165, i32 0, i64 1
  %815 = load i32, i32* %arrayidx1166, align 4
  %sub1167 = sub nsw i32 %813, %815
  %816 = load i32*, i32** %start, align 8
  %arrayidx1168 = getelementptr inbounds i32, i32* %816, i64 2
  %817 = load i32, i32* %arrayidx1168, align 4
  %818 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1169 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %818, i32 0, i32 0
  %arrayidx1170 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1169, i32 0, i64 2
  %819 = load i32, i32* %arrayidx1170, align 4
  %sub1171 = sub nsw i32 %817, %819
  %820 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %820, i32 0, i32 1
  %arrayidx1173 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1172, i32 0, i64 1
  %821 = load i32, i32* %arrayidx1173, align 4
  %822 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1174 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %822, i32 0, i32 0
  %arrayidx1175 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1174, i32 0, i64 1
  %823 = load i32, i32* %arrayidx1175, align 4
  %sub1176 = sub nsw i32 %821, %823
  %add1177 = add nsw i32 %sub1176, 1
  %cmp1178 = icmp slt i32 0, %add1177
  br i1 %cmp1178, label %cond.true.1180, label %cond.false.1187

cond.true.1180:                                   ; preds = %cond.end.1155
  %824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %824, i32 0, i32 1
  %arrayidx1182 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1181, i32 0, i64 1
  %825 = load i32, i32* %arrayidx1182, align 4
  %826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %826, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1183, i32 0, i64 1
  %827 = load i32, i32* %arrayidx1184, align 4
  %sub1185 = sub nsw i32 %825, %827
  %add1186 = add nsw i32 %sub1185, 1
  br label %cond.end.1188

cond.false.1187:                                  ; preds = %cond.end.1155
  br label %cond.end.1188

cond.end.1188:                                    ; preds = %cond.false.1187, %cond.true.1180
  %cond1189 = phi i32 [ %add1186, %cond.true.1180 ], [ 0, %cond.false.1187 ]
  %mul1190 = mul nsw i32 %sub1171, %cond1189
  %add1191 = add nsw i32 %sub1167, %mul1190
  %828 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %828, i32 0, i32 1
  %arrayidx1193 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1192, i32 0, i64 0
  %829 = load i32, i32* %arrayidx1193, align 4
  %830 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %830, i32 0, i32 0
  %arrayidx1195 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1194, i32 0, i64 0
  %831 = load i32, i32* %arrayidx1195, align 4
  %sub1196 = sub nsw i32 %829, %831
  %add1197 = add nsw i32 %sub1196, 1
  %cmp1198 = icmp slt i32 0, %add1197
  br i1 %cmp1198, label %cond.true.1200, label %cond.false.1207

cond.true.1200:                                   ; preds = %cond.end.1188
  %832 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %832, i32 0, i32 1
  %arrayidx1202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1201, i32 0, i64 0
  %833 = load i32, i32* %arrayidx1202, align 4
  %834 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %834, i32 0, i32 0
  %arrayidx1204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1203, i32 0, i64 0
  %835 = load i32, i32* %arrayidx1204, align 4
  %sub1205 = sub nsw i32 %833, %835
  %add1206 = add nsw i32 %sub1205, 1
  br label %cond.end.1208

cond.false.1207:                                  ; preds = %cond.end.1188
  br label %cond.end.1208

cond.end.1208:                                    ; preds = %cond.false.1207, %cond.true.1200
  %cond1209 = phi i32 [ %add1206, %cond.true.1200 ], [ 0, %cond.false.1207 ]
  %mul1210 = mul nsw i32 %add1191, %cond1209
  %add1211 = add nsw i32 %sub1163, %mul1210
  store i32 %add1211, i32* %hypre__i3start1159, align 4
  %836 = load i32*, i32** %stride, align 8
  %arrayidx1213 = getelementptr inbounds i32, i32* %836, i64 0
  %837 = load i32, i32* %arrayidx1213, align 4
  store i32 %837, i32* %hypre__sx11212, align 4
  %838 = load i32*, i32** %stride, align 8
  %arrayidx1215 = getelementptr inbounds i32, i32* %838, i64 1
  %839 = load i32, i32* %arrayidx1215, align 4
  %840 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %840, i32 0, i32 1
  %arrayidx1217 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1216, i32 0, i64 0
  %841 = load i32, i32* %arrayidx1217, align 4
  %842 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %842, i32 0, i32 0
  %arrayidx1219 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1218, i32 0, i64 0
  %843 = load i32, i32* %arrayidx1219, align 4
  %sub1220 = sub nsw i32 %841, %843
  %add1221 = add nsw i32 %sub1220, 1
  %cmp1222 = icmp slt i32 0, %add1221
  br i1 %cmp1222, label %cond.true.1224, label %cond.false.1231

cond.true.1224:                                   ; preds = %cond.end.1208
  %844 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %844, i32 0, i32 1
  %arrayidx1226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1225, i32 0, i64 0
  %845 = load i32, i32* %arrayidx1226, align 4
  %846 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %846, i32 0, i32 0
  %arrayidx1228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1227, i32 0, i64 0
  %847 = load i32, i32* %arrayidx1228, align 4
  %sub1229 = sub nsw i32 %845, %847
  %add1230 = add nsw i32 %sub1229, 1
  br label %cond.end.1232

cond.false.1231:                                  ; preds = %cond.end.1208
  br label %cond.end.1232

cond.end.1232:                                    ; preds = %cond.false.1231, %cond.true.1224
  %cond1233 = phi i32 [ %add1230, %cond.true.1224 ], [ 0, %cond.false.1231 ]
  %mul1234 = mul nsw i32 %839, %cond1233
  store i32 %mul1234, i32* %hypre__sy11214, align 4
  %848 = load i32*, i32** %stride, align 8
  %arrayidx1236 = getelementptr inbounds i32, i32* %848, i64 2
  %849 = load i32, i32* %arrayidx1236, align 4
  %850 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1237 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %850, i32 0, i32 1
  %arrayidx1238 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1237, i32 0, i64 0
  %851 = load i32, i32* %arrayidx1238, align 4
  %852 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %852, i32 0, i32 0
  %arrayidx1240 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1239, i32 0, i64 0
  %853 = load i32, i32* %arrayidx1240, align 4
  %sub1241 = sub nsw i32 %851, %853
  %add1242 = add nsw i32 %sub1241, 1
  %cmp1243 = icmp slt i32 0, %add1242
  br i1 %cmp1243, label %cond.true.1245, label %cond.false.1252

cond.true.1245:                                   ; preds = %cond.end.1232
  %854 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %854, i32 0, i32 1
  %arrayidx1247 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1246, i32 0, i64 0
  %855 = load i32, i32* %arrayidx1247, align 4
  %856 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1248 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %856, i32 0, i32 0
  %arrayidx1249 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1248, i32 0, i64 0
  %857 = load i32, i32* %arrayidx1249, align 4
  %sub1250 = sub nsw i32 %855, %857
  %add1251 = add nsw i32 %sub1250, 1
  br label %cond.end.1253

cond.false.1252:                                  ; preds = %cond.end.1232
  br label %cond.end.1253

cond.end.1253:                                    ; preds = %cond.false.1252, %cond.true.1245
  %cond1254 = phi i32 [ %add1251, %cond.true.1245 ], [ 0, %cond.false.1252 ]
  %mul1255 = mul nsw i32 %849, %cond1254
  %858 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1256 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %858, i32 0, i32 1
  %arrayidx1257 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1256, i32 0, i64 1
  %859 = load i32, i32* %arrayidx1257, align 4
  %860 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %860, i32 0, i32 0
  %arrayidx1259 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1258, i32 0, i64 1
  %861 = load i32, i32* %arrayidx1259, align 4
  %sub1260 = sub nsw i32 %859, %861
  %add1261 = add nsw i32 %sub1260, 1
  %cmp1262 = icmp slt i32 0, %add1261
  br i1 %cmp1262, label %cond.true.1264, label %cond.false.1271

cond.true.1264:                                   ; preds = %cond.end.1253
  %862 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1265 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %862, i32 0, i32 1
  %arrayidx1266 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1265, i32 0, i64 1
  %863 = load i32, i32* %arrayidx1266, align 4
  %864 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1267 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %864, i32 0, i32 0
  %arrayidx1268 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1267, i32 0, i64 1
  %865 = load i32, i32* %arrayidx1268, align 4
  %sub1269 = sub nsw i32 %863, %865
  %add1270 = add nsw i32 %sub1269, 1
  br label %cond.end.1272

cond.false.1271:                                  ; preds = %cond.end.1253
  br label %cond.end.1272

cond.end.1272:                                    ; preds = %cond.false.1271, %cond.true.1264
  %cond1273 = phi i32 [ %add1270, %cond.true.1264 ], [ 0, %cond.false.1271 ]
  %mul1274 = mul nsw i32 %mul1255, %cond1273
  store i32 %mul1274, i32* %hypre__sz11235, align 4
  %866 = load i32*, i32** %stride, align 8
  %arrayidx1276 = getelementptr inbounds i32, i32* %866, i64 0
  %867 = load i32, i32* %arrayidx1276, align 4
  store i32 %867, i32* %hypre__sx21275, align 4
  %868 = load i32*, i32** %stride, align 8
  %arrayidx1278 = getelementptr inbounds i32, i32* %868, i64 1
  %869 = load i32, i32* %arrayidx1278, align 4
  %870 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %870, i32 0, i32 1
  %arrayidx1280 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1279, i32 0, i64 0
  %871 = load i32, i32* %arrayidx1280, align 4
  %872 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1281 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %872, i32 0, i32 0
  %arrayidx1282 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1281, i32 0, i64 0
  %873 = load i32, i32* %arrayidx1282, align 4
  %sub1283 = sub nsw i32 %871, %873
  %add1284 = add nsw i32 %sub1283, 1
  %cmp1285 = icmp slt i32 0, %add1284
  br i1 %cmp1285, label %cond.true.1287, label %cond.false.1294

cond.true.1287:                                   ; preds = %cond.end.1272
  %874 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1288 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %874, i32 0, i32 1
  %arrayidx1289 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1288, i32 0, i64 0
  %875 = load i32, i32* %arrayidx1289, align 4
  %876 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %876, i32 0, i32 0
  %arrayidx1291 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1290, i32 0, i64 0
  %877 = load i32, i32* %arrayidx1291, align 4
  %sub1292 = sub nsw i32 %875, %877
  %add1293 = add nsw i32 %sub1292, 1
  br label %cond.end.1295

cond.false.1294:                                  ; preds = %cond.end.1272
  br label %cond.end.1295

cond.end.1295:                                    ; preds = %cond.false.1294, %cond.true.1287
  %cond1296 = phi i32 [ %add1293, %cond.true.1287 ], [ 0, %cond.false.1294 ]
  %mul1297 = mul nsw i32 %869, %cond1296
  store i32 %mul1297, i32* %hypre__sy21277, align 4
  %878 = load i32*, i32** %stride, align 8
  %arrayidx1299 = getelementptr inbounds i32, i32* %878, i64 2
  %879 = load i32, i32* %arrayidx1299, align 4
  %880 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %880, i32 0, i32 1
  %arrayidx1301 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1300, i32 0, i64 0
  %881 = load i32, i32* %arrayidx1301, align 4
  %882 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1302 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %882, i32 0, i32 0
  %arrayidx1303 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1302, i32 0, i64 0
  %883 = load i32, i32* %arrayidx1303, align 4
  %sub1304 = sub nsw i32 %881, %883
  %add1305 = add nsw i32 %sub1304, 1
  %cmp1306 = icmp slt i32 0, %add1305
  br i1 %cmp1306, label %cond.true.1308, label %cond.false.1315

cond.true.1308:                                   ; preds = %cond.end.1295
  %884 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1309 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %884, i32 0, i32 1
  %arrayidx1310 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1309, i32 0, i64 0
  %885 = load i32, i32* %arrayidx1310, align 4
  %886 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1311 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %886, i32 0, i32 0
  %arrayidx1312 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1311, i32 0, i64 0
  %887 = load i32, i32* %arrayidx1312, align 4
  %sub1313 = sub nsw i32 %885, %887
  %add1314 = add nsw i32 %sub1313, 1
  br label %cond.end.1316

cond.false.1315:                                  ; preds = %cond.end.1295
  br label %cond.end.1316

cond.end.1316:                                    ; preds = %cond.false.1315, %cond.true.1308
  %cond1317 = phi i32 [ %add1314, %cond.true.1308 ], [ 0, %cond.false.1315 ]
  %mul1318 = mul nsw i32 %879, %cond1317
  %888 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1319 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %888, i32 0, i32 1
  %arrayidx1320 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1319, i32 0, i64 1
  %889 = load i32, i32* %arrayidx1320, align 4
  %890 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1321 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %890, i32 0, i32 0
  %arrayidx1322 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1321, i32 0, i64 1
  %891 = load i32, i32* %arrayidx1322, align 4
  %sub1323 = sub nsw i32 %889, %891
  %add1324 = add nsw i32 %sub1323, 1
  %cmp1325 = icmp slt i32 0, %add1324
  br i1 %cmp1325, label %cond.true.1327, label %cond.false.1334

cond.true.1327:                                   ; preds = %cond.end.1316
  %892 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %892, i32 0, i32 1
  %arrayidx1329 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1328, i32 0, i64 1
  %893 = load i32, i32* %arrayidx1329, align 4
  %894 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1330 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %894, i32 0, i32 0
  %arrayidx1331 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1330, i32 0, i64 1
  %895 = load i32, i32* %arrayidx1331, align 4
  %sub1332 = sub nsw i32 %893, %895
  %add1333 = add nsw i32 %sub1332, 1
  br label %cond.end.1335

cond.false.1334:                                  ; preds = %cond.end.1316
  br label %cond.end.1335

cond.end.1335:                                    ; preds = %cond.false.1334, %cond.true.1327
  %cond1336 = phi i32 [ %add1333, %cond.true.1327 ], [ 0, %cond.false.1334 ]
  %mul1337 = mul nsw i32 %mul1318, %cond1336
  store i32 %mul1337, i32* %hypre__sz21298, align 4
  %896 = load i32*, i32** %stride, align 8
  %arrayidx1339 = getelementptr inbounds i32, i32* %896, i64 0
  %897 = load i32, i32* %arrayidx1339, align 4
  store i32 %897, i32* %hypre__sx31338, align 4
  %898 = load i32*, i32** %stride, align 8
  %arrayidx1341 = getelementptr inbounds i32, i32* %898, i64 1
  %899 = load i32, i32* %arrayidx1341, align 4
  %900 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1342 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %900, i32 0, i32 1
  %arrayidx1343 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1342, i32 0, i64 0
  %901 = load i32, i32* %arrayidx1343, align 4
  %902 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %902, i32 0, i32 0
  %arrayidx1345 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1344, i32 0, i64 0
  %903 = load i32, i32* %arrayidx1345, align 4
  %sub1346 = sub nsw i32 %901, %903
  %add1347 = add nsw i32 %sub1346, 1
  %cmp1348 = icmp slt i32 0, %add1347
  br i1 %cmp1348, label %cond.true.1350, label %cond.false.1357

cond.true.1350:                                   ; preds = %cond.end.1335
  %904 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1351 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %904, i32 0, i32 1
  %arrayidx1352 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1351, i32 0, i64 0
  %905 = load i32, i32* %arrayidx1352, align 4
  %906 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1353 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %906, i32 0, i32 0
  %arrayidx1354 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1353, i32 0, i64 0
  %907 = load i32, i32* %arrayidx1354, align 4
  %sub1355 = sub nsw i32 %905, %907
  %add1356 = add nsw i32 %sub1355, 1
  br label %cond.end.1358

cond.false.1357:                                  ; preds = %cond.end.1335
  br label %cond.end.1358

cond.end.1358:                                    ; preds = %cond.false.1357, %cond.true.1350
  %cond1359 = phi i32 [ %add1356, %cond.true.1350 ], [ 0, %cond.false.1357 ]
  %mul1360 = mul nsw i32 %899, %cond1359
  store i32 %mul1360, i32* %hypre__sy31340, align 4
  %908 = load i32*, i32** %stride, align 8
  %arrayidx1362 = getelementptr inbounds i32, i32* %908, i64 2
  %909 = load i32, i32* %arrayidx1362, align 4
  %910 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1363 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %910, i32 0, i32 1
  %arrayidx1364 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1363, i32 0, i64 0
  %911 = load i32, i32* %arrayidx1364, align 4
  %912 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1365 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %912, i32 0, i32 0
  %arrayidx1366 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1365, i32 0, i64 0
  %913 = load i32, i32* %arrayidx1366, align 4
  %sub1367 = sub nsw i32 %911, %913
  %add1368 = add nsw i32 %sub1367, 1
  %cmp1369 = icmp slt i32 0, %add1368
  br i1 %cmp1369, label %cond.true.1371, label %cond.false.1378

cond.true.1371:                                   ; preds = %cond.end.1358
  %914 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1372 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %914, i32 0, i32 1
  %arrayidx1373 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1372, i32 0, i64 0
  %915 = load i32, i32* %arrayidx1373, align 4
  %916 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1374 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %916, i32 0, i32 0
  %arrayidx1375 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1374, i32 0, i64 0
  %917 = load i32, i32* %arrayidx1375, align 4
  %sub1376 = sub nsw i32 %915, %917
  %add1377 = add nsw i32 %sub1376, 1
  br label %cond.end.1379

cond.false.1378:                                  ; preds = %cond.end.1358
  br label %cond.end.1379

cond.end.1379:                                    ; preds = %cond.false.1378, %cond.true.1371
  %cond1380 = phi i32 [ %add1377, %cond.true.1371 ], [ 0, %cond.false.1378 ]
  %mul1381 = mul nsw i32 %909, %cond1380
  %918 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1382 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %918, i32 0, i32 1
  %arrayidx1383 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1382, i32 0, i64 1
  %919 = load i32, i32* %arrayidx1383, align 4
  %920 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1384 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %920, i32 0, i32 0
  %arrayidx1385 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1384, i32 0, i64 1
  %921 = load i32, i32* %arrayidx1385, align 4
  %sub1386 = sub nsw i32 %919, %921
  %add1387 = add nsw i32 %sub1386, 1
  %cmp1388 = icmp slt i32 0, %add1387
  br i1 %cmp1388, label %cond.true.1390, label %cond.false.1397

cond.true.1390:                                   ; preds = %cond.end.1379
  %922 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1391 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %922, i32 0, i32 1
  %arrayidx1392 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1391, i32 0, i64 1
  %923 = load i32, i32* %arrayidx1392, align 4
  %924 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1393 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %924, i32 0, i32 0
  %arrayidx1394 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1393, i32 0, i64 1
  %925 = load i32, i32* %arrayidx1394, align 4
  %sub1395 = sub nsw i32 %923, %925
  %add1396 = add nsw i32 %sub1395, 1
  br label %cond.end.1398

cond.false.1397:                                  ; preds = %cond.end.1379
  br label %cond.end.1398

cond.end.1398:                                    ; preds = %cond.false.1397, %cond.true.1390
  %cond1399 = phi i32 [ %add1396, %cond.true.1390 ], [ 0, %cond.false.1397 ]
  %mul1400 = mul nsw i32 %mul1381, %cond1399
  store i32 %mul1400, i32* %hypre__sz31361, align 4
  %arrayidx1402 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %926 = load i32, i32* %arrayidx1402, align 4
  store i32 %926, i32* %hypre__nx1401, align 4
  %arrayidx1404 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %927 = load i32, i32* %arrayidx1404, align 4
  store i32 %927, i32* %hypre__ny1403, align 4
  %arrayidx1406 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %928 = load i32, i32* %arrayidx1406, align 4
  store i32 %928, i32* %hypre__nz1405, align 4
  %929 = load i32, i32* %hypre__nx1401, align 4
  store i32 %929, i32* %hypre__mx1407, align 4
  %930 = load i32, i32* %hypre__ny1403, align 4
  store i32 %930, i32* %hypre__my1408, align 4
  %931 = load i32, i32* %hypre__nz1405, align 4
  store i32 %931, i32* %hypre__mz1409, align 4
  store i32 0, i32* %hypre__dir1410, align 4
  %932 = load i32, i32* %hypre__nx1401, align 4
  store i32 %932, i32* %hypre__max1411, align 4
  %933 = load i32, i32* %hypre__ny1403, align 4
  %934 = load i32, i32* %hypre__max1411, align 4
  %cmp1416 = icmp sgt i32 %933, %934
  br i1 %cmp1416, label %if.then.1418, label %if.end.1419

if.then.1418:                                     ; preds = %cond.end.1398
  store i32 1, i32* %hypre__dir1410, align 4
  %935 = load i32, i32* %hypre__ny1403, align 4
  store i32 %935, i32* %hypre__max1411, align 4
  br label %if.end.1419

if.end.1419:                                      ; preds = %if.then.1418, %cond.end.1398
  %936 = load i32, i32* %hypre__nz1405, align 4
  %937 = load i32, i32* %hypre__max1411, align 4
  %cmp1420 = icmp sgt i32 %936, %937
  br i1 %cmp1420, label %if.then.1422, label %if.end.1423

if.then.1422:                                     ; preds = %if.end.1419
  store i32 2, i32* %hypre__dir1410, align 4
  %938 = load i32, i32* %hypre__nz1405, align 4
  store i32 %938, i32* %hypre__max1411, align 4
  br label %if.end.1423

if.end.1423:                                      ; preds = %if.then.1422, %if.end.1419
  store i32 1, i32* %hypre__num_blocks1415, align 4
  %939 = load i32, i32* %hypre__max1411, align 4
  %940 = load i32, i32* %hypre__num_blocks1415, align 4
  %cmp1424 = icmp slt i32 %939, %940
  br i1 %cmp1424, label %if.then.1426, label %if.end.1427

if.then.1426:                                     ; preds = %if.end.1423
  %941 = load i32, i32* %hypre__max1411, align 4
  store i32 %941, i32* %hypre__num_blocks1415, align 4
  br label %if.end.1427

if.end.1427:                                      ; preds = %if.then.1426, %if.end.1423
  %942 = load i32, i32* %hypre__num_blocks1415, align 4
  %cmp1428 = icmp sgt i32 %942, 0
  br i1 %cmp1428, label %if.then.1430, label %if.end.1433

if.then.1430:                                     ; preds = %if.end.1427
  %943 = load i32, i32* %hypre__max1411, align 4
  %944 = load i32, i32* %hypre__num_blocks1415, align 4
  %div1431 = sdiv i32 %943, %944
  store i32 %div1431, i32* %hypre__div1412, align 4
  %945 = load i32, i32* %hypre__max1411, align 4
  %946 = load i32, i32* %hypre__num_blocks1415, align 4
  %rem1432 = srem i32 %945, %946
  store i32 %rem1432, i32* %hypre__mod1413, align 4
  br label %if.end.1433

if.end.1433:                                      ; preds = %if.then.1430, %if.end.1427
  store i32 0, i32* %hypre__block1414, align 4
  br label %for.cond.1434

for.cond.1434:                                    ; preds = %for.inc.1560, %if.end.1433
  %947 = load i32, i32* %hypre__block1414, align 4
  %948 = load i32, i32* %hypre__num_blocks1415, align 4
  %cmp1435 = icmp slt i32 %947, %948
  br i1 %cmp1435, label %for.body.1437, label %for.end.1562

for.body.1437:                                    ; preds = %for.cond.1434
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %949 = load i32, i32* %hypre__mx1407, align 4
  store i32 %949, i32* %hypre__nx1401, align 4
  %950 = load i32, i32* %hypre__my1408, align 4
  store i32 %950, i32* %hypre__ny1403, align 4
  %951 = load i32, i32* %hypre__mz1409, align 4
  store i32 %951, i32* %hypre__nz1405, align 4
  %952 = load i32, i32* %hypre__num_blocks1415, align 4
  %cmp1438 = icmp sgt i32 %952, 1
  br i1 %cmp1438, label %if.then.1440, label %if.end.1491

if.then.1440:                                     ; preds = %for.body.1437
  %953 = load i32, i32* %hypre__dir1410, align 4
  %cmp1441 = icmp eq i32 %953, 0
  br i1 %cmp1441, label %if.then.1443, label %if.else.1456

if.then.1443:                                     ; preds = %if.then.1440
  %954 = load i32, i32* %hypre__block1414, align 4
  %955 = load i32, i32* %hypre__div1412, align 4
  %mul1444 = mul nsw i32 %954, %955
  %956 = load i32, i32* %hypre__mod1413, align 4
  %957 = load i32, i32* %hypre__block1414, align 4
  %cmp1445 = icmp slt i32 %956, %957
  br i1 %cmp1445, label %cond.true.1447, label %cond.false.1448

cond.true.1447:                                   ; preds = %if.then.1443
  %958 = load i32, i32* %hypre__mod1413, align 4
  br label %cond.end.1449

cond.false.1448:                                  ; preds = %if.then.1443
  %959 = load i32, i32* %hypre__block1414, align 4
  br label %cond.end.1449

cond.end.1449:                                    ; preds = %cond.false.1448, %cond.true.1447
  %cond1450 = phi i32 [ %958, %cond.true.1447 ], [ %959, %cond.false.1448 ]
  %add1451 = add nsw i32 %mul1444, %cond1450
  store i32 %add1451, i32* %loopi, align 4
  %960 = load i32, i32* %hypre__div1412, align 4
  %961 = load i32, i32* %hypre__mod1413, align 4
  %962 = load i32, i32* %hypre__block1414, align 4
  %cmp1452 = icmp sgt i32 %961, %962
  %cond1454 = select i1 %cmp1452, i32 1, i32 0
  %add1455 = add nsw i32 %960, %cond1454
  store i32 %add1455, i32* %hypre__nx1401, align 4
  br label %if.end.1490

if.else.1456:                                     ; preds = %if.then.1440
  %963 = load i32, i32* %hypre__dir1410, align 4
  %cmp1457 = icmp eq i32 %963, 1
  br i1 %cmp1457, label %if.then.1459, label %if.else.1472

if.then.1459:                                     ; preds = %if.else.1456
  %964 = load i32, i32* %hypre__block1414, align 4
  %965 = load i32, i32* %hypre__div1412, align 4
  %mul1460 = mul nsw i32 %964, %965
  %966 = load i32, i32* %hypre__mod1413, align 4
  %967 = load i32, i32* %hypre__block1414, align 4
  %cmp1461 = icmp slt i32 %966, %967
  br i1 %cmp1461, label %cond.true.1463, label %cond.false.1464

cond.true.1463:                                   ; preds = %if.then.1459
  %968 = load i32, i32* %hypre__mod1413, align 4
  br label %cond.end.1465

cond.false.1464:                                  ; preds = %if.then.1459
  %969 = load i32, i32* %hypre__block1414, align 4
  br label %cond.end.1465

cond.end.1465:                                    ; preds = %cond.false.1464, %cond.true.1463
  %cond1466 = phi i32 [ %968, %cond.true.1463 ], [ %969, %cond.false.1464 ]
  %add1467 = add nsw i32 %mul1460, %cond1466
  store i32 %add1467, i32* %loopj, align 4
  %970 = load i32, i32* %hypre__div1412, align 4
  %971 = load i32, i32* %hypre__mod1413, align 4
  %972 = load i32, i32* %hypre__block1414, align 4
  %cmp1468 = icmp sgt i32 %971, %972
  %cond1470 = select i1 %cmp1468, i32 1, i32 0
  %add1471 = add nsw i32 %970, %cond1470
  store i32 %add1471, i32* %hypre__ny1403, align 4
  br label %if.end.1489

if.else.1472:                                     ; preds = %if.else.1456
  %973 = load i32, i32* %hypre__dir1410, align 4
  %cmp1473 = icmp eq i32 %973, 2
  br i1 %cmp1473, label %if.then.1475, label %if.end.1488

if.then.1475:                                     ; preds = %if.else.1472
  %974 = load i32, i32* %hypre__block1414, align 4
  %975 = load i32, i32* %hypre__div1412, align 4
  %mul1476 = mul nsw i32 %974, %975
  %976 = load i32, i32* %hypre__mod1413, align 4
  %977 = load i32, i32* %hypre__block1414, align 4
  %cmp1477 = icmp slt i32 %976, %977
  br i1 %cmp1477, label %cond.true.1479, label %cond.false.1480

cond.true.1479:                                   ; preds = %if.then.1475
  %978 = load i32, i32* %hypre__mod1413, align 4
  br label %cond.end.1481

cond.false.1480:                                  ; preds = %if.then.1475
  %979 = load i32, i32* %hypre__block1414, align 4
  br label %cond.end.1481

cond.end.1481:                                    ; preds = %cond.false.1480, %cond.true.1479
  %cond1482 = phi i32 [ %978, %cond.true.1479 ], [ %979, %cond.false.1480 ]
  %add1483 = add nsw i32 %mul1476, %cond1482
  store i32 %add1483, i32* %loopk, align 4
  %980 = load i32, i32* %hypre__div1412, align 4
  %981 = load i32, i32* %hypre__mod1413, align 4
  %982 = load i32, i32* %hypre__block1414, align 4
  %cmp1484 = icmp sgt i32 %981, %982
  %cond1486 = select i1 %cmp1484, i32 1, i32 0
  %add1487 = add nsw i32 %980, %cond1486
  store i32 %add1487, i32* %hypre__nz1405, align 4
  br label %if.end.1488

if.end.1488:                                      ; preds = %cond.end.1481, %if.else.1472
  br label %if.end.1489

if.end.1489:                                      ; preds = %if.end.1488, %cond.end.1465
  br label %if.end.1490

if.end.1490:                                      ; preds = %if.end.1489, %cond.end.1449
  br label %if.end.1491

if.end.1491:                                      ; preds = %if.end.1490, %for.body.1437
  %983 = load i32, i32* %hypre__i1start1053, align 4
  %984 = load i32, i32* %loopi, align 4
  %985 = load i32, i32* %hypre__sx11212, align 4
  %mul1492 = mul nsw i32 %984, %985
  %add1493 = add nsw i32 %983, %mul1492
  %986 = load i32, i32* %loopj, align 4
  %987 = load i32, i32* %hypre__sy11214, align 4
  %mul1494 = mul nsw i32 %986, %987
  %add1495 = add nsw i32 %add1493, %mul1494
  %988 = load i32, i32* %loopk, align 4
  %989 = load i32, i32* %hypre__sz11235, align 4
  %mul1496 = mul nsw i32 %988, %989
  %add1497 = add nsw i32 %add1495, %mul1496
  store i32 %add1497, i32* %Ai, align 4
  %990 = load i32, i32* %hypre__i2start1106, align 4
  %991 = load i32, i32* %loopi, align 4
  %992 = load i32, i32* %hypre__sx21275, align 4
  %mul1498 = mul nsw i32 %991, %992
  %add1499 = add nsw i32 %990, %mul1498
  %993 = load i32, i32* %loopj, align 4
  %994 = load i32, i32* %hypre__sy21277, align 4
  %mul1500 = mul nsw i32 %993, %994
  %add1501 = add nsw i32 %add1499, %mul1500
  %995 = load i32, i32* %loopk, align 4
  %996 = load i32, i32* %hypre__sz21298, align 4
  %mul1502 = mul nsw i32 %995, %996
  %add1503 = add nsw i32 %add1501, %mul1502
  store i32 %add1503, i32* %xi, align 4
  %997 = load i32, i32* %hypre__i3start1159, align 4
  %998 = load i32, i32* %loopi, align 4
  %999 = load i32, i32* %hypre__sx31338, align 4
  %mul1504 = mul nsw i32 %998, %999
  %add1505 = add nsw i32 %997, %mul1504
  %1000 = load i32, i32* %loopj, align 4
  %1001 = load i32, i32* %hypre__sy31340, align 4
  %mul1506 = mul nsw i32 %1000, %1001
  %add1507 = add nsw i32 %add1505, %mul1506
  %1002 = load i32, i32* %loopk, align 4
  %1003 = load i32, i32* %hypre__sz31361, align 4
  %mul1508 = mul nsw i32 %1002, %1003
  %add1509 = add nsw i32 %add1507, %mul1508
  store i32 %add1509, i32* %ti, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1510

for.cond.1510:                                    ; preds = %for.inc.1557, %if.end.1491
  %1004 = load i32, i32* %loopk, align 4
  %1005 = load i32, i32* %hypre__nz1405, align 4
  %cmp1511 = icmp slt i32 %1004, %1005
  br i1 %cmp1511, label %for.body.1513, label %for.end.1559

for.body.1513:                                    ; preds = %for.cond.1510
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1514

for.cond.1514:                                    ; preds = %for.inc.1545, %for.body.1513
  %1006 = load i32, i32* %loopj, align 4
  %1007 = load i32, i32* %hypre__ny1403, align 4
  %cmp1515 = icmp slt i32 %1006, %1007
  br i1 %cmp1515, label %for.body.1517, label %for.end.1547

for.body.1517:                                    ; preds = %for.cond.1514
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1518

for.cond.1518:                                    ; preds = %for.inc.1533, %for.body.1517
  %1008 = load i32, i32* %loopi, align 4
  %1009 = load i32, i32* %hypre__nx1401, align 4
  %cmp1519 = icmp slt i32 %1008, %1009
  br i1 %cmp1519, label %for.body.1521, label %for.end.1535

for.body.1521:                                    ; preds = %for.cond.1518
  %1010 = load i32, i32* %Ai, align 4
  %idxprom1522 = sext i32 %1010 to i64
  %1011 = load double*, double** %Ap, align 8
  %arrayidx1523 = getelementptr inbounds double, double* %1011, i64 %idxprom1522
  %1012 = load double, double* %arrayidx1523, align 8
  %1013 = load i32, i32* %xi, align 4
  %idxprom1524 = sext i32 %1013 to i64
  %1014 = load double*, double** %xp, align 8
  %arrayidx1525 = getelementptr inbounds double, double* %1014, i64 %idxprom1524
  %1015 = load double, double* %arrayidx1525, align 8
  %mul1526 = fmul double %1012, %1015
  %1016 = load i32, i32* %ti, align 4
  %idxprom1527 = sext i32 %1016 to i64
  %1017 = load double*, double** %tp, align 8
  %arrayidx1528 = getelementptr inbounds double, double* %1017, i64 %idxprom1527
  %1018 = load double, double* %arrayidx1528, align 8
  %sub1529 = fsub double %1018, %mul1526
  store double %sub1529, double* %arrayidx1528, align 8
  %1019 = load i32, i32* %hypre__sx11212, align 4
  %1020 = load i32, i32* %Ai, align 4
  %add1530 = add nsw i32 %1020, %1019
  store i32 %add1530, i32* %Ai, align 4
  %1021 = load i32, i32* %hypre__sx21275, align 4
  %1022 = load i32, i32* %xi, align 4
  %add1531 = add nsw i32 %1022, %1021
  store i32 %add1531, i32* %xi, align 4
  %1023 = load i32, i32* %hypre__sx31338, align 4
  %1024 = load i32, i32* %ti, align 4
  %add1532 = add nsw i32 %1024, %1023
  store i32 %add1532, i32* %ti, align 4
  br label %for.inc.1533

for.inc.1533:                                     ; preds = %for.body.1521
  %1025 = load i32, i32* %loopi, align 4
  %inc1534 = add nsw i32 %1025, 1
  store i32 %inc1534, i32* %loopi, align 4
  br label %for.cond.1518

for.end.1535:                                     ; preds = %for.cond.1518
  %1026 = load i32, i32* %hypre__sy11214, align 4
  %1027 = load i32, i32* %hypre__nx1401, align 4
  %1028 = load i32, i32* %hypre__sx11212, align 4
  %mul1536 = mul nsw i32 %1027, %1028
  %sub1537 = sub nsw i32 %1026, %mul1536
  %1029 = load i32, i32* %Ai, align 4
  %add1538 = add nsw i32 %1029, %sub1537
  store i32 %add1538, i32* %Ai, align 4
  %1030 = load i32, i32* %hypre__sy21277, align 4
  %1031 = load i32, i32* %hypre__nx1401, align 4
  %1032 = load i32, i32* %hypre__sx21275, align 4
  %mul1539 = mul nsw i32 %1031, %1032
  %sub1540 = sub nsw i32 %1030, %mul1539
  %1033 = load i32, i32* %xi, align 4
  %add1541 = add nsw i32 %1033, %sub1540
  store i32 %add1541, i32* %xi, align 4
  %1034 = load i32, i32* %hypre__sy31340, align 4
  %1035 = load i32, i32* %hypre__nx1401, align 4
  %1036 = load i32, i32* %hypre__sx31338, align 4
  %mul1542 = mul nsw i32 %1035, %1036
  %sub1543 = sub nsw i32 %1034, %mul1542
  %1037 = load i32, i32* %ti, align 4
  %add1544 = add nsw i32 %1037, %sub1543
  store i32 %add1544, i32* %ti, align 4
  br label %for.inc.1545

for.inc.1545:                                     ; preds = %for.end.1535
  %1038 = load i32, i32* %loopj, align 4
  %inc1546 = add nsw i32 %1038, 1
  store i32 %inc1546, i32* %loopj, align 4
  br label %for.cond.1514

for.end.1547:                                     ; preds = %for.cond.1514
  %1039 = load i32, i32* %hypre__sz11235, align 4
  %1040 = load i32, i32* %hypre__ny1403, align 4
  %1041 = load i32, i32* %hypre__sy11214, align 4
  %mul1548 = mul nsw i32 %1040, %1041
  %sub1549 = sub nsw i32 %1039, %mul1548
  %1042 = load i32, i32* %Ai, align 4
  %add1550 = add nsw i32 %1042, %sub1549
  store i32 %add1550, i32* %Ai, align 4
  %1043 = load i32, i32* %hypre__sz21298, align 4
  %1044 = load i32, i32* %hypre__ny1403, align 4
  %1045 = load i32, i32* %hypre__sy21277, align 4
  %mul1551 = mul nsw i32 %1044, %1045
  %sub1552 = sub nsw i32 %1043, %mul1551
  %1046 = load i32, i32* %xi, align 4
  %add1553 = add nsw i32 %1046, %sub1552
  store i32 %add1553, i32* %xi, align 4
  %1047 = load i32, i32* %hypre__sz31361, align 4
  %1048 = load i32, i32* %hypre__ny1403, align 4
  %1049 = load i32, i32* %hypre__sy31340, align 4
  %mul1554 = mul nsw i32 %1048, %1049
  %sub1555 = sub nsw i32 %1047, %mul1554
  %1050 = load i32, i32* %ti, align 4
  %add1556 = add nsw i32 %1050, %sub1555
  store i32 %add1556, i32* %ti, align 4
  br label %for.inc.1557

for.inc.1557:                                     ; preds = %for.end.1547
  %1051 = load i32, i32* %loopk, align 4
  %inc1558 = add nsw i32 %1051, 1
  store i32 %inc1558, i32* %loopk, align 4
  br label %for.cond.1510

for.end.1559:                                     ; preds = %for.cond.1510
  br label %for.inc.1560

for.inc.1560:                                     ; preds = %for.end.1559
  %1052 = load i32, i32* %hypre__block1414, align 4
  %inc1561 = add nsw i32 %1052, 1
  store i32 %inc1561, i32* %hypre__block1414, align 4
  br label %for.cond.1434

for.end.1562:                                     ; preds = %for.cond.1434
  br label %if.end.1563

if.end.1563:                                      ; preds = %for.end.1562, %for.body.984
  br label %for.inc.1564

for.inc.1564:                                     ; preds = %if.end.1563
  %1053 = load i32, i32* %si, align 4
  %inc1565 = add nsw i32 %1053, 1
  store i32 %inc1565, i32* %si, align 4
  br label %for.cond.981

for.end.1566:                                     ; preds = %for.cond.981
  %1054 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1567 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1054, i32 0, i32 6
  %1055 = load double*, double** %data1567, align 8
  %1056 = load i32, i32* %diag_rank, align 4
  %idxprom1568 = sext i32 %1056 to i64
  %1057 = load i32, i32* %i, align 4
  %idxprom1569 = sext i32 %1057 to i64
  %1058 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1570 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1058, i32 0, i32 9
  %1059 = load i32**, i32*** %data_indices1570, align 8
  %arrayidx1571 = getelementptr inbounds i32*, i32** %1059, i64 %idxprom1569
  %1060 = load i32*, i32** %arrayidx1571, align 8
  %arrayidx1572 = getelementptr inbounds i32, i32* %1060, i64 %idxprom1568
  %1061 = load i32, i32* %arrayidx1572, align 4
  %idx.ext1573 = sext i32 %1061 to i64
  %add.ptr1574 = getelementptr inbounds double, double* %1055, i64 %idx.ext1573
  store double* %add.ptr1574, double** %Ap, align 8
  %1062 = load i32*, i32** %start, align 8
  %arrayidx1576 = getelementptr inbounds i32, i32* %1062, i64 0
  %1063 = load i32, i32* %arrayidx1576, align 4
  %1064 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1577 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1064, i32 0, i32 0
  %arrayidx1578 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1577, i32 0, i64 0
  %1065 = load i32, i32* %arrayidx1578, align 4
  %sub1579 = sub nsw i32 %1063, %1065
  %1066 = load i32*, i32** %start, align 8
  %arrayidx1580 = getelementptr inbounds i32, i32* %1066, i64 1
  %1067 = load i32, i32* %arrayidx1580, align 4
  %1068 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1581 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1068, i32 0, i32 0
  %arrayidx1582 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1581, i32 0, i64 1
  %1069 = load i32, i32* %arrayidx1582, align 4
  %sub1583 = sub nsw i32 %1067, %1069
  %1070 = load i32*, i32** %start, align 8
  %arrayidx1584 = getelementptr inbounds i32, i32* %1070, i64 2
  %1071 = load i32, i32* %arrayidx1584, align 4
  %1072 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1585 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1072, i32 0, i32 0
  %arrayidx1586 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1585, i32 0, i64 2
  %1073 = load i32, i32* %arrayidx1586, align 4
  %sub1587 = sub nsw i32 %1071, %1073
  %1074 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1074, i32 0, i32 1
  %arrayidx1589 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1588, i32 0, i64 1
  %1075 = load i32, i32* %arrayidx1589, align 4
  %1076 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1590 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1076, i32 0, i32 0
  %arrayidx1591 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1590, i32 0, i64 1
  %1077 = load i32, i32* %arrayidx1591, align 4
  %sub1592 = sub nsw i32 %1075, %1077
  %add1593 = add nsw i32 %sub1592, 1
  %cmp1594 = icmp slt i32 0, %add1593
  br i1 %cmp1594, label %cond.true.1596, label %cond.false.1603

cond.true.1596:                                   ; preds = %for.end.1566
  %1078 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1597 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1078, i32 0, i32 1
  %arrayidx1598 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1597, i32 0, i64 1
  %1079 = load i32, i32* %arrayidx1598, align 4
  %1080 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1080, i32 0, i32 0
  %arrayidx1600 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1599, i32 0, i64 1
  %1081 = load i32, i32* %arrayidx1600, align 4
  %sub1601 = sub nsw i32 %1079, %1081
  %add1602 = add nsw i32 %sub1601, 1
  br label %cond.end.1604

cond.false.1603:                                  ; preds = %for.end.1566
  br label %cond.end.1604

cond.end.1604:                                    ; preds = %cond.false.1603, %cond.true.1596
  %cond1605 = phi i32 [ %add1602, %cond.true.1596 ], [ 0, %cond.false.1603 ]
  %mul1606 = mul nsw i32 %sub1587, %cond1605
  %add1607 = add nsw i32 %sub1583, %mul1606
  %1082 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1608 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1082, i32 0, i32 1
  %arrayidx1609 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1608, i32 0, i64 0
  %1083 = load i32, i32* %arrayidx1609, align 4
  %1084 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1610 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1084, i32 0, i32 0
  %arrayidx1611 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1610, i32 0, i64 0
  %1085 = load i32, i32* %arrayidx1611, align 4
  %sub1612 = sub nsw i32 %1083, %1085
  %add1613 = add nsw i32 %sub1612, 1
  %cmp1614 = icmp slt i32 0, %add1613
  br i1 %cmp1614, label %cond.true.1616, label %cond.false.1623

cond.true.1616:                                   ; preds = %cond.end.1604
  %1086 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1617 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1086, i32 0, i32 1
  %arrayidx1618 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1617, i32 0, i64 0
  %1087 = load i32, i32* %arrayidx1618, align 4
  %1088 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1619 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1088, i32 0, i32 0
  %arrayidx1620 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1619, i32 0, i64 0
  %1089 = load i32, i32* %arrayidx1620, align 4
  %sub1621 = sub nsw i32 %1087, %1089
  %add1622 = add nsw i32 %sub1621, 1
  br label %cond.end.1624

cond.false.1623:                                  ; preds = %cond.end.1604
  br label %cond.end.1624

cond.end.1624:                                    ; preds = %cond.false.1623, %cond.true.1616
  %cond1625 = phi i32 [ %add1622, %cond.true.1616 ], [ 0, %cond.false.1623 ]
  %mul1626 = mul nsw i32 %add1607, %cond1625
  %add1627 = add nsw i32 %sub1579, %mul1626
  store i32 %add1627, i32* %hypre__i1start1575, align 4
  %1090 = load i32*, i32** %start, align 8
  %arrayidx1629 = getelementptr inbounds i32, i32* %1090, i64 0
  %1091 = load i32, i32* %arrayidx1629, align 4
  %1092 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1630 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1092, i32 0, i32 0
  %arrayidx1631 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1630, i32 0, i64 0
  %1093 = load i32, i32* %arrayidx1631, align 4
  %sub1632 = sub nsw i32 %1091, %1093
  %1094 = load i32*, i32** %start, align 8
  %arrayidx1633 = getelementptr inbounds i32, i32* %1094, i64 1
  %1095 = load i32, i32* %arrayidx1633, align 4
  %1096 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1634 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1096, i32 0, i32 0
  %arrayidx1635 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1634, i32 0, i64 1
  %1097 = load i32, i32* %arrayidx1635, align 4
  %sub1636 = sub nsw i32 %1095, %1097
  %1098 = load i32*, i32** %start, align 8
  %arrayidx1637 = getelementptr inbounds i32, i32* %1098, i64 2
  %1099 = load i32, i32* %arrayidx1637, align 4
  %1100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1638 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1100, i32 0, i32 0
  %arrayidx1639 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1638, i32 0, i64 2
  %1101 = load i32, i32* %arrayidx1639, align 4
  %sub1640 = sub nsw i32 %1099, %1101
  %1102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1641 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1102, i32 0, i32 1
  %arrayidx1642 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1641, i32 0, i64 1
  %1103 = load i32, i32* %arrayidx1642, align 4
  %1104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1104, i32 0, i32 0
  %arrayidx1644 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1643, i32 0, i64 1
  %1105 = load i32, i32* %arrayidx1644, align 4
  %sub1645 = sub nsw i32 %1103, %1105
  %add1646 = add nsw i32 %sub1645, 1
  %cmp1647 = icmp slt i32 0, %add1646
  br i1 %cmp1647, label %cond.true.1649, label %cond.false.1656

cond.true.1649:                                   ; preds = %cond.end.1624
  %1106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1650 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1106, i32 0, i32 1
  %arrayidx1651 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1650, i32 0, i64 1
  %1107 = load i32, i32* %arrayidx1651, align 4
  %1108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1652 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1108, i32 0, i32 0
  %arrayidx1653 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1652, i32 0, i64 1
  %1109 = load i32, i32* %arrayidx1653, align 4
  %sub1654 = sub nsw i32 %1107, %1109
  %add1655 = add nsw i32 %sub1654, 1
  br label %cond.end.1657

cond.false.1656:                                  ; preds = %cond.end.1624
  br label %cond.end.1657

cond.end.1657:                                    ; preds = %cond.false.1656, %cond.true.1649
  %cond1658 = phi i32 [ %add1655, %cond.true.1649 ], [ 0, %cond.false.1656 ]
  %mul1659 = mul nsw i32 %sub1640, %cond1658
  %add1660 = add nsw i32 %sub1636, %mul1659
  %1110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1661 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1110, i32 0, i32 1
  %arrayidx1662 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1661, i32 0, i64 0
  %1111 = load i32, i32* %arrayidx1662, align 4
  %1112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1663 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1112, i32 0, i32 0
  %arrayidx1664 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1663, i32 0, i64 0
  %1113 = load i32, i32* %arrayidx1664, align 4
  %sub1665 = sub nsw i32 %1111, %1113
  %add1666 = add nsw i32 %sub1665, 1
  %cmp1667 = icmp slt i32 0, %add1666
  br i1 %cmp1667, label %cond.true.1669, label %cond.false.1676

cond.true.1669:                                   ; preds = %cond.end.1657
  %1114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1670 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1114, i32 0, i32 1
  %arrayidx1671 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1670, i32 0, i64 0
  %1115 = load i32, i32* %arrayidx1671, align 4
  %1116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1116, i32 0, i32 0
  %arrayidx1673 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1672, i32 0, i64 0
  %1117 = load i32, i32* %arrayidx1673, align 4
  %sub1674 = sub nsw i32 %1115, %1117
  %add1675 = add nsw i32 %sub1674, 1
  br label %cond.end.1677

cond.false.1676:                                  ; preds = %cond.end.1657
  br label %cond.end.1677

cond.end.1677:                                    ; preds = %cond.false.1676, %cond.true.1669
  %cond1678 = phi i32 [ %add1675, %cond.true.1669 ], [ 0, %cond.false.1676 ]
  %mul1679 = mul nsw i32 %add1660, %cond1678
  %add1680 = add nsw i32 %sub1632, %mul1679
  store i32 %add1680, i32* %hypre__i2start1628, align 4
  %1118 = load i32*, i32** %stride, align 8
  %arrayidx1682 = getelementptr inbounds i32, i32* %1118, i64 0
  %1119 = load i32, i32* %arrayidx1682, align 4
  store i32 %1119, i32* %hypre__sx11681, align 4
  %1120 = load i32*, i32** %stride, align 8
  %arrayidx1684 = getelementptr inbounds i32, i32* %1120, i64 1
  %1121 = load i32, i32* %arrayidx1684, align 4
  %1122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1685 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1122, i32 0, i32 1
  %arrayidx1686 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1685, i32 0, i64 0
  %1123 = load i32, i32* %arrayidx1686, align 4
  %1124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1687 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1124, i32 0, i32 0
  %arrayidx1688 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1687, i32 0, i64 0
  %1125 = load i32, i32* %arrayidx1688, align 4
  %sub1689 = sub nsw i32 %1123, %1125
  %add1690 = add nsw i32 %sub1689, 1
  %cmp1691 = icmp slt i32 0, %add1690
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1700

cond.true.1693:                                   ; preds = %cond.end.1677
  %1126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1694 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1126, i32 0, i32 1
  %arrayidx1695 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1694, i32 0, i64 0
  %1127 = load i32, i32* %arrayidx1695, align 4
  %1128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1696 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1128, i32 0, i32 0
  %arrayidx1697 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1696, i32 0, i64 0
  %1129 = load i32, i32* %arrayidx1697, align 4
  %sub1698 = sub nsw i32 %1127, %1129
  %add1699 = add nsw i32 %sub1698, 1
  br label %cond.end.1701

cond.false.1700:                                  ; preds = %cond.end.1677
  br label %cond.end.1701

cond.end.1701:                                    ; preds = %cond.false.1700, %cond.true.1693
  %cond1702 = phi i32 [ %add1699, %cond.true.1693 ], [ 0, %cond.false.1700 ]
  %mul1703 = mul nsw i32 %1121, %cond1702
  store i32 %mul1703, i32* %hypre__sy11683, align 4
  %1130 = load i32*, i32** %stride, align 8
  %arrayidx1705 = getelementptr inbounds i32, i32* %1130, i64 2
  %1131 = load i32, i32* %arrayidx1705, align 4
  %1132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1706 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1132, i32 0, i32 1
  %arrayidx1707 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1706, i32 0, i64 0
  %1133 = load i32, i32* %arrayidx1707, align 4
  %1134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1708 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1134, i32 0, i32 0
  %arrayidx1709 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1708, i32 0, i64 0
  %1135 = load i32, i32* %arrayidx1709, align 4
  %sub1710 = sub nsw i32 %1133, %1135
  %add1711 = add nsw i32 %sub1710, 1
  %cmp1712 = icmp slt i32 0, %add1711
  br i1 %cmp1712, label %cond.true.1714, label %cond.false.1721

cond.true.1714:                                   ; preds = %cond.end.1701
  %1136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1715 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1136, i32 0, i32 1
  %arrayidx1716 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1715, i32 0, i64 0
  %1137 = load i32, i32* %arrayidx1716, align 4
  %1138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1717 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1138, i32 0, i32 0
  %arrayidx1718 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1717, i32 0, i64 0
  %1139 = load i32, i32* %arrayidx1718, align 4
  %sub1719 = sub nsw i32 %1137, %1139
  %add1720 = add nsw i32 %sub1719, 1
  br label %cond.end.1722

cond.false.1721:                                  ; preds = %cond.end.1701
  br label %cond.end.1722

cond.end.1722:                                    ; preds = %cond.false.1721, %cond.true.1714
  %cond1723 = phi i32 [ %add1720, %cond.true.1714 ], [ 0, %cond.false.1721 ]
  %mul1724 = mul nsw i32 %1131, %cond1723
  %1140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1725 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1140, i32 0, i32 1
  %arrayidx1726 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1725, i32 0, i64 1
  %1141 = load i32, i32* %arrayidx1726, align 4
  %1142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1727 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1142, i32 0, i32 0
  %arrayidx1728 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1727, i32 0, i64 1
  %1143 = load i32, i32* %arrayidx1728, align 4
  %sub1729 = sub nsw i32 %1141, %1143
  %add1730 = add nsw i32 %sub1729, 1
  %cmp1731 = icmp slt i32 0, %add1730
  br i1 %cmp1731, label %cond.true.1733, label %cond.false.1740

cond.true.1733:                                   ; preds = %cond.end.1722
  %1144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1734 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1144, i32 0, i32 1
  %arrayidx1735 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1734, i32 0, i64 1
  %1145 = load i32, i32* %arrayidx1735, align 4
  %1146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1736 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1146, i32 0, i32 0
  %arrayidx1737 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1736, i32 0, i64 1
  %1147 = load i32, i32* %arrayidx1737, align 4
  %sub1738 = sub nsw i32 %1145, %1147
  %add1739 = add nsw i32 %sub1738, 1
  br label %cond.end.1741

cond.false.1740:                                  ; preds = %cond.end.1722
  br label %cond.end.1741

cond.end.1741:                                    ; preds = %cond.false.1740, %cond.true.1733
  %cond1742 = phi i32 [ %add1739, %cond.true.1733 ], [ 0, %cond.false.1740 ]
  %mul1743 = mul nsw i32 %mul1724, %cond1742
  store i32 %mul1743, i32* %hypre__sz11704, align 4
  %1148 = load i32*, i32** %stride, align 8
  %arrayidx1745 = getelementptr inbounds i32, i32* %1148, i64 0
  %1149 = load i32, i32* %arrayidx1745, align 4
  store i32 %1149, i32* %hypre__sx21744, align 4
  %1150 = load i32*, i32** %stride, align 8
  %arrayidx1747 = getelementptr inbounds i32, i32* %1150, i64 1
  %1151 = load i32, i32* %arrayidx1747, align 4
  %1152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1748 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1152, i32 0, i32 1
  %arrayidx1749 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1748, i32 0, i64 0
  %1153 = load i32, i32* %arrayidx1749, align 4
  %1154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1750 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1154, i32 0, i32 0
  %arrayidx1751 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1750, i32 0, i64 0
  %1155 = load i32, i32* %arrayidx1751, align 4
  %sub1752 = sub nsw i32 %1153, %1155
  %add1753 = add nsw i32 %sub1752, 1
  %cmp1754 = icmp slt i32 0, %add1753
  br i1 %cmp1754, label %cond.true.1756, label %cond.false.1763

cond.true.1756:                                   ; preds = %cond.end.1741
  %1156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1757 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1156, i32 0, i32 1
  %arrayidx1758 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1757, i32 0, i64 0
  %1157 = load i32, i32* %arrayidx1758, align 4
  %1158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1759 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1158, i32 0, i32 0
  %arrayidx1760 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1759, i32 0, i64 0
  %1159 = load i32, i32* %arrayidx1760, align 4
  %sub1761 = sub nsw i32 %1157, %1159
  %add1762 = add nsw i32 %sub1761, 1
  br label %cond.end.1764

cond.false.1763:                                  ; preds = %cond.end.1741
  br label %cond.end.1764

cond.end.1764:                                    ; preds = %cond.false.1763, %cond.true.1756
  %cond1765 = phi i32 [ %add1762, %cond.true.1756 ], [ 0, %cond.false.1763 ]
  %mul1766 = mul nsw i32 %1151, %cond1765
  store i32 %mul1766, i32* %hypre__sy21746, align 4
  %1160 = load i32*, i32** %stride, align 8
  %arrayidx1768 = getelementptr inbounds i32, i32* %1160, i64 2
  %1161 = load i32, i32* %arrayidx1768, align 4
  %1162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1769 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1162, i32 0, i32 1
  %arrayidx1770 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1769, i32 0, i64 0
  %1163 = load i32, i32* %arrayidx1770, align 4
  %1164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1771 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1164, i32 0, i32 0
  %arrayidx1772 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1771, i32 0, i64 0
  %1165 = load i32, i32* %arrayidx1772, align 4
  %sub1773 = sub nsw i32 %1163, %1165
  %add1774 = add nsw i32 %sub1773, 1
  %cmp1775 = icmp slt i32 0, %add1774
  br i1 %cmp1775, label %cond.true.1777, label %cond.false.1784

cond.true.1777:                                   ; preds = %cond.end.1764
  %1166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1778 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1166, i32 0, i32 1
  %arrayidx1779 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1778, i32 0, i64 0
  %1167 = load i32, i32* %arrayidx1779, align 4
  %1168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1780 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1168, i32 0, i32 0
  %arrayidx1781 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1780, i32 0, i64 0
  %1169 = load i32, i32* %arrayidx1781, align 4
  %sub1782 = sub nsw i32 %1167, %1169
  %add1783 = add nsw i32 %sub1782, 1
  br label %cond.end.1785

cond.false.1784:                                  ; preds = %cond.end.1764
  br label %cond.end.1785

cond.end.1785:                                    ; preds = %cond.false.1784, %cond.true.1777
  %cond1786 = phi i32 [ %add1783, %cond.true.1777 ], [ 0, %cond.false.1784 ]
  %mul1787 = mul nsw i32 %1161, %cond1786
  %1170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1788 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1170, i32 0, i32 1
  %arrayidx1789 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1788, i32 0, i64 1
  %1171 = load i32, i32* %arrayidx1789, align 4
  %1172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1790 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1172, i32 0, i32 0
  %arrayidx1791 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1790, i32 0, i64 1
  %1173 = load i32, i32* %arrayidx1791, align 4
  %sub1792 = sub nsw i32 %1171, %1173
  %add1793 = add nsw i32 %sub1792, 1
  %cmp1794 = icmp slt i32 0, %add1793
  br i1 %cmp1794, label %cond.true.1796, label %cond.false.1803

cond.true.1796:                                   ; preds = %cond.end.1785
  %1174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imax1797 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1174, i32 0, i32 1
  %arrayidx1798 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1797, i32 0, i64 1
  %1175 = load i32, i32* %arrayidx1798, align 4
  %1176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %t_data_box, align 8
  %imin1799 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1176, i32 0, i32 0
  %arrayidx1800 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1799, i32 0, i64 1
  %1177 = load i32, i32* %arrayidx1800, align 4
  %sub1801 = sub nsw i32 %1175, %1177
  %add1802 = add nsw i32 %sub1801, 1
  br label %cond.end.1804

cond.false.1803:                                  ; preds = %cond.end.1785
  br label %cond.end.1804

cond.end.1804:                                    ; preds = %cond.false.1803, %cond.true.1796
  %cond1805 = phi i32 [ %add1802, %cond.true.1796 ], [ 0, %cond.false.1803 ]
  %mul1806 = mul nsw i32 %mul1787, %cond1805
  store i32 %mul1806, i32* %hypre__sz21767, align 4
  %arrayidx1808 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %1178 = load i32, i32* %arrayidx1808, align 4
  store i32 %1178, i32* %hypre__nx1807, align 4
  %arrayidx1810 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %1179 = load i32, i32* %arrayidx1810, align 4
  store i32 %1179, i32* %hypre__ny1809, align 4
  %arrayidx1812 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %1180 = load i32, i32* %arrayidx1812, align 4
  store i32 %1180, i32* %hypre__nz1811, align 4
  %1181 = load i32, i32* %hypre__nx1807, align 4
  store i32 %1181, i32* %hypre__mx1813, align 4
  %1182 = load i32, i32* %hypre__ny1809, align 4
  store i32 %1182, i32* %hypre__my1814, align 4
  %1183 = load i32, i32* %hypre__nz1811, align 4
  store i32 %1183, i32* %hypre__mz1815, align 4
  store i32 0, i32* %hypre__dir1816, align 4
  %1184 = load i32, i32* %hypre__nx1807, align 4
  store i32 %1184, i32* %hypre__max1817, align 4
  %1185 = load i32, i32* %hypre__ny1809, align 4
  %1186 = load i32, i32* %hypre__max1817, align 4
  %cmp1822 = icmp sgt i32 %1185, %1186
  br i1 %cmp1822, label %if.then.1824, label %if.end.1825

if.then.1824:                                     ; preds = %cond.end.1804
  store i32 1, i32* %hypre__dir1816, align 4
  %1187 = load i32, i32* %hypre__ny1809, align 4
  store i32 %1187, i32* %hypre__max1817, align 4
  br label %if.end.1825

if.end.1825:                                      ; preds = %if.then.1824, %cond.end.1804
  %1188 = load i32, i32* %hypre__nz1811, align 4
  %1189 = load i32, i32* %hypre__max1817, align 4
  %cmp1826 = icmp sgt i32 %1188, %1189
  br i1 %cmp1826, label %if.then.1828, label %if.end.1829

if.then.1828:                                     ; preds = %if.end.1825
  store i32 2, i32* %hypre__dir1816, align 4
  %1190 = load i32, i32* %hypre__nz1811, align 4
  store i32 %1190, i32* %hypre__max1817, align 4
  br label %if.end.1829

if.end.1829:                                      ; preds = %if.then.1828, %if.end.1825
  store i32 1, i32* %hypre__num_blocks1821, align 4
  %1191 = load i32, i32* %hypre__max1817, align 4
  %1192 = load i32, i32* %hypre__num_blocks1821, align 4
  %cmp1830 = icmp slt i32 %1191, %1192
  br i1 %cmp1830, label %if.then.1832, label %if.end.1833

if.then.1832:                                     ; preds = %if.end.1829
  %1193 = load i32, i32* %hypre__max1817, align 4
  store i32 %1193, i32* %hypre__num_blocks1821, align 4
  br label %if.end.1833

if.end.1833:                                      ; preds = %if.then.1832, %if.end.1829
  %1194 = load i32, i32* %hypre__num_blocks1821, align 4
  %cmp1834 = icmp sgt i32 %1194, 0
  br i1 %cmp1834, label %if.then.1836, label %if.end.1839

if.then.1836:                                     ; preds = %if.end.1833
  %1195 = load i32, i32* %hypre__max1817, align 4
  %1196 = load i32, i32* %hypre__num_blocks1821, align 4
  %div1837 = sdiv i32 %1195, %1196
  store i32 %div1837, i32* %hypre__div1818, align 4
  %1197 = load i32, i32* %hypre__max1817, align 4
  %1198 = load i32, i32* %hypre__num_blocks1821, align 4
  %rem1838 = srem i32 %1197, %1198
  store i32 %rem1838, i32* %hypre__mod1819, align 4
  br label %if.end.1839

if.end.1839:                                      ; preds = %if.then.1836, %if.end.1833
  store i32 0, i32* %hypre__block1820, align 4
  br label %for.cond.1840

for.cond.1840:                                    ; preds = %for.inc.1950, %if.end.1839
  %1199 = load i32, i32* %hypre__block1820, align 4
  %1200 = load i32, i32* %hypre__num_blocks1821, align 4
  %cmp1841 = icmp slt i32 %1199, %1200
  br i1 %cmp1841, label %for.body.1843, label %for.end.1952

for.body.1843:                                    ; preds = %for.cond.1840
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %1201 = load i32, i32* %hypre__mx1813, align 4
  store i32 %1201, i32* %hypre__nx1807, align 4
  %1202 = load i32, i32* %hypre__my1814, align 4
  store i32 %1202, i32* %hypre__ny1809, align 4
  %1203 = load i32, i32* %hypre__mz1815, align 4
  store i32 %1203, i32* %hypre__nz1811, align 4
  %1204 = load i32, i32* %hypre__num_blocks1821, align 4
  %cmp1844 = icmp sgt i32 %1204, 1
  br i1 %cmp1844, label %if.then.1846, label %if.end.1897

if.then.1846:                                     ; preds = %for.body.1843
  %1205 = load i32, i32* %hypre__dir1816, align 4
  %cmp1847 = icmp eq i32 %1205, 0
  br i1 %cmp1847, label %if.then.1849, label %if.else.1862

if.then.1849:                                     ; preds = %if.then.1846
  %1206 = load i32, i32* %hypre__block1820, align 4
  %1207 = load i32, i32* %hypre__div1818, align 4
  %mul1850 = mul nsw i32 %1206, %1207
  %1208 = load i32, i32* %hypre__mod1819, align 4
  %1209 = load i32, i32* %hypre__block1820, align 4
  %cmp1851 = icmp slt i32 %1208, %1209
  br i1 %cmp1851, label %cond.true.1853, label %cond.false.1854

cond.true.1853:                                   ; preds = %if.then.1849
  %1210 = load i32, i32* %hypre__mod1819, align 4
  br label %cond.end.1855

cond.false.1854:                                  ; preds = %if.then.1849
  %1211 = load i32, i32* %hypre__block1820, align 4
  br label %cond.end.1855

cond.end.1855:                                    ; preds = %cond.false.1854, %cond.true.1853
  %cond1856 = phi i32 [ %1210, %cond.true.1853 ], [ %1211, %cond.false.1854 ]
  %add1857 = add nsw i32 %mul1850, %cond1856
  store i32 %add1857, i32* %loopi, align 4
  %1212 = load i32, i32* %hypre__div1818, align 4
  %1213 = load i32, i32* %hypre__mod1819, align 4
  %1214 = load i32, i32* %hypre__block1820, align 4
  %cmp1858 = icmp sgt i32 %1213, %1214
  %cond1860 = select i1 %cmp1858, i32 1, i32 0
  %add1861 = add nsw i32 %1212, %cond1860
  store i32 %add1861, i32* %hypre__nx1807, align 4
  br label %if.end.1896

if.else.1862:                                     ; preds = %if.then.1846
  %1215 = load i32, i32* %hypre__dir1816, align 4
  %cmp1863 = icmp eq i32 %1215, 1
  br i1 %cmp1863, label %if.then.1865, label %if.else.1878

if.then.1865:                                     ; preds = %if.else.1862
  %1216 = load i32, i32* %hypre__block1820, align 4
  %1217 = load i32, i32* %hypre__div1818, align 4
  %mul1866 = mul nsw i32 %1216, %1217
  %1218 = load i32, i32* %hypre__mod1819, align 4
  %1219 = load i32, i32* %hypre__block1820, align 4
  %cmp1867 = icmp slt i32 %1218, %1219
  br i1 %cmp1867, label %cond.true.1869, label %cond.false.1870

cond.true.1869:                                   ; preds = %if.then.1865
  %1220 = load i32, i32* %hypre__mod1819, align 4
  br label %cond.end.1871

cond.false.1870:                                  ; preds = %if.then.1865
  %1221 = load i32, i32* %hypre__block1820, align 4
  br label %cond.end.1871

cond.end.1871:                                    ; preds = %cond.false.1870, %cond.true.1869
  %cond1872 = phi i32 [ %1220, %cond.true.1869 ], [ %1221, %cond.false.1870 ]
  %add1873 = add nsw i32 %mul1866, %cond1872
  store i32 %add1873, i32* %loopj, align 4
  %1222 = load i32, i32* %hypre__div1818, align 4
  %1223 = load i32, i32* %hypre__mod1819, align 4
  %1224 = load i32, i32* %hypre__block1820, align 4
  %cmp1874 = icmp sgt i32 %1223, %1224
  %cond1876 = select i1 %cmp1874, i32 1, i32 0
  %add1877 = add nsw i32 %1222, %cond1876
  store i32 %add1877, i32* %hypre__ny1809, align 4
  br label %if.end.1895

if.else.1878:                                     ; preds = %if.else.1862
  %1225 = load i32, i32* %hypre__dir1816, align 4
  %cmp1879 = icmp eq i32 %1225, 2
  br i1 %cmp1879, label %if.then.1881, label %if.end.1894

if.then.1881:                                     ; preds = %if.else.1878
  %1226 = load i32, i32* %hypre__block1820, align 4
  %1227 = load i32, i32* %hypre__div1818, align 4
  %mul1882 = mul nsw i32 %1226, %1227
  %1228 = load i32, i32* %hypre__mod1819, align 4
  %1229 = load i32, i32* %hypre__block1820, align 4
  %cmp1883 = icmp slt i32 %1228, %1229
  br i1 %cmp1883, label %cond.true.1885, label %cond.false.1886

cond.true.1885:                                   ; preds = %if.then.1881
  %1230 = load i32, i32* %hypre__mod1819, align 4
  br label %cond.end.1887

cond.false.1886:                                  ; preds = %if.then.1881
  %1231 = load i32, i32* %hypre__block1820, align 4
  br label %cond.end.1887

cond.end.1887:                                    ; preds = %cond.false.1886, %cond.true.1885
  %cond1888 = phi i32 [ %1230, %cond.true.1885 ], [ %1231, %cond.false.1886 ]
  %add1889 = add nsw i32 %mul1882, %cond1888
  store i32 %add1889, i32* %loopk, align 4
  %1232 = load i32, i32* %hypre__div1818, align 4
  %1233 = load i32, i32* %hypre__mod1819, align 4
  %1234 = load i32, i32* %hypre__block1820, align 4
  %cmp1890 = icmp sgt i32 %1233, %1234
  %cond1892 = select i1 %cmp1890, i32 1, i32 0
  %add1893 = add nsw i32 %1232, %cond1892
  store i32 %add1893, i32* %hypre__nz1811, align 4
  br label %if.end.1894

if.end.1894:                                      ; preds = %cond.end.1887, %if.else.1878
  br label %if.end.1895

if.end.1895:                                      ; preds = %if.end.1894, %cond.end.1871
  br label %if.end.1896

if.end.1896:                                      ; preds = %if.end.1895, %cond.end.1855
  br label %if.end.1897

if.end.1897:                                      ; preds = %if.end.1896, %for.body.1843
  %1235 = load i32, i32* %hypre__i1start1575, align 4
  %1236 = load i32, i32* %loopi, align 4
  %1237 = load i32, i32* %hypre__sx11681, align 4
  %mul1898 = mul nsw i32 %1236, %1237
  %add1899 = add nsw i32 %1235, %mul1898
  %1238 = load i32, i32* %loopj, align 4
  %1239 = load i32, i32* %hypre__sy11683, align 4
  %mul1900 = mul nsw i32 %1238, %1239
  %add1901 = add nsw i32 %add1899, %mul1900
  %1240 = load i32, i32* %loopk, align 4
  %1241 = load i32, i32* %hypre__sz11704, align 4
  %mul1902 = mul nsw i32 %1240, %1241
  %add1903 = add nsw i32 %add1901, %mul1902
  store i32 %add1903, i32* %Ai, align 4
  %1242 = load i32, i32* %hypre__i2start1628, align 4
  %1243 = load i32, i32* %loopi, align 4
  %1244 = load i32, i32* %hypre__sx21744, align 4
  %mul1904 = mul nsw i32 %1243, %1244
  %add1905 = add nsw i32 %1242, %mul1904
  %1245 = load i32, i32* %loopj, align 4
  %1246 = load i32, i32* %hypre__sy21746, align 4
  %mul1906 = mul nsw i32 %1245, %1246
  %add1907 = add nsw i32 %add1905, %mul1906
  %1247 = load i32, i32* %loopk, align 4
  %1248 = load i32, i32* %hypre__sz21767, align 4
  %mul1908 = mul nsw i32 %1247, %1248
  %add1909 = add nsw i32 %add1907, %mul1908
  store i32 %add1909, i32* %ti, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1910

for.cond.1910:                                    ; preds = %for.inc.1947, %if.end.1897
  %1249 = load i32, i32* %loopk, align 4
  %1250 = load i32, i32* %hypre__nz1811, align 4
  %cmp1911 = icmp slt i32 %1249, %1250
  br i1 %cmp1911, label %for.body.1913, label %for.end.1949

for.body.1913:                                    ; preds = %for.cond.1910
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1914

for.cond.1914:                                    ; preds = %for.inc.1938, %for.body.1913
  %1251 = load i32, i32* %loopj, align 4
  %1252 = load i32, i32* %hypre__ny1809, align 4
  %cmp1915 = icmp slt i32 %1251, %1252
  br i1 %cmp1915, label %for.body.1917, label %for.end.1940

for.body.1917:                                    ; preds = %for.cond.1914
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1918

for.cond.1918:                                    ; preds = %for.inc.1929, %for.body.1917
  %1253 = load i32, i32* %loopi, align 4
  %1254 = load i32, i32* %hypre__nx1807, align 4
  %cmp1919 = icmp slt i32 %1253, %1254
  br i1 %cmp1919, label %for.body.1921, label %for.end.1931

for.body.1921:                                    ; preds = %for.cond.1918
  %1255 = load i32, i32* %Ai, align 4
  %idxprom1922 = sext i32 %1255 to i64
  %1256 = load double*, double** %Ap, align 8
  %arrayidx1923 = getelementptr inbounds double, double* %1256, i64 %idxprom1922
  %1257 = load double, double* %arrayidx1923, align 8
  %1258 = load i32, i32* %ti, align 4
  %idxprom1924 = sext i32 %1258 to i64
  %1259 = load double*, double** %tp, align 8
  %arrayidx1925 = getelementptr inbounds double, double* %1259, i64 %idxprom1924
  %1260 = load double, double* %arrayidx1925, align 8
  %div1926 = fdiv double %1260, %1257
  store double %div1926, double* %arrayidx1925, align 8
  %1261 = load i32, i32* %hypre__sx11681, align 4
  %1262 = load i32, i32* %Ai, align 4
  %add1927 = add nsw i32 %1262, %1261
  store i32 %add1927, i32* %Ai, align 4
  %1263 = load i32, i32* %hypre__sx21744, align 4
  %1264 = load i32, i32* %ti, align 4
  %add1928 = add nsw i32 %1264, %1263
  store i32 %add1928, i32* %ti, align 4
  br label %for.inc.1929

for.inc.1929:                                     ; preds = %for.body.1921
  %1265 = load i32, i32* %loopi, align 4
  %inc1930 = add nsw i32 %1265, 1
  store i32 %inc1930, i32* %loopi, align 4
  br label %for.cond.1918

for.end.1931:                                     ; preds = %for.cond.1918
  %1266 = load i32, i32* %hypre__sy11683, align 4
  %1267 = load i32, i32* %hypre__nx1807, align 4
  %1268 = load i32, i32* %hypre__sx11681, align 4
  %mul1932 = mul nsw i32 %1267, %1268
  %sub1933 = sub nsw i32 %1266, %mul1932
  %1269 = load i32, i32* %Ai, align 4
  %add1934 = add nsw i32 %1269, %sub1933
  store i32 %add1934, i32* %Ai, align 4
  %1270 = load i32, i32* %hypre__sy21746, align 4
  %1271 = load i32, i32* %hypre__nx1807, align 4
  %1272 = load i32, i32* %hypre__sx21744, align 4
  %mul1935 = mul nsw i32 %1271, %1272
  %sub1936 = sub nsw i32 %1270, %mul1935
  %1273 = load i32, i32* %ti, align 4
  %add1937 = add nsw i32 %1273, %sub1936
  store i32 %add1937, i32* %ti, align 4
  br label %for.inc.1938

for.inc.1938:                                     ; preds = %for.end.1931
  %1274 = load i32, i32* %loopj, align 4
  %inc1939 = add nsw i32 %1274, 1
  store i32 %inc1939, i32* %loopj, align 4
  br label %for.cond.1914

for.end.1940:                                     ; preds = %for.cond.1914
  %1275 = load i32, i32* %hypre__sz11704, align 4
  %1276 = load i32, i32* %hypre__ny1809, align 4
  %1277 = load i32, i32* %hypre__sy11683, align 4
  %mul1941 = mul nsw i32 %1276, %1277
  %sub1942 = sub nsw i32 %1275, %mul1941
  %1278 = load i32, i32* %Ai, align 4
  %add1943 = add nsw i32 %1278, %sub1942
  store i32 %add1943, i32* %Ai, align 4
  %1279 = load i32, i32* %hypre__sz21767, align 4
  %1280 = load i32, i32* %hypre__ny1809, align 4
  %1281 = load i32, i32* %hypre__sy21746, align 4
  %mul1944 = mul nsw i32 %1280, %1281
  %sub1945 = sub nsw i32 %1279, %mul1944
  %1282 = load i32, i32* %ti, align 4
  %add1946 = add nsw i32 %1282, %sub1945
  store i32 %add1946, i32* %ti, align 4
  br label %for.inc.1947

for.inc.1947:                                     ; preds = %for.end.1940
  %1283 = load i32, i32* %loopk, align 4
  %inc1948 = add nsw i32 %1283, 1
  store i32 %inc1948, i32* %loopk, align 4
  br label %for.cond.1910

for.end.1949:                                     ; preds = %for.cond.1910
  br label %for.inc.1950

for.inc.1950:                                     ; preds = %for.end.1949
  %1284 = load i32, i32* %hypre__block1820, align 4
  %inc1951 = add nsw i32 %1284, 1
  store i32 %inc1951, i32* %hypre__block1820, align 4
  br label %for.cond.1840

for.end.1952:                                     ; preds = %for.cond.1840
  br label %for.inc.1953

for.inc.1953:                                     ; preds = %for.end.1952
  %1285 = load i32, i32* %j, align 4
  %inc1954 = add nsw i32 %1285, 1
  store i32 %inc1954, i32* %j, align 4
  br label %for.cond.592

for.end.1955:                                     ; preds = %for.cond.592
  br label %for.inc.1956

for.inc.1956:                                     ; preds = %for.end.1955
  %1286 = load i32, i32* %i, align 4
  %inc1957 = add nsw i32 %1286, 1
  store i32 %inc1957, i32* %i, align 4
  br label %for.cond.556

for.end.1958:                                     ; preds = %for.cond.556
  br label %for.inc.1959

for.inc.1959:                                     ; preds = %for.end.1958
  %1287 = load i32, i32* %compute_i, align 4
  %inc1960 = add nsw i32 %1287, 1
  store i32 %inc1960, i32* %compute_i, align 4
  br label %for.cond.544

for.end.1961:                                     ; preds = %for.cond.544
  %1288 = load double, double* %weight, align 8
  %cmp1962 = fcmp une double %1288, 1.000000e+00
  br i1 %cmp1962, label %if.then.1964, label %if.else.1968

if.then.1964:                                     ; preds = %for.end.1961
  %1289 = load double, double* %weight, align 8
  %sub1965 = fsub double 1.000000e+00, %1289
  %1290 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call1966 = call i32 @hypre_StructScale(double %sub1965, %struct.hypre_StructVector_struct* %1290)
  %1291 = load double, double* %weight, align 8
  %1292 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %1293 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call1967 = call i32 @hypre_StructAxpy(double %1291, %struct.hypre_StructVector_struct* %1292, %struct.hypre_StructVector_struct* %1293)
  br label %if.end.1970

if.else.1968:                                     ; preds = %for.end.1961
  %1294 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t, align 8
  %1295 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call1969 = call i32 @hypre_StructCopy(%struct.hypre_StructVector_struct* %1294, %struct.hypre_StructVector_struct* %1295)
  br label %if.end.1970

if.end.1970:                                      ; preds = %if.else.1968, %if.then.1964
  %1296 = load i32, i32* %p, align 4
  %add1971 = add nsw i32 %1296, 1
  %1297 = load i32, i32* %num_pointsets, align 4
  %rem1972 = srem i32 %add1971, %1297
  store i32 %rem1972, i32* %p, align 4
  %1298 = load i32, i32* %iter, align 4
  %1299 = load i32, i32* %p, align 4
  %cmp1973 = icmp eq i32 %1299, 0
  %conv1974 = zext i1 %cmp1973 to i32
  %add1975 = add nsw i32 %1298, %conv1974
  store i32 %add1975, i32* %iter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1300 = load i32, i32* %iter, align 4
  %1301 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %num_iterations1976 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %1301, i32 0, i32 17
  store i32 %1300, i32* %num_iterations1976, align 4
  %1302 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %flops = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %1302, i32 0, i32 19
  %1303 = load i32, i32* %flops, align 4
  %call1977 = call i32 @hypre_IncFLOPCount(i32 %1303)
  %1304 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %time_index1978 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %1304, i32 0, i32 18
  %1305 = load i32, i32* %time_index1978, align 4
  %call1979 = call i32 @hypre_EndTiming(i32 %1305)
  %1306 = load i32, i32* %ierr, align 4
  store i32 %1306, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %1307 = load i32, i32* %retval
  ret i32 %1307
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_StructVectorSetConstantValues(%struct.hypre_StructVector_struct*, double) #1

declare i32 @hypre_EndTiming(i32) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_StructScale(double, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_StructCopy(%struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

declare i32 @hypre_StructAxpy(double, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #1

declare i32 @hypre_IncFLOPCount(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetTol(i8* %relax_vdata, double %tol) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %tol.addr = alloca double, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store double %tol, double* %tol.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %tol.addr, align 8
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %tol1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 1
  store double %2, double* %tol1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetMaxIter(i8* %relax_vdata, i32 %max_iter) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %max_iter.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %max_iter.addr, align 4
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %max_iter1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 2
  store i32 %2, i32* %max_iter1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetZeroGuess(i8* %relax_vdata, i32 %zero_guess) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %zero_guess.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %zero_guess, i32* %zero_guess.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %zero_guess.addr, align 4
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %zero_guess1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 4
  store i32 %2, i32* %zero_guess1, align 4
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetWeight(i8* %relax_vdata, double %weight) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %weight.addr = alloca double, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store double %weight, double* %weight.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load double, double* %weight.addr, align 8
  %3 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %weight1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %3, i32 0, i32 5
  store double %2, double* %weight1, align 8
  %4 = load i32, i32* %ierr, align 4
  ret i32 %4
}

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetPointsetRank(i8* %relax_vdata, i32 %pointset, i32 %pointset_rank) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %pointset.addr = alloca i32, align 4
  %pointset_rank.addr = alloca i32, align 4
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store i32 %pointset, i32* %pointset.addr, align 4
  store i32 %pointset_rank, i32* %pointset_rank.addr, align 4
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load i32, i32* %pointset_rank.addr, align 4
  %3 = load i32, i32* %pointset.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %pointset_ranks = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %4, i32 0, i32 8
  %5 = load i32*, i32** %pointset_ranks, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_PointRelaxSetTempVec(i8* %relax_vdata, %struct.hypre_StructVector_struct* %t) #0 {
entry:
  %relax_vdata.addr = alloca i8*, align 8
  %t.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %relax_data = alloca %struct.hypre_PointRelaxData*, align 8
  %ierr = alloca i32, align 4
  store i8* %relax_vdata, i8** %relax_vdata.addr, align 8
  store %struct.hypre_StructVector_struct* %t, %struct.hypre_StructVector_struct** %t.addr, align 8
  %0 = load i8*, i8** %relax_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_PointRelaxData*
  store %struct.hypre_PointRelaxData* %1, %struct.hypre_PointRelaxData** %relax_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t1 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %2, i32 0, i32 14
  %3 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t1, align 8
  %call = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %3)
  %4 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %t.addr, align 8
  %call2 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %4)
  %5 = load %struct.hypre_PointRelaxData*, %struct.hypre_PointRelaxData** %relax_data, align 8
  %t3 = getelementptr inbounds %struct.hypre_PointRelaxData, %struct.hypre_PointRelaxData* %5, i32 0, i32 14
  store %struct.hypre_StructVector_struct* %call2, %struct.hypre_StructVector_struct** %t3, align 8
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
