; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/14.SMG2000.smg_residual.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SMGResidualData = type { [3 x i32], [3 x i32], %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_BoxArray_struct*, %struct.hypre_ComputePkg_struct*, i32, i32 }
%struct.hypre_StructMatrix_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct*, i32, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32**, i32, i32*, [6 x i32], i32, %struct.hypre_CommPkg_struct*, i32 }
%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SMGResidual\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_SMGResidualCreate() #0 {
entry:
  %residual_data = alloca %struct.hypre_SMGResidualData*, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 80)
  %0 = bitcast i8* %call to %struct.hypre_SMGResidualData*
  store %struct.hypre_SMGResidualData* %0, %struct.hypre_SMGResidualData** %residual_data, align 8
  %call1 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %1, i32 0, i32 8
  store i32 %call1, i32* %time_index, align 4
  %2 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_index = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %base_index, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %3 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i64 1
  store i32 0, i32* %arrayidx3, align 4
  %4 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_index4 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index4, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4
  %5 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx6, align 4
  %6 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride7 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride7, i32 0, i64 1
  store i32 1, i32* %arrayidx8, align 4
  %7 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride9 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride9, i32 0, i64 2
  store i32 1, i32* %arrayidx10, align 4
  %8 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %9 = bitcast %struct.hypre_SMGResidualData* %8 to i8*
  ret i8* %9
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGResidualSetup(i8* %residual_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %r) #0 {
entry:
  %residual_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %r.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %residual_data = alloca %struct.hypre_SMGResidualData*, align 8
  %base_index = alloca i32*, align 8
  %base_stride = alloca i32*, align 8
  %unit_stride = alloca [3 x i32], align 4
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %base_points = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  store i8* %residual_vdata, i8** %residual_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct** %r.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %residual_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGResidualData*
  store %struct.hypre_SMGResidualData* %1, %struct.hypre_SMGResidualData** %residual_data, align 8
  %2 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_index1 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_index1, i32 0, i32 0
  store i32* %arraydecay, i32** %base_index, align 8
  %3 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride2 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %3, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride2, i32 0, i32 0
  store i32* %arraydecay3, i32** %base_stride, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid4 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 1
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid4, align 8
  store %struct.hypre_StructGrid_struct* %5, %struct.hypre_StructGrid_struct** %grid, align 8
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil5 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 3
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil5, align 8
  store %struct.hypre_StructStencil_struct* %7, %struct.hypre_StructStencil_struct** %stencil, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx7, align 4
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %8, i32 0, i32 2
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %9)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %base_points, align 8
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %11 = load i32*, i32** %base_index, align 8
  %12 = load i32*, i32** %base_stride, align 8
  %call8 = call i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct* %10, i32* %11, i32* %12)
  %13 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %14 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call9 = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %13, %struct.hypre_StructStencil_struct* %14, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %15 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %16 = load i32*, i32** %base_index, align 8
  %17 = load i32*, i32** %base_stride, align 8
  %call10 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %15, i32* %16, i32* %17)
  %18 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %19 = load i32*, i32** %base_index, align 8
  %20 = load i32*, i32** %base_stride, align 8
  %call11 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %18, i32* %19, i32* %20)
  %21 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %22 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay12 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %23 = load i32**, i32*** %send_processes, align 8
  %24 = load i32**, i32*** %recv_processes, align 8
  %25 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %26 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %27 = load i32*, i32** %base_stride, align 8
  %28 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %29 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %29, i32 0, i32 2
  %30 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call14 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %21, %struct.hypre_BoxArrayArray_struct* %22, i32* %arraydecay12, i32* %arraydecay13, i32** %23, i32** %24, %struct.hypre_BoxArrayArray_struct* %25, %struct.hypre_BoxArrayArray_struct* %26, i32* %27, %struct.hypre_StructGrid_struct* %28, %struct.hypre_BoxArray_struct* %30, i32 1, %struct.hypre_ComputePkg_struct** %compute_pkg)
  %31 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call15 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %31)
  %32 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %A16 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %32, i32 0, i32 2
  store %struct.hypre_StructMatrix_struct* %call15, %struct.hypre_StructMatrix_struct** %A16, align 8
  %33 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call17 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %33)
  %34 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %x18 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %34, i32 0, i32 3
  store %struct.hypre_StructVector_struct* %call17, %struct.hypre_StructVector_struct** %x18, align 8
  %35 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %call19 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %35)
  %36 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %b20 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %36, i32 0, i32 4
  store %struct.hypre_StructVector_struct* %call19, %struct.hypre_StructVector_struct** %b20, align 8
  %37 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %call21 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %37)
  %38 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %r22 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %38, i32 0, i32 5
  store %struct.hypre_StructVector_struct* %call21, %struct.hypre_StructVector_struct** %r22, align 8
  %39 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %40 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_points23 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %40, i32 0, i32 6
  store %struct.hypre_BoxArray_struct* %39, %struct.hypre_BoxArray_struct** %base_points23, align 8
  %41 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %42 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %compute_pkg24 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %42, i32 0, i32 7
  store %struct.hypre_ComputePkg_struct* %41, %struct.hypre_ComputePkg_struct** %compute_pkg24, align 8
  %43 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %43, i32 0, i32 13
  %44 = load i32, i32* %global_size, align 4
  %45 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %global_size25 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %45, i32 0, i32 8
  %46 = load i32, i32* %global_size25, align 4
  %add = add nsw i32 %44, %46
  %47 = load i32*, i32** %base_stride, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx26, align 4
  %49 = load i32*, i32** %base_stride, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx27, align 4
  %mul = mul nsw i32 %48, %50
  %51 = load i32*, i32** %base_stride, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %51, i64 2
  %52 = load i32, i32* %arrayidx28, align 4
  %mul29 = mul nsw i32 %mul, %52
  %div = sdiv i32 %add, %mul29
  %53 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %flops = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %53, i32 0, i32 9
  store i32 %div, i32* %flops, align 4
  %54 = load i32, i32* %ierr, align 4
  ret i32 %54
}

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_ProjectBoxArray(%struct.hypre_BoxArray_struct*, i32*, i32*) #1

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct*, i32*, i32*) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGResidual(i8* %residual_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct* %r) #0 {
entry:
  %residual_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %b.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %r.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %residual_data = alloca %struct.hypre_SMGResidualData*, align 8
  %base_stride = alloca i32*, align 8
  %base_points = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %A_data_box = alloca %struct.hypre_Box_struct*, align 8
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %b_data_box = alloca %struct.hypre_Box_struct*, align 8
  %r_data_box = alloca %struct.hypre_Box_struct*, align 8
  %Ai = alloca i32, align 4
  %xi = alloca i32, align 4
  %bi = alloca i32, align 4
  %ri = alloca i32, align 4
  %Ap = alloca double*, align 8
  %xp = alloca double*, align 8
  %bp = alloca double*, align 8
  %rp = alloca double*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %compute_i = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %si = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
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
  %hypre__i1start448 = alloca i32, align 4
  %hypre__i2start499 = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__sx1600 = alloca i32, align 4
  %hypre__sy1602 = alloca i32, align 4
  %hypre__sz1622 = alloca i32, align 4
  %hypre__sx2660 = alloca i32, align 4
  %hypre__sy2662 = alloca i32, align 4
  %hypre__sz2682 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__nx777 = alloca i32, align 4
  %hypre__ny779 = alloca i32, align 4
  %hypre__nz781 = alloca i32, align 4
  %hypre__mx783 = alloca i32, align 4
  %hypre__my784 = alloca i32, align 4
  %hypre__mz785 = alloca i32, align 4
  %hypre__dir786 = alloca i32, align 4
  %hypre__max787 = alloca i32, align 4
  %hypre__div788 = alloca i32, align 4
  %hypre__mod789 = alloca i32, align 4
  %hypre__block790 = alloca i32, align 4
  %hypre__num_blocks791 = alloca i32, align 4
  store i8* %residual_vdata, i8** %residual_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store %struct.hypre_StructVector_struct* %b, %struct.hypre_StructVector_struct** %b.addr, align 8
  store %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct** %r.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %residual_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGResidualData*
  store %struct.hypre_SMGResidualData* %1, %struct.hypre_SMGResidualData** %residual_data, align 8
  %2 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride1 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride1, i32 0, i32 0
  store i32* %arraydecay, i32** %base_stride, align 8
  %3 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_points2 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %3, i32 0, i32 6
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points2, align 8
  store %struct.hypre_BoxArray_struct* %4, %struct.hypre_BoxArray_struct** %base_points, align 8
  %5 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %compute_pkg3 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %5, i32 0, i32 7
  %6 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg3, align 8
  store %struct.hypre_ComputePkg_struct* %6, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %7 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %7, i32 0, i32 8
  %8 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %8)
  %9 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil4 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %9, i32 0, i32 3
  %10 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil4, align 8
  store %struct.hypre_StructStencil_struct* %10, %struct.hypre_StructStencil_struct** %stencil, align 8
  %11 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %11, i32 0, i32 0
  %12 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %12, [3 x i32]** %stencil_shape, align 8
  %13 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  store i32 %14, i32* %stencil_size, align 4
  store i32 0, i32* %compute_i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.930, %entry
  %15 = load i32, i32* %compute_i, align 4
  %cmp = icmp slt i32 %15, 2
  br i1 %cmp, label %for.body, label %for.end.932

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %compute_i, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.345
  ]

sw.bb:                                            ; preds = %for.body
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 3
  %18 = load double*, double** %data, align 8
  store double* %18, double** %xp, align 8
  %19 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %20 = load double*, double** %xp, align 8
  %call5 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %19, double* %20, %struct.hypre_CommHandle_struct** %comm_handle)
  %21 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %21, i32 0, i32 1
  %22 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %22, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  store %struct.hypre_BoxArray_struct* %23, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.342, %sw.bb
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %25, i32 0, i32 1
  %26 = load i32, i32* %size7, align 4
  %cmp8 = icmp slt i32 %24, %26
  br i1 %cmp8, label %for.body.9, label %for.end.344

for.body.9:                                       ; preds = %for.cond.6
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %28, i32 0, i32 0
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %compute_box, align 8
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay10, i32** %start, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %31 to i64
  %32 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %32, i32 0, i32 2
  %33 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes12 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %33, i32 0, i32 0
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes12, align 8
  %arrayidx13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i64 %idxprom11
  store %struct.hypre_Box_struct* %arrayidx13, %struct.hypre_Box_struct** %b_data_box, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %35 to i64
  %36 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_space15 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %36, i32 0, i32 2
  %37 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space15, align 8
  %boxes16 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %37, i32 0, i32 0
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes16, align 8
  %arrayidx17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i64 %idxprom14
  store %struct.hypre_Box_struct* %arrayidx17, %struct.hypre_Box_struct** %r_data_box, align 8
  %39 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data18 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %39, i32 0, i32 3
  %40 = load double*, double** %data18, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %41 to i64
  %42 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %42, i32 0, i32 6
  %43 = load i32*, i32** %data_indices, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %43, i64 %idxprom19
  %44 = load i32, i32* %arrayidx20, align 4
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds double, double* %40, i64 %idx.ext
  store double* %add.ptr, double** %bp, align 8
  %45 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data21 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %45, i32 0, i32 3
  %46 = load double*, double** %data21, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %47 to i64
  %48 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_indices23 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %48, i32 0, i32 6
  %49 = load i32*, i32** %data_indices23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %49, i64 %idxprom22
  %50 = load i32, i32* %arrayidx24, align 4
  %idx.ext25 = sext i32 %50 to i64
  %add.ptr26 = getelementptr inbounds double, double* %46, i64 %idx.ext25
  store double* %add.ptr26, double** %rp, align 8
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %52 = load i32*, i32** %base_stride, align 8
  %arraydecay27 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call28 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %51, i32* %52, i32* %arraydecay27)
  %53 = load i32*, i32** %start, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx29, align 4
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imin30, i32 0, i64 0
  %56 = load i32, i32* %arrayidx31, align 4
  %sub = sub nsw i32 %54, %56
  %57 = load i32*, i32** %start, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %57, i64 1
  %58 = load i32, i32* %arrayidx32, align 4
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imin33, i32 0, i64 1
  %60 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %58, %60
  %61 = load i32*, i32** %start, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %61, i64 2
  %62 = load i32, i32* %arrayidx36, align 4
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 2
  %64 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %62, %64
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %66 = load i32, i32* %arrayidx40, align 4
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %imin41, i32 0, i64 1
  %68 = load i32, i32* %arrayidx42, align 4
  %sub43 = sub nsw i32 %66, %68
  %add = add nsw i32 %sub43, 1
  %cmp44 = icmp slt i32 0, %add
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.9
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 1
  %70 = load i32, i32* %arrayidx46, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %imin47, i32 0, i64 1
  %72 = load i32, i32* %arrayidx48, align 4
  %sub49 = sub nsw i32 %70, %72
  %add50 = add nsw i32 %sub49, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add50, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub39, %cond
  %add51 = add nsw i32 %sub35, %mul
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imax52, i32 0, i64 0
  %74 = load i32, i32* %arrayidx53, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 0
  %76 = load i32, i32* %arrayidx55, align 4
  %sub56 = sub nsw i32 %74, %76
  %add57 = add nsw i32 %sub56, 1
  %cmp58 = icmp slt i32 0, %add57
  br i1 %cmp58, label %cond.true.59, label %cond.false.66

cond.true.59:                                     ; preds = %cond.end
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imax60, i32 0, i64 0
  %78 = load i32, i32* %arrayidx61, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imin62, i32 0, i64 0
  %80 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %78, %80
  %add65 = add nsw i32 %sub64, 1
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.59
  %cond68 = phi i32 [ %add65, %cond.true.59 ], [ 0, %cond.false.66 ]
  %mul69 = mul nsw i32 %add51, %cond68
  %add70 = add nsw i32 %sub, %mul69
  store i32 %add70, i32* %hypre__i1start, align 4
  %81 = load i32*, i32** %start, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx71, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imin72, i32 0, i64 0
  %84 = load i32, i32* %arrayidx73, align 4
  %sub74 = sub nsw i32 %82, %84
  %85 = load i32*, i32** %start, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %85, i64 1
  %86 = load i32, i32* %arrayidx75, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 1
  %88 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %86, %88
  %89 = load i32*, i32** %start, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %89, i64 2
  %90 = load i32, i32* %arrayidx79, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imin80, i32 0, i64 2
  %92 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 %90, %92
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 1
  %94 = load i32, i32* %arrayidx84, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 1
  %96 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %94, %96
  %add88 = add nsw i32 %sub87, 1
  %cmp89 = icmp slt i32 0, %add88
  br i1 %cmp89, label %cond.true.90, label %cond.false.97

cond.true.90:                                     ; preds = %cond.end.67
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imax91, i32 0, i64 1
  %98 = load i32, i32* %arrayidx92, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imin93, i32 0, i64 1
  %100 = load i32, i32* %arrayidx94, align 4
  %sub95 = sub nsw i32 %98, %100
  %add96 = add nsw i32 %sub95, 1
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.end.67
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.90
  %cond99 = phi i32 [ %add96, %cond.true.90 ], [ 0, %cond.false.97 ]
  %mul100 = mul nsw i32 %sub82, %cond99
  %add101 = add nsw i32 %sub78, %mul100
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 0
  %102 = load i32, i32* %arrayidx103, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 0
  %104 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %102, %104
  %add107 = add nsw i32 %sub106, 1
  %cmp108 = icmp slt i32 0, %add107
  br i1 %cmp108, label %cond.true.109, label %cond.false.116

cond.true.109:                                    ; preds = %cond.end.98
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax110, i32 0, i64 0
  %106 = load i32, i32* %arrayidx111, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin112, i32 0, i64 0
  %108 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %106, %108
  %add115 = add nsw i32 %sub114, 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.98
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.109
  %cond118 = phi i32 [ %add115, %cond.true.109 ], [ 0, %cond.false.116 ]
  %mul119 = mul nsw i32 %add101, %cond118
  %add120 = add nsw i32 %sub74, %mul119
  store i32 %add120, i32* %hypre__i2start, align 4
  %109 = load i32*, i32** %base_stride, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %109, i64 0
  %110 = load i32, i32* %arrayidx121, align 4
  store i32 %110, i32* %hypre__sx1, align 4
  %111 = load i32*, i32** %base_stride, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %111, i64 1
  %112 = load i32, i32* %arrayidx122, align 4
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax123, i32 0, i64 0
  %114 = load i32, i32* %arrayidx124, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imin125, i32 0, i64 0
  %116 = load i32, i32* %arrayidx126, align 4
  %sub127 = sub nsw i32 %114, %116
  %add128 = add nsw i32 %sub127, 1
  %cmp129 = icmp slt i32 0, %add128
  br i1 %cmp129, label %cond.true.130, label %cond.false.137

cond.true.130:                                    ; preds = %cond.end.117
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imax131, i32 0, i64 0
  %118 = load i32, i32* %arrayidx132, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imin133, i32 0, i64 0
  %120 = load i32, i32* %arrayidx134, align 4
  %sub135 = sub nsw i32 %118, %120
  %add136 = add nsw i32 %sub135, 1
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end.117
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.130
  %cond139 = phi i32 [ %add136, %cond.true.130 ], [ 0, %cond.false.137 ]
  %mul140 = mul nsw i32 %112, %cond139
  store i32 %mul140, i32* %hypre__sy1, align 4
  %121 = load i32*, i32** %base_stride, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %121, i64 2
  %122 = load i32, i32* %arrayidx141, align 4
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %123, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 0
  %124 = load i32, i32* %arrayidx143, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 0
  %126 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %124, %126
  %add147 = add nsw i32 %sub146, 1
  %cmp148 = icmp slt i32 0, %add147
  br i1 %cmp148, label %cond.true.149, label %cond.false.156

cond.true.149:                                    ; preds = %cond.end.138
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 0
  %128 = load i32, i32* %arrayidx151, align 4
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin152, i32 0, i64 0
  %130 = load i32, i32* %arrayidx153, align 4
  %sub154 = sub nsw i32 %128, %130
  %add155 = add nsw i32 %sub154, 1
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.138
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.149
  %cond158 = phi i32 [ %add155, %cond.true.149 ], [ 0, %cond.false.156 ]
  %mul159 = mul nsw i32 %122, %cond158
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax160 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %imax160, i32 0, i64 1
  %132 = load i32, i32* %arrayidx161, align 4
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imin162, i32 0, i64 1
  %134 = load i32, i32* %arrayidx163, align 4
  %sub164 = sub nsw i32 %132, %134
  %add165 = add nsw i32 %sub164, 1
  %cmp166 = icmp slt i32 0, %add165
  br i1 %cmp166, label %cond.true.167, label %cond.false.174

cond.true.167:                                    ; preds = %cond.end.157
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imax168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [3 x i32], [3 x i32]* %imax168, i32 0, i64 1
  %136 = load i32, i32* %arrayidx169, align 4
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %b_data_box, align 8
  %imin170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %imin170, i32 0, i64 1
  %138 = load i32, i32* %arrayidx171, align 4
  %sub172 = sub nsw i32 %136, %138
  %add173 = add nsw i32 %sub172, 1
  br label %cond.end.175

cond.false.174:                                   ; preds = %cond.end.157
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.167
  %cond176 = phi i32 [ %add173, %cond.true.167 ], [ 0, %cond.false.174 ]
  %mul177 = mul nsw i32 %mul159, %cond176
  store i32 %mul177, i32* %hypre__sz1, align 4
  %139 = load i32*, i32** %base_stride, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %139, i64 0
  %140 = load i32, i32* %arrayidx178, align 4
  store i32 %140, i32* %hypre__sx2, align 4
  %141 = load i32*, i32** %base_stride, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %141, i64 1
  %142 = load i32, i32* %arrayidx179, align 4
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax180, i32 0, i64 0
  %144 = load i32, i32* %arrayidx181, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin182, i32 0, i64 0
  %146 = load i32, i32* %arrayidx183, align 4
  %sub184 = sub nsw i32 %144, %146
  %add185 = add nsw i32 %sub184, 1
  %cmp186 = icmp slt i32 0, %add185
  br i1 %cmp186, label %cond.true.187, label %cond.false.194

cond.true.187:                                    ; preds = %cond.end.175
  %147 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %147, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [3 x i32], [3 x i32]* %imax188, i32 0, i64 0
  %148 = load i32, i32* %arrayidx189, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %imin190, i32 0, i64 0
  %150 = load i32, i32* %arrayidx191, align 4
  %sub192 = sub nsw i32 %148, %150
  %add193 = add nsw i32 %sub192, 1
  br label %cond.end.195

cond.false.194:                                   ; preds = %cond.end.175
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.194, %cond.true.187
  %cond196 = phi i32 [ %add193, %cond.true.187 ], [ 0, %cond.false.194 ]
  %mul197 = mul nsw i32 %142, %cond196
  store i32 %mul197, i32* %hypre__sy2, align 4
  %151 = load i32*, i32** %base_stride, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %151, i64 2
  %152 = load i32, i32* %arrayidx198, align 4
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 0
  %154 = load i32, i32* %arrayidx200, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 0
  %156 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %154, %156
  %add204 = add nsw i32 %sub203, 1
  %cmp205 = icmp slt i32 0, %add204
  br i1 %cmp205, label %cond.true.206, label %cond.false.213

cond.true.206:                                    ; preds = %cond.end.195
  %157 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %157, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax207, i32 0, i64 0
  %158 = load i32, i32* %arrayidx208, align 4
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imin209, i32 0, i64 0
  %160 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %158, %160
  %add212 = add nsw i32 %sub211, 1
  br label %cond.end.214

cond.false.213:                                   ; preds = %cond.end.195
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.true.206
  %cond215 = phi i32 [ %add212, %cond.true.206 ], [ 0, %cond.false.213 ]
  %mul216 = mul nsw i32 %152, %cond215
  %161 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax217 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %161, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %imax217, i32 0, i64 1
  %162 = load i32, i32* %arrayidx218, align 4
  %163 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %163, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imin219, i32 0, i64 1
  %164 = load i32, i32* %arrayidx220, align 4
  %sub221 = sub nsw i32 %162, %164
  %add222 = add nsw i32 %sub221, 1
  %cmp223 = icmp slt i32 0, %add222
  br i1 %cmp223, label %cond.true.224, label %cond.false.231

cond.true.224:                                    ; preds = %cond.end.214
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax225, i32 0, i64 1
  %166 = load i32, i32* %arrayidx226, align 4
  %167 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %167, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin227, i32 0, i64 1
  %168 = load i32, i32* %arrayidx228, align 4
  %sub229 = sub nsw i32 %166, %168
  %add230 = add nsw i32 %sub229, 1
  br label %cond.end.232

cond.false.231:                                   ; preds = %cond.end.214
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.231, %cond.true.224
  %cond233 = phi i32 [ %add230, %cond.true.224 ], [ 0, %cond.false.231 ]
  %mul234 = mul nsw i32 %mul216, %cond233
  store i32 %mul234, i32* %hypre__sz2, align 4
  %arrayidx235 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %169 = load i32, i32* %arrayidx235, align 4
  store i32 %169, i32* %hypre__nx, align 4
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %170 = load i32, i32* %arrayidx236, align 4
  store i32 %170, i32* %hypre__ny, align 4
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %171 = load i32, i32* %arrayidx237, align 4
  store i32 %171, i32* %hypre__nz, align 4
  %172 = load i32, i32* %hypre__nx, align 4
  store i32 %172, i32* %hypre__mx, align 4
  %173 = load i32, i32* %hypre__ny, align 4
  store i32 %173, i32* %hypre__my, align 4
  %174 = load i32, i32* %hypre__nz, align 4
  store i32 %174, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %175 = load i32, i32* %hypre__nx, align 4
  store i32 %175, i32* %hypre__max, align 4
  %176 = load i32, i32* %hypre__ny, align 4
  %177 = load i32, i32* %hypre__max, align 4
  %cmp238 = icmp sgt i32 %176, %177
  br i1 %cmp238, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.232
  store i32 1, i32* %hypre__dir, align 4
  %178 = load i32, i32* %hypre__ny, align 4
  store i32 %178, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.232
  %179 = load i32, i32* %hypre__nz, align 4
  %180 = load i32, i32* %hypre__max, align 4
  %cmp239 = icmp sgt i32 %179, %180
  br i1 %cmp239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %181 = load i32, i32* %hypre__nz, align 4
  store i32 %181, i32* %hypre__max, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %182 = load i32, i32* %hypre__max, align 4
  %183 = load i32, i32* %hypre__num_blocks, align 4
  %cmp242 = icmp slt i32 %182, %183
  br i1 %cmp242, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.241
  %184 = load i32, i32* %hypre__max, align 4
  store i32 %184, i32* %hypre__num_blocks, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.end.241
  %185 = load i32, i32* %hypre__num_blocks, align 4
  %cmp245 = icmp sgt i32 %185, 0
  br i1 %cmp245, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.244
  %186 = load i32, i32* %hypre__max, align 4
  %187 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %186, %187
  store i32 %div, i32* %hypre__div, align 4
  %188 = load i32, i32* %hypre__max, align 4
  %189 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %188, %189
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %if.end.244
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.339, %if.end.247
  %190 = load i32, i32* %hypre__block, align 4
  %191 = load i32, i32* %hypre__num_blocks, align 4
  %cmp249 = icmp slt i32 %190, %191
  br i1 %cmp249, label %for.body.250, label %for.end.341

for.body.250:                                     ; preds = %for.cond.248
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %192 = load i32, i32* %hypre__mx, align 4
  store i32 %192, i32* %hypre__nx, align 4
  %193 = load i32, i32* %hypre__my, align 4
  store i32 %193, i32* %hypre__ny, align 4
  %194 = load i32, i32* %hypre__mz, align 4
  store i32 %194, i32* %hypre__nz, align 4
  %195 = load i32, i32* %hypre__num_blocks, align 4
  %cmp251 = icmp sgt i32 %195, 1
  br i1 %cmp251, label %if.then.252, label %if.end.293

if.then.252:                                      ; preds = %for.body.250
  %196 = load i32, i32* %hypre__dir, align 4
  %cmp253 = icmp eq i32 %196, 0
  br i1 %cmp253, label %if.then.254, label %if.else

if.then.254:                                      ; preds = %if.then.252
  %197 = load i32, i32* %hypre__block, align 4
  %198 = load i32, i32* %hypre__div, align 4
  %mul255 = mul nsw i32 %197, %198
  %199 = load i32, i32* %hypre__mod, align 4
  %200 = load i32, i32* %hypre__block, align 4
  %cmp256 = icmp slt i32 %199, %200
  br i1 %cmp256, label %cond.true.257, label %cond.false.258

cond.true.257:                                    ; preds = %if.then.254
  %201 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.259

cond.false.258:                                   ; preds = %if.then.254
  %202 = load i32, i32* %hypre__block, align 4
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.258, %cond.true.257
  %cond260 = phi i32 [ %201, %cond.true.257 ], [ %202, %cond.false.258 ]
  %add261 = add nsw i32 %mul255, %cond260
  store i32 %add261, i32* %loopi, align 4
  %203 = load i32, i32* %hypre__div, align 4
  %204 = load i32, i32* %hypre__mod, align 4
  %205 = load i32, i32* %hypre__block, align 4
  %cmp262 = icmp sgt i32 %204, %205
  %cond263 = select i1 %cmp262, i32 1, i32 0
  %add264 = add nsw i32 %203, %cond263
  store i32 %add264, i32* %hypre__nx, align 4
  br label %if.end.292

if.else:                                          ; preds = %if.then.252
  %206 = load i32, i32* %hypre__dir, align 4
  %cmp265 = icmp eq i32 %206, 1
  br i1 %cmp265, label %if.then.266, label %if.else.277

if.then.266:                                      ; preds = %if.else
  %207 = load i32, i32* %hypre__block, align 4
  %208 = load i32, i32* %hypre__div, align 4
  %mul267 = mul nsw i32 %207, %208
  %209 = load i32, i32* %hypre__mod, align 4
  %210 = load i32, i32* %hypre__block, align 4
  %cmp268 = icmp slt i32 %209, %210
  br i1 %cmp268, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %if.then.266
  %211 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.271

cond.false.270:                                   ; preds = %if.then.266
  %212 = load i32, i32* %hypre__block, align 4
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.269
  %cond272 = phi i32 [ %211, %cond.true.269 ], [ %212, %cond.false.270 ]
  %add273 = add nsw i32 %mul267, %cond272
  store i32 %add273, i32* %loopj, align 4
  %213 = load i32, i32* %hypre__div, align 4
  %214 = load i32, i32* %hypre__mod, align 4
  %215 = load i32, i32* %hypre__block, align 4
  %cmp274 = icmp sgt i32 %214, %215
  %cond275 = select i1 %cmp274, i32 1, i32 0
  %add276 = add nsw i32 %213, %cond275
  store i32 %add276, i32* %hypre__ny, align 4
  br label %if.end.291

if.else.277:                                      ; preds = %if.else
  %216 = load i32, i32* %hypre__dir, align 4
  %cmp278 = icmp eq i32 %216, 2
  br i1 %cmp278, label %if.then.279, label %if.end.290

if.then.279:                                      ; preds = %if.else.277
  %217 = load i32, i32* %hypre__block, align 4
  %218 = load i32, i32* %hypre__div, align 4
  %mul280 = mul nsw i32 %217, %218
  %219 = load i32, i32* %hypre__mod, align 4
  %220 = load i32, i32* %hypre__block, align 4
  %cmp281 = icmp slt i32 %219, %220
  br i1 %cmp281, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %if.then.279
  %221 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.284

cond.false.283:                                   ; preds = %if.then.279
  %222 = load i32, i32* %hypre__block, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.282
  %cond285 = phi i32 [ %221, %cond.true.282 ], [ %222, %cond.false.283 ]
  %add286 = add nsw i32 %mul280, %cond285
  store i32 %add286, i32* %loopk, align 4
  %223 = load i32, i32* %hypre__div, align 4
  %224 = load i32, i32* %hypre__mod, align 4
  %225 = load i32, i32* %hypre__block, align 4
  %cmp287 = icmp sgt i32 %224, %225
  %cond288 = select i1 %cmp287, i32 1, i32 0
  %add289 = add nsw i32 %223, %cond288
  store i32 %add289, i32* %hypre__nz, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %cond.end.284, %if.else.277
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %cond.end.271
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %cond.end.259
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %for.body.250
  %226 = load i32, i32* %hypre__i1start, align 4
  %227 = load i32, i32* %loopi, align 4
  %228 = load i32, i32* %hypre__sx1, align 4
  %mul294 = mul nsw i32 %227, %228
  %add295 = add nsw i32 %226, %mul294
  %229 = load i32, i32* %loopj, align 4
  %230 = load i32, i32* %hypre__sy1, align 4
  %mul296 = mul nsw i32 %229, %230
  %add297 = add nsw i32 %add295, %mul296
  %231 = load i32, i32* %loopk, align 4
  %232 = load i32, i32* %hypre__sz1, align 4
  %mul298 = mul nsw i32 %231, %232
  %add299 = add nsw i32 %add297, %mul298
  store i32 %add299, i32* %bi, align 4
  %233 = load i32, i32* %hypre__i2start, align 4
  %234 = load i32, i32* %loopi, align 4
  %235 = load i32, i32* %hypre__sx2, align 4
  %mul300 = mul nsw i32 %234, %235
  %add301 = add nsw i32 %233, %mul300
  %236 = load i32, i32* %loopj, align 4
  %237 = load i32, i32* %hypre__sy2, align 4
  %mul302 = mul nsw i32 %236, %237
  %add303 = add nsw i32 %add301, %mul302
  %238 = load i32, i32* %loopk, align 4
  %239 = load i32, i32* %hypre__sz2, align 4
  %mul304 = mul nsw i32 %238, %239
  %add305 = add nsw i32 %add303, %mul304
  store i32 %add305, i32* %ri, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.336, %if.end.293
  %240 = load i32, i32* %loopk, align 4
  %241 = load i32, i32* %hypre__nz, align 4
  %cmp307 = icmp slt i32 %240, %241
  br i1 %cmp307, label %for.body.308, label %for.end.338

for.body.308:                                     ; preds = %for.cond.306
  store i32 0, i32* %loopj, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.327, %for.body.308
  %242 = load i32, i32* %loopj, align 4
  %243 = load i32, i32* %hypre__ny, align 4
  %cmp310 = icmp slt i32 %242, %243
  br i1 %cmp310, label %for.body.311, label %for.end.329

for.body.311:                                     ; preds = %for.cond.309
  store i32 0, i32* %loopi, align 4
  br label %for.cond.312

for.cond.312:                                     ; preds = %for.inc, %for.body.311
  %244 = load i32, i32* %loopi, align 4
  %245 = load i32, i32* %hypre__nx, align 4
  %cmp313 = icmp slt i32 %244, %245
  br i1 %cmp313, label %for.body.314, label %for.end

for.body.314:                                     ; preds = %for.cond.312
  %246 = load i32, i32* %bi, align 4
  %idxprom315 = sext i32 %246 to i64
  %247 = load double*, double** %bp, align 8
  %arrayidx316 = getelementptr inbounds double, double* %247, i64 %idxprom315
  %248 = load double, double* %arrayidx316, align 8
  %249 = load i32, i32* %ri, align 4
  %idxprom317 = sext i32 %249 to i64
  %250 = load double*, double** %rp, align 8
  %arrayidx318 = getelementptr inbounds double, double* %250, i64 %idxprom317
  store double %248, double* %arrayidx318, align 8
  %251 = load i32, i32* %hypre__sx1, align 4
  %252 = load i32, i32* %bi, align 4
  %add319 = add nsw i32 %252, %251
  store i32 %add319, i32* %bi, align 4
  %253 = load i32, i32* %hypre__sx2, align 4
  %254 = load i32, i32* %ri, align 4
  %add320 = add nsw i32 %254, %253
  store i32 %add320, i32* %ri, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.314
  %255 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %255, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.312

for.end:                                          ; preds = %for.cond.312
  %256 = load i32, i32* %hypre__sy1, align 4
  %257 = load i32, i32* %hypre__nx, align 4
  %258 = load i32, i32* %hypre__sx1, align 4
  %mul321 = mul nsw i32 %257, %258
  %sub322 = sub nsw i32 %256, %mul321
  %259 = load i32, i32* %bi, align 4
  %add323 = add nsw i32 %259, %sub322
  store i32 %add323, i32* %bi, align 4
  %260 = load i32, i32* %hypre__sy2, align 4
  %261 = load i32, i32* %hypre__nx, align 4
  %262 = load i32, i32* %hypre__sx2, align 4
  %mul324 = mul nsw i32 %261, %262
  %sub325 = sub nsw i32 %260, %mul324
  %263 = load i32, i32* %ri, align 4
  %add326 = add nsw i32 %263, %sub325
  store i32 %add326, i32* %ri, align 4
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.end
  %264 = load i32, i32* %loopj, align 4
  %inc328 = add nsw i32 %264, 1
  store i32 %inc328, i32* %loopj, align 4
  br label %for.cond.309

for.end.329:                                      ; preds = %for.cond.309
  %265 = load i32, i32* %hypre__sz1, align 4
  %266 = load i32, i32* %hypre__ny, align 4
  %267 = load i32, i32* %hypre__sy1, align 4
  %mul330 = mul nsw i32 %266, %267
  %sub331 = sub nsw i32 %265, %mul330
  %268 = load i32, i32* %bi, align 4
  %add332 = add nsw i32 %268, %sub331
  store i32 %add332, i32* %bi, align 4
  %269 = load i32, i32* %hypre__sz2, align 4
  %270 = load i32, i32* %hypre__ny, align 4
  %271 = load i32, i32* %hypre__sy2, align 4
  %mul333 = mul nsw i32 %270, %271
  %sub334 = sub nsw i32 %269, %mul333
  %272 = load i32, i32* %ri, align 4
  %add335 = add nsw i32 %272, %sub334
  store i32 %add335, i32* %ri, align 4
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.end.329
  %273 = load i32, i32* %loopk, align 4
  %inc337 = add nsw i32 %273, 1
  store i32 %inc337, i32* %loopk, align 4
  br label %for.cond.306

for.end.338:                                      ; preds = %for.cond.306
  br label %for.inc.339

for.inc.339:                                      ; preds = %for.end.338
  %274 = load i32, i32* %hypre__block, align 4
  %inc340 = add nsw i32 %274, 1
  store i32 %inc340, i32* %hypre__block, align 4
  br label %for.cond.248

for.end.341:                                      ; preds = %for.cond.248
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.end.341
  %275 = load i32, i32* %i, align 4
  %inc343 = add nsw i32 %275, 1
  store i32 %inc343, i32* %i, align 4
  br label %for.cond.6

for.end.344:                                      ; preds = %for.cond.6
  br label %sw.epilog

sw.bb.345:                                        ; preds = %for.body
  %276 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call346 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %276)
  %277 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %277, i32 0, i32 2
  %278 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %278, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.345, %for.end.344
  store i32 0, i32* %i, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.927, %sw.epilog
  %279 = load i32, i32* %i, align 4
  %280 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size348 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %280, i32 0, i32 1
  %281 = load i32, i32* %size348, align 4
  %cmp349 = icmp slt i32 %279, %281
  br i1 %cmp349, label %for.body.350, label %for.end.929

for.body.350:                                     ; preds = %for.cond.347
  %282 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %282 to i64
  %283 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %283, i32 0, i32 0
  %284 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx352 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %284, i64 %idxprom351
  %285 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx352, align 8
  store %struct.hypre_BoxArray_struct* %285, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %286 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %286 to i64
  %287 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space354 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %287, i32 0, i32 5
  %288 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space354, align 8
  %boxes355 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %288, i32 0, i32 0
  %289 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes355, align 8
  %arrayidx356 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %289, i64 %idxprom353
  store %struct.hypre_Box_struct* %arrayidx356, %struct.hypre_Box_struct** %A_data_box, align 8
  %290 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %290 to i64
  %291 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space358 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %291, i32 0, i32 2
  %292 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space358, align 8
  %boxes359 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %292, i32 0, i32 0
  %293 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes359, align 8
  %arrayidx360 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %293, i64 %idxprom357
  store %struct.hypre_Box_struct* %arrayidx360, %struct.hypre_Box_struct** %x_data_box, align 8
  %294 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %294 to i64
  %295 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_space362 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %295, i32 0, i32 2
  %296 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space362, align 8
  %boxes363 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %296, i32 0, i32 0
  %297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes363, align 8
  %arrayidx364 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %297, i64 %idxprom361
  store %struct.hypre_Box_struct* %arrayidx364, %struct.hypre_Box_struct** %r_data_box, align 8
  %298 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data365 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %298, i32 0, i32 3
  %299 = load double*, double** %data365, align 8
  %300 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %300 to i64
  %301 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_indices367 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %301, i32 0, i32 6
  %302 = load i32*, i32** %data_indices367, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %302, i64 %idxprom366
  %303 = load i32, i32* %arrayidx368, align 4
  %idx.ext369 = sext i32 %303 to i64
  %add.ptr370 = getelementptr inbounds double, double* %299, i64 %idx.ext369
  store double* %add.ptr370, double** %rp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.924, %for.body.350
  %304 = load i32, i32* %j, align 4
  %305 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size372 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %305, i32 0, i32 1
  %306 = load i32, i32* %size372, align 4
  %cmp373 = icmp slt i32 %304, %306
  br i1 %cmp373, label %for.body.374, label %for.end.926

for.body.374:                                     ; preds = %for.cond.371
  %307 = load i32, i32* %j, align 4
  %idxprom375 = sext i32 %307 to i64
  %308 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes376 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %308, i32 0, i32 0
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes376, align 8
  %arrayidx377 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i64 %idxprom375
  store %struct.hypre_Box_struct* %arrayidx377, %struct.hypre_Box_struct** %compute_box, align 8
  %310 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin378 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %310, i32 0, i32 0
  %arraydecay379 = getelementptr inbounds [3 x i32], [3 x i32]* %imin378, i32 0, i32 0
  store i32* %arraydecay379, i32** %start, align 8
  store i32 0, i32* %si, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.921, %for.body.374
  %311 = load i32, i32* %si, align 4
  %312 = load i32, i32* %stencil_size, align 4
  %cmp381 = icmp slt i32 %311, %312
  br i1 %cmp381, label %for.body.382, label %for.end.923

for.body.382:                                     ; preds = %for.cond.380
  %313 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data383 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %313, i32 0, i32 6
  %314 = load double*, double** %data383, align 8
  %315 = load i32, i32* %si, align 4
  %idxprom384 = sext i32 %315 to i64
  %316 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %316 to i64
  %317 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices386 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %317, i32 0, i32 9
  %318 = load i32**, i32*** %data_indices386, align 8
  %arrayidx387 = getelementptr inbounds i32*, i32** %318, i64 %idxprom385
  %319 = load i32*, i32** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %319, i64 %idxprom384
  %320 = load i32, i32* %arrayidx388, align 4
  %idx.ext389 = sext i32 %320 to i64
  %add.ptr390 = getelementptr inbounds double, double* %314, i64 %idx.ext389
  store double* %add.ptr390, double** %Ap, align 8
  %321 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data391 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %321, i32 0, i32 3
  %322 = load double*, double** %data391, align 8
  %323 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %323 to i64
  %324 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices393 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %324, i32 0, i32 6
  %325 = load i32*, i32** %data_indices393, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %325, i64 %idxprom392
  %326 = load i32, i32* %arrayidx394, align 4
  %idx.ext395 = sext i32 %326 to i64
  %add.ptr396 = getelementptr inbounds double, double* %322, i64 %idx.ext395
  %327 = load i32, i32* %si, align 4
  %idxprom397 = sext i32 %327 to i64
  %328 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %328, i64 %idxprom397
  %arrayidx399 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx398, i32 0, i64 0
  %329 = load i32, i32* %arrayidx399, align 4
  %330 = load i32, i32* %si, align 4
  %idxprom400 = sext i32 %330 to i64
  %331 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx401 = getelementptr inbounds [3 x i32], [3 x i32]* %331, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx401, i32 0, i64 1
  %332 = load i32, i32* %arrayidx402, align 4
  %333 = load i32, i32* %si, align 4
  %idxprom403 = sext i32 %333 to i64
  %334 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx404 = getelementptr inbounds [3 x i32], [3 x i32]* %334, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx404, i32 0, i64 2
  %335 = load i32, i32* %arrayidx405, align 4
  %336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax406 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %336, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [3 x i32], [3 x i32]* %imax406, i32 0, i64 1
  %337 = load i32, i32* %arrayidx407, align 4
  %338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin408 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %338, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [3 x i32], [3 x i32]* %imin408, i32 0, i64 1
  %339 = load i32, i32* %arrayidx409, align 4
  %sub410 = sub nsw i32 %337, %339
  %add411 = add nsw i32 %sub410, 1
  %cmp412 = icmp slt i32 0, %add411
  br i1 %cmp412, label %cond.true.413, label %cond.false.420

cond.true.413:                                    ; preds = %for.body.382
  %340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax414 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %340, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [3 x i32], [3 x i32]* %imax414, i32 0, i64 1
  %341 = load i32, i32* %arrayidx415, align 4
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin416 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [3 x i32], [3 x i32]* %imin416, i32 0, i64 1
  %343 = load i32, i32* %arrayidx417, align 4
  %sub418 = sub nsw i32 %341, %343
  %add419 = add nsw i32 %sub418, 1
  br label %cond.end.421

cond.false.420:                                   ; preds = %for.body.382
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.false.420, %cond.true.413
  %cond422 = phi i32 [ %add419, %cond.true.413 ], [ 0, %cond.false.420 ]
  %mul423 = mul nsw i32 %335, %cond422
  %add424 = add nsw i32 %332, %mul423
  %344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax425 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %344, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [3 x i32], [3 x i32]* %imax425, i32 0, i64 0
  %345 = load i32, i32* %arrayidx426, align 4
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin427 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i32 0, i32 0
  %arrayidx428 = getelementptr inbounds [3 x i32], [3 x i32]* %imin427, i32 0, i64 0
  %347 = load i32, i32* %arrayidx428, align 4
  %sub429 = sub nsw i32 %345, %347
  %add430 = add nsw i32 %sub429, 1
  %cmp431 = icmp slt i32 0, %add430
  br i1 %cmp431, label %cond.true.432, label %cond.false.439

cond.true.432:                                    ; preds = %cond.end.421
  %348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax433 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %348, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %imax433, i32 0, i64 0
  %349 = load i32, i32* %arrayidx434, align 4
  %350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin435 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %350, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x i32], [3 x i32]* %imin435, i32 0, i64 0
  %351 = load i32, i32* %arrayidx436, align 4
  %sub437 = sub nsw i32 %349, %351
  %add438 = add nsw i32 %sub437, 1
  br label %cond.end.440

cond.false.439:                                   ; preds = %cond.end.421
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.439, %cond.true.432
  %cond441 = phi i32 [ %add438, %cond.true.432 ], [ 0, %cond.false.439 ]
  %mul442 = mul nsw i32 %add424, %cond441
  %add443 = add nsw i32 %329, %mul442
  %idx.ext444 = sext i32 %add443 to i64
  %add.ptr445 = getelementptr inbounds double, double* %add.ptr396, i64 %idx.ext444
  store double* %add.ptr445, double** %xp, align 8
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %353 = load i32*, i32** %base_stride, align 8
  %arraydecay446 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call447 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %352, i32* %353, i32* %arraydecay446)
  %354 = load i32*, i32** %start, align 8
  %arrayidx449 = getelementptr inbounds i32, i32* %354, i64 0
  %355 = load i32, i32* %arrayidx449, align 4
  %356 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin450 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %356, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [3 x i32], [3 x i32]* %imin450, i32 0, i64 0
  %357 = load i32, i32* %arrayidx451, align 4
  %sub452 = sub nsw i32 %355, %357
  %358 = load i32*, i32** %start, align 8
  %arrayidx453 = getelementptr inbounds i32, i32* %358, i64 1
  %359 = load i32, i32* %arrayidx453, align 4
  %360 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin454 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %360, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [3 x i32], [3 x i32]* %imin454, i32 0, i64 1
  %361 = load i32, i32* %arrayidx455, align 4
  %sub456 = sub nsw i32 %359, %361
  %362 = load i32*, i32** %start, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %362, i64 2
  %363 = load i32, i32* %arrayidx457, align 4
  %364 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin458 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %364, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [3 x i32], [3 x i32]* %imin458, i32 0, i64 2
  %365 = load i32, i32* %arrayidx459, align 4
  %sub460 = sub nsw i32 %363, %365
  %366 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax461 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %366, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [3 x i32], [3 x i32]* %imax461, i32 0, i64 1
  %367 = load i32, i32* %arrayidx462, align 4
  %368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin463 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %368, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [3 x i32], [3 x i32]* %imin463, i32 0, i64 1
  %369 = load i32, i32* %arrayidx464, align 4
  %sub465 = sub nsw i32 %367, %369
  %add466 = add nsw i32 %sub465, 1
  %cmp467 = icmp slt i32 0, %add466
  br i1 %cmp467, label %cond.true.468, label %cond.false.475

cond.true.468:                                    ; preds = %cond.end.440
  %370 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax469 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %370, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %imax469, i32 0, i64 1
  %371 = load i32, i32* %arrayidx470, align 4
  %372 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin471 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %372, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [3 x i32], [3 x i32]* %imin471, i32 0, i64 1
  %373 = load i32, i32* %arrayidx472, align 4
  %sub473 = sub nsw i32 %371, %373
  %add474 = add nsw i32 %sub473, 1
  br label %cond.end.476

cond.false.475:                                   ; preds = %cond.end.440
  br label %cond.end.476

cond.end.476:                                     ; preds = %cond.false.475, %cond.true.468
  %cond477 = phi i32 [ %add474, %cond.true.468 ], [ 0, %cond.false.475 ]
  %mul478 = mul nsw i32 %sub460, %cond477
  %add479 = add nsw i32 %sub456, %mul478
  %374 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax480 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %374, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [3 x i32], [3 x i32]* %imax480, i32 0, i64 0
  %375 = load i32, i32* %arrayidx481, align 4
  %376 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin482 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %376, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [3 x i32], [3 x i32]* %imin482, i32 0, i64 0
  %377 = load i32, i32* %arrayidx483, align 4
  %sub484 = sub nsw i32 %375, %377
  %add485 = add nsw i32 %sub484, 1
  %cmp486 = icmp slt i32 0, %add485
  br i1 %cmp486, label %cond.true.487, label %cond.false.494

cond.true.487:                                    ; preds = %cond.end.476
  %378 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax488 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %378, i32 0, i32 1
  %arrayidx489 = getelementptr inbounds [3 x i32], [3 x i32]* %imax488, i32 0, i64 0
  %379 = load i32, i32* %arrayidx489, align 4
  %380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin490 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %380, i32 0, i32 0
  %arrayidx491 = getelementptr inbounds [3 x i32], [3 x i32]* %imin490, i32 0, i64 0
  %381 = load i32, i32* %arrayidx491, align 4
  %sub492 = sub nsw i32 %379, %381
  %add493 = add nsw i32 %sub492, 1
  br label %cond.end.495

cond.false.494:                                   ; preds = %cond.end.476
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.494, %cond.true.487
  %cond496 = phi i32 [ %add493, %cond.true.487 ], [ 0, %cond.false.494 ]
  %mul497 = mul nsw i32 %add479, %cond496
  %add498 = add nsw i32 %sub452, %mul497
  store i32 %add498, i32* %hypre__i1start448, align 4
  %382 = load i32*, i32** %start, align 8
  %arrayidx500 = getelementptr inbounds i32, i32* %382, i64 0
  %383 = load i32, i32* %arrayidx500, align 4
  %384 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin501 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %384, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [3 x i32], [3 x i32]* %imin501, i32 0, i64 0
  %385 = load i32, i32* %arrayidx502, align 4
  %sub503 = sub nsw i32 %383, %385
  %386 = load i32*, i32** %start, align 8
  %arrayidx504 = getelementptr inbounds i32, i32* %386, i64 1
  %387 = load i32, i32* %arrayidx504, align 4
  %388 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin505 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %388, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [3 x i32], [3 x i32]* %imin505, i32 0, i64 1
  %389 = load i32, i32* %arrayidx506, align 4
  %sub507 = sub nsw i32 %387, %389
  %390 = load i32*, i32** %start, align 8
  %arrayidx508 = getelementptr inbounds i32, i32* %390, i64 2
  %391 = load i32, i32* %arrayidx508, align 4
  %392 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin509 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %392, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [3 x i32], [3 x i32]* %imin509, i32 0, i64 2
  %393 = load i32, i32* %arrayidx510, align 4
  %sub511 = sub nsw i32 %391, %393
  %394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax512 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %394, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [3 x i32], [3 x i32]* %imax512, i32 0, i64 1
  %395 = load i32, i32* %arrayidx513, align 4
  %396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin514 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %396, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %imin514, i32 0, i64 1
  %397 = load i32, i32* %arrayidx515, align 4
  %sub516 = sub nsw i32 %395, %397
  %add517 = add nsw i32 %sub516, 1
  %cmp518 = icmp slt i32 0, %add517
  br i1 %cmp518, label %cond.true.519, label %cond.false.526

cond.true.519:                                    ; preds = %cond.end.495
  %398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax520 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %398, i32 0, i32 1
  %arrayidx521 = getelementptr inbounds [3 x i32], [3 x i32]* %imax520, i32 0, i64 1
  %399 = load i32, i32* %arrayidx521, align 4
  %400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin522 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %400, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [3 x i32], [3 x i32]* %imin522, i32 0, i64 1
  %401 = load i32, i32* %arrayidx523, align 4
  %sub524 = sub nsw i32 %399, %401
  %add525 = add nsw i32 %sub524, 1
  br label %cond.end.527

cond.false.526:                                   ; preds = %cond.end.495
  br label %cond.end.527

cond.end.527:                                     ; preds = %cond.false.526, %cond.true.519
  %cond528 = phi i32 [ %add525, %cond.true.519 ], [ 0, %cond.false.526 ]
  %mul529 = mul nsw i32 %sub511, %cond528
  %add530 = add nsw i32 %sub507, %mul529
  %402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax531 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %402, i32 0, i32 1
  %arrayidx532 = getelementptr inbounds [3 x i32], [3 x i32]* %imax531, i32 0, i64 0
  %403 = load i32, i32* %arrayidx532, align 4
  %404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin533 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %404, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [3 x i32], [3 x i32]* %imin533, i32 0, i64 0
  %405 = load i32, i32* %arrayidx534, align 4
  %sub535 = sub nsw i32 %403, %405
  %add536 = add nsw i32 %sub535, 1
  %cmp537 = icmp slt i32 0, %add536
  br i1 %cmp537, label %cond.true.538, label %cond.false.545

cond.true.538:                                    ; preds = %cond.end.527
  %406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax539 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %406, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [3 x i32], [3 x i32]* %imax539, i32 0, i64 0
  %407 = load i32, i32* %arrayidx540, align 4
  %408 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin541 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %408, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [3 x i32], [3 x i32]* %imin541, i32 0, i64 0
  %409 = load i32, i32* %arrayidx542, align 4
  %sub543 = sub nsw i32 %407, %409
  %add544 = add nsw i32 %sub543, 1
  br label %cond.end.546

cond.false.545:                                   ; preds = %cond.end.527
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.false.545, %cond.true.538
  %cond547 = phi i32 [ %add544, %cond.true.538 ], [ 0, %cond.false.545 ]
  %mul548 = mul nsw i32 %add530, %cond547
  %add549 = add nsw i32 %sub503, %mul548
  store i32 %add549, i32* %hypre__i2start499, align 4
  %410 = load i32*, i32** %start, align 8
  %arrayidx550 = getelementptr inbounds i32, i32* %410, i64 0
  %411 = load i32, i32* %arrayidx550, align 4
  %412 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin551 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %412, i32 0, i32 0
  %arrayidx552 = getelementptr inbounds [3 x i32], [3 x i32]* %imin551, i32 0, i64 0
  %413 = load i32, i32* %arrayidx552, align 4
  %sub553 = sub nsw i32 %411, %413
  %414 = load i32*, i32** %start, align 8
  %arrayidx554 = getelementptr inbounds i32, i32* %414, i64 1
  %415 = load i32, i32* %arrayidx554, align 4
  %416 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin555 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %416, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [3 x i32], [3 x i32]* %imin555, i32 0, i64 1
  %417 = load i32, i32* %arrayidx556, align 4
  %sub557 = sub nsw i32 %415, %417
  %418 = load i32*, i32** %start, align 8
  %arrayidx558 = getelementptr inbounds i32, i32* %418, i64 2
  %419 = load i32, i32* %arrayidx558, align 4
  %420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin559 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %420, i32 0, i32 0
  %arrayidx560 = getelementptr inbounds [3 x i32], [3 x i32]* %imin559, i32 0, i64 2
  %421 = load i32, i32* %arrayidx560, align 4
  %sub561 = sub nsw i32 %419, %421
  %422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax562 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %422, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [3 x i32], [3 x i32]* %imax562, i32 0, i64 1
  %423 = load i32, i32* %arrayidx563, align 4
  %424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin564 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %424, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [3 x i32], [3 x i32]* %imin564, i32 0, i64 1
  %425 = load i32, i32* %arrayidx565, align 4
  %sub566 = sub nsw i32 %423, %425
  %add567 = add nsw i32 %sub566, 1
  %cmp568 = icmp slt i32 0, %add567
  br i1 %cmp568, label %cond.true.569, label %cond.false.576

cond.true.569:                                    ; preds = %cond.end.546
  %426 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax570 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %426, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [3 x i32], [3 x i32]* %imax570, i32 0, i64 1
  %427 = load i32, i32* %arrayidx571, align 4
  %428 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin572 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %428, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [3 x i32], [3 x i32]* %imin572, i32 0, i64 1
  %429 = load i32, i32* %arrayidx573, align 4
  %sub574 = sub nsw i32 %427, %429
  %add575 = add nsw i32 %sub574, 1
  br label %cond.end.577

cond.false.576:                                   ; preds = %cond.end.546
  br label %cond.end.577

cond.end.577:                                     ; preds = %cond.false.576, %cond.true.569
  %cond578 = phi i32 [ %add575, %cond.true.569 ], [ 0, %cond.false.576 ]
  %mul579 = mul nsw i32 %sub561, %cond578
  %add580 = add nsw i32 %sub557, %mul579
  %430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax581 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %430, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [3 x i32], [3 x i32]* %imax581, i32 0, i64 0
  %431 = load i32, i32* %arrayidx582, align 4
  %432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin583 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %432, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %imin583, i32 0, i64 0
  %433 = load i32, i32* %arrayidx584, align 4
  %sub585 = sub nsw i32 %431, %433
  %add586 = add nsw i32 %sub585, 1
  %cmp587 = icmp slt i32 0, %add586
  br i1 %cmp587, label %cond.true.588, label %cond.false.595

cond.true.588:                                    ; preds = %cond.end.577
  %434 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax589 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %434, i32 0, i32 1
  %arrayidx590 = getelementptr inbounds [3 x i32], [3 x i32]* %imax589, i32 0, i64 0
  %435 = load i32, i32* %arrayidx590, align 4
  %436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin591 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %436, i32 0, i32 0
  %arrayidx592 = getelementptr inbounds [3 x i32], [3 x i32]* %imin591, i32 0, i64 0
  %437 = load i32, i32* %arrayidx592, align 4
  %sub593 = sub nsw i32 %435, %437
  %add594 = add nsw i32 %sub593, 1
  br label %cond.end.596

cond.false.595:                                   ; preds = %cond.end.577
  br label %cond.end.596

cond.end.596:                                     ; preds = %cond.false.595, %cond.true.588
  %cond597 = phi i32 [ %add594, %cond.true.588 ], [ 0, %cond.false.595 ]
  %mul598 = mul nsw i32 %add580, %cond597
  %add599 = add nsw i32 %sub553, %mul598
  store i32 %add599, i32* %hypre__i3start, align 4
  %438 = load i32*, i32** %base_stride, align 8
  %arrayidx601 = getelementptr inbounds i32, i32* %438, i64 0
  %439 = load i32, i32* %arrayidx601, align 4
  store i32 %439, i32* %hypre__sx1600, align 4
  %440 = load i32*, i32** %base_stride, align 8
  %arrayidx603 = getelementptr inbounds i32, i32* %440, i64 1
  %441 = load i32, i32* %arrayidx603, align 4
  %442 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax604 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %442, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [3 x i32], [3 x i32]* %imax604, i32 0, i64 0
  %443 = load i32, i32* %arrayidx605, align 4
  %444 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %444, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x i32], [3 x i32]* %imin606, i32 0, i64 0
  %445 = load i32, i32* %arrayidx607, align 4
  %sub608 = sub nsw i32 %443, %445
  %add609 = add nsw i32 %sub608, 1
  %cmp610 = icmp slt i32 0, %add609
  br i1 %cmp610, label %cond.true.611, label %cond.false.618

cond.true.611:                                    ; preds = %cond.end.596
  %446 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax612 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %446, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [3 x i32], [3 x i32]* %imax612, i32 0, i64 0
  %447 = load i32, i32* %arrayidx613, align 4
  %448 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %448, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [3 x i32], [3 x i32]* %imin614, i32 0, i64 0
  %449 = load i32, i32* %arrayidx615, align 4
  %sub616 = sub nsw i32 %447, %449
  %add617 = add nsw i32 %sub616, 1
  br label %cond.end.619

cond.false.618:                                   ; preds = %cond.end.596
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.618, %cond.true.611
  %cond620 = phi i32 [ %add617, %cond.true.611 ], [ 0, %cond.false.618 ]
  %mul621 = mul nsw i32 %441, %cond620
  store i32 %mul621, i32* %hypre__sy1602, align 4
  %450 = load i32*, i32** %base_stride, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %450, i64 2
  %451 = load i32, i32* %arrayidx623, align 4
  %452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %452, i32 0, i32 1
  %arrayidx625 = getelementptr inbounds [3 x i32], [3 x i32]* %imax624, i32 0, i64 0
  %453 = load i32, i32* %arrayidx625, align 4
  %454 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin626 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %454, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [3 x i32], [3 x i32]* %imin626, i32 0, i64 0
  %455 = load i32, i32* %arrayidx627, align 4
  %sub628 = sub nsw i32 %453, %455
  %add629 = add nsw i32 %sub628, 1
  %cmp630 = icmp slt i32 0, %add629
  br i1 %cmp630, label %cond.true.631, label %cond.false.638

cond.true.631:                                    ; preds = %cond.end.619
  %456 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax632 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %456, i32 0, i32 1
  %arrayidx633 = getelementptr inbounds [3 x i32], [3 x i32]* %imax632, i32 0, i64 0
  %457 = load i32, i32* %arrayidx633, align 4
  %458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin634 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %458, i32 0, i32 0
  %arrayidx635 = getelementptr inbounds [3 x i32], [3 x i32]* %imin634, i32 0, i64 0
  %459 = load i32, i32* %arrayidx635, align 4
  %sub636 = sub nsw i32 %457, %459
  %add637 = add nsw i32 %sub636, 1
  br label %cond.end.639

cond.false.638:                                   ; preds = %cond.end.619
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.638, %cond.true.631
  %cond640 = phi i32 [ %add637, %cond.true.631 ], [ 0, %cond.false.638 ]
  %mul641 = mul nsw i32 %451, %cond640
  %460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax642 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %460, i32 0, i32 1
  %arrayidx643 = getelementptr inbounds [3 x i32], [3 x i32]* %imax642, i32 0, i64 1
  %461 = load i32, i32* %arrayidx643, align 4
  %462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin644 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %462, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [3 x i32], [3 x i32]* %imin644, i32 0, i64 1
  %463 = load i32, i32* %arrayidx645, align 4
  %sub646 = sub nsw i32 %461, %463
  %add647 = add nsw i32 %sub646, 1
  %cmp648 = icmp slt i32 0, %add647
  br i1 %cmp648, label %cond.true.649, label %cond.false.656

cond.true.649:                                    ; preds = %cond.end.639
  %464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax650 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %464, i32 0, i32 1
  %arrayidx651 = getelementptr inbounds [3 x i32], [3 x i32]* %imax650, i32 0, i64 1
  %465 = load i32, i32* %arrayidx651, align 4
  %466 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin652 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %466, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [3 x i32], [3 x i32]* %imin652, i32 0, i64 1
  %467 = load i32, i32* %arrayidx653, align 4
  %sub654 = sub nsw i32 %465, %467
  %add655 = add nsw i32 %sub654, 1
  br label %cond.end.657

cond.false.656:                                   ; preds = %cond.end.639
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.false.656, %cond.true.649
  %cond658 = phi i32 [ %add655, %cond.true.649 ], [ 0, %cond.false.656 ]
  %mul659 = mul nsw i32 %mul641, %cond658
  store i32 %mul659, i32* %hypre__sz1622, align 4
  %468 = load i32*, i32** %base_stride, align 8
  %arrayidx661 = getelementptr inbounds i32, i32* %468, i64 0
  %469 = load i32, i32* %arrayidx661, align 4
  store i32 %469, i32* %hypre__sx2660, align 4
  %470 = load i32*, i32** %base_stride, align 8
  %arrayidx663 = getelementptr inbounds i32, i32* %470, i64 1
  %471 = load i32, i32* %arrayidx663, align 4
  %472 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax664 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %472, i32 0, i32 1
  %arrayidx665 = getelementptr inbounds [3 x i32], [3 x i32]* %imax664, i32 0, i64 0
  %473 = load i32, i32* %arrayidx665, align 4
  %474 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin666 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %474, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [3 x i32], [3 x i32]* %imin666, i32 0, i64 0
  %475 = load i32, i32* %arrayidx667, align 4
  %sub668 = sub nsw i32 %473, %475
  %add669 = add nsw i32 %sub668, 1
  %cmp670 = icmp slt i32 0, %add669
  br i1 %cmp670, label %cond.true.671, label %cond.false.678

cond.true.671:                                    ; preds = %cond.end.657
  %476 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %476, i32 0, i32 1
  %arrayidx673 = getelementptr inbounds [3 x i32], [3 x i32]* %imax672, i32 0, i64 0
  %477 = load i32, i32* %arrayidx673, align 4
  %478 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin674 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %478, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [3 x i32], [3 x i32]* %imin674, i32 0, i64 0
  %479 = load i32, i32* %arrayidx675, align 4
  %sub676 = sub nsw i32 %477, %479
  %add677 = add nsw i32 %sub676, 1
  br label %cond.end.679

cond.false.678:                                   ; preds = %cond.end.657
  br label %cond.end.679

cond.end.679:                                     ; preds = %cond.false.678, %cond.true.671
  %cond680 = phi i32 [ %add677, %cond.true.671 ], [ 0, %cond.false.678 ]
  %mul681 = mul nsw i32 %471, %cond680
  store i32 %mul681, i32* %hypre__sy2662, align 4
  %480 = load i32*, i32** %base_stride, align 8
  %arrayidx683 = getelementptr inbounds i32, i32* %480, i64 2
  %481 = load i32, i32* %arrayidx683, align 4
  %482 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax684 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %482, i32 0, i32 1
  %arrayidx685 = getelementptr inbounds [3 x i32], [3 x i32]* %imax684, i32 0, i64 0
  %483 = load i32, i32* %arrayidx685, align 4
  %484 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin686 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %484, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [3 x i32], [3 x i32]* %imin686, i32 0, i64 0
  %485 = load i32, i32* %arrayidx687, align 4
  %sub688 = sub nsw i32 %483, %485
  %add689 = add nsw i32 %sub688, 1
  %cmp690 = icmp slt i32 0, %add689
  br i1 %cmp690, label %cond.true.691, label %cond.false.698

cond.true.691:                                    ; preds = %cond.end.679
  %486 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax692 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %486, i32 0, i32 1
  %arrayidx693 = getelementptr inbounds [3 x i32], [3 x i32]* %imax692, i32 0, i64 0
  %487 = load i32, i32* %arrayidx693, align 4
  %488 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin694 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %488, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [3 x i32], [3 x i32]* %imin694, i32 0, i64 0
  %489 = load i32, i32* %arrayidx695, align 4
  %sub696 = sub nsw i32 %487, %489
  %add697 = add nsw i32 %sub696, 1
  br label %cond.end.699

cond.false.698:                                   ; preds = %cond.end.679
  br label %cond.end.699

cond.end.699:                                     ; preds = %cond.false.698, %cond.true.691
  %cond700 = phi i32 [ %add697, %cond.true.691 ], [ 0, %cond.false.698 ]
  %mul701 = mul nsw i32 %481, %cond700
  %490 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax702 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %490, i32 0, i32 1
  %arrayidx703 = getelementptr inbounds [3 x i32], [3 x i32]* %imax702, i32 0, i64 1
  %491 = load i32, i32* %arrayidx703, align 4
  %492 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin704 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %492, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [3 x i32], [3 x i32]* %imin704, i32 0, i64 1
  %493 = load i32, i32* %arrayidx705, align 4
  %sub706 = sub nsw i32 %491, %493
  %add707 = add nsw i32 %sub706, 1
  %cmp708 = icmp slt i32 0, %add707
  br i1 %cmp708, label %cond.true.709, label %cond.false.716

cond.true.709:                                    ; preds = %cond.end.699
  %494 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax710 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %494, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [3 x i32], [3 x i32]* %imax710, i32 0, i64 1
  %495 = load i32, i32* %arrayidx711, align 4
  %496 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin712 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %496, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [3 x i32], [3 x i32]* %imin712, i32 0, i64 1
  %497 = load i32, i32* %arrayidx713, align 4
  %sub714 = sub nsw i32 %495, %497
  %add715 = add nsw i32 %sub714, 1
  br label %cond.end.717

cond.false.716:                                   ; preds = %cond.end.699
  br label %cond.end.717

cond.end.717:                                     ; preds = %cond.false.716, %cond.true.709
  %cond718 = phi i32 [ %add715, %cond.true.709 ], [ 0, %cond.false.716 ]
  %mul719 = mul nsw i32 %mul701, %cond718
  store i32 %mul719, i32* %hypre__sz2682, align 4
  %498 = load i32*, i32** %base_stride, align 8
  %arrayidx720 = getelementptr inbounds i32, i32* %498, i64 0
  %499 = load i32, i32* %arrayidx720, align 4
  store i32 %499, i32* %hypre__sx3, align 4
  %500 = load i32*, i32** %base_stride, align 8
  %arrayidx721 = getelementptr inbounds i32, i32* %500, i64 1
  %501 = load i32, i32* %arrayidx721, align 4
  %502 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax722 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %502, i32 0, i32 1
  %arrayidx723 = getelementptr inbounds [3 x i32], [3 x i32]* %imax722, i32 0, i64 0
  %503 = load i32, i32* %arrayidx723, align 4
  %504 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin724 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %504, i32 0, i32 0
  %arrayidx725 = getelementptr inbounds [3 x i32], [3 x i32]* %imin724, i32 0, i64 0
  %505 = load i32, i32* %arrayidx725, align 4
  %sub726 = sub nsw i32 %503, %505
  %add727 = add nsw i32 %sub726, 1
  %cmp728 = icmp slt i32 0, %add727
  br i1 %cmp728, label %cond.true.729, label %cond.false.736

cond.true.729:                                    ; preds = %cond.end.717
  %506 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax730 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %506, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [3 x i32], [3 x i32]* %imax730, i32 0, i64 0
  %507 = load i32, i32* %arrayidx731, align 4
  %508 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin732 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %508, i32 0, i32 0
  %arrayidx733 = getelementptr inbounds [3 x i32], [3 x i32]* %imin732, i32 0, i64 0
  %509 = load i32, i32* %arrayidx733, align 4
  %sub734 = sub nsw i32 %507, %509
  %add735 = add nsw i32 %sub734, 1
  br label %cond.end.737

cond.false.736:                                   ; preds = %cond.end.717
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.false.736, %cond.true.729
  %cond738 = phi i32 [ %add735, %cond.true.729 ], [ 0, %cond.false.736 ]
  %mul739 = mul nsw i32 %501, %cond738
  store i32 %mul739, i32* %hypre__sy3, align 4
  %510 = load i32*, i32** %base_stride, align 8
  %arrayidx740 = getelementptr inbounds i32, i32* %510, i64 2
  %511 = load i32, i32* %arrayidx740, align 4
  %512 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax741 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %512, i32 0, i32 1
  %arrayidx742 = getelementptr inbounds [3 x i32], [3 x i32]* %imax741, i32 0, i64 0
  %513 = load i32, i32* %arrayidx742, align 4
  %514 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin743 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %514, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [3 x i32], [3 x i32]* %imin743, i32 0, i64 0
  %515 = load i32, i32* %arrayidx744, align 4
  %sub745 = sub nsw i32 %513, %515
  %add746 = add nsw i32 %sub745, 1
  %cmp747 = icmp slt i32 0, %add746
  br i1 %cmp747, label %cond.true.748, label %cond.false.755

cond.true.748:                                    ; preds = %cond.end.737
  %516 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax749 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %516, i32 0, i32 1
  %arrayidx750 = getelementptr inbounds [3 x i32], [3 x i32]* %imax749, i32 0, i64 0
  %517 = load i32, i32* %arrayidx750, align 4
  %518 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin751 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %518, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [3 x i32], [3 x i32]* %imin751, i32 0, i64 0
  %519 = load i32, i32* %arrayidx752, align 4
  %sub753 = sub nsw i32 %517, %519
  %add754 = add nsw i32 %sub753, 1
  br label %cond.end.756

cond.false.755:                                   ; preds = %cond.end.737
  br label %cond.end.756

cond.end.756:                                     ; preds = %cond.false.755, %cond.true.748
  %cond757 = phi i32 [ %add754, %cond.true.748 ], [ 0, %cond.false.755 ]
  %mul758 = mul nsw i32 %511, %cond757
  %520 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax759 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %520, i32 0, i32 1
  %arrayidx760 = getelementptr inbounds [3 x i32], [3 x i32]* %imax759, i32 0, i64 1
  %521 = load i32, i32* %arrayidx760, align 4
  %522 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin761 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %522, i32 0, i32 0
  %arrayidx762 = getelementptr inbounds [3 x i32], [3 x i32]* %imin761, i32 0, i64 1
  %523 = load i32, i32* %arrayidx762, align 4
  %sub763 = sub nsw i32 %521, %523
  %add764 = add nsw i32 %sub763, 1
  %cmp765 = icmp slt i32 0, %add764
  br i1 %cmp765, label %cond.true.766, label %cond.false.773

cond.true.766:                                    ; preds = %cond.end.756
  %524 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imax767 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %524, i32 0, i32 1
  %arrayidx768 = getelementptr inbounds [3 x i32], [3 x i32]* %imax767, i32 0, i64 1
  %525 = load i32, i32* %arrayidx768, align 4
  %526 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_data_box, align 8
  %imin769 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %526, i32 0, i32 0
  %arrayidx770 = getelementptr inbounds [3 x i32], [3 x i32]* %imin769, i32 0, i64 1
  %527 = load i32, i32* %arrayidx770, align 4
  %sub771 = sub nsw i32 %525, %527
  %add772 = add nsw i32 %sub771, 1
  br label %cond.end.774

cond.false.773:                                   ; preds = %cond.end.756
  br label %cond.end.774

cond.end.774:                                     ; preds = %cond.false.773, %cond.true.766
  %cond775 = phi i32 [ %add772, %cond.true.766 ], [ 0, %cond.false.773 ]
  %mul776 = mul nsw i32 %mul758, %cond775
  store i32 %mul776, i32* %hypre__sz3, align 4
  %arrayidx778 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %528 = load i32, i32* %arrayidx778, align 4
  store i32 %528, i32* %hypre__nx777, align 4
  %arrayidx780 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %529 = load i32, i32* %arrayidx780, align 4
  store i32 %529, i32* %hypre__ny779, align 4
  %arrayidx782 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %530 = load i32, i32* %arrayidx782, align 4
  store i32 %530, i32* %hypre__nz781, align 4
  %531 = load i32, i32* %hypre__nx777, align 4
  store i32 %531, i32* %hypre__mx783, align 4
  %532 = load i32, i32* %hypre__ny779, align 4
  store i32 %532, i32* %hypre__my784, align 4
  %533 = load i32, i32* %hypre__nz781, align 4
  store i32 %533, i32* %hypre__mz785, align 4
  store i32 0, i32* %hypre__dir786, align 4
  %534 = load i32, i32* %hypre__nx777, align 4
  store i32 %534, i32* %hypre__max787, align 4
  %535 = load i32, i32* %hypre__ny779, align 4
  %536 = load i32, i32* %hypre__max787, align 4
  %cmp792 = icmp sgt i32 %535, %536
  br i1 %cmp792, label %if.then.793, label %if.end.794

if.then.793:                                      ; preds = %cond.end.774
  store i32 1, i32* %hypre__dir786, align 4
  %537 = load i32, i32* %hypre__ny779, align 4
  store i32 %537, i32* %hypre__max787, align 4
  br label %if.end.794

if.end.794:                                       ; preds = %if.then.793, %cond.end.774
  %538 = load i32, i32* %hypre__nz781, align 4
  %539 = load i32, i32* %hypre__max787, align 4
  %cmp795 = icmp sgt i32 %538, %539
  br i1 %cmp795, label %if.then.796, label %if.end.797

if.then.796:                                      ; preds = %if.end.794
  store i32 2, i32* %hypre__dir786, align 4
  %540 = load i32, i32* %hypre__nz781, align 4
  store i32 %540, i32* %hypre__max787, align 4
  br label %if.end.797

if.end.797:                                       ; preds = %if.then.796, %if.end.794
  store i32 1, i32* %hypre__num_blocks791, align 4
  %541 = load i32, i32* %hypre__max787, align 4
  %542 = load i32, i32* %hypre__num_blocks791, align 4
  %cmp798 = icmp slt i32 %541, %542
  br i1 %cmp798, label %if.then.799, label %if.end.800

if.then.799:                                      ; preds = %if.end.797
  %543 = load i32, i32* %hypre__max787, align 4
  store i32 %543, i32* %hypre__num_blocks791, align 4
  br label %if.end.800

if.end.800:                                       ; preds = %if.then.799, %if.end.797
  %544 = load i32, i32* %hypre__num_blocks791, align 4
  %cmp801 = icmp sgt i32 %544, 0
  br i1 %cmp801, label %if.then.802, label %if.end.805

if.then.802:                                      ; preds = %if.end.800
  %545 = load i32, i32* %hypre__max787, align 4
  %546 = load i32, i32* %hypre__num_blocks791, align 4
  %div803 = sdiv i32 %545, %546
  store i32 %div803, i32* %hypre__div788, align 4
  %547 = load i32, i32* %hypre__max787, align 4
  %548 = load i32, i32* %hypre__num_blocks791, align 4
  %rem804 = srem i32 %547, %548
  store i32 %rem804, i32* %hypre__mod789, align 4
  br label %if.end.805

if.end.805:                                       ; preds = %if.then.802, %if.end.800
  store i32 0, i32* %hypre__block790, align 4
  br label %for.cond.806

for.cond.806:                                     ; preds = %for.inc.918, %if.end.805
  %549 = load i32, i32* %hypre__block790, align 4
  %550 = load i32, i32* %hypre__num_blocks791, align 4
  %cmp807 = icmp slt i32 %549, %550
  br i1 %cmp807, label %for.body.808, label %for.end.920

for.body.808:                                     ; preds = %for.cond.806
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %551 = load i32, i32* %hypre__mx783, align 4
  store i32 %551, i32* %hypre__nx777, align 4
  %552 = load i32, i32* %hypre__my784, align 4
  store i32 %552, i32* %hypre__ny779, align 4
  %553 = load i32, i32* %hypre__mz785, align 4
  store i32 %553, i32* %hypre__nz781, align 4
  %554 = load i32, i32* %hypre__num_blocks791, align 4
  %cmp809 = icmp sgt i32 %554, 1
  br i1 %cmp809, label %if.then.810, label %if.end.852

if.then.810:                                      ; preds = %for.body.808
  %555 = load i32, i32* %hypre__dir786, align 4
  %cmp811 = icmp eq i32 %555, 0
  br i1 %cmp811, label %if.then.812, label %if.else.823

if.then.812:                                      ; preds = %if.then.810
  %556 = load i32, i32* %hypre__block790, align 4
  %557 = load i32, i32* %hypre__div788, align 4
  %mul813 = mul nsw i32 %556, %557
  %558 = load i32, i32* %hypre__mod789, align 4
  %559 = load i32, i32* %hypre__block790, align 4
  %cmp814 = icmp slt i32 %558, %559
  br i1 %cmp814, label %cond.true.815, label %cond.false.816

cond.true.815:                                    ; preds = %if.then.812
  %560 = load i32, i32* %hypre__mod789, align 4
  br label %cond.end.817

cond.false.816:                                   ; preds = %if.then.812
  %561 = load i32, i32* %hypre__block790, align 4
  br label %cond.end.817

cond.end.817:                                     ; preds = %cond.false.816, %cond.true.815
  %cond818 = phi i32 [ %560, %cond.true.815 ], [ %561, %cond.false.816 ]
  %add819 = add nsw i32 %mul813, %cond818
  store i32 %add819, i32* %loopi, align 4
  %562 = load i32, i32* %hypre__div788, align 4
  %563 = load i32, i32* %hypre__mod789, align 4
  %564 = load i32, i32* %hypre__block790, align 4
  %cmp820 = icmp sgt i32 %563, %564
  %cond821 = select i1 %cmp820, i32 1, i32 0
  %add822 = add nsw i32 %562, %cond821
  store i32 %add822, i32* %hypre__nx777, align 4
  br label %if.end.851

if.else.823:                                      ; preds = %if.then.810
  %565 = load i32, i32* %hypre__dir786, align 4
  %cmp824 = icmp eq i32 %565, 1
  br i1 %cmp824, label %if.then.825, label %if.else.836

if.then.825:                                      ; preds = %if.else.823
  %566 = load i32, i32* %hypre__block790, align 4
  %567 = load i32, i32* %hypre__div788, align 4
  %mul826 = mul nsw i32 %566, %567
  %568 = load i32, i32* %hypre__mod789, align 4
  %569 = load i32, i32* %hypre__block790, align 4
  %cmp827 = icmp slt i32 %568, %569
  br i1 %cmp827, label %cond.true.828, label %cond.false.829

cond.true.828:                                    ; preds = %if.then.825
  %570 = load i32, i32* %hypre__mod789, align 4
  br label %cond.end.830

cond.false.829:                                   ; preds = %if.then.825
  %571 = load i32, i32* %hypre__block790, align 4
  br label %cond.end.830

cond.end.830:                                     ; preds = %cond.false.829, %cond.true.828
  %cond831 = phi i32 [ %570, %cond.true.828 ], [ %571, %cond.false.829 ]
  %add832 = add nsw i32 %mul826, %cond831
  store i32 %add832, i32* %loopj, align 4
  %572 = load i32, i32* %hypre__div788, align 4
  %573 = load i32, i32* %hypre__mod789, align 4
  %574 = load i32, i32* %hypre__block790, align 4
  %cmp833 = icmp sgt i32 %573, %574
  %cond834 = select i1 %cmp833, i32 1, i32 0
  %add835 = add nsw i32 %572, %cond834
  store i32 %add835, i32* %hypre__ny779, align 4
  br label %if.end.850

if.else.836:                                      ; preds = %if.else.823
  %575 = load i32, i32* %hypre__dir786, align 4
  %cmp837 = icmp eq i32 %575, 2
  br i1 %cmp837, label %if.then.838, label %if.end.849

if.then.838:                                      ; preds = %if.else.836
  %576 = load i32, i32* %hypre__block790, align 4
  %577 = load i32, i32* %hypre__div788, align 4
  %mul839 = mul nsw i32 %576, %577
  %578 = load i32, i32* %hypre__mod789, align 4
  %579 = load i32, i32* %hypre__block790, align 4
  %cmp840 = icmp slt i32 %578, %579
  br i1 %cmp840, label %cond.true.841, label %cond.false.842

cond.true.841:                                    ; preds = %if.then.838
  %580 = load i32, i32* %hypre__mod789, align 4
  br label %cond.end.843

cond.false.842:                                   ; preds = %if.then.838
  %581 = load i32, i32* %hypre__block790, align 4
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.false.842, %cond.true.841
  %cond844 = phi i32 [ %580, %cond.true.841 ], [ %581, %cond.false.842 ]
  %add845 = add nsw i32 %mul839, %cond844
  store i32 %add845, i32* %loopk, align 4
  %582 = load i32, i32* %hypre__div788, align 4
  %583 = load i32, i32* %hypre__mod789, align 4
  %584 = load i32, i32* %hypre__block790, align 4
  %cmp846 = icmp sgt i32 %583, %584
  %cond847 = select i1 %cmp846, i32 1, i32 0
  %add848 = add nsw i32 %582, %cond847
  store i32 %add848, i32* %hypre__nz781, align 4
  br label %if.end.849

if.end.849:                                       ; preds = %cond.end.843, %if.else.836
  br label %if.end.850

if.end.850:                                       ; preds = %if.end.849, %cond.end.830
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.850, %cond.end.817
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %for.body.808
  %585 = load i32, i32* %hypre__i1start448, align 4
  %586 = load i32, i32* %loopi, align 4
  %587 = load i32, i32* %hypre__sx1600, align 4
  %mul853 = mul nsw i32 %586, %587
  %add854 = add nsw i32 %585, %mul853
  %588 = load i32, i32* %loopj, align 4
  %589 = load i32, i32* %hypre__sy1602, align 4
  %mul855 = mul nsw i32 %588, %589
  %add856 = add nsw i32 %add854, %mul855
  %590 = load i32, i32* %loopk, align 4
  %591 = load i32, i32* %hypre__sz1622, align 4
  %mul857 = mul nsw i32 %590, %591
  %add858 = add nsw i32 %add856, %mul857
  store i32 %add858, i32* %Ai, align 4
  %592 = load i32, i32* %hypre__i2start499, align 4
  %593 = load i32, i32* %loopi, align 4
  %594 = load i32, i32* %hypre__sx2660, align 4
  %mul859 = mul nsw i32 %593, %594
  %add860 = add nsw i32 %592, %mul859
  %595 = load i32, i32* %loopj, align 4
  %596 = load i32, i32* %hypre__sy2662, align 4
  %mul861 = mul nsw i32 %595, %596
  %add862 = add nsw i32 %add860, %mul861
  %597 = load i32, i32* %loopk, align 4
  %598 = load i32, i32* %hypre__sz2682, align 4
  %mul863 = mul nsw i32 %597, %598
  %add864 = add nsw i32 %add862, %mul863
  store i32 %add864, i32* %xi, align 4
  %599 = load i32, i32* %hypre__i3start, align 4
  %600 = load i32, i32* %loopi, align 4
  %601 = load i32, i32* %hypre__sx3, align 4
  %mul865 = mul nsw i32 %600, %601
  %add866 = add nsw i32 %599, %mul865
  %602 = load i32, i32* %loopj, align 4
  %603 = load i32, i32* %hypre__sy3, align 4
  %mul867 = mul nsw i32 %602, %603
  %add868 = add nsw i32 %add866, %mul867
  %604 = load i32, i32* %loopk, align 4
  %605 = load i32, i32* %hypre__sz3, align 4
  %mul869 = mul nsw i32 %604, %605
  %add870 = add nsw i32 %add868, %mul869
  store i32 %add870, i32* %ri, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.871

for.cond.871:                                     ; preds = %for.inc.915, %if.end.852
  %606 = load i32, i32* %loopk, align 4
  %607 = load i32, i32* %hypre__nz781, align 4
  %cmp872 = icmp slt i32 %606, %607
  br i1 %cmp872, label %for.body.873, label %for.end.917

for.body.873:                                     ; preds = %for.cond.871
  store i32 0, i32* %loopj, align 4
  br label %for.cond.874

for.cond.874:                                     ; preds = %for.inc.903, %for.body.873
  %608 = load i32, i32* %loopj, align 4
  %609 = load i32, i32* %hypre__ny779, align 4
  %cmp875 = icmp slt i32 %608, %609
  br i1 %cmp875, label %for.body.876, label %for.end.905

for.body.876:                                     ; preds = %for.cond.874
  store i32 0, i32* %loopi, align 4
  br label %for.cond.877

for.cond.877:                                     ; preds = %for.inc.891, %for.body.876
  %610 = load i32, i32* %loopi, align 4
  %611 = load i32, i32* %hypre__nx777, align 4
  %cmp878 = icmp slt i32 %610, %611
  br i1 %cmp878, label %for.body.879, label %for.end.893

for.body.879:                                     ; preds = %for.cond.877
  %612 = load i32, i32* %Ai, align 4
  %idxprom880 = sext i32 %612 to i64
  %613 = load double*, double** %Ap, align 8
  %arrayidx881 = getelementptr inbounds double, double* %613, i64 %idxprom880
  %614 = load double, double* %arrayidx881, align 8
  %615 = load i32, i32* %xi, align 4
  %idxprom882 = sext i32 %615 to i64
  %616 = load double*, double** %xp, align 8
  %arrayidx883 = getelementptr inbounds double, double* %616, i64 %idxprom882
  %617 = load double, double* %arrayidx883, align 8
  %mul884 = fmul double %614, %617
  %618 = load i32, i32* %ri, align 4
  %idxprom885 = sext i32 %618 to i64
  %619 = load double*, double** %rp, align 8
  %arrayidx886 = getelementptr inbounds double, double* %619, i64 %idxprom885
  %620 = load double, double* %arrayidx886, align 8
  %sub887 = fsub double %620, %mul884
  store double %sub887, double* %arrayidx886, align 8
  %621 = load i32, i32* %hypre__sx1600, align 4
  %622 = load i32, i32* %Ai, align 4
  %add888 = add nsw i32 %622, %621
  store i32 %add888, i32* %Ai, align 4
  %623 = load i32, i32* %hypre__sx2660, align 4
  %624 = load i32, i32* %xi, align 4
  %add889 = add nsw i32 %624, %623
  store i32 %add889, i32* %xi, align 4
  %625 = load i32, i32* %hypre__sx3, align 4
  %626 = load i32, i32* %ri, align 4
  %add890 = add nsw i32 %626, %625
  store i32 %add890, i32* %ri, align 4
  br label %for.inc.891

for.inc.891:                                      ; preds = %for.body.879
  %627 = load i32, i32* %loopi, align 4
  %inc892 = add nsw i32 %627, 1
  store i32 %inc892, i32* %loopi, align 4
  br label %for.cond.877

for.end.893:                                      ; preds = %for.cond.877
  %628 = load i32, i32* %hypre__sy1602, align 4
  %629 = load i32, i32* %hypre__nx777, align 4
  %630 = load i32, i32* %hypre__sx1600, align 4
  %mul894 = mul nsw i32 %629, %630
  %sub895 = sub nsw i32 %628, %mul894
  %631 = load i32, i32* %Ai, align 4
  %add896 = add nsw i32 %631, %sub895
  store i32 %add896, i32* %Ai, align 4
  %632 = load i32, i32* %hypre__sy2662, align 4
  %633 = load i32, i32* %hypre__nx777, align 4
  %634 = load i32, i32* %hypre__sx2660, align 4
  %mul897 = mul nsw i32 %633, %634
  %sub898 = sub nsw i32 %632, %mul897
  %635 = load i32, i32* %xi, align 4
  %add899 = add nsw i32 %635, %sub898
  store i32 %add899, i32* %xi, align 4
  %636 = load i32, i32* %hypre__sy3, align 4
  %637 = load i32, i32* %hypre__nx777, align 4
  %638 = load i32, i32* %hypre__sx3, align 4
  %mul900 = mul nsw i32 %637, %638
  %sub901 = sub nsw i32 %636, %mul900
  %639 = load i32, i32* %ri, align 4
  %add902 = add nsw i32 %639, %sub901
  store i32 %add902, i32* %ri, align 4
  br label %for.inc.903

for.inc.903:                                      ; preds = %for.end.893
  %640 = load i32, i32* %loopj, align 4
  %inc904 = add nsw i32 %640, 1
  store i32 %inc904, i32* %loopj, align 4
  br label %for.cond.874

for.end.905:                                      ; preds = %for.cond.874
  %641 = load i32, i32* %hypre__sz1622, align 4
  %642 = load i32, i32* %hypre__ny779, align 4
  %643 = load i32, i32* %hypre__sy1602, align 4
  %mul906 = mul nsw i32 %642, %643
  %sub907 = sub nsw i32 %641, %mul906
  %644 = load i32, i32* %Ai, align 4
  %add908 = add nsw i32 %644, %sub907
  store i32 %add908, i32* %Ai, align 4
  %645 = load i32, i32* %hypre__sz2682, align 4
  %646 = load i32, i32* %hypre__ny779, align 4
  %647 = load i32, i32* %hypre__sy2662, align 4
  %mul909 = mul nsw i32 %646, %647
  %sub910 = sub nsw i32 %645, %mul909
  %648 = load i32, i32* %xi, align 4
  %add911 = add nsw i32 %648, %sub910
  store i32 %add911, i32* %xi, align 4
  %649 = load i32, i32* %hypre__sz3, align 4
  %650 = load i32, i32* %hypre__ny779, align 4
  %651 = load i32, i32* %hypre__sy3, align 4
  %mul912 = mul nsw i32 %650, %651
  %sub913 = sub nsw i32 %649, %mul912
  %652 = load i32, i32* %ri, align 4
  %add914 = add nsw i32 %652, %sub913
  store i32 %add914, i32* %ri, align 4
  br label %for.inc.915

for.inc.915:                                      ; preds = %for.end.905
  %653 = load i32, i32* %loopk, align 4
  %inc916 = add nsw i32 %653, 1
  store i32 %inc916, i32* %loopk, align 4
  br label %for.cond.871

for.end.917:                                      ; preds = %for.cond.871
  br label %for.inc.918

for.inc.918:                                      ; preds = %for.end.917
  %654 = load i32, i32* %hypre__block790, align 4
  %inc919 = add nsw i32 %654, 1
  store i32 %inc919, i32* %hypre__block790, align 4
  br label %for.cond.806

for.end.920:                                      ; preds = %for.cond.806
  br label %for.inc.921

for.inc.921:                                      ; preds = %for.end.920
  %655 = load i32, i32* %si, align 4
  %inc922 = add nsw i32 %655, 1
  store i32 %inc922, i32* %si, align 4
  br label %for.cond.380

for.end.923:                                      ; preds = %for.cond.380
  br label %for.inc.924

for.inc.924:                                      ; preds = %for.end.923
  %656 = load i32, i32* %j, align 4
  %inc925 = add nsw i32 %656, 1
  store i32 %inc925, i32* %j, align 4
  br label %for.cond.371

for.end.926:                                      ; preds = %for.cond.371
  br label %for.inc.927

for.inc.927:                                      ; preds = %for.end.926
  %657 = load i32, i32* %i, align 4
  %inc928 = add nsw i32 %657, 1
  store i32 %inc928, i32* %i, align 4
  br label %for.cond.347

for.end.929:                                      ; preds = %for.cond.347
  br label %for.inc.930

for.inc.930:                                      ; preds = %for.end.929
  %658 = load i32, i32* %compute_i, align 4
  %inc931 = add nsw i32 %658, 1
  store i32 %inc931, i32* %compute_i, align 4
  br label %for.cond

for.end.932:                                      ; preds = %for.cond
  %659 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %flops = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %659, i32 0, i32 9
  %660 = load i32, i32* %flops, align 4
  %call933 = call i32 @hypre_IncFLOPCount(i32 %660)
  %661 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %time_index934 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %661, i32 0, i32 8
  %662 = load i32, i32* %time_index934, align 4
  %call935 = call i32 @hypre_EndTiming(i32 %662)
  %663 = load i32, i32* %ierr, align 4
  ret i32 %663
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

declare i32 @hypre_IncFLOPCount(i32) #1

declare i32 @hypre_EndTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGResidualSetBase(i8* %residual_vdata, i32* %base_index, i32* %base_stride) #0 {
entry:
  %residual_vdata.addr = alloca i8*, align 8
  %base_index.addr = alloca i32*, align 8
  %base_stride.addr = alloca i32*, align 8
  %residual_data = alloca %struct.hypre_SMGResidualData*, align 8
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i8* %residual_vdata, i8** %residual_vdata.addr, align 8
  store i32* %base_index, i32** %base_index.addr, align 8
  store i32* %base_stride, i32** %base_stride.addr, align 8
  %0 = load i8*, i8** %residual_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGResidualData*
  store %struct.hypre_SMGResidualData* %1, %struct.hypre_SMGResidualData** %residual_data, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %d, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %base_index.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %d, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_index2 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %base_index2, i32 0, i64 %idxprom1
  store i32 %5, i32* %arrayidx3, align 4
  %8 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %base_stride.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_stride7 = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %12, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %base_stride7, i32 0, i64 %idxprom6
  store i32 %10, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %d, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %ierr, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @hypre_SMGResidualDestroy(i8* %residual_vdata) #0 {
entry:
  %residual_vdata.addr = alloca i8*, align 8
  %ierr = alloca i32, align 4
  %residual_data = alloca %struct.hypre_SMGResidualData*, align 8
  store i8* %residual_vdata, i8** %residual_vdata.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %residual_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SMGResidualData*
  store %struct.hypre_SMGResidualData* %1, %struct.hypre_SMGResidualData** %residual_data, align 8
  %2 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %tobool = icmp ne %struct.hypre_SMGResidualData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %A = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %3, i32 0, i32 2
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %4)
  %5 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %x = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %5, i32 0, i32 3
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call1 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %6)
  %7 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %b = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %7, i32 0, i32 4
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call2 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %8)
  %9 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %r = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %9, i32 0, i32 5
  %10 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r, align 8
  %call3 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %10)
  %11 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %base_points = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %11, i32 0, i32 6
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %base_points, align 8
  %call4 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %12)
  %13 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %compute_pkg = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %13, i32 0, i32 7
  %14 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %call5 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %14)
  %15 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SMGResidualData, %struct.hypre_SMGResidualData* %15, i32 0, i32 8
  %16 = load i32, i32* %time_index, align 4
  %call6 = call i32 @hypre_FinalizeTiming(i32 %16)
  %17 = load %struct.hypre_SMGResidualData*, %struct.hypre_SMGResidualData** %residual_data, align 8
  %18 = bitcast %struct.hypre_SMGResidualData* %17 to i8*
  call void @hypre_Free(i8* %18)
  store %struct.hypre_SMGResidualData* null, %struct.hypre_SMGResidualData** %residual_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %ierr, align 4
  ret i32 %19
}

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

declare void @hypre_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
