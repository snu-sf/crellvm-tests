; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/35.SMG2000.semi_restrict.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SemiRestrictData = type { %struct.hypre_StructMatrix_struct*, i32, %struct.hypre_ComputePkg_struct*, [3 x i32], [3 x i32], i32 }
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
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_StructVector_struct = type { i32, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, double*, i32, i32, i32*, [6 x i32], i32, i32 }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"SemiRestrict\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_SemiRestrictCreate() #0 {
entry:
  %restrict_data = alloca %struct.hypre_SemiRestrictData*, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 56)
  %0 = bitcast i8* %call to %struct.hypre_SemiRestrictData*
  store %struct.hypre_SemiRestrictData* %0, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %call1 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %1, i32 0, i32 5
  store i32 %call1, i32* %time_index, align 4
  %2 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %3 = bitcast %struct.hypre_SemiRestrictData* %2 to i8*
  ret i8* %3
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiRestrictSetup(i8* %restrict_vdata, %struct.hypre_StructMatrix_struct* %R, i32 %R_stored_as_transpose, %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct* %rc, i32* %cindex, i32* %findex, i32* %stride) #0 {
entry:
  %restrict_vdata.addr = alloca i8*, align 8
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %R_stored_as_transpose.addr = alloca i32, align 4
  %r.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %rc.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %findex.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %restrict_data = alloca %struct.hypre_SemiRestrictData*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %ierr = alloca i32, align 4
  store i8* %restrict_vdata, i8** %restrict_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store i32 %R_stored_as_transpose, i32* %R_stored_as_transpose.addr, align 4
  store %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct** %r.addr, align 8
  store %struct.hypre_StructVector_struct* %rc, %struct.hypre_StructVector_struct** %rc.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %findex, i32** %findex.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  %0 = load i8*, i8** %restrict_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiRestrictData*
  store %struct.hypre_SemiRestrictData* %1, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %stencil2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 3
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil2, align 8
  store %struct.hypre_StructStencil_struct* %5, %struct.hypre_StructStencil_struct** %stencil, align 8
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %6, %struct.hypre_StructStencil_struct* %7, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %8 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %9 = load i32*, i32** %findex.addr, align 8
  %10 = load i32*, i32** %stride.addr, align 8
  %call3 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %8, i32* %9, i32* %10)
  %11 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %12 = load i32*, i32** %findex.addr, align 8
  %13 = load i32*, i32** %stride.addr, align 8
  %call4 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %11, i32* %12, i32* %13)
  %14 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %15 = load i32*, i32** %cindex.addr, align 8
  %16 = load i32*, i32** %stride.addr, align 8
  %call5 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %14, i32* %15, i32* %16)
  %17 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %18 = load i32*, i32** %cindex.addr, align 8
  %19 = load i32*, i32** %stride.addr, align 8
  %call6 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %17, i32* %18, i32* %19)
  %20 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %21 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %22 = load i32*, i32** %stride.addr, align 8
  %23 = load i32*, i32** %stride.addr, align 8
  %24 = load i32**, i32*** %send_processes, align 8
  %25 = load i32**, i32*** %recv_processes, align 8
  %26 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %27 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %28 = load i32*, i32** %stride.addr, align 8
  %29 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %30 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %30, i32 0, i32 2
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call7 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %20, %struct.hypre_BoxArrayArray_struct* %21, i32* %22, i32* %23, i32** %24, i32** %25, %struct.hypre_BoxArrayArray_struct* %26, %struct.hypre_BoxArrayArray_struct* %27, i32* %28, %struct.hypre_StructGrid_struct* %29, %struct.hypre_BoxArray_struct* %31, i32 1, %struct.hypre_ComputePkg_struct** %compute_pkg)
  %32 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %call8 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %32)
  %33 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %R9 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %33, i32 0, i32 0
  store %struct.hypre_StructMatrix_struct* %call8, %struct.hypre_StructMatrix_struct** %R9, align 8
  %34 = load i32, i32* %R_stored_as_transpose.addr, align 4
  %35 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %R_stored_as_transpose10 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %35, i32 0, i32 1
  store i32 %34, i32* %R_stored_as_transpose10, align 4
  %36 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %37 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %compute_pkg11 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %37, i32 0, i32 2
  store %struct.hypre_ComputePkg_struct* %36, %struct.hypre_ComputePkg_struct** %compute_pkg11, align 8
  %38 = load i32*, i32** %cindex.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx, align 4
  %40 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %cindex12 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %40, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex12, i32 0, i64 0
  store i32 %39, i32* %arrayidx13, align 4
  %41 = load i32*, i32** %cindex.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx14, align 4
  %43 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %cindex15 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %43, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex15, i32 0, i64 1
  store i32 %42, i32* %arrayidx16, align 4
  %44 = load i32*, i32** %cindex.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %44, i64 2
  %45 = load i32, i32* %arrayidx17, align 4
  %46 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %cindex18 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %46, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex18, i32 0, i64 2
  store i32 %45, i32* %arrayidx19, align 4
  %47 = load i32*, i32** %stride.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx20, align 4
  %49 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %stride21 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %49, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %stride21, i32 0, i64 0
  store i32 %48, i32* %arrayidx22, align 4
  %50 = load i32*, i32** %stride.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %50, i64 1
  %51 = load i32, i32* %arrayidx23, align 4
  %52 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %stride24 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %52, i32 0, i32 4
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %stride24, i32 0, i64 1
  store i32 %51, i32* %arrayidx25, align 4
  %53 = load i32*, i32** %stride.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %arrayidx26, align 4
  %55 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %stride27 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %55, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %stride27, i32 0, i64 2
  store i32 %54, i32* %arrayidx28, align 4
  %56 = load i32, i32* %ierr, align 4
  ret i32 %56
}

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct*, i32*, i32*) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiRestrict(i8* %restrict_vdata, %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct* %rc) #0 {
entry:
  %restrict_vdata.addr = alloca i8*, align 8
  %R.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %r.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %rc.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %restrict_data = alloca %struct.hypre_SemiRestrictData*, align 8
  %R_stored_as_transpose = alloca i32, align 4
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %cindex = alloca i32*, align 8
  %stride = alloca i32*, align 8
  %fgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %fgrid_ids = alloca i32*, align 8
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %cgrid_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cgrid_ids = alloca i32*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %R_dbox = alloca %struct.hypre_Box_struct*, align 8
  %r_dbox = alloca %struct.hypre_Box_struct*, align 8
  %rc_dbox = alloca %struct.hypre_Box_struct*, align 8
  %Ri = alloca i32, align 4
  %ri = alloca i32, align 4
  %rci = alloca i32, align 4
  %Rp0 = alloca double*, align 8
  %Rp1 = alloca double*, align 8
  %rp = alloca double*, align 8
  %rp0 = alloca double*, align 8
  %rp1 = alloca double*, align 8
  %rcp = alloca double*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %startc = alloca [3 x i32], align 4
  %stridec = alloca [3 x i32], align 4
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %compute_i = alloca i32, align 4
  %fi = alloca i32, align 4
  %ci = alloca i32, align 4
  %j = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
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
  store i8* %restrict_vdata, i8** %restrict_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %R, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  store %struct.hypre_StructVector_struct* %r, %struct.hypre_StructVector_struct** %r.addr, align 8
  store %struct.hypre_StructVector_struct* %rc, %struct.hypre_StructVector_struct** %rc.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %restrict_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiRestrictData*
  store %struct.hypre_SemiRestrictData* %1, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %2 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %2, i32 0, i32 5
  %3 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %3)
  %4 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %R_stored_as_transpose1 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %4, i32 0, i32 1
  %5 = load i32, i32* %R_stored_as_transpose1, align 4
  store i32 %5, i32* %R_stored_as_transpose, align 4
  %6 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %compute_pkg2 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %6, i32 0, i32 2
  %7 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg2, align 8
  store %struct.hypre_ComputePkg_struct* %7, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %8 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %cindex3 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %cindex3, i32 0, i32 0
  store i32* %arraydecay, i32** %cindex, align 8
  %9 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %stride4 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %9, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %stride4, i32 0, i32 0
  store i32* %arraydecay5, i32** %stride, align 8
  %10 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %stencil6 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %10, i32 0, i32 3
  %11 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil6, align 8
  store %struct.hypre_StructStencil_struct* %11, %struct.hypre_StructStencil_struct** %stencil, align 8
  %12 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %12, i32 0, i32 0
  %13 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %13, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx8, align 4
  %14 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %14, i32 0, i32 1
  %15 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %15, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %16 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %16, i32 0, i32 3
  %17 = load i32*, i32** %ids, align 8
  store i32* %17, i32** %fgrid_ids, align 8
  %18 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %rc.addr, align 8
  %grid9 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %18, i32 0, i32 1
  %19 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid9, align 8
  store %struct.hypre_StructGrid_struct* %19, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %20 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %20, i32 0, i32 2
  %21 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %21, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %22 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids10 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %22, i32 0, i32 3
  %23 = load i32*, i32** %ids10, align 8
  store i32* %23, i32** %cgrid_ids, align 8
  store i32 0, i32* %compute_i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.676, %entry
  %24 = load i32, i32* %compute_i, align 4
  %cmp = icmp slt i32 %24, 2
  br i1 %cmp, label %for.body, label %for.end.678

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %compute_i, align 4
  switch i32 %25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %for.body
  %26 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %26, i32 0, i32 3
  %27 = load double*, double** %data, align 8
  store double* %27, double** %rp, align 8
  %28 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %29 = load double*, double** %rp, align 8
  %call11 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %28, double* %29, %struct.hypre_CommHandle_struct** %comm_handle)
  %30 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %30, i32 0, i32 1
  %31 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %31, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %32 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call13 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %32)
  %33 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %33, i32 0, i32 2
  %34 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %34, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.12, %sw.bb
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.673, %sw.epilog
  %35 = load i32, i32* %ci, align 4
  %36 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %size, align 4
  %cmp15 = icmp slt i32 %35, %37
  br i1 %cmp15, label %for.body.16, label %for.end.675

for.body.16:                                      ; preds = %for.cond.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.16
  %38 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %40 = load i32, i32* %arrayidx17, align 4
  %41 = load i32, i32* %ci, align 4
  %idxprom18 = sext i32 %41 to i64
  %42 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %42, i64 %idxprom18
  %43 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp ne i32 %40, %43
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i32, i32* %fi, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %fi, align 4
  %idxprom21 = sext i32 %45 to i64
  %46 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %46, i32 0, i32 0
  %47 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx22 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %47, i64 %idxprom21
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx22, align 8
  store %struct.hypre_BoxArray_struct* %48, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %49 = load i32, i32* %fi, align 4
  %idxprom23 = sext i32 %49 to i64
  %50 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %50, i32 0, i32 5
  %51 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes24 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %51, i32 0, i32 0
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes24, align 8
  %arrayidx25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i64 %idxprom23
  store %struct.hypre_Box_struct* %arrayidx25, %struct.hypre_Box_struct** %R_dbox, align 8
  %53 = load i32, i32* %fi, align 4
  %idxprom26 = sext i32 %53 to i64
  %54 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_space27 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %54, i32 0, i32 2
  %55 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space27, align 8
  %boxes28 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %55, i32 0, i32 0
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes28, align 8
  %arrayidx29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i64 %idxprom26
  store %struct.hypre_Box_struct* %arrayidx29, %struct.hypre_Box_struct** %r_dbox, align 8
  %57 = load i32, i32* %ci, align 4
  %idxprom30 = sext i32 %57 to i64
  %58 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %rc.addr, align 8
  %data_space31 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %58, i32 0, i32 2
  %59 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space31, align 8
  %boxes32 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %59, i32 0, i32 0
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes32, align 8
  %arrayidx33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i64 %idxprom30
  store %struct.hypre_Box_struct* %arrayidx33, %struct.hypre_Box_struct** %rc_dbox, align 8
  %61 = load i32, i32* %R_stored_as_transpose, align 4
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %62 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data34 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %62, i32 0, i32 6
  %63 = load double*, double** %data34, align 8
  %64 = load i32, i32* %fi, align 4
  %idxprom35 = sext i32 %64 to i64
  %65 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %65, i32 0, i32 9
  %66 = load i32**, i32*** %data_indices, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %66, i64 %idxprom35
  %67 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %67, i64 1
  %68 = load i32, i32* %arrayidx37, align 4
  %idx.ext = sext i32 %68 to i64
  %add.ptr = getelementptr inbounds double, double* %63, i64 %idx.ext
  %69 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %69, i64 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 0
  %70 = load i32, i32* %arrayidx39, align 4
  %71 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %71, i64 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 1
  %72 = load i32, i32* %arrayidx41, align 4
  %73 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i32 0, i64 2
  %74 = load i32, i32* %arrayidx43, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %76 = load i32, i32* %arrayidx44, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 1
  %78 = load i32, i32* %arrayidx45, align 4
  %sub = sub nsw i32 %76, %78
  %add = add nsw i32 %sub, 1
  %cmp46 = icmp slt i32 0, %add
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %imax47, i32 0, i64 1
  %80 = load i32, i32* %arrayidx48, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %imin49, i32 0, i64 1
  %82 = load i32, i32* %arrayidx50, align 4
  %sub51 = sub nsw i32 %80, %82
  %add52 = add nsw i32 %sub51, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add52, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %74, %cond
  %add53 = add nsw i32 %72, %mul
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imax54, i32 0, i64 0
  %84 = load i32, i32* %arrayidx55, align 4
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imin56, i32 0, i64 0
  %86 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub nsw i32 %84, %86
  %add59 = add nsw i32 %sub58, 1
  %cmp60 = icmp slt i32 0, %add59
  br i1 %cmp60, label %cond.true.61, label %cond.false.68

cond.true.61:                                     ; preds = %cond.end
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imax62, i32 0, i64 0
  %88 = load i32, i32* %arrayidx63, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imin64, i32 0, i64 0
  %90 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub nsw i32 %88, %90
  %add67 = add nsw i32 %sub66, 1
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.61
  %cond70 = phi i32 [ %add67, %cond.true.61 ], [ 0, %cond.false.68 ]
  %mul71 = mul nsw i32 %add53, %cond70
  %add72 = add nsw i32 %70, %mul71
  %idx.ext73 = sext i32 %add72 to i64
  %idx.neg = sub i64 0, %idx.ext73
  %add.ptr74 = getelementptr inbounds double, double* %add.ptr, i64 %idx.neg
  store double* %add.ptr74, double** %Rp0, align 8
  %91 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data75 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %91, i32 0, i32 6
  %92 = load double*, double** %data75, align 8
  %93 = load i32, i32* %fi, align 4
  %idxprom76 = sext i32 %93 to i64
  %94 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_indices77 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %94, i32 0, i32 9
  %95 = load i32**, i32*** %data_indices77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %95, i64 %idxprom76
  %96 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx79, align 4
  %idx.ext80 = sext i32 %97 to i64
  %add.ptr81 = getelementptr inbounds double, double* %92, i64 %idx.ext80
  store double* %add.ptr81, double** %Rp1, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %98 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data82 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %98, i32 0, i32 6
  %99 = load double*, double** %data82, align 8
  %100 = load i32, i32* %fi, align 4
  %idxprom83 = sext i32 %100 to i64
  %101 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_indices84 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %101, i32 0, i32 9
  %102 = load i32**, i32*** %data_indices84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %102, i64 %idxprom83
  %103 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %103, i64 0
  %104 = load i32, i32* %arrayidx86, align 4
  %idx.ext87 = sext i32 %104 to i64
  %add.ptr88 = getelementptr inbounds double, double* %99, i64 %idx.ext87
  store double* %add.ptr88, double** %Rp0, align 8
  %105 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data89 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %105, i32 0, i32 6
  %106 = load double*, double** %data89, align 8
  %107 = load i32, i32* %fi, align 4
  %idxprom90 = sext i32 %107 to i64
  %108 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R.addr, align 8
  %data_indices91 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %108, i32 0, i32 9
  %109 = load i32**, i32*** %data_indices91, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %109, i64 %idxprom90
  %110 = load i32*, i32** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %110, i64 1
  %111 = load i32, i32* %arrayidx93, align 4
  %idx.ext94 = sext i32 %111 to i64
  %add.ptr95 = getelementptr inbounds double, double* %106, i64 %idx.ext94
  store double* %add.ptr95, double** %Rp1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.69
  %112 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data96 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %112, i32 0, i32 3
  %113 = load double*, double** %data96, align 8
  %114 = load i32, i32* %fi, align 4
  %idxprom97 = sext i32 %114 to i64
  %115 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %r.addr, align 8
  %data_indices98 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %115, i32 0, i32 6
  %116 = load i32*, i32** %data_indices98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %116, i64 %idxprom97
  %117 = load i32, i32* %arrayidx99, align 4
  %idx.ext100 = sext i32 %117 to i64
  %add.ptr101 = getelementptr inbounds double, double* %113, i64 %idx.ext100
  store double* %add.ptr101, double** %rp, align 8
  %118 = load double*, double** %rp, align 8
  %119 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %119, i64 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 0
  %120 = load i32, i32* %arrayidx103, align 4
  %121 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %121, i64 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx104, i32 0, i64 1
  %122 = load i32, i32* %arrayidx105, align 4
  %123 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %123, i64 0
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx106, i32 0, i64 2
  %124 = load i32, i32* %arrayidx107, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imax108, i32 0, i64 1
  %126 = load i32, i32* %arrayidx109, align 4
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imin110, i32 0, i64 1
  %128 = load i32, i32* %arrayidx111, align 4
  %sub112 = sub nsw i32 %126, %128
  %add113 = add nsw i32 %sub112, 1
  %cmp114 = icmp slt i32 0, %add113
  br i1 %cmp114, label %cond.true.115, label %cond.false.122

cond.true.115:                                    ; preds = %if.end
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imax116, i32 0, i64 1
  %130 = load i32, i32* %arrayidx117, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin118 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %imin118, i32 0, i64 1
  %132 = load i32, i32* %arrayidx119, align 4
  %sub120 = sub nsw i32 %130, %132
  %add121 = add nsw i32 %sub120, 1
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.end
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.115
  %cond124 = phi i32 [ %add121, %cond.true.115 ], [ 0, %cond.false.122 ]
  %mul125 = mul nsw i32 %124, %cond124
  %add126 = add nsw i32 %122, %mul125
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imax127, i32 0, i64 0
  %134 = load i32, i32* %arrayidx128, align 4
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imin129, i32 0, i64 0
  %136 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %134, %136
  %add132 = add nsw i32 %sub131, 1
  %cmp133 = icmp slt i32 0, %add132
  br i1 %cmp133, label %cond.true.134, label %cond.false.141

cond.true.134:                                    ; preds = %cond.end.123
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i64 0
  %138 = load i32, i32* %arrayidx136, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imin137, i32 0, i64 0
  %140 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %138, %140
  %add140 = add nsw i32 %sub139, 1
  br label %cond.end.142

cond.false.141:                                   ; preds = %cond.end.123
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.134
  %cond143 = phi i32 [ %add140, %cond.true.134 ], [ 0, %cond.false.141 ]
  %mul144 = mul nsw i32 %add126, %cond143
  %add145 = add nsw i32 %120, %mul144
  %idx.ext146 = sext i32 %add145 to i64
  %add.ptr147 = getelementptr inbounds double, double* %118, i64 %idx.ext146
  store double* %add.ptr147, double** %rp0, align 8
  %141 = load double*, double** %rp, align 8
  %142 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %142, i64 1
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx148, i32 0, i64 0
  %143 = load i32, i32* %arrayidx149, align 4
  %144 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx150 = getelementptr inbounds [3 x i32], [3 x i32]* %144, i64 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx150, i32 0, i64 1
  %145 = load i32, i32* %arrayidx151, align 4
  %146 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %146, i64 1
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx152, i32 0, i64 2
  %147 = load i32, i32* %arrayidx153, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %imax154, i32 0, i64 1
  %149 = load i32, i32* %arrayidx155, align 4
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %imin156, i32 0, i64 1
  %151 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %149, %151
  %add159 = add nsw i32 %sub158, 1
  %cmp160 = icmp slt i32 0, %add159
  br i1 %cmp160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %cond.end.142
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 1
  %153 = load i32, i32* %arrayidx163, align 4
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imin164, i32 0, i64 1
  %155 = load i32, i32* %arrayidx165, align 4
  %sub166 = sub nsw i32 %153, %155
  %add167 = add nsw i32 %sub166, 1
  br label %cond.end.169

cond.false.168:                                   ; preds = %cond.end.142
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.161
  %cond170 = phi i32 [ %add167, %cond.true.161 ], [ 0, %cond.false.168 ]
  %mul171 = mul nsw i32 %147, %cond170
  %add172 = add nsw i32 %145, %mul171
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax173, i32 0, i64 0
  %157 = load i32, i32* %arrayidx174, align 4
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %imin175, i32 0, i64 0
  %159 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %157, %159
  %add178 = add nsw i32 %sub177, 1
  %cmp179 = icmp slt i32 0, %add178
  br i1 %cmp179, label %cond.true.180, label %cond.false.187

cond.true.180:                                    ; preds = %cond.end.169
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imax181, i32 0, i64 0
  %161 = load i32, i32* %arrayidx182, align 4
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin183, i32 0, i64 0
  %163 = load i32, i32* %arrayidx184, align 4
  %sub185 = sub nsw i32 %161, %163
  %add186 = add nsw i32 %sub185, 1
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.end.169
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.180
  %cond189 = phi i32 [ %add186, %cond.true.180 ], [ 0, %cond.false.187 ]
  %mul190 = mul nsw i32 %add172, %cond189
  %add191 = add nsw i32 %143, %mul190
  %idx.ext192 = sext i32 %add191 to i64
  %add.ptr193 = getelementptr inbounds double, double* %141, i64 %idx.ext192
  store double* %add.ptr193, double** %rp1, align 8
  %164 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %rc.addr, align 8
  %data194 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %164, i32 0, i32 3
  %165 = load double*, double** %data194, align 8
  %166 = load i32, i32* %ci, align 4
  %idxprom195 = sext i32 %166 to i64
  %167 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %rc.addr, align 8
  %data_indices196 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %167, i32 0, i32 6
  %168 = load i32*, i32** %data_indices196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %168, i64 %idxprom195
  %169 = load i32, i32* %arrayidx197, align 4
  %idx.ext198 = sext i32 %169 to i64
  %add.ptr199 = getelementptr inbounds double, double* %165, i64 %idx.ext198
  store double* %add.ptr199, double** %rcp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.670, %cond.end.188
  %170 = load i32, i32* %j, align 4
  %171 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size201 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %171, i32 0, i32 1
  %172 = load i32, i32* %size201, align 4
  %cmp202 = icmp slt i32 %170, %172
  br i1 %cmp202, label %for.body.203, label %for.end.672

for.body.203:                                     ; preds = %for.cond.200
  %173 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %173 to i64
  %174 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes205 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %174, i32 0, i32 0
  %175 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes205, align 8
  %arrayidx206 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %175, i64 %idxprom204
  store %struct.hypre_Box_struct* %arrayidx206, %struct.hypre_Box_struct** %compute_box, align 8
  %176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %176, i32 0, i32 0
  %arraydecay208 = getelementptr inbounds [3 x i32], [3 x i32]* %imin207, i32 0, i32 0
  store i32* %arraydecay208, i32** %start, align 8
  %177 = load i32*, i32** %start, align 8
  %178 = load i32*, i32** %cindex, align 8
  %179 = load i32*, i32** %stride, align 8
  %arraydecay209 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %call210 = call i32 @hypre_StructMapFineToCoarse(i32* %177, i32* %178, i32* %179, i32* %arraydecay209)
  %180 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %181 = load i32*, i32** %stride, align 8
  %arraydecay211 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call212 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %180, i32* %181, i32* %arraydecay211)
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %182 = load i32, i32* %arrayidx213, align 4
  %183 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %183, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imin214, i32 0, i64 0
  %184 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 %182, %184
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %185 = load i32, i32* %arrayidx217, align 4
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %imin218, i32 0, i64 1
  %187 = load i32, i32* %arrayidx219, align 4
  %sub220 = sub nsw i32 %185, %187
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %188 = load i32, i32* %arrayidx221, align 4
  %189 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %189, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [3 x i32], [3 x i32]* %imin222, i32 0, i64 2
  %190 = load i32, i32* %arrayidx223, align 4
  %sub224 = sub nsw i32 %188, %190
  %191 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %191, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax225, i32 0, i64 1
  %192 = load i32, i32* %arrayidx226, align 4
  %193 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %193, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin227, i32 0, i64 1
  %194 = load i32, i32* %arrayidx228, align 4
  %sub229 = sub nsw i32 %192, %194
  %add230 = add nsw i32 %sub229, 1
  %cmp231 = icmp slt i32 0, %add230
  br i1 %cmp231, label %cond.true.232, label %cond.false.239

cond.true.232:                                    ; preds = %for.body.203
  %195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax233 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %195, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %imax233, i32 0, i64 1
  %196 = load i32, i32* %arrayidx234, align 4
  %197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin235 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %197, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %imin235, i32 0, i64 1
  %198 = load i32, i32* %arrayidx236, align 4
  %sub237 = sub nsw i32 %196, %198
  %add238 = add nsw i32 %sub237, 1
  br label %cond.end.240

cond.false.239:                                   ; preds = %for.body.203
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.239, %cond.true.232
  %cond241 = phi i32 [ %add238, %cond.true.232 ], [ 0, %cond.false.239 ]
  %mul242 = mul nsw i32 %sub224, %cond241
  %add243 = add nsw i32 %sub220, %mul242
  %199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax244 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %199, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %imax244, i32 0, i64 0
  %200 = load i32, i32* %arrayidx245, align 4
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %imin246, i32 0, i64 0
  %202 = load i32, i32* %arrayidx247, align 4
  %sub248 = sub nsw i32 %200, %202
  %add249 = add nsw i32 %sub248, 1
  %cmp250 = icmp slt i32 0, %add249
  br i1 %cmp250, label %cond.true.251, label %cond.false.258

cond.true.251:                                    ; preds = %cond.end.240
  %203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %203, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imax252, i32 0, i64 0
  %204 = load i32, i32* %arrayidx253, align 4
  %205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin254 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %205, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %imin254, i32 0, i64 0
  %206 = load i32, i32* %arrayidx255, align 4
  %sub256 = sub nsw i32 %204, %206
  %add257 = add nsw i32 %sub256, 1
  br label %cond.end.259

cond.false.258:                                   ; preds = %cond.end.240
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.258, %cond.true.251
  %cond260 = phi i32 [ %add257, %cond.true.251 ], [ 0, %cond.false.258 ]
  %mul261 = mul nsw i32 %add243, %cond260
  %add262 = add nsw i32 %sub216, %mul261
  store i32 %add262, i32* %hypre__i1start, align 4
  %207 = load i32*, i32** %start, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %207, i64 0
  %208 = load i32, i32* %arrayidx263, align 4
  %209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin264 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %209, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %imin264, i32 0, i64 0
  %210 = load i32, i32* %arrayidx265, align 4
  %sub266 = sub nsw i32 %208, %210
  %211 = load i32*, i32** %start, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %211, i64 1
  %212 = load i32, i32* %arrayidx267, align 4
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %213, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %imin268, i32 0, i64 1
  %214 = load i32, i32* %arrayidx269, align 4
  %sub270 = sub nsw i32 %212, %214
  %215 = load i32*, i32** %start, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %215, i64 2
  %216 = load i32, i32* %arrayidx271, align 4
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin272 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [3 x i32], [3 x i32]* %imin272, i32 0, i64 2
  %218 = load i32, i32* %arrayidx273, align 4
  %sub274 = sub nsw i32 %216, %218
  %219 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax275 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %219, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [3 x i32], [3 x i32]* %imax275, i32 0, i64 1
  %220 = load i32, i32* %arrayidx276, align 4
  %221 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %221, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imin277, i32 0, i64 1
  %222 = load i32, i32* %arrayidx278, align 4
  %sub279 = sub nsw i32 %220, %222
  %add280 = add nsw i32 %sub279, 1
  %cmp281 = icmp slt i32 0, %add280
  br i1 %cmp281, label %cond.true.282, label %cond.false.289

cond.true.282:                                    ; preds = %cond.end.259
  %223 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax283 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %223, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %imax283, i32 0, i64 1
  %224 = load i32, i32* %arrayidx284, align 4
  %225 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin285 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %225, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %imin285, i32 0, i64 1
  %226 = load i32, i32* %arrayidx286, align 4
  %sub287 = sub nsw i32 %224, %226
  %add288 = add nsw i32 %sub287, 1
  br label %cond.end.290

cond.false.289:                                   ; preds = %cond.end.259
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.282
  %cond291 = phi i32 [ %add288, %cond.true.282 ], [ 0, %cond.false.289 ]
  %mul292 = mul nsw i32 %sub274, %cond291
  %add293 = add nsw i32 %sub270, %mul292
  %227 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax294 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %227, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [3 x i32], [3 x i32]* %imax294, i32 0, i64 0
  %228 = load i32, i32* %arrayidx295, align 4
  %229 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin296 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %229, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x i32], [3 x i32]* %imin296, i32 0, i64 0
  %230 = load i32, i32* %arrayidx297, align 4
  %sub298 = sub nsw i32 %228, %230
  %add299 = add nsw i32 %sub298, 1
  %cmp300 = icmp slt i32 0, %add299
  br i1 %cmp300, label %cond.true.301, label %cond.false.308

cond.true.301:                                    ; preds = %cond.end.290
  %231 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax302 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %231, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [3 x i32], [3 x i32]* %imax302, i32 0, i64 0
  %232 = load i32, i32* %arrayidx303, align 4
  %233 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin304 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %233, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [3 x i32], [3 x i32]* %imin304, i32 0, i64 0
  %234 = load i32, i32* %arrayidx305, align 4
  %sub306 = sub nsw i32 %232, %234
  %add307 = add nsw i32 %sub306, 1
  br label %cond.end.309

cond.false.308:                                   ; preds = %cond.end.290
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.308, %cond.true.301
  %cond310 = phi i32 [ %add307, %cond.true.301 ], [ 0, %cond.false.308 ]
  %mul311 = mul nsw i32 %add293, %cond310
  %add312 = add nsw i32 %sub266, %mul311
  store i32 %add312, i32* %hypre__i2start, align 4
  %arrayidx313 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %235 = load i32, i32* %arrayidx313, align 4
  %236 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin314 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %236, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [3 x i32], [3 x i32]* %imin314, i32 0, i64 0
  %237 = load i32, i32* %arrayidx315, align 4
  %sub316 = sub nsw i32 %235, %237
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %238 = load i32, i32* %arrayidx317, align 4
  %239 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin318 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %239, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [3 x i32], [3 x i32]* %imin318, i32 0, i64 1
  %240 = load i32, i32* %arrayidx319, align 4
  %sub320 = sub nsw i32 %238, %240
  %arrayidx321 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %241 = load i32, i32* %arrayidx321, align 4
  %242 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin322 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %242, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [3 x i32], [3 x i32]* %imin322, i32 0, i64 2
  %243 = load i32, i32* %arrayidx323, align 4
  %sub324 = sub nsw i32 %241, %243
  %244 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax325 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %244, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [3 x i32], [3 x i32]* %imax325, i32 0, i64 1
  %245 = load i32, i32* %arrayidx326, align 4
  %246 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin327 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %246, i32 0, i32 0
  %arrayidx328 = getelementptr inbounds [3 x i32], [3 x i32]* %imin327, i32 0, i64 1
  %247 = load i32, i32* %arrayidx328, align 4
  %sub329 = sub nsw i32 %245, %247
  %add330 = add nsw i32 %sub329, 1
  %cmp331 = icmp slt i32 0, %add330
  br i1 %cmp331, label %cond.true.332, label %cond.false.339

cond.true.332:                                    ; preds = %cond.end.309
  %248 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax333 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %248, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [3 x i32], [3 x i32]* %imax333, i32 0, i64 1
  %249 = load i32, i32* %arrayidx334, align 4
  %250 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin335 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %250, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [3 x i32], [3 x i32]* %imin335, i32 0, i64 1
  %251 = load i32, i32* %arrayidx336, align 4
  %sub337 = sub nsw i32 %249, %251
  %add338 = add nsw i32 %sub337, 1
  br label %cond.end.340

cond.false.339:                                   ; preds = %cond.end.309
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.339, %cond.true.332
  %cond341 = phi i32 [ %add338, %cond.true.332 ], [ 0, %cond.false.339 ]
  %mul342 = mul nsw i32 %sub324, %cond341
  %add343 = add nsw i32 %sub320, %mul342
  %252 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %252, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %imax344, i32 0, i64 0
  %253 = load i32, i32* %arrayidx345, align 4
  %254 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %254, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %imin346, i32 0, i64 0
  %255 = load i32, i32* %arrayidx347, align 4
  %sub348 = sub nsw i32 %253, %255
  %add349 = add nsw i32 %sub348, 1
  %cmp350 = icmp slt i32 0, %add349
  br i1 %cmp350, label %cond.true.351, label %cond.false.358

cond.true.351:                                    ; preds = %cond.end.340
  %256 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %256, i32 0, i32 1
  %arrayidx353 = getelementptr inbounds [3 x i32], [3 x i32]* %imax352, i32 0, i64 0
  %257 = load i32, i32* %arrayidx353, align 4
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin354 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %258, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [3 x i32], [3 x i32]* %imin354, i32 0, i64 0
  %259 = load i32, i32* %arrayidx355, align 4
  %sub356 = sub nsw i32 %257, %259
  %add357 = add nsw i32 %sub356, 1
  br label %cond.end.359

cond.false.358:                                   ; preds = %cond.end.340
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.351
  %cond360 = phi i32 [ %add357, %cond.true.351 ], [ 0, %cond.false.358 ]
  %mul361 = mul nsw i32 %add343, %cond360
  %add362 = add nsw i32 %sub316, %mul361
  store i32 %add362, i32* %hypre__i3start, align 4
  %arrayidx363 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %260 = load i32, i32* %arrayidx363, align 4
  store i32 %260, i32* %hypre__sx1, align 4
  %arrayidx364 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %261 = load i32, i32* %arrayidx364, align 4
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax365 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [3 x i32], [3 x i32]* %imax365, i32 0, i64 0
  %263 = load i32, i32* %arrayidx366, align 4
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin367 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [3 x i32], [3 x i32]* %imin367, i32 0, i64 0
  %265 = load i32, i32* %arrayidx368, align 4
  %sub369 = sub nsw i32 %263, %265
  %add370 = add nsw i32 %sub369, 1
  %cmp371 = icmp slt i32 0, %add370
  br i1 %cmp371, label %cond.true.372, label %cond.false.379

cond.true.372:                                    ; preds = %cond.end.359
  %266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax373 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %266, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %imax373, i32 0, i64 0
  %267 = load i32, i32* %arrayidx374, align 4
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin375 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [3 x i32], [3 x i32]* %imin375, i32 0, i64 0
  %269 = load i32, i32* %arrayidx376, align 4
  %sub377 = sub nsw i32 %267, %269
  %add378 = add nsw i32 %sub377, 1
  br label %cond.end.380

cond.false.379:                                   ; preds = %cond.end.359
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.379, %cond.true.372
  %cond381 = phi i32 [ %add378, %cond.true.372 ], [ 0, %cond.false.379 ]
  %mul382 = mul nsw i32 %261, %cond381
  store i32 %mul382, i32* %hypre__sy1, align 4
  %arrayidx383 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %270 = load i32, i32* %arrayidx383, align 4
  %271 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax384 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %271, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [3 x i32], [3 x i32]* %imax384, i32 0, i64 0
  %272 = load i32, i32* %arrayidx385, align 4
  %273 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin386 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %273, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [3 x i32], [3 x i32]* %imin386, i32 0, i64 0
  %274 = load i32, i32* %arrayidx387, align 4
  %sub388 = sub nsw i32 %272, %274
  %add389 = add nsw i32 %sub388, 1
  %cmp390 = icmp slt i32 0, %add389
  br i1 %cmp390, label %cond.true.391, label %cond.false.398

cond.true.391:                                    ; preds = %cond.end.380
  %275 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax392 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %275, i32 0, i32 1
  %arrayidx393 = getelementptr inbounds [3 x i32], [3 x i32]* %imax392, i32 0, i64 0
  %276 = load i32, i32* %arrayidx393, align 4
  %277 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin394 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %277, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [3 x i32], [3 x i32]* %imin394, i32 0, i64 0
  %278 = load i32, i32* %arrayidx395, align 4
  %sub396 = sub nsw i32 %276, %278
  %add397 = add nsw i32 %sub396, 1
  br label %cond.end.399

cond.false.398:                                   ; preds = %cond.end.380
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.398, %cond.true.391
  %cond400 = phi i32 [ %add397, %cond.true.391 ], [ 0, %cond.false.398 ]
  %mul401 = mul nsw i32 %270, %cond400
  %279 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax402 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %279, i32 0, i32 1
  %arrayidx403 = getelementptr inbounds [3 x i32], [3 x i32]* %imax402, i32 0, i64 1
  %280 = load i32, i32* %arrayidx403, align 4
  %281 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin404 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %281, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [3 x i32], [3 x i32]* %imin404, i32 0, i64 1
  %282 = load i32, i32* %arrayidx405, align 4
  %sub406 = sub nsw i32 %280, %282
  %add407 = add nsw i32 %sub406, 1
  %cmp408 = icmp slt i32 0, %add407
  br i1 %cmp408, label %cond.true.409, label %cond.false.416

cond.true.409:                                    ; preds = %cond.end.399
  %283 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imax410 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %283, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [3 x i32], [3 x i32]* %imax410, i32 0, i64 1
  %284 = load i32, i32* %arrayidx411, align 4
  %285 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %R_dbox, align 8
  %imin412 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %285, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [3 x i32], [3 x i32]* %imin412, i32 0, i64 1
  %286 = load i32, i32* %arrayidx413, align 4
  %sub414 = sub nsw i32 %284, %286
  %add415 = add nsw i32 %sub414, 1
  br label %cond.end.417

cond.false.416:                                   ; preds = %cond.end.399
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.416, %cond.true.409
  %cond418 = phi i32 [ %add415, %cond.true.409 ], [ 0, %cond.false.416 ]
  %mul419 = mul nsw i32 %mul401, %cond418
  store i32 %mul419, i32* %hypre__sz1, align 4
  %287 = load i32*, i32** %stride, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %287, i64 0
  %288 = load i32, i32* %arrayidx420, align 4
  store i32 %288, i32* %hypre__sx2, align 4
  %289 = load i32*, i32** %stride, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %289, i64 1
  %290 = load i32, i32* %arrayidx421, align 4
  %291 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax422 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %291, i32 0, i32 1
  %arrayidx423 = getelementptr inbounds [3 x i32], [3 x i32]* %imax422, i32 0, i64 0
  %292 = load i32, i32* %arrayidx423, align 4
  %293 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin424 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %293, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [3 x i32], [3 x i32]* %imin424, i32 0, i64 0
  %294 = load i32, i32* %arrayidx425, align 4
  %sub426 = sub nsw i32 %292, %294
  %add427 = add nsw i32 %sub426, 1
  %cmp428 = icmp slt i32 0, %add427
  br i1 %cmp428, label %cond.true.429, label %cond.false.436

cond.true.429:                                    ; preds = %cond.end.417
  %295 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax430 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %295, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [3 x i32], [3 x i32]* %imax430, i32 0, i64 0
  %296 = load i32, i32* %arrayidx431, align 4
  %297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin432 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %297, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [3 x i32], [3 x i32]* %imin432, i32 0, i64 0
  %298 = load i32, i32* %arrayidx433, align 4
  %sub434 = sub nsw i32 %296, %298
  %add435 = add nsw i32 %sub434, 1
  br label %cond.end.437

cond.false.436:                                   ; preds = %cond.end.417
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.false.436, %cond.true.429
  %cond438 = phi i32 [ %add435, %cond.true.429 ], [ 0, %cond.false.436 ]
  %mul439 = mul nsw i32 %290, %cond438
  store i32 %mul439, i32* %hypre__sy2, align 4
  %299 = load i32*, i32** %stride, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %299, i64 2
  %300 = load i32, i32* %arrayidx440, align 4
  %301 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %301, i32 0, i32 1
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %imax441, i32 0, i64 0
  %302 = load i32, i32* %arrayidx442, align 4
  %303 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin443 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %303, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [3 x i32], [3 x i32]* %imin443, i32 0, i64 0
  %304 = load i32, i32* %arrayidx444, align 4
  %sub445 = sub nsw i32 %302, %304
  %add446 = add nsw i32 %sub445, 1
  %cmp447 = icmp slt i32 0, %add446
  br i1 %cmp447, label %cond.true.448, label %cond.false.455

cond.true.448:                                    ; preds = %cond.end.437
  %305 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax449 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %305, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %imax449, i32 0, i64 0
  %306 = load i32, i32* %arrayidx450, align 4
  %307 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin451 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %307, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [3 x i32], [3 x i32]* %imin451, i32 0, i64 0
  %308 = load i32, i32* %arrayidx452, align 4
  %sub453 = sub nsw i32 %306, %308
  %add454 = add nsw i32 %sub453, 1
  br label %cond.end.456

cond.false.455:                                   ; preds = %cond.end.437
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.455, %cond.true.448
  %cond457 = phi i32 [ %add454, %cond.true.448 ], [ 0, %cond.false.455 ]
  %mul458 = mul nsw i32 %300, %cond457
  %309 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax459 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %309, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [3 x i32], [3 x i32]* %imax459, i32 0, i64 1
  %310 = load i32, i32* %arrayidx460, align 4
  %311 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin461 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %311, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [3 x i32], [3 x i32]* %imin461, i32 0, i64 1
  %312 = load i32, i32* %arrayidx462, align 4
  %sub463 = sub nsw i32 %310, %312
  %add464 = add nsw i32 %sub463, 1
  %cmp465 = icmp slt i32 0, %add464
  br i1 %cmp465, label %cond.true.466, label %cond.false.473

cond.true.466:                                    ; preds = %cond.end.456
  %313 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imax467 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %313, i32 0, i32 1
  %arrayidx468 = getelementptr inbounds [3 x i32], [3 x i32]* %imax467, i32 0, i64 1
  %314 = load i32, i32* %arrayidx468, align 4
  %315 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %r_dbox, align 8
  %imin469 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %315, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %imin469, i32 0, i64 1
  %316 = load i32, i32* %arrayidx470, align 4
  %sub471 = sub nsw i32 %314, %316
  %add472 = add nsw i32 %sub471, 1
  br label %cond.end.474

cond.false.473:                                   ; preds = %cond.end.456
  br label %cond.end.474

cond.end.474:                                     ; preds = %cond.false.473, %cond.true.466
  %cond475 = phi i32 [ %add472, %cond.true.466 ], [ 0, %cond.false.473 ]
  %mul476 = mul nsw i32 %mul458, %cond475
  store i32 %mul476, i32* %hypre__sz2, align 4
  %arrayidx477 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %317 = load i32, i32* %arrayidx477, align 4
  store i32 %317, i32* %hypre__sx3, align 4
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %318 = load i32, i32* %arrayidx478, align 4
  %319 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax479 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %319, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [3 x i32], [3 x i32]* %imax479, i32 0, i64 0
  %320 = load i32, i32* %arrayidx480, align 4
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin481 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %321, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [3 x i32], [3 x i32]* %imin481, i32 0, i64 0
  %322 = load i32, i32* %arrayidx482, align 4
  %sub483 = sub nsw i32 %320, %322
  %add484 = add nsw i32 %sub483, 1
  %cmp485 = icmp slt i32 0, %add484
  br i1 %cmp485, label %cond.true.486, label %cond.false.493

cond.true.486:                                    ; preds = %cond.end.474
  %323 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax487 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %323, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [3 x i32], [3 x i32]* %imax487, i32 0, i64 0
  %324 = load i32, i32* %arrayidx488, align 4
  %325 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin489 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %325, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [3 x i32], [3 x i32]* %imin489, i32 0, i64 0
  %326 = load i32, i32* %arrayidx490, align 4
  %sub491 = sub nsw i32 %324, %326
  %add492 = add nsw i32 %sub491, 1
  br label %cond.end.494

cond.false.493:                                   ; preds = %cond.end.474
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.false.493, %cond.true.486
  %cond495 = phi i32 [ %add492, %cond.true.486 ], [ 0, %cond.false.493 ]
  %mul496 = mul nsw i32 %318, %cond495
  store i32 %mul496, i32* %hypre__sy3, align 4
  %arrayidx497 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %327 = load i32, i32* %arrayidx497, align 4
  %328 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax498 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %328, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [3 x i32], [3 x i32]* %imax498, i32 0, i64 0
  %329 = load i32, i32* %arrayidx499, align 4
  %330 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin500 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %330, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [3 x i32], [3 x i32]* %imin500, i32 0, i64 0
  %331 = load i32, i32* %arrayidx501, align 4
  %sub502 = sub nsw i32 %329, %331
  %add503 = add nsw i32 %sub502, 1
  %cmp504 = icmp slt i32 0, %add503
  br i1 %cmp504, label %cond.true.505, label %cond.false.512

cond.true.505:                                    ; preds = %cond.end.494
  %332 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax506 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %332, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [3 x i32], [3 x i32]* %imax506, i32 0, i64 0
  %333 = load i32, i32* %arrayidx507, align 4
  %334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin508 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %334, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [3 x i32], [3 x i32]* %imin508, i32 0, i64 0
  %335 = load i32, i32* %arrayidx509, align 4
  %sub510 = sub nsw i32 %333, %335
  %add511 = add nsw i32 %sub510, 1
  br label %cond.end.513

cond.false.512:                                   ; preds = %cond.end.494
  br label %cond.end.513

cond.end.513:                                     ; preds = %cond.false.512, %cond.true.505
  %cond514 = phi i32 [ %add511, %cond.true.505 ], [ 0, %cond.false.512 ]
  %mul515 = mul nsw i32 %327, %cond514
  %336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax516 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %336, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [3 x i32], [3 x i32]* %imax516, i32 0, i64 1
  %337 = load i32, i32* %arrayidx517, align 4
  %338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin518 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %338, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [3 x i32], [3 x i32]* %imin518, i32 0, i64 1
  %339 = load i32, i32* %arrayidx519, align 4
  %sub520 = sub nsw i32 %337, %339
  %add521 = add nsw i32 %sub520, 1
  %cmp522 = icmp slt i32 0, %add521
  br i1 %cmp522, label %cond.true.523, label %cond.false.530

cond.true.523:                                    ; preds = %cond.end.513
  %340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imax524 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %340, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %imax524, i32 0, i64 1
  %341 = load i32, i32* %arrayidx525, align 4
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %rc_dbox, align 8
  %imin526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imin526, i32 0, i64 1
  %343 = load i32, i32* %arrayidx527, align 4
  %sub528 = sub nsw i32 %341, %343
  %add529 = add nsw i32 %sub528, 1
  br label %cond.end.531

cond.false.530:                                   ; preds = %cond.end.513
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.530, %cond.true.523
  %cond532 = phi i32 [ %add529, %cond.true.523 ], [ 0, %cond.false.530 ]
  %mul533 = mul nsw i32 %mul515, %cond532
  store i32 %mul533, i32* %hypre__sz3, align 4
  %arrayidx534 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %344 = load i32, i32* %arrayidx534, align 4
  store i32 %344, i32* %hypre__nx, align 4
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %345 = load i32, i32* %arrayidx535, align 4
  store i32 %345, i32* %hypre__ny, align 4
  %arrayidx536 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %346 = load i32, i32* %arrayidx536, align 4
  store i32 %346, i32* %hypre__nz, align 4
  %347 = load i32, i32* %hypre__nx, align 4
  store i32 %347, i32* %hypre__mx, align 4
  %348 = load i32, i32* %hypre__ny, align 4
  store i32 %348, i32* %hypre__my, align 4
  %349 = load i32, i32* %hypre__nz, align 4
  store i32 %349, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %350 = load i32, i32* %hypre__nx, align 4
  store i32 %350, i32* %hypre__max, align 4
  %351 = load i32, i32* %hypre__ny, align 4
  %352 = load i32, i32* %hypre__max, align 4
  %cmp537 = icmp sgt i32 %351, %352
  br i1 %cmp537, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %cond.end.531
  store i32 1, i32* %hypre__dir, align 4
  %353 = load i32, i32* %hypre__ny, align 4
  store i32 %353, i32* %hypre__max, align 4
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.538, %cond.end.531
  %354 = load i32, i32* %hypre__nz, align 4
  %355 = load i32, i32* %hypre__max, align 4
  %cmp540 = icmp sgt i32 %354, %355
  br i1 %cmp540, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.end.539
  store i32 2, i32* %hypre__dir, align 4
  %356 = load i32, i32* %hypre__nz, align 4
  store i32 %356, i32* %hypre__max, align 4
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.541, %if.end.539
  store i32 1, i32* %hypre__num_blocks, align 4
  %357 = load i32, i32* %hypre__max, align 4
  %358 = load i32, i32* %hypre__num_blocks, align 4
  %cmp543 = icmp slt i32 %357, %358
  br i1 %cmp543, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %if.end.542
  %359 = load i32, i32* %hypre__max, align 4
  store i32 %359, i32* %hypre__num_blocks, align 4
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.544, %if.end.542
  %360 = load i32, i32* %hypre__num_blocks, align 4
  %cmp546 = icmp sgt i32 %360, 0
  br i1 %cmp546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %if.end.545
  %361 = load i32, i32* %hypre__max, align 4
  %362 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %361, %362
  store i32 %div, i32* %hypre__div, align 4
  %363 = load i32, i32* %hypre__max, align 4
  %364 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %363, %364
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.547, %if.end.545
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.667, %if.end.548
  %365 = load i32, i32* %hypre__block, align 4
  %366 = load i32, i32* %hypre__num_blocks, align 4
  %cmp550 = icmp slt i32 %365, %366
  br i1 %cmp550, label %for.body.551, label %for.end.669

for.body.551:                                     ; preds = %for.cond.549
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %367 = load i32, i32* %hypre__mx, align 4
  store i32 %367, i32* %hypre__nx, align 4
  %368 = load i32, i32* %hypre__my, align 4
  store i32 %368, i32* %hypre__ny, align 4
  %369 = load i32, i32* %hypre__mz, align 4
  store i32 %369, i32* %hypre__nz, align 4
  %370 = load i32, i32* %hypre__num_blocks, align 4
  %cmp552 = icmp sgt i32 %370, 1
  br i1 %cmp552, label %if.then.553, label %if.end.595

if.then.553:                                      ; preds = %for.body.551
  %371 = load i32, i32* %hypre__dir, align 4
  %cmp554 = icmp eq i32 %371, 0
  br i1 %cmp554, label %if.then.555, label %if.else.566

if.then.555:                                      ; preds = %if.then.553
  %372 = load i32, i32* %hypre__block, align 4
  %373 = load i32, i32* %hypre__div, align 4
  %mul556 = mul nsw i32 %372, %373
  %374 = load i32, i32* %hypre__mod, align 4
  %375 = load i32, i32* %hypre__block, align 4
  %cmp557 = icmp slt i32 %374, %375
  br i1 %cmp557, label %cond.true.558, label %cond.false.559

cond.true.558:                                    ; preds = %if.then.555
  %376 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.560

cond.false.559:                                   ; preds = %if.then.555
  %377 = load i32, i32* %hypre__block, align 4
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.559, %cond.true.558
  %cond561 = phi i32 [ %376, %cond.true.558 ], [ %377, %cond.false.559 ]
  %add562 = add nsw i32 %mul556, %cond561
  store i32 %add562, i32* %loopi, align 4
  %378 = load i32, i32* %hypre__div, align 4
  %379 = load i32, i32* %hypre__mod, align 4
  %380 = load i32, i32* %hypre__block, align 4
  %cmp563 = icmp sgt i32 %379, %380
  %cond564 = select i1 %cmp563, i32 1, i32 0
  %add565 = add nsw i32 %378, %cond564
  store i32 %add565, i32* %hypre__nx, align 4
  br label %if.end.594

if.else.566:                                      ; preds = %if.then.553
  %381 = load i32, i32* %hypre__dir, align 4
  %cmp567 = icmp eq i32 %381, 1
  br i1 %cmp567, label %if.then.568, label %if.else.579

if.then.568:                                      ; preds = %if.else.566
  %382 = load i32, i32* %hypre__block, align 4
  %383 = load i32, i32* %hypre__div, align 4
  %mul569 = mul nsw i32 %382, %383
  %384 = load i32, i32* %hypre__mod, align 4
  %385 = load i32, i32* %hypre__block, align 4
  %cmp570 = icmp slt i32 %384, %385
  br i1 %cmp570, label %cond.true.571, label %cond.false.572

cond.true.571:                                    ; preds = %if.then.568
  %386 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.573

cond.false.572:                                   ; preds = %if.then.568
  %387 = load i32, i32* %hypre__block, align 4
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.572, %cond.true.571
  %cond574 = phi i32 [ %386, %cond.true.571 ], [ %387, %cond.false.572 ]
  %add575 = add nsw i32 %mul569, %cond574
  store i32 %add575, i32* %loopj, align 4
  %388 = load i32, i32* %hypre__div, align 4
  %389 = load i32, i32* %hypre__mod, align 4
  %390 = load i32, i32* %hypre__block, align 4
  %cmp576 = icmp sgt i32 %389, %390
  %cond577 = select i1 %cmp576, i32 1, i32 0
  %add578 = add nsw i32 %388, %cond577
  store i32 %add578, i32* %hypre__ny, align 4
  br label %if.end.593

if.else.579:                                      ; preds = %if.else.566
  %391 = load i32, i32* %hypre__dir, align 4
  %cmp580 = icmp eq i32 %391, 2
  br i1 %cmp580, label %if.then.581, label %if.end.592

if.then.581:                                      ; preds = %if.else.579
  %392 = load i32, i32* %hypre__block, align 4
  %393 = load i32, i32* %hypre__div, align 4
  %mul582 = mul nsw i32 %392, %393
  %394 = load i32, i32* %hypre__mod, align 4
  %395 = load i32, i32* %hypre__block, align 4
  %cmp583 = icmp slt i32 %394, %395
  br i1 %cmp583, label %cond.true.584, label %cond.false.585

cond.true.584:                                    ; preds = %if.then.581
  %396 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.586

cond.false.585:                                   ; preds = %if.then.581
  %397 = load i32, i32* %hypre__block, align 4
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.585, %cond.true.584
  %cond587 = phi i32 [ %396, %cond.true.584 ], [ %397, %cond.false.585 ]
  %add588 = add nsw i32 %mul582, %cond587
  store i32 %add588, i32* %loopk, align 4
  %398 = load i32, i32* %hypre__div, align 4
  %399 = load i32, i32* %hypre__mod, align 4
  %400 = load i32, i32* %hypre__block, align 4
  %cmp589 = icmp sgt i32 %399, %400
  %cond590 = select i1 %cmp589, i32 1, i32 0
  %add591 = add nsw i32 %398, %cond590
  store i32 %add591, i32* %hypre__nz, align 4
  br label %if.end.592

if.end.592:                                       ; preds = %cond.end.586, %if.else.579
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %cond.end.573
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %cond.end.560
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %for.body.551
  %401 = load i32, i32* %hypre__i1start, align 4
  %402 = load i32, i32* %loopi, align 4
  %403 = load i32, i32* %hypre__sx1, align 4
  %mul596 = mul nsw i32 %402, %403
  %add597 = add nsw i32 %401, %mul596
  %404 = load i32, i32* %loopj, align 4
  %405 = load i32, i32* %hypre__sy1, align 4
  %mul598 = mul nsw i32 %404, %405
  %add599 = add nsw i32 %add597, %mul598
  %406 = load i32, i32* %loopk, align 4
  %407 = load i32, i32* %hypre__sz1, align 4
  %mul600 = mul nsw i32 %406, %407
  %add601 = add nsw i32 %add599, %mul600
  store i32 %add601, i32* %Ri, align 4
  %408 = load i32, i32* %hypre__i2start, align 4
  %409 = load i32, i32* %loopi, align 4
  %410 = load i32, i32* %hypre__sx2, align 4
  %mul602 = mul nsw i32 %409, %410
  %add603 = add nsw i32 %408, %mul602
  %411 = load i32, i32* %loopj, align 4
  %412 = load i32, i32* %hypre__sy2, align 4
  %mul604 = mul nsw i32 %411, %412
  %add605 = add nsw i32 %add603, %mul604
  %413 = load i32, i32* %loopk, align 4
  %414 = load i32, i32* %hypre__sz2, align 4
  %mul606 = mul nsw i32 %413, %414
  %add607 = add nsw i32 %add605, %mul606
  store i32 %add607, i32* %ri, align 4
  %415 = load i32, i32* %hypre__i3start, align 4
  %416 = load i32, i32* %loopi, align 4
  %417 = load i32, i32* %hypre__sx3, align 4
  %mul608 = mul nsw i32 %416, %417
  %add609 = add nsw i32 %415, %mul608
  %418 = load i32, i32* %loopj, align 4
  %419 = load i32, i32* %hypre__sy3, align 4
  %mul610 = mul nsw i32 %418, %419
  %add611 = add nsw i32 %add609, %mul610
  %420 = load i32, i32* %loopk, align 4
  %421 = load i32, i32* %hypre__sz3, align 4
  %mul612 = mul nsw i32 %420, %421
  %add613 = add nsw i32 %add611, %mul612
  store i32 %add613, i32* %rci, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.614

for.cond.614:                                     ; preds = %for.inc.664, %if.end.595
  %422 = load i32, i32* %loopk, align 4
  %423 = load i32, i32* %hypre__nz, align 4
  %cmp615 = icmp slt i32 %422, %423
  br i1 %cmp615, label %for.body.616, label %for.end.666

for.body.616:                                     ; preds = %for.cond.614
  store i32 0, i32* %loopj, align 4
  br label %for.cond.617

for.cond.617:                                     ; preds = %for.inc.652, %for.body.616
  %424 = load i32, i32* %loopj, align 4
  %425 = load i32, i32* %hypre__ny, align 4
  %cmp618 = icmp slt i32 %424, %425
  br i1 %cmp618, label %for.body.619, label %for.end.654

for.body.619:                                     ; preds = %for.cond.617
  store i32 0, i32* %loopi, align 4
  br label %for.cond.620

for.cond.620:                                     ; preds = %for.inc, %for.body.619
  %426 = load i32, i32* %loopi, align 4
  %427 = load i32, i32* %hypre__nx, align 4
  %cmp621 = icmp slt i32 %426, %427
  br i1 %cmp621, label %for.body.622, label %for.end

for.body.622:                                     ; preds = %for.cond.620
  %428 = load i32, i32* %ri, align 4
  %idxprom623 = sext i32 %428 to i64
  %429 = load double*, double** %rp, align 8
  %arrayidx624 = getelementptr inbounds double, double* %429, i64 %idxprom623
  %430 = load double, double* %arrayidx624, align 8
  %431 = load i32, i32* %Ri, align 4
  %idxprom625 = sext i32 %431 to i64
  %432 = load double*, double** %Rp0, align 8
  %arrayidx626 = getelementptr inbounds double, double* %432, i64 %idxprom625
  %433 = load double, double* %arrayidx626, align 8
  %434 = load i32, i32* %ri, align 4
  %idxprom627 = sext i32 %434 to i64
  %435 = load double*, double** %rp0, align 8
  %arrayidx628 = getelementptr inbounds double, double* %435, i64 %idxprom627
  %436 = load double, double* %arrayidx628, align 8
  %mul629 = fmul double %433, %436
  %437 = load i32, i32* %Ri, align 4
  %idxprom630 = sext i32 %437 to i64
  %438 = load double*, double** %Rp1, align 8
  %arrayidx631 = getelementptr inbounds double, double* %438, i64 %idxprom630
  %439 = load double, double* %arrayidx631, align 8
  %440 = load i32, i32* %ri, align 4
  %idxprom632 = sext i32 %440 to i64
  %441 = load double*, double** %rp1, align 8
  %arrayidx633 = getelementptr inbounds double, double* %441, i64 %idxprom632
  %442 = load double, double* %arrayidx633, align 8
  %mul634 = fmul double %439, %442
  %add635 = fadd double %mul629, %mul634
  %add636 = fadd double %430, %add635
  %443 = load i32, i32* %rci, align 4
  %idxprom637 = sext i32 %443 to i64
  %444 = load double*, double** %rcp, align 8
  %arrayidx638 = getelementptr inbounds double, double* %444, i64 %idxprom637
  store double %add636, double* %arrayidx638, align 8
  %445 = load i32, i32* %hypre__sx1, align 4
  %446 = load i32, i32* %Ri, align 4
  %add639 = add nsw i32 %446, %445
  store i32 %add639, i32* %Ri, align 4
  %447 = load i32, i32* %hypre__sx2, align 4
  %448 = load i32, i32* %ri, align 4
  %add640 = add nsw i32 %448, %447
  store i32 %add640, i32* %ri, align 4
  %449 = load i32, i32* %hypre__sx3, align 4
  %450 = load i32, i32* %rci, align 4
  %add641 = add nsw i32 %450, %449
  store i32 %add641, i32* %rci, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.622
  %451 = load i32, i32* %loopi, align 4
  %inc642 = add nsw i32 %451, 1
  store i32 %inc642, i32* %loopi, align 4
  br label %for.cond.620

for.end:                                          ; preds = %for.cond.620
  %452 = load i32, i32* %hypre__sy1, align 4
  %453 = load i32, i32* %hypre__nx, align 4
  %454 = load i32, i32* %hypre__sx1, align 4
  %mul643 = mul nsw i32 %453, %454
  %sub644 = sub nsw i32 %452, %mul643
  %455 = load i32, i32* %Ri, align 4
  %add645 = add nsw i32 %455, %sub644
  store i32 %add645, i32* %Ri, align 4
  %456 = load i32, i32* %hypre__sy2, align 4
  %457 = load i32, i32* %hypre__nx, align 4
  %458 = load i32, i32* %hypre__sx2, align 4
  %mul646 = mul nsw i32 %457, %458
  %sub647 = sub nsw i32 %456, %mul646
  %459 = load i32, i32* %ri, align 4
  %add648 = add nsw i32 %459, %sub647
  store i32 %add648, i32* %ri, align 4
  %460 = load i32, i32* %hypre__sy3, align 4
  %461 = load i32, i32* %hypre__nx, align 4
  %462 = load i32, i32* %hypre__sx3, align 4
  %mul649 = mul nsw i32 %461, %462
  %sub650 = sub nsw i32 %460, %mul649
  %463 = load i32, i32* %rci, align 4
  %add651 = add nsw i32 %463, %sub650
  store i32 %add651, i32* %rci, align 4
  br label %for.inc.652

for.inc.652:                                      ; preds = %for.end
  %464 = load i32, i32* %loopj, align 4
  %inc653 = add nsw i32 %464, 1
  store i32 %inc653, i32* %loopj, align 4
  br label %for.cond.617

for.end.654:                                      ; preds = %for.cond.617
  %465 = load i32, i32* %hypre__sz1, align 4
  %466 = load i32, i32* %hypre__ny, align 4
  %467 = load i32, i32* %hypre__sy1, align 4
  %mul655 = mul nsw i32 %466, %467
  %sub656 = sub nsw i32 %465, %mul655
  %468 = load i32, i32* %Ri, align 4
  %add657 = add nsw i32 %468, %sub656
  store i32 %add657, i32* %Ri, align 4
  %469 = load i32, i32* %hypre__sz2, align 4
  %470 = load i32, i32* %hypre__ny, align 4
  %471 = load i32, i32* %hypre__sy2, align 4
  %mul658 = mul nsw i32 %470, %471
  %sub659 = sub nsw i32 %469, %mul658
  %472 = load i32, i32* %ri, align 4
  %add660 = add nsw i32 %472, %sub659
  store i32 %add660, i32* %ri, align 4
  %473 = load i32, i32* %hypre__sz3, align 4
  %474 = load i32, i32* %hypre__ny, align 4
  %475 = load i32, i32* %hypre__sy3, align 4
  %mul661 = mul nsw i32 %474, %475
  %sub662 = sub nsw i32 %473, %mul661
  %476 = load i32, i32* %rci, align 4
  %add663 = add nsw i32 %476, %sub662
  store i32 %add663, i32* %rci, align 4
  br label %for.inc.664

for.inc.664:                                      ; preds = %for.end.654
  %477 = load i32, i32* %loopk, align 4
  %inc665 = add nsw i32 %477, 1
  store i32 %inc665, i32* %loopk, align 4
  br label %for.cond.614

for.end.666:                                      ; preds = %for.cond.614
  br label %for.inc.667

for.inc.667:                                      ; preds = %for.end.666
  %478 = load i32, i32* %hypre__block, align 4
  %inc668 = add nsw i32 %478, 1
  store i32 %inc668, i32* %hypre__block, align 4
  br label %for.cond.549

for.end.669:                                      ; preds = %for.cond.549
  br label %for.inc.670

for.inc.670:                                      ; preds = %for.end.669
  %479 = load i32, i32* %j, align 4
  %inc671 = add nsw i32 %479, 1
  store i32 %inc671, i32* %j, align 4
  br label %for.cond.200

for.end.672:                                      ; preds = %for.cond.200
  br label %for.inc.673

for.inc.673:                                      ; preds = %for.end.672
  %480 = load i32, i32* %ci, align 4
  %inc674 = add nsw i32 %480, 1
  store i32 %inc674, i32* %ci, align 4
  br label %for.cond.14

for.end.675:                                      ; preds = %for.cond.14
  br label %for.inc.676

for.inc.676:                                      ; preds = %for.end.675
  %481 = load i32, i32* %compute_i, align 4
  %inc677 = add nsw i32 %481, 1
  store i32 %inc677, i32* %compute_i, align 4
  br label %for.cond

for.end.678:                                      ; preds = %for.cond
  %482 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %rc.addr, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %482, i32 0, i32 8
  %483 = load i32, i32* %global_size, align 4
  %mul679 = mul nsw i32 4, %483
  %call680 = call i32 @hypre_IncFLOPCount(i32 %mul679)
  %484 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %time_index681 = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %484, i32 0, i32 5
  %485 = load i32, i32* %time_index681, align 4
  %call682 = call i32 @hypre_EndTiming(i32 %485)
  %486 = load i32, i32* %ierr, align 4
  ret i32 %486
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

declare i32 @hypre_StructMapFineToCoarse(i32*, i32*, i32*, i32*) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_IncFLOPCount(i32) #1

declare i32 @hypre_EndTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiRestrictDestroy(i8* %restrict_vdata) #0 {
entry:
  %restrict_vdata.addr = alloca i8*, align 8
  %ierr = alloca i32, align 4
  %restrict_data = alloca %struct.hypre_SemiRestrictData*, align 8
  store i8* %restrict_vdata, i8** %restrict_vdata.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %restrict_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiRestrictData*
  store %struct.hypre_SemiRestrictData* %1, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %2 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %tobool = icmp ne %struct.hypre_SemiRestrictData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %R = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %3, i32 0, i32 0
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %R, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %4)
  %5 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %compute_pkg = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %5, i32 0, i32 2
  %6 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %call1 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %6)
  %7 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiRestrictData, %struct.hypre_SemiRestrictData* %7, i32 0, i32 5
  %8 = load i32, i32* %time_index, align 4
  %call2 = call i32 @hypre_FinalizeTiming(i32 %8)
  %9 = load %struct.hypre_SemiRestrictData*, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  %10 = bitcast %struct.hypre_SemiRestrictData* %9 to i8*
  call void @hypre_Free(i8* %10)
  store %struct.hypre_SemiRestrictData* null, %struct.hypre_SemiRestrictData** %restrict_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %ierr, align 4
  ret i32 %11
}

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #1

declare i32 @hypre_FinalizeTiming(i32) #1

declare void @hypre_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
